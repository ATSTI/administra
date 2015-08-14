 #-*- coding: utf-8 -*-
import re

from openerp import models, fields, api, _
from openerp.osv import osv
from openerp.exceptions import Warning
from openerp import tools

#import pdb


class ResPartner(models.Model):
    _inherit = 'res.partner'

    fornece_fone = fields.Boolean(string='Fornec. Telefone ?', help="Pode fornecer telefone do cliente caso solicitado." )
    fornece_email = fields.Boolean(string='Fornec. Email ?', help="Pode fornecer email do cliente caso solicitado.")
    fornece_endereco = fields.Boolean(string='Fornec. Endereço ?', help="Pode fornecer endereço do cliente caso solicitado.")
    birthdate_n = fields.Date(string='Date de nascimento')
    motivo_ausencia = fields.Char(string='Justificativa', size=256)
    transfer_recado = fields.Char(string='Tranferencia/Recado', size=128)
    razao_empresa = fields.Char(string='Razao-Empresa', size=128)
    ramal_softphone1 = fields.Char(string='Fone Redirec.', size=60)
    ramal_softphone2 = fields.Char(string='Email Redirec.', size=60)
    email_financeiro = fields.Text(string='Email Financeiro', help="Usado para cobrança. Mais de um email separar com Virgula")

    _defaults = {
        'country_id': 32,
        'state_id': 71
    }


class partner_aniversario(osv.osv):
    _name = "partner.aniversario"
    _description = "tree map"
    _auto = False
    
    partner = fields.Char(string='Cliente', size=120)
    partner_id = fields.Many2one('res.partner', string='Parceiro', store=False)
    niver = fields.Date(string='Date de nascimento')
    email = fields.Char(string='Email', size=120)
    phone = fields.Char(string='Fone', size=60)
    dia_nasc = fields.Integer(string='Dia nascimento')
    mes_nasc = fields.Integer(string='Mes nascimento')
    ordem = fields.Integer(string='Ordem')

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

