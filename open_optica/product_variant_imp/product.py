# -*- coding: utf-8 -*-
from openerp import models, fields, api, SUPERUSER_ID
#import pdb


class product_attribute(models.Model):
    _inherit = "product.attribute"
    add_to_name = fields.Boolean('Add To Name?')

class product_attribute_value(models.Model):
    _inherit = "product.attribute.value"
    cod_prod = fields.Char(string="Cod. Prod.")

class product_template(models.Model):
    _inherit = 'product.template'

    prod_tipo = fields.Selection([
        ('fionylon','Fio de Nylon'),
        ('inteira','Inteira'),
        ('mascara','Mascará'),
        ('parafuso', 'Parafuso')
    ],'Tipo')
    prod_material = fields.Selection([
        ('metal','Metal'),
        ('acetato','Acetado'),
        ('titanium','Titanium')
    ],'Material')
    prod_sexo = fields.Selection([
        ('f','Feminino'),
        ('m','Masculino'),
        ('u','Unisex')
    ],'Genero')
    prod_estilo = fields.Selection([
        ('a','Adulto'),
        ('i','Infantil'),
        ('e','Esportivo')
    ],'Estilo')
    oculos = fields.Boolean('É óculos')



class product_product(models.Model):
    _inherit = 'product.product'

    @api.one
    @api.depends(
        'product_tmpl_id',
        'product_tmpl_id.name',
        'attribute_value_ids',
        'attribute_value_ids.attribute_id',
        'attribute_value_ids.attribute_id.add_to_name',
        'attribute_line_ids',
        'product_tmpl_id.attribute_line_ids.attribute_id.add_to_name',
        'product_tmpl_id.attribute_line_ids.value_ids',
        'product_tmpl_id.attribute_line_ids.value_ids.name',
    )

    #@api.multi
    #def _write(self, values, context=None):
        #result = super(C, self).write(values)

    #    codigo = ''
    #    if self.product_tmpl_id.default_code:
    #        codigo = self.product_tmpl_id.default_code
    #    for v in self.attribute_value_ids:
    #        if v.attribute_id.add_to_name:
    #            if v.cod_prod:
    #                codigo = codigo + v.cod_prod
        # search returns a recordset instead of a list of ids
        #domain = [('id', 'in', self.ids)]
        #roots = self.search(domain)
        #
        # modify all records in roots
        #roots.write(self,{'default_code': codigo}, context)
        #result = ''
    #    result = super(product_product, self).write(self, {'default_code': codigo})
    #    return result

    def _get_complete_name(self):
        # TODO habria que ver de mejorar esta funcion porque se corre varias veces
        #pdb.set_trace()
        name = self.product_tmpl_id.name
        variants = [
            v.name for v in self.attribute_value_ids if v.attribute_id.add_to_name]
        attribute_lines = [
            v for v in self.attribute_line_ids if v.attribute_id.add_to_name and len(v.value_ids) == 1]
        attributes = [
            v.value_ids[0].name for v in attribute_lines if v.value_ids]
        
        codigo = ''
        if self.product_tmpl_id.default_code:
            codigo = self.product_tmpl_id.default_code
        for v in self.attribute_value_ids:
            if v.attribute_id.add_to_name:
                if v.cod_prod:
                    codigo = codigo + v.cod_prod
        
        variant_and_attributes = " ".join(variants)
        name = variant_and_attributes and "%s %s %s" % (codigo,
            name, variant_and_attributes) or name
        self.name = name


    name = fields.Char('Complete Name',compute='_get_complete_name',store=True)

# Overwrite of name_get function to avoid joining variants again
    def name_get(self, cr, user, ids, context=None):
        if context is None:
            context = {}
        if isinstance(ids, (int, long)):
            ids = [ids]
        if not len(ids):
            return []

        def _name_get(d):
            name = d.get('name', '')
            code = context.get('display_default_code', True) and d.get(
                'default_code', False) or False
            if code:
                name = '[%s] %s' % (code, name)
            return (d['id'], name)

        partner_id = context.get('partner_id', False)
        if partner_id:
            partner_ids = [partner_id, self.pool['res.partner'].browse(
                cr, user, partner_id, context=context).commercial_partner_id.id]
        else:
            partner_ids = []

        # all user don't have access to seller and partner
        # check access and use superuser
        self.check_access_rights(cr, user, "read")
        self.check_access_rule(cr, user, ids, "read", context=context)

        result = []
        for product in self.browse(cr, SUPERUSER_ID, ids, context=context):
            # variant = ", ".join([v.name for v in product.attribute_value_ids])
            # name = variant and "%s (%s)" % (product.name, variant) or product.name
            # ##codigo = ''
            # ##if product.default_code:
            # ##    codigo = product.default_code
            # ##for v in product.attribute_value_ids:
                # ##if v.cod_prod:
                # ##    codigo = codigo + v.cod_prod
            #pdb.set_trace()
            #codigo = "".join([v.cod_prod for v in product.attribute_value_ids])
            # ##variant = " ".join([v.name for v in product.attribute_value_ids])
            # ## name = variant and "%s %s %s" % (codigo, product.name, variant) or product.name
            name = product.name
            sellers = []
            if partner_ids:
                sellers = filter(
                    lambda x: x.name.id in partner_ids, product.seller_ids)
            if sellers:
                for s in sellers:
                    seller_variant = s.product_name and "%s" % (
                        s.product_name) or False
                    # seller_variant = s.product_name and "%s (%s)" % (
                    #     s.product_name, variant) or False
                    mydict = {
                        'id': product.id,
                        'name': seller_variant or name,
                        'default_code': s.product_code or product.default_code,
                    }
                    result.append(_name_get(mydict))
            else:
                mydict = {
                    'id': product.id,
                    'name': name,
                    'default_code': product.default_code,
                }
                result.append(_name_get(mydict))
        return result

