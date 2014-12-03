 #-*- coding: utf-8 -*-

from openerp.osv import fields, osv
from datetime import datetime, timedelta
from openerp import tools
#import pdb


class crm_claim_ats(osv.Model):
    _inherit = 'crm.claim'
    _name = "crm.claim.ats"

    _columns = {
        'ramal_softphone2': fields.char(u"Ramal Softphone 2", size=60),
    }

    _defaults = {
        'country_id': 32,
        'state_id': 71
    }
crm_claim_ats()

