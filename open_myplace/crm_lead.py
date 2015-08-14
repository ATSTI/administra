#  -*- encoding: utf-8 -*-
# #############################################################################
#                                                                             #
#  Copyright (C) 2015  Carlos Silveira - ATS                                  #
#                                                                             #
# This program is free software: you can redistribute it and/or modify        #
# it under the terms of the GNU Affero General Public License as published by #
# the Free Software Foundation, either version 3 of the License, or           #
# (at your option) any later version.                                         #
#                                                                             #
# This program is distributed in the hope that it will be useful,             #
# but WITHOUT ANY WARRANTY; without even the implied warranty of              #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               #
# GNU Affero General Public License for more details.                         #
#                                                                             #
# You should have received a copy of the GNU Affero General Public License    #
# along with this program.  If not, see <http://www.gnu.org/licenses/>.       #
# #############################################################################

import re
from openerp import models, fields, api, _
from openerp.exceptions import except_orm
from openerp.addons.l10n_br_base.tools import fiscal
from openerp.addons.myplace import crm_productsite
from openerp.exceptions import Warning

class CrmLead(models.Model):
    """ CRM Lead Case """
    _inherit = "crm.lead"
    productsite_id = fields.Many2one('crm.productsite', 'Produto', required=True)
    is_company = fields.Boolean('P. Juridica')
    mobile= fields.Char('Mobile')

    _defaults = {
        'country_id': 32,
        'state_id': 71
    }

    _order = 'create_date desc, priority desc'

    def create(self, cr, uid, vals, context=None):
        context = dict(context or {})
        if 'name' in vals:
            if not 'productsite_id' in vals:
                prod = self.pool.get('crm.productsite')
                prod_id = prod.search(cr, uid, [('name','=', vals.get('name'))], context=context)
                if prod_id:
                    vals['productsite_id'] = prod_id[0]

        if vals.get('type') and not context.get('default_type'):
            context['default_type'] = vals.get('type')
        if vals.get('section_id') and not context.get('default_section_id'):
            context['default_section_id'] = vals.get('section_id')
        if vals.get('user_id'):
            vals['date_open'] = fields.datetime.now()

        # context: no_log, because subtype already handle this
        create_context = dict(context, mail_create_nolog=True)
        return super(CrmLead, self).create(cr, uid, vals, context=create_context)

    def write(self, cr, uid, ids, vals, context=None):
        # stage change: update date_last_stage_update
        if 'stage_id' in vals:
            vals['date_last_stage_update'] = fields.datetime.now()
        if vals.get('user_id'):
            vals['date_open'] = fields.datetime.now()
        # stage change with new stage: update probability and date_closed
        if vals.get('stage_id') and not vals.get('probability'):
            onchange_stage_values = self.onchange_stage_id(cr, uid, ids, vals.get('stage_id'), context=context)['value']
            vals.update(onchange_stage_values)
        return super(CrmLead, self).write(cr, uid, ids, vals, context=context)

    def onchange_productsite_id(self, cr, uid, ids, productsite_id, context=None):
        values = {}
        if productsite_id:
            prod = self.pool.get('crm.productsite').browse(cr, uid,productsite_id, context=context)
            values = {
                'name': prod.name
            }
        return {'value': values}

    
    @api.model
    def _lead_create_contact(self, lead, name, is_company, parent_id=False):
        id = super(CrmLead, self)._lead_create_contact(
            lead, name, is_company, parent_id)
        value = {
            'number': lead.number,
            'district': lead.district,
            'l10n_br_city_id': lead.l10n_br_city_id.id,
            'razao_empresa': lead.partner_name,
            'legal_name': lead.legal_name,
            'company_id': lead.company_id.id
        }
        if is_company:
            value.update({
                'cnpj_cpf': lead.cnpj,
                'inscr_est': lead.inscr_est,
                'inscr_mun': lead.inscr_mun,
                'suframa': lead.suframa,
                })
        else:
            value.update({
                'cnpj_cpf': lead.cpf,
                'inscr_est': lead.rg,
                })
        if id:
            partner = self.env['res.partner'].browse(id)
            partner[0].write(value)
        return id
    
    
    def _create_lead_partner(self, cr, uid, lead, context=None):
        partner_id = False
        if lead.partner_name and lead.contact_name:
            partner_id = self._lead_create_contact(cr, uid, lead, lead.partner_name, lead.is_company, context=context)
            # nao preciso disto , estava criando o cliente e o contato com o mesmo cpf ou cnpj
            #partner_id = self._lead_create_contact(cr, uid, lead, lead.contact_name, lead.is_company, partner_id, context=context)
        elif lead.partner_name and not lead.contact_name:
            partner_id = self._lead_create_contact(cr, uid, lead, lead.partner_name, lead.is_company, context=context)
        elif not lead.partner_name and lead.contact_name:
            partner_id = self._lead_create_contact(cr, uid, lead, lead.contact_name, lead.is_company, context=context)
        elif lead.email_from and self.pool.get('res.partner')._parse_partner_name(lead.email_from, context=context)[0]:
            contact_name = self.pool.get('res.partner')._parse_partner_name(lead.email_from, context=context)[0]
            partner_id = self._lead_create_contact(cr, uid, lead, contact_name, lead.is_company, context=context)
        else:
            raise osv.except_osv(
                _('Warning!'),
                _('No customer name defined. Please fill one of the following fields: Company Name, Contact Name or Email ("Name <email@address>")')
            )
        return partner_id 
    

    def case_mark_won(self, cr, uid, ids, context=None):
        partner_obj = self.pool.get('res.partner')

        # A partner is set already
            # Search through the existing partners based on the lead's email
        """ Mark the case as won: state=done and probability=100
        """
        stages_leads = {}
        for lead in self.browse(cr, uid, ids, context=context):
            erro = '' 
            if not lead.legal_name:
                erro = u'Razão Social(Nome que saira no Contrato.)\n'
            #if lead.is_company and not lead.cnpj:
            #    erro = erro + u'CNPJ do cliente.\n'
            #if not lead.is_company and not lead.cpf:
            #    erro = erro + u'CPF do cliente.\n'
            #if not lead.inscr_est and not lead.rg:
            #    erro = erro + u'Inscrição Estadual ou RG.'

            if erro != '':
                raise except_orm(
                               _(u'Dados incompletos!'),
                               _(u'%s') % (erro)) 
            partner_id = 0
            if lead.email_from:
                partner_ids = partner_obj.search(cr, uid, [('email', '=', lead.email_from)], context=context)
                if partner_ids:
                    partner_id = partner_ids[0]
            elif lead.cnpj:
                partner_ids = partner_obj.search(cr, uid, [('cnpj_cpf', '=', lead.cnpj)], context=context)
                if partner_ids:
                    partner_id = partner_ids[0]
            elif lead.cpf:
                partner_ids = partner_obj.search(cr, uid, [('cnpj_cpf', '=', lead.cpf)], context=context)
                if partner_ids:
                    partner_id = partner_ids[0]
            # Search through the existing partners based on the lead's partner or contact name
            elif lead.partner_name:
                partner_ids = partner_obj.search(cr, uid, [('name', 'ilike', '%'+lead.partner_name+'%')], context=context)
                if partner_ids:
                    partner_id = partner_ids[0]
            elif lead.contact_name:
                partner_ids = partner_obj.search(cr, uid, [
                        ('name', 'ilike', '%'+lead.contact_name+'%')], context=context)
                if partner_ids:
                    partner_id = partner_ids[0]
            if partner_id == 0:
                partner_id = self._create_lead_partner(cr, uid, lead, context)

            stage_id = self.stage_find(cr, uid, [lead], lead.section_id.id or False, [('probability', '=', 100.0), ('on_change', '=', True)], context=context)
            if stage_id:
                if stages_leads.get(stage_id):
                    stages_leads[stage_id].append(lead.id)
                else:
                    stages_leads[stage_id] = [lead.id]
            else:
                raise except_orm(
                                _('Warning!'),
                                _('To relieve your sales pipe and group all Won opportunities, configure one of your sales stage as follow:\n'
                                  'probability = 100 % and select "Change Probability Automatically".\n'
                                  'Create a specific stage or edit an existing one by editing columns of your opportunity pipe.'))
        for stage_id, lead_ids in stages_leads.items():
            self.write(cr, uid, lead_ids, {'stage_id': stage_id, 'partner_id': partner_id}, context=context)
        return True

