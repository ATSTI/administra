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

from openerp.osv import fields, osv
from openerp.tools.translate import _
from openerp import SUPERUSER_ID, api

#----------------------------------------------------------
# Quants
#----------------------------------------------------------

class stock_quant(osv.osv):
    _inherit = "stock.quant"

    def _get_accounting_data_for_valuation(self, cr, uid, move, context=None):
        """
        Return the accounts and journal to use to post Journal Entries for the real-time
        valuation of the quant.

        :param context: context dictionary that can explicitly mention the company to consider via the 'force_company' key
        :returns: journal_id, source account, destination account, valuation account
        :raise: osv.except_osv() is any mandatory account or journal is not defined.
        """
        #pdb.set_trace()
        product_obj = self.pool.get('product.template')
        #accounts = product_obj.get_product_accounts(cr, uid, move.product_id.product_tmpl_id.id, context)
        accounts = {'stock_account_input': move.location_dest_id.property_stock_account_input_location.id,
                    'stock_account_output':move.location_dest_id.property_stock_account_output_location.id,
                    'stock_journal':move.location_dest_id.property_stock_journal.id,
                    'property_stock_valuation_account_id':move.location_dest_id.property_stock_valuation_account_id.id 
        }
        if move.location_id.valuation_out_account_id:
            acc_src = move.location_id.valuation_out_account_id.id
        else:
            acc_src = accounts['stock_account_input']

        if move.location_dest_id.valuation_in_account_id:
            acc_dest = move.location_dest_id.valuation_in_account_id.id
        else:
            acc_dest = accounts['stock_account_output']

        acc_valuation = accounts.get('property_stock_valuation_account_id', False)
        journal_id = accounts['stock_journal']
        return journal_id, acc_src, acc_dest, acc_valuation

