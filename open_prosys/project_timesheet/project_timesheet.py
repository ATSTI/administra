# -*- coding: utf-8 -*-
##############################################################################
#
#    OpenERP, Open Source Management Solution
#    Copyright (C) 2004-2010 Tiny SPRL (<http://tiny.be>).
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################
import time
import datetime

from openerp.osv import fields, osv
from openerp import pooler
from openerp import tools
from openerp.tools.translate import _
import pdb

class project_project(osv.osv):
    _inherit = 'project.project'

    def onchange_partner_id(self, cr, uid, ids, part=False, context=None):
        res = super(project_project, self).onchange_partner_id(cr, uid, ids, part, context)
        if part and res and ('value' in res):
            # set Invoice Task Work to 100%
            data_obj = self.pool.get('ir.model.data')
            data_id = data_obj._get_id(cr, uid, 'hr_timesheet_invoice', 'timesheet_invoice_factor1')
            if data_id:
                factor_id = data_obj.browse(cr, uid, data_id).res_id
                res['value'].update({'to_invoice': factor_id})
        return res

    _defaults = {
        'use_timesheets': True,
    }

    def open_timesheets(self, cr, uid, ids, context=None):
        """ open Timesheets view """
        mod_obj = self.pool.get('ir.model.data')
        act_obj = self.pool.get('ir.actions.act_window')

        project = self.browse(cr, uid, ids[0], context)
        view_context = {
            'search_default_account_id': [project.analytic_account_id.id],
            'default_account_id': project.analytic_account_id.id,
        }
        help = _("""<p class="oe_view_nocontent_create">Record your timesheets for the project '%s'.</p>""") % (project.name,)
        try:
            if project.to_invoice and project.partner_id:
                help+= _("""<p>Timesheets on this project may be invoiced to %s, according to the terms defined in the contract.</p>""" ) % (project.partner_id.name,)
        except:
            # if the user do not have access rights on the partner
            pass

        res = mod_obj.get_object_reference(cr, uid, 'hr_timesheet', 'act_hr_timesheet_line_evry1_all_form')
        id = res and res[1] or False
        result = act_obj.read(cr, uid, [id], context=context)[0]
        result['name'] = _('Timesheets')
        result['context'] = view_context
        result['help'] = help
        return result

project_project()

class project_work(osv.osv):
    _inherit = "project.task.work"

    def _calcula_hora(self, hours_out=0.0, hours_in=0.0, hours_i=None, hours_o=None):
        totalhora = 0
        if hours_i:
            dataEnt = datetime.datetime.strptime(hours_i, '%Y-%m-%d')
            #dataEnt = fields.datetime.context_timestamp(timestamp)
        #dataEnt = ts.day
        #dataSai = date(*time.strptime(str(hours_o),'%Y-%m-%d')[:3])
        if hours_o:
            dataSai = datetime.datetime.strptime(hours_o, '%Y-%m-%d')
            #dataSai = fields.datetime.context_timestamp(timestamp)
        #dataSai = ts.day
        if hours_o and hours_i:
            diferencaDias =((dataSai-dataEnt).days*24)
        else:
            diferentaDias = 0
        totalhora = ((hours_out - hours_in)+diferencaDias)
        return totalhora

    def get_user_related_details(self, cr, uid, user_id):
        res = {}
        emp_obj = self.pool.get('hr.employee')
        emp_id = emp_obj.search(cr, uid, [('user_id', '=', user_id)])
        if not emp_id:
            user_name = self.pool.get('res.users').read(cr, uid, [user_id], ['name'])[0]['name']
            raise osv.except_osv(_('Bad Configuration!'),
                 _('Please define employee for user "%s". You must create one.')% (user_name,))
        emp = emp_obj.browse(cr, uid, emp_id[0])
        if not emp.product_id:
            raise osv.except_osv(_('Bad Configuration!'),
                 _('Please define product and product category property account on the related employee.\nFill in the HR Settings tab of the employee form.'))

        if not emp.journal_id:
            raise osv.except_osv(_('Bad Configuration!'),
                 _('Please define journal on the related employee.\nFill in the timesheet tab of the employee form.'))

        acc_id = emp.product_id.property_account_expense.id
        if not acc_id:
            acc_id = emp.product_id.categ_id.property_account_expense_categ.id
            if not acc_id:
                raise osv.except_osv(_('Bad Configuration!'),
                        _('Please define product and product category property account on the related employee.\nFill in the timesheet tab of the employee form.'))

        res['product_id'] = emp.product_id.id
        res['journal_id'] = emp.journal_id.id
        res['general_account_id'] = acc_id
        res['product_uom_id'] = emp.product_id.uom_id.id
        return res

    def _create_analytic_entries(self, cr, uid, vals, context):
        """Create the hr analytic timesheet from project task work"""
        timesheet_obj = self.pool['hr.analytic.timesheet']
        task_obj = self.pool['project.task']

        vals_line = {}
        timeline_id = False
        acc_id = False

        task_obj = task_obj.browse(cr, uid, vals['task_id'], context=context)
        result = self.get_user_related_details(cr, uid, vals.get('user_id', uid))
        vals_line['name'] = '%s: %s' % (tools.ustr(task_obj.name), tools.ustr(vals['name'] or '/'))
        vals_line['user_id'] = vals['user_id']
        vals_line['product_id'] = result['product_id']
        if vals['date']:
            #timestamp = datetime.datetime.strptime(vals['date'], '%Y-%m-%d')
            #ts = fields.datetime.context_timestamp(cr, uid, timestamp, context)
            #date_x = ts.strftime('%Y-%m-%d')
            date_x = vals.get('date')
            #timestamp = datetime.datetime.strptime(vals['date'], tools.DEFAULT_SERVER_DATETIME_FORMAT)
            #ts = fields.datetime.context_timestamp(cr, uid, timestamp, context)
            #date_x = ts.strftime(tools.DEFAULT_SERVER_DATE_FORMAT)
            vals_line['date'] = date_x
            if vals.get('hours_in', False):
                vals_line['hours_in'] = vals.get('hours_in')
            if vals.get('hours_out', False):
                vals_line['hours_out'] = vals['hours_out']
            if vals.get('data_base', False):
                vals_line['date_base'] = vals['date_base'][:10]
            dataEnt = datetime.datetime.strptime(date_x, '%Y-%m-%d')
            if vals.get('date_out', False):
                dataSai = datetime.datetime.strptime(vals['date_out'], '%Y-%m-%d')
                #dataEnt = date(*time.strptime(date_x,'%Y-%m-%d')[:3])
                #dataSai = date(*time.strptime(vals['date_out'],'%Y-%m-%d')[:3])
                diferencaDias =((dataSai - dataEnt).days*24)
            vals_line['unit_amount'] = 0
            if vals.get('hours_out', False) and vals.get('hours_in', False) and vals.get('date_out', False):   
                totalhora = (vals['hours_out'] - vals['hours_in'])+diferencaDias
                vals_line['unit_amount'] = totalhora

        # Calculate quantity based on employee's product's uom
        #vals_line['unit_amount'] = vals['hours']

        default_uom = self.pool['res.users'].browse(cr, uid, uid, context=context).company_id.project_time_mode_id.id
        if result['product_uom_id'] != default_uom:
            vals_line['unit_amount'] = self.pool['product.uom']._compute_qty(cr, uid, default_uom, vals['hours'], result['product_uom_id'])
        acc_id = task_obj.project_id and task_obj.project_id.analytic_account_id.id or acc_id
        if acc_id:
            vals_line['account_id'] = acc_id
            res = timesheet_obj.on_change_account_id(cr, uid, False, acc_id)
            if res.get('value'):
                vals_line.update(res['value'])
            vals_line['general_account_id'] = result['general_account_id']
            vals_line['journal_id'] = result['journal_id']
            vals_line['amount'] = 0.0
            vals_line['product_uom_id'] = result['product_uom_id']
            amount = vals_line['unit_amount']
            prod_id = vals_line['product_id']
            unit = False
            timeline_id = timesheet_obj.create(cr, uid, vals=vals_line, context=context)

            # Compute based on pricetype
            amount_unit = timesheet_obj.on_change_unit_amount(cr, uid, timeline_id,
                prod_id, amount, False, unit, vals_line['journal_id'], context=context)
            if amount_unit and 'amount' in amount_unit.get('value',{}):
                updv = { 'amount': amount_unit['value']['amount'] }
                timesheet_obj.write(cr, uid, [timeline_id], updv, context=context)

        return timeline_id

    def create(self, cr, uid, vals, *args, **kwargs):
        context = kwargs.get('context', {})
        if not context.get('no_analytic_entry',False):
            vals['hr_analytic_timesheet_id'] = self._create_analytic_entries(cr, uid, vals, context=context)
        return super(project_work,self).create(cr, uid, vals, *args, **kwargs)

    def write(self, cr, uid, ids, vals, context=None):
        """
        When a project task work gets updated, handle its hr analytic timesheet.
        """
        if context is None:
            context = {}
        timesheet_obj = self.pool.get('hr.analytic.timesheet')
        uom_obj = self.pool.get('product.uom')
        result = {}

        if isinstance(ids, (long, int)):
            ids = [ids]
        for task in self.browse(cr, uid, ids, context=context):
            line_id = task.hr_analytic_timesheet_id
            if not line_id:
                # if a record is deleted from timesheet, the line_id will become
                # null because of the foreign key on-delete=set null
                continue

            vals_line = {}
            if 'name' in vals:
                vals_line['name'] = '%s: %s' % (tools.ustr(task.task_id.name), tools.ustr(vals['name'] or '/'))
            if 'user_id' in vals:
                vals_line['user_id'] = vals['user_id']
            date_l = task.date
            if 'date' in vals:
                vals_line['date'] = vals['date'][:10]
                date_l = vals.get('date')[:10]
            if 'hours' in vals:
                vals_line['unit_amount'] = vals['hours']
            date_out = task.date_out
            if 'date_out' in vals:
                date_out =  vals['date_out'][:10]
            date_base = task.date_base
            if 'date_base' in vals:
                date_base =  vals['date_base'][:10]
            vals_line['date_base'] = date_base
            hours_in = task.hours_in
            if 'hours_in' in vals:
                hours_in = vals['hours_in']
            vals_line['hours_in'] = hours_in
            if not hours_in: 
               vals_line['hours_in'] = 0
            hours_out = task.hours_out
            if 'hours_out' in vals:
                hours_out = vals['hours_out']
            vals_line['hours_out'] = hours_out
            if not hours_out: 
               vals_line['hours_out'] = 0
            hours = self._calcula_hora(hours_out, hours_in, date_l, date_out)
            vals_line['unit_amount'] = hours
            if 'hours_out' in vals or 'hours_in' in vals or 'date' in vals or 'date_out' in vals:
                prod_id = vals_line.get('product_id', line_id.product_id.id) # False may be set

                # Put user related details in analytic timesheet values
                details = self.get_user_related_details(cr, uid, vals.get('user_id', task.user_id.id))
                for field in ('product_id', 'general_account_id', 'journal_id', 'product_uom_id'):
                    if details.get(field, False):
                        vals_line[field] = details[field]

                # Check if user's default UOM differs from product's UOM
                user_default_uom_id = self.pool.get('res.users').browse(cr, uid, uid).company_id.project_time_mode_id.id
                if details.get('product_uom_id', False) and details['product_uom_id'] != user_default_uom_id:
                    vals_line['unit_amount'] = uom_obj._compute_qty(cr, uid, user_default_uom_id, vals['hours'], details['product_uom_id'])

                # Compute based on pricetype
                amount_unit = timesheet_obj.on_change_unit_amount(cr, uid, line_id.id,
                    prod_id=prod_id, company_id=False,
                    unit_amount=vals_line['unit_amount'], unit=False, journal_id=vals_line['journal_id'], context=context)

                if amount_unit and 'amount' in amount_unit.get('value',{}):
                    vals_line['amount'] = amount_unit['value']['amount']

            if vals_line:
                #if not line_id:
                #    self._create_analytic_entries(cr, uid, vals_line, context=context)
                #else:
                self.pool.get('hr.analytic.timesheet').write(cr, uid, [line_id.id], vals_line, context=context)
                update_acc = 'UPDATE account_analytic_line set hours_in = ' + str(vals_line.get('hours_in')) + ', hours_out = ' + str(vals_line.get('hours_out')) + ', unit_amount = ' + str(vals_line.get('unit_amount')) + ', date_base = \'' + date_base + '\', date = \'' + date_l + '\' where id = ' + str(line_id.line_id.id)
                cr.execute(update_acc)

        return super(project_work,self).write(cr, uid, ids, vals, context)

    def unlink(self, cr, uid, ids, *args, **kwargs):
        hat_obj = self.pool.get('hr.analytic.timesheet')
        hat_ids = []
        for task in self.browse(cr, uid, ids):
            if task.hr_analytic_timesheet_id:
                hat_ids.append(task.hr_analytic_timesheet_id.id)
        # Delete entry from timesheet too while deleting entry to task.
        if hat_ids:
            hat_obj.unlink(cr, uid, hat_ids, *args, **kwargs)
        return super(project_work,self).unlink(cr, uid, ids, *args, **kwargs)

    _columns={
        'hr_analytic_timesheet_id':fields.many2one('hr.analytic.timesheet','Related Timeline Id', ondelete='set null'),
    }

project_work()

class task(osv.osv):
    _inherit = "project.task"

    def unlink(self, cr, uid, ids, *args, **kwargs):
        for task_obj in self.browse(cr, uid, ids, *args, **kwargs):
            if task_obj.work_ids:
                work_ids = [x.id for x in task_obj.work_ids]
                self.pool.get('project.task.work').unlink(cr, uid, work_ids, *args, **kwargs)

        return super(task,self).unlink(cr, uid, ids, *args, **kwargs)

    def write(self, cr, uid, ids, vals, context=None):
        if context is None:
            context = {}
        task_work_obj = self.pool['project.task.work']
        acc_id = False
        missing_analytic_entries = {}

        if vals.get('project_id',False) or vals.get('name',False):
            vals_line = {}
            hr_anlytic_timesheet = self.pool.get('hr.analytic.timesheet')
            if vals.get('project_id',False):
                project_obj = self.pool.get('project.project').browse(cr, uid, vals['project_id'], context=context)
                acc_id = project_obj.analytic_account_id.id

            for task_obj in self.browse(cr, uid, ids, context=context):
                if len(task_obj.work_ids):
                    for task_work in task_obj.work_ids:
                        if not task_work.hr_analytic_timesheet_id:
                            if acc_id:
                                # missing timesheet activities to generate
                                missing_analytic_entries[task_work.id] = {
                                    'name' : task_work.name,
                                    'user_id' : task_work.user_id.id,
                                    'date' : task_work.date and task_work.date[:10] or False,
                                    'date_base' : task_work.date_base and task_work.date_base[:10] or False,
                                    'account_id': task_work.task_id.project_id.analytic_account_id.id,
                                    'hours' : task_work.hours,
                                    'task_id' : task_obj.id
                                } 
                            continue
                        line_id = task_work.hr_analytic_timesheet_id.id
                        if vals.get('project_id',False):
                            vals_line['account_id'] = acc_id
                        if vals.get('name',False):
                            vals_line['name'] = '%s: %s' % (tools.ustr(vals['name']), tools.ustr(task_work.name or '/'))
                        hr_anlytic_timesheet.write(cr, uid, [line_id], vals_line, {})

        res = super(task,self).write(cr, uid, ids, vals, context)

        for task_work_id, analytic_entry in missing_analytic_entries.items():
            #pdb.set_trace()
            timeline_id = task_work_obj._create_analytic_entries(cr, uid, analytic_entry, context=context)
            task_work_obj.write(cr, uid, task_work_id, {'hr_analytic_timesheet_id' : timeline_id}, context=context)

        return res

task()

class res_partner(osv.osv):
    _inherit = 'res.partner'

    def unlink(self, cursor, user, ids, context=None):
        parnter_id=self.pool.get('project.project').search(cursor, user, [('partner_id', 'in', ids)])
        if parnter_id:
            raise osv.except_osv(_('Invalid Action!'), _('You cannot delete a partner which is assigned to project, but you can uncheck the active box.'))
        return super(res_partner,self).unlink(cursor, user, ids,
                context=context)

res_partner()

class account_analytic_line(osv.osv):
   _inherit = "account.analytic.line"

   def get_product(self, cr, uid, context=None):
        emp_obj = self.pool.get('hr.employee')
        emp_ids = emp_obj.search(cr, uid, [('user_id', '=', uid)], context=context)
        if emp_ids:
            employee = emp_obj.browse(cr, uid, emp_ids, context=context)[0]
            if employee.product_id:return employee.product_id.id
        return False
   
   _defaults = {'product_id': get_product,}
   
   def on_change_account_id(self, cr, uid, ids, account_id):
       res = {}
       if not account_id:
           return res
       res.setdefault('value',{})
       acc = self.pool.get('account.analytic.account').browse(cr, uid, account_id)
       st = acc.to_invoice.id
       res['value']['to_invoice'] = st or False
       if acc.state == 'close' or acc.state == 'cancelled':
           raise osv.except_osv(_('Invalid Analytic Account!'), _('You cannot select a Analytic Account which is in Close or Cancelled state.'))
       return res

account_analytic_line()

# vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:
