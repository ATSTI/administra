# -*- coding: utf-8 -*-
##############################################################################
#
#    OpenERP, Open Source Management Solution
#    Copyright (C) 2010-Today OpenERP S.A. (<http://www.openerp.com>).
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
    'name': 'Project Manager',
    'version': '1.0',
    'category': 'Project',
    'sequence': 2,
    'summary': 'Task for Manager',
    'description': """
   """,
    'author': 'ATS Soluções',
    'website': '',
    'depends': ['base', 'project'],
    'data': [
        'project_manager_view.xml',
    ],
    'demo': [
    ],
    'installable': True,
    'application': True,
    'images': [
    ],
    'css': [
        'static/src/css/*.css'
    ],
    'js': [
    ],
    'qweb': [
    ],
}
# vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:
