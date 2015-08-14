 #-*- coding: utf-8 -*-

from openerp.osv import fields, osv
from datetime import datetime, timedelta
from openerp import tools
#import pdb


class crm_productsite(osv.Model):
    _name = 'crm.productsite'
    _description = "Product Site"

    _columns = {
        'name': fields.char('Product Name', required=True),
        'active': fields.boolean('Active'),
    }

    _defaults = {
        'active': lambda *a: 1,
    }

crm_productsite()
