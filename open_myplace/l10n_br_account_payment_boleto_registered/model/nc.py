# -*- encoding: utf-8 -*-
##############################################################################
#
#    Account Payment Partner module for OpenERP
#    Copyright (C) 2015 KMEE (http://www.kmee.com.br)
#    @author Michell Stuttgart <michell.stuttgart@kmee.com.br>
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

from openerp.osv import orm
from ..report.report_nc import ReportCustom


class NossaClasse(orm.Model):

    _inherit = 'nossa.classe'

    def print_report(self, cr, uid, ids, context=None):

        rep = ReportCustom('report.l10n_br_account_payment_boleto_nc.report_nc')

        datas = {
            'ids': ids,
            'model': 'nossa.classe',
            'form': self.read(cr, uid, ids[0], context=context),
            'data': rep.create(cr, uid, ids, None, context=context)
        }
        return {
            'type': 'ir.actions.report.xml',
            'report_name': 'l10n_br_account_payment_boleto_nc.report_nc',
            'datas': datas,
            'nodestroy': True
        }
