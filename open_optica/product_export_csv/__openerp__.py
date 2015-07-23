# -*- coding: utf-8 -*-
##############################################################################
#
#    Author Carlos Rodrigues Silveira
#    Copyright 2013 ATS Solucoes
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
    'name': 'Product Export CSV',
    'version': '1.0',
    'depends': [
        'sale',
    ],
    'author': "ATS Solucoes",
    'description': """

    Add a wizard that allow you to export a csv file based on Product and SubType

    You can filter by Category

    """,
    'website': 'http://www.atsti.com.br',
    'license': 'AGPL-3',
    'data': [
        'wizard/product_export_csv_view.xml',
        'menu.xml',
    ],
    'installable': True,
    'active': False,
}
