# -*- coding: utf-8 -*-
##############################################################################
#
#    ATS, ATS Soluções
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
    'name': 'Warehouse Management for Multi Company',
    'version': '1.1',
    'author': 'OpenERP SA',
    'summary': 'Inventory, Logistic, Storage',
    'description': """
Manage multi-warehouses, multi- and structured stock locations
==============================================================
    Adds input and output account of the stock in inventory localization and also trial account
    Adiciona em Locais do Estoque , as contas Entrada de Estoque e Saida, e de Avaliação, quando é multi
    empresa e os produtos ou categoria não são informados as contas contabeis, será utilizada estas
    contas.

    """,
    'website': 'https://www.odoo.com/page/warehouse',
    'depends': ['product', 'stock', 'stock_account'],
    'category': 'Warehouse Management',
    'sequence': 17,
    'demo': [
    ],
    'data': [
        'stock_view.xml',
    ],
    'test': [
    ],
    'installable': True,
    'application': True,
    'auto_install': False,
    'qweb': [],
}

# vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:
