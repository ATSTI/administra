# -*- coding: utf-8 -*-
#################################################################################
#                                                                               #
# Copyright (C) 2011  Vinicius Dittgen - PROGE, Leonardo Santagada - PROGE      #
#                                                                               #
#This program is free software: you can redistribute it and/or modify           #
#it under the terms of the GNU Affero General Public License as published by    #
#the Free Software Foundation, either version 3 of the License, or              #
#(at your option) any later version.                                            #
#                                                                               #
#This program is distributed in the hope that it will be useful,                #
#but WITHOUT ANY WARRANTY; without even the implied warranty of                 #
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                  #
#GNU General Public License for more details.                                   #
#                                                                               #
#You should have received a copy of the GNU General Public License              #
#along with this program.  If not, see <http://www.gnu.org/licenses/>.          #
#################################################################################

{
    "name": "Boletos",
    "version": "0.1",
    "author": "PROGE",
    "category": "Account",
    "website": "http://proge.com.br",
    "description": """
    Module to create brazilian boletos.
    Company Boleto conf in menu Administration->Company->l10n_br->boletos
    Partner Boleto conf in Partner form.
    Wizard to generate boletos in Invoice form.
    In Sale Journal the field gera_financeiro must be checked.
    You have to instal pyboleto library(http://pypi.python.org/pypi/pyboleto), pip install pyboleto
    """,
    'depends': ['account'],
    'init_xml': [],
    'update_xml': [
        # 'boleto_view.xml',
        'partner_view.xml',
        'res_company_view.xml',
        'wizard/boleto_create_view.xml',
        'security/ir.model.access.csv',
        ],
    'demo_xml': [],
    'test': [],
    'installable': True,
    'active': False,
}
