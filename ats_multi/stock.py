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

from openerp import models, fields as new_fields, api
from openerp.osv import fields, osv


#----------------------------------------------------------
# Stock Location
#----------------------------------------------------------

class stock_location(osv.osv):
    _inherit = "stock.location"

    _columns = {
        'property_stock_journal': fields.property(
            relation='account.journal',
            type='many2one',
            string='Stock Journal',
            help="When doing real-time inventory valuation, this is the Accounting Journal in which entries will be automatically posted when stock moves are processed."),
        'property_stock_account_input_location': fields.property(
            type='many2one',
            relation='account.account',
            string='Stock Input Account',
            help="When doing real-time inventory valuation, counterpart journal items for all incoming stock moves will be posted in this account, unless "
                 "there is a specific valuation account set on the source location. This is the default value for all products in this category. It "
                 "can also directly be set on each product"),
        'property_stock_account_output_location': fields.property(
            type='many2one',
            relation='account.account',
            string='Stock Output Account',
            help="When doing real-time inventory valuation, counterpart journal items for all outgoing stock moves will be posted in this account, unless "
                 "there is a specific valuation account set on the destination location. This is the default value for all products in this category. It "
                 "can also directly be set on each product"),
        'property_stock_valuation_account_id': fields.property(
            type='many2one',
            relation='account.account',
            string="Stock Valuation Account",
            help="When real-time inventory valuation is enabled on a product, this account will hold the current value of the products.",),
    }

