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

from openerp import pooler
from openerp.osv import osv
from openerp.report.interface import report_rml

# from openerp.addons.l10n_br_account_payment_boleto_registered.report.report \
#     import report_custom
# from openerp.addons.l10n_br_account_payment_boleto_registered.report.report \
#     import external_pdf
# from openerp.addons.l10n_br_account_payment_boleto_registered.boleto.document\
#     import Boleto


class ReportCustom(report_rml):
    '''
        Custom report for return boletos
    '''
    def create(self, cr, uid, ids, datas, context={}):
        active_ids = context.get('active_ids')
        active_model = context.get('active_model')
        pool = pooler.get_pool(cr.dbname)

        aml_obj = pool.get('account.move.line')

        ids_move_lines = []

        if active_model == 'nossa.classe':
            ai_obj = pool.get('nossa.classe')

            for nossa_classe in ai_obj.browse(cr, uid, active_ids):
                ids_move_lines.append(nossa_classe.move_line_id.id)

            lista_boleto = aml_obj.send_payment(cr, uid, ids_move_lines)
            if not lista_boleto:
                raise osv.except_osv('Error !',
                                     (u'Não é possível gerar um boleto -  '
                                      u'Documento não é um boleto'))
            pdf_string = Boleto.get_pdfs(lista_boleto)
            obj = external_pdf(pdf_string)
            obj.render()
            return obj.pdf, 'pdf'

        else:
            return super(ReportCustom, self).create(
                cr, uid, ids, datas, context=context)
