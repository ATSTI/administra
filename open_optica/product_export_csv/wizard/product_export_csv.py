# -*- coding: utf-8 -*-
##############################################################################
#
#    Author Joel Grand-Guillaume and Vincent Renaville Copyright 2013
#    Camptocamp SA
#    CSV data formating inspired from
# http://docs.python.org/2.7/library/csv.html?highlight=csv#examples
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

import itertools
import tempfile
from cStringIO import StringIO
import base64

import csv
import codecs

from openerp.osv import orm, fields
from openerp.tools.translate import _


#class AccountUnicodeWriter(object):
class ProductUnicodeWriter(object):

    """
    A CSV writer which will write rows to CSV file "f",
    which is encoded in the given encoding.
    """

    def __init__(self, f, dialect=csv.excel, encoding="utf-8", **kwds):
        # Redirect output to a queue
        self.queue = StringIO()
        # created a writer with Excel formating settings
        self.writer = csv.writer(self.queue, dialect=dialect, **kwds)
        self.stream = f
        self.encoder = codecs.getincrementalencoder(encoding)()

    def writerow(self, row):
        # we ensure that we do not try to encode none or bool
        row = (x or u'' for x in row)

        encoded_row = [
            c.encode("utf-8") if isinstance(c, unicode) else c for c in row]

        self.writer.writerow(encoded_row)
        # Fetch UTF-8 output from the queue ...
        data = self.queue.getvalue()
        data = data.decode("utf-8")
        # ... and reencode it into the target encoding
        data = self.encoder.encode(data)
        # write to the target stream
        self.stream.write(data)
        # empty queue
        self.queue.truncate(0)

    def writerows(self, rows):
        for row in rows:
            self.writerow(row)


#class AccountCSVExport(orm.TransientModel):
class ProductCSVExport(orm.TransientModel):
    _name = 'product.csv.export'
    _description = 'Export Product'

    _columns = {
        'data': fields.binary('CSV', readonly=True),
        'category_id': fields.many2one('product.category', 'Category',
                                         required=True),
        'export_filename': fields.char('Export CSV Filename', size=128),
    }

    defaults = {'export_filename': 'produto_grid.csv'}
    #def _get_company_default(self, cr, uid, context=None):
    #    comp_obj = self.pool['res.company']
    #    return comp_obj._company_default_get(cr, uid, 'account.fiscalyear',
    #                                         context=context)

    #def action_manual_export_account(self, cr, uid, ids, context=None):
    def action_manual_export_product(self, cr, uid, ids, context=None):
        this = self.browse(cr, uid, ids)[0]
        rows = self.get_data(cr, uid, ids, "product", context)
        file_data = StringIO()
        try:
            #writer = AccountUnicodeWriter(file_data)
            writer = ProductUnicodeWriter(file_data)
            writer.writerows(rows)
            file_value = file_data.getvalue()
            self.write(cr, uid, ids,
                       {'data': base64.encodestring(file_value), 'export_filename':'lentes.csv'},
                       context=context)
        finally:
            file_data.close()
        return {
            'type': 'ir.actions.act_window',
            'res_model': 'product.csv.export',
            'view_mode': 'form',
            'view_type': 'form',
            'res_id': this.id,
            'views': [(False, 'form')],
            'target': 'new',
        }

    #def _get_header_account(self, cr, uid, ids, context=None):
    def _get_header_product(self, cr, uid, ids, context=None):
        return [_(u'COD.'),
                _(u'ITEM'),
                _(u'LENTE'),
                _(u'TRATAMENTO'),
                _(u'-'),
                _(u'-'),
                _(u'-'),
                _(u'-'),
                ]

    def _get_rows_product(self, cr, uid, ids,
                          category_id,
                          context=None):
        """
        Pego todos os produtos da Categoria Informada
        """
        cr.execute("""
                select id, name, coalesce(list_price,0), 
                coalesce(substr(reference_mask, 1, position('[' in reference_mask) - 1),'0') as code 
                from product_template 
                where categ_id = %(category_ids)s 
                """,
                {'category_ids': category_id}
                )
        res = cr.fetchall()

        rows = []
        """ Imprimir as Colunas dos grupos - attribute_id = 1 (tratamento) """
        for prod in res:
            produto = prod[1]
            preco_prod = prod[2]
            cod_prod = prod[3]
            cr.execute("""
                select distinct pav.id, pav.name || ' (' || coalesce(pav.attribute_code,'0') || ')' atributo, coalesce(pap.price_extra,0)
                , coalesce(pav.attribute_code,'0')
                from product_product as prt
                left join product_attribute_value_product_product_rel as ppr on ppr.prod_id = prt.id
                left join product_attribute_value as pav on  ppr.att_id = pav.id
                left join product_attribute_price as pap on pav.id = pap.value_id and pap.product_tmpl_id = prt.product_tmpl_id
                where prt.product_tmpl_id = %(prod_id)s
                  and pav.attribute_id = 1 
                order by 3, 2
                """,
                {'prod_id': prod[0]}
                )
            lentes = cr.fetchall()
            trat1 = ''
            trat2 = ''
            trat3 = ''
            trat4 = ''
            trat5 = ''
            price1 = 0
            price2 = 0
            price3 = 0
            price4 = 0
            price5 = 0
            price = 0

            #pdb.set_trace()
            for lente in lentes:
                price = lente[2]
                if trat1 == '':
                    trat1 = lente[1]
                    price1 = preco_prod + price
                elif trat2 == '':
                    trat2 = lente[1]
                    price2 = preco_prod + price
                elif trat3 == '':
                    trat3 = lente[1]
                    price3 = preco_prod + price
                elif trat4 == '':
                    trat4 = lente[1]
                    price4 = preco_prod + price
                elif trat5 == '':
                    trat5 = lente[1]
                    price5 = preco_prod + price


            planilha = [produto, '-','-',trat1,trat2,trat3,trat4,trat5]
            rows.append(list(planilha))

            """ Pegando os itens com os atributos - Lentes """
            #      substr(pt.default_code,char_length(pt.default_code) -2, 3) as code    
            cr.execute("""
                select distinct pav.id, pav.name atributo, coalesce(pap.price_extra,0), 
                  coalesce(pav.attribute_code,'0') as code
                  from product_product pt
                  left join product_attribute_value_product_product_rel as ppr on ppr.prod_id = pt.id
                  left join product_attribute_value as pav on ppr.att_id = pav.id
                  left join product_attribute_price as pap on pav.id = pap.value_id and pt.product_tmpl_id = pap.product_tmpl_id
                 where pt.product_tmpl_id = %(prod_id)s
                   and pav.attribute_id = 2
                 order by 3, 2
                """,
                {'prod_id': prod[0]}
                )
            descrs = cr.fetchall()
            for dc in descrs:
                #pdb.set_trace()
                p = dc[2]
                if not p:
                    p = 0
                #produto = produto + ' ' + dc.atributo
                if price1 > 0:
                    price1 = price1 + p
                if price2 > 0:
                    price2 = price2 + p
                if price3 > 0:
                    price3 = price3 + p
                if price4 > 0:
                    price4 = price4 + p
                if price5 > 0:
                    price5 = price5 + p
                planilha = [cod_prod + dc[3], produto,dc[1],price1,price2,price3,price4,price5]
                
                rows.append(list(planilha))

        #for line in res:
        #    rows.append(list(line))
        return rows

    def get_data(self, cr, uid, ids, result_type, context=None):
        get_header_func = getattr(
            self, ("_get_header_%s" % (result_type)), None)
        get_rows_func = getattr(self, ("_get_rows_%s" % (result_type)), None)
        form = self.browse(cr, uid, ids[0], context=context)
        category_id = form.category_id.id
        rows = itertools.chain((get_header_func(cr, uid, ids,
                                                context=context),),
                               get_rows_func(cr, uid, ids,
                                             category_id,
                                             context=context)
                               )
        return rows
