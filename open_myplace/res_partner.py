 #-*- coding: utf-8 -*-

from openerp.osv import fields, osv
from datetime import datetime, timedelta
from openerp import tools
#import pdb


class res_partner(osv.Model):
    _inherit = 'res.partner'
    _name = "res.partner"

    _columns = {
        'fornece_fone': fields.boolean('Fornec. Telefone ?', help="Pode fornecer telefone do cliente caso solicitado." ),
        'fornece_email': fields.boolean('Fornec. Email ?', help="Pode fornecer email do cliente caso solicitado."),
        'birthdate_n': fields.date('Date de nascimento'),
        'motivo_ausencia': fields.char(u"Motivo ausencia", size=256),
        'ramal_softphone1': fields.char(u"Ramal Softphone 1", size=60),
        'ramal_softphone2': fields.char(u"Ramal Softphone 2", size=60),
    }

    _defaults = {
        'country_id': 32,
        'state_id': 71
    }
res_partner()

class partner_aniversario(osv.osv):
    _name = "partner_aniversario"
    _description = "tree map"
    _auto = False
    _columns = {
        "partner": fields.char("Cliente", size=128),
        "partner_id": fields.many2one("res.partner", u"Parceiro", store=False),
        'niver': fields.date('Date de nascimento'),
        "email": fields.char("Email", size=128),
        "phone": fields.char("Fone", size=30),
        'dia_nasc': fields.integer('Dia nascimento'),
        'mes_nasc': fields.integer('Mes nascimento'),
        'ordem': fields.integer('Ordem'),
       }

    _order = "partner, ordem"

    def init(self, cr):
        tools.drop_view_if_exists(cr, 'partner_aniversario')
        cr.execute(""" create or replace view partner_aniversario AS (
                  select distinct rp.name partner, rp.id, rp.birthdate_n 
                     ,extract(day from rp.birthdate_n) as dia_nasc
                     ,extract(month from rp.birthdate_n) as mes_nasc
                     ,rp.birthdate_n niver, rp.email, rp.phone, 0 ordem
                     ,rp.id partner_id
                   from res_partner rp
                  where rp.customer = true
                    and rp.is_company = false
                 )
  
        """)
