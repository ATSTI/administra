 #-*- coding: utf-8 -*-
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

from openerp.addons.base_status.base_state import base_state
from openerp.osv import fields, osv

class crm_lead(osv.Model):
    _inherit = "crm.lead"

    def onchange_partner_id(self, cr, uid, ids, partner_id, email_from, context=None):
        res = super(crm_lead, self).onchange_partner_id(cr, uid, ids, partner_id, email_from)
        if res['value']['phone'] is False:
            partner = self.pool.get('res.partner').browse(cr, uid, partner_id, context=context)
            res['value']['phone'] = partner.mobile
        return res

class crm_phonecall(base_state, osv.osv):
    _inherit = "crm.phonecall"

    def onchange_partner_id(self, cr, uid, ids, partner, context=None):
        res = super(crm_phonecall, self).onchange_partner_id(cr, uid, ids, partner, context)
        partner = self.pool.get('res.partner').browse(cr, uid, partner, context)
        res['value']['partner_phone'] = partner.phone and partner.phone
        res['value']['partner_mobile'] = partner.mobile and partner.mobile

        return res