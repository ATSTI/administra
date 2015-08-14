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

from openerp.osv import osv, fields


class res_company(osv.osv):
    _inherit = "res.company"
    _columns = {
        'boleto_company_config_ids': fields.many2many('boleto.company_config', 'res_company_boleto_rel', 'company_id', 'boleto_company_config_id', u'Configurações de Boleto da Empresa')
        }

res_company()
