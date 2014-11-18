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
    'name': 'Magellanes',
    'version': '1.0',
    'category': 'Others',
    'sequence': 2,
    'summary': 'Magellanes verticalisation',
    'description': """
   """,
    'author': 'Stephane MOUESCA',
    'website': '',
    'depends': ['base', 'crm', 'project'],
    'data': [
        'wizard/create_family_rel_view.xml',
        'partner_view.xml',
        'contracts_view.xml',
        #'company_view.xml',  // comentei estes pois, na soma estava carregando
        # // ao abrir o cliente por projetos 
        #'supplier_view.xml',
        'project_view.xml',
        'security/m_security.xml',
        'security/ir.model.access.csv',
        'data/cleaning_menus.xml',
        'board_view.xml',
        'crm_view.xml',
        'remunerations_view.xml',
        'wizard/end_contract_view.xml',
        'wizard/add_adherent_view.xml',
        'wizard/add_versement_view.xml',
        'wizard/partner_add_contact_view.xml',
        'wizard/add_address_view.xml',
        'wizard/add_fond_view.xml',
        'report/commissionement_report_view.xml',

        'ir_ui_menu_view.xml'
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
