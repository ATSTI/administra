 #-*- coding: utf-8 -*-

from openerp.osv import fields, osv
from openerp.tools.translate import _
from openerp import tools
#import pdb

class project_task(osv.Model):
    _inherit = "project.task"


class planilhahora_date(osv.osv):
    _name = "planilhahora_date"
    _description = "Horas por Periodo"
    _auto = False
    _columns = {
        'user_codigo': fields.char('Codigo', store=False),
        'user_name': fields.char('Parceiro', store=False),
        'data_apontd': fields.date('Data Entrada', store=False),
        'projeto': fields.char('Projeto', store=False),
        'task': fields.char('Atividade', store=False),
        'apont': fields.char('Apontamento', store=False),
        'apont_det': fields.char('Detalhe', store=False),
        'horae1': fields.float('Ent1', store=False),
        'horas1': fields.float('Sai1', store=False),
        'horae2': fields.float('Ent2', store=False),
        'horas2': fields.float('Sai2', store=False),
        'horae3': fields.float('Ent3', store=False),
        'horas3': fields.float('Sai3', store=False),
        'horae4': fields.float('Ent4', store=False),
        'horas4': fields.float('Sai4', store=False),
        'horae5': fields.float('Ent5', store=False),
        'horas5': fields.float('Sai5', store=False),
       }

    _order = "user_codigo, data_apontd"

    def init(self, cr):
        tools.drop_view_if_exists(cr, 'planilhahora_date')
        cr.execute(""" create or replace view planilhahora_date AS (
            (SELECT id, data_apontd, horae1, horas1, horae2, horas2, horae3, horas3,
            horae4, horas4,horae5, horas5, user_id, user_codigo, user_name, projeto, task, apont, apont_det
            FROM planilhahora_date() 
            order by data_apont)
                )
        """)
        #where user_id = 15 
        #and data_apont > '2015-03-31' 
