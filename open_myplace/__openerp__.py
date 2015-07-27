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
    'name': 'MyPlace',
    'version': '1.0',
    'category': 'Others',
    'sequence': 2,
    'summary': 'ATS Myplace',
    'description': """
   """,
    'author': 'ATS Soluções',
    'website': '',
    'depends': ['l10n_br_base','l10n_br_crm','crm_claim','account_analytic_analysis'],
    'data': [
        #'security/ir.model.access.csv',
        #'security/crm_productsite_security.xml',   
        'res_partner_view.xml',
        'crm_claim_view.xml',
        'crm_lead_view.xml',
        'crm_opportunity_view.xml',
        'crm_productsite_view.xml',
        'account_analytic_analysis_view.xml',
        'email_erro_fatura.xml',
        'email_template_crm_claim.xml',
    ],
    'installable': True,
    'application': True,
}
# vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:
