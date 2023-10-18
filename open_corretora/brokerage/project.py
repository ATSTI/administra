 #-*- coding: utf-8 -*-

from openerp.osv import fields, osv
from openerp.tools.translate import _
#import pdb

class project(osv.Model):
    _inherit = "project.project"

    def _active_task_count(self, cr, uid, ids, field_name, arg, context=None):
        if context is None:
            context = {}
        res = dict.fromkeys(ids, 0)
        ctx = context.copy()
        ctx['active_test'] = False
        task_ids = self.pool.get('project.task').search(cr, uid, [('project_id', 'in', ids), ('state', 'not in', ('done', 'cancelled'))], context=ctx)
        for task in self.pool.get('project.task').browse(cr, uid, task_ids, context):
            res[task.project_id.id] += 1
        return res

    _columns = {
        'active_task_count': fields.function(_active_task_count, type='integer',string="Open Tasks"),
        'produto_auto':fields.boolean('Auto'),
        'produto_vida':fields.boolean('Vida'),
        'produto_resid':fields.boolean('Residencial'),
        'produto_empresa':fields.boolean('Empresarial'),
        'produto_previ':fields.boolean('Previdencia'),
        'produto_dsop':fields.boolean('Dsop'),
        'produto_saude':fields.boolean('Saúde'),
        'endosso':fields.boolean('Endosso'),
        'info1':fields.char('Info1', size=64),
        'info2':fields.char('Info2', size=64),
        'info3':fields.char('Info3', size=64),
        'info4':fields.char('Info4', size=64),
        'info5':fields.char('Info5', size=64),
        'info6':fields.char('Info6', size=64),
    }

    _defaults = {
        'name': 'corretora',
    }

    def create(self, cr, uid, vals, context=None):

        if not vals['partner_id']: 
            raise osv.except_osv(_('Erro!'), _('Cliente não informado.')) 

        if not vals['date']: 
            raise osv.except_osv(_('Erro!'), _('Data Vencimento da Apólice não informado.')) 

        msg_produto = 'N';
        partner_id = self.pool.get('res.partner').browse(cr, uid,vals['partner_id'], context=context)
        if vals['produto_auto']:
            msg_produto = 'auto'
            vals['name'] = 'RE AUTO - ' + partner_id.name
            vals['color'] = 1
            produto = 'produto_auto'
        elif vals['produto_resid']:
            msg_produto = 'residencia'
            vals['name'] = 'RE RESID. - ' + partner_id.name
            vals['color'] = 2
            produto = 'produto_resid'
        elif vals['produto_vida']:
            msg_produto = 'vida'
            vals['name'] = 'RE VIDA - ' + partner_id.name
            vals['color'] = 3
            produto = 'produto_vida'
        elif vals['produto_previ']:
            msg_produto = 'previdencia'
            vals['name'] = 'PREVIDENCIA - ' + partner_id.name
            vals['color'] = 4
            produto = 'produto_previ'
        elif vals['produto_saude']:
            msg_produto = 'saude'
            vals['name'] = 'SAÚDE - ' + partner_id.name
            produto = 'produto_saude'
            vals['color'] = 5
        elif vals['produto_dsop']:
            msg_produto = 'dsop'
            vals['name'] = 'DSOP - ' + partner_id.name
            produto = 'produto_dsop'
            vals['color'] = 6
        elif vals['produto_empresa']:
            msg_produto = 'empresa'
            vals['name'] = 'EMPRESA - ' + partner_id.name
            produto = 'produto_empresa'
            vals['color'] = 7
        else:
            msg_produto = 'N';

        if msg_produto == 'N':
            raise osv.except_osv(_('Erro!'), _('Selecione o Produto desejado.')) 

        vals['use_issues'] = False
        res_id = super(project, self).create(cr, uid, vals, context)
        self.copy_estagios(cr, uid, res_id, produto,context)
        self.copy_tasks(cr, uid, res_id, produto,context)
        self.configura_nova_tarefa(cr, uid, res_id,context)
        return res_id

    def copy_estagios(self, cr, uid, new_project_id, produto, context=None):
        """ copy and map tasks from old to new project """
        if context is None:
            context = {}
        map_estagio_id = {}
        estagio_obj = self.pool.get('project.task.type')
        projeto_modelo = self.pool.get('project.project')
        project_ids = projeto_modelo.search(cr, uid, [('name', '=', produto)], context=context)
        if project_ids:
            projeto = projeto_modelo.browse(cr, uid, project_ids[0], context=context)
        for estagio in projeto.type_ids:
            map_estagio_id[estagio.id] = estagio.id
        self.write(cr, uid, [new_project_id], {'type_ids':[(6,0, map_estagio_id.values())]})
        #estagio_obj.duplicate_task(cr, uid, map_task_id, context=context)
        return True

    def copy_tasks(self, cr, uid, new_project_id, produto, context=None):
        """ copy and map tasks from old to new project """
        if context is None:
            context = {}
        map_task_id = {}
        task_obj = self.pool.get('project.task')
        projeto_modelo = self.pool.get('project.project')
        project_ids = projeto_modelo.search(cr, uid, [('name', '=', produto)], context=context)
        if project_ids:
            projeto = projeto_modelo.browse(cr, uid, project_ids[0], context=context)
        for task in projeto.tasks:
            map_task_id[task.id] =  task_obj.copy(cr, uid, task.id, {}, context=context)
        self.write(cr, uid, [new_project_id], {'tasks':[(6,0, map_task_id.values())]})
        task_obj.duplicate_task(cr, uid, map_task_id, context=context)
        return True

    def configura_nova_tarefa(self, cr, uid, new_project_id, context=None):
        #pdb.set_trace()
        if context is None:
            context = {}
        task_obj = self.pool.get('project.task')
        projeto_modelo = self.pool.get('project.project')
        projeto = projeto_modelo.browse(cr, uid, new_project_id, context=context)
        data_final = projeto.date
        if projeto.produto_auto:
            tarefa = 'RE AUTO'
            cor = 1
        if projeto.produto_resid:
            tarefa = 'RE RESIDENCIAL'
            cor = 2
        if projeto.produto_vida:
            tarefa = 'VIDA'
            cor = 3
        if projeto.produto_previ:
            tarefa = 'PREVIDENCIA'
            cor = 4
        if projeto.produto_saude:
            tarefa = 'SAÚDE'
            cor = 5
        if projeto.produto_dsop:
            tarefa = 'DSOP'
            cor = 6
        if projeto.produto_empresa:
            tarefa = 'EMPRESA'
            cor = 7
        #for task in projeto.tasks:
        task_obj.create(cr, uid, {'project_id': new_project_id, 'name' :tarefa,'state':'open','partner_id': projeto.partner_id.id, 'color': cor,'date_end': data_final})

class send_message_task(osv.osv_memory):
    _name = "send.message.task"

    def send_text(self, cr, uid, ids, context=None):
        obj = self.browse(cr, uid, ids[0], context=context)
        self.pool.get('project.task').message_send(cr, uid, [obj.task_id.id], obj.text, context=context)
        return True

    _columns = {
        "task_id": fields.many2one("project.task", "Tache"),
        "text": fields.text("Vos remarques ou précisions"),
    }


class project_task(osv.Model):
    _inherit = "project.task"


    def message_on_task(self, cr, uid, ids, context=None):
        if context is None:
            context = {}
        context['default_task_id'] = ids[0]

        return {
            'type': 'ir.actions.act_window',
            'view_type': 'form',
            'view_mode': 'form',
            'target': 'new',
            'context': context,
            'res_model': 'send.message.task',
            'nodestroy': True,
            'name': 'Message'
        }

    def message_send(self, cr, uid, ids, text, context=None):
        sender = self.pool.get('res.users').browse(cr, uid, uid, context=context)
        vals = {
            'type': 'email',
            'author_id': sender.partner_id.id,
            'email_from': sender.partner_id.email,
            'model': 'project.task',
            'res_id': ids[0],
            'body': text
        }

        msg_obj = self.pool.get('mail.message')
        res = msg_obj.create(cr, uid, vals)

        msg_obj.set_message_read(cr, uid, [int(res)], False, True, context)
        msg_obj.set_message_starred(cr, uid, [int(res)], True, True, context)

        return res


    _columns = {
        'date_primparc': fields.date('Prim. Parc',select=True),
        'tipo_primparc': fields.selection([('boleto','Boleto'),('debito','Debito Conta'), ('outro','Outro')], 'Tipo Pagamento', select=True),
        'date_vistoria': fields.date('Vistoria',select=True),
        'stage_task_id': fields.many2one('project.task.type', 'Stage', track_visibility='onchange',
                        domain="['&', ('processo', '=', True), ('project_ids', '=', project_id)]"),
        'stage_id': fields.many2one('project.task.type', 'Stage', track_visibility='onchange',
                        domain="['&', ('fold', '=', False), ('project_ids', '=',project_id), ('processo', '=', False)]"),
    }

class project_task_type(osv.Model):
    _inherit = "project.task.type"

    _columns = {
        'processo': fields.boolean('Processo', help="Processo a ser executado nesta tarefa"),
    } 
