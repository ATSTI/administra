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


{
    'name': 'Account Payment Boleto Nossa classe',
    'version': '0.1',
    'category': 'Banking addons',
    'license': 'AGPL-3',
    'description': """
    Add boleto payment mode support on NossaClass module.

    It requires python cnab240 library to work.
     """,
    'author': 'KMEE',
    'website': 'http://www.kmee.com.br',
    'external_dependencies': {
        'python': ['cnab240'],
    },
    'depends': [
        'l10n_br_account_payment_boleto',
        'l10n_br_account_payment',
    ],
    'data': [
        'workflow/cnab240export_workflow.xml',
        'wizard/cnab_export_from_payment_receivable_view.xml',
        'view/cnab240Export_view.xml',
        'data/cnab240export_sequence.xml',
        # 'data/cnab240exportSegmento.xml',
    ],
    'active': False,
    "installable": True,
    "auto_install": False,
}
