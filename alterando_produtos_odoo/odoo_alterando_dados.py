import oerplib

# Prepare the connection to the server
oerp = oerplib.OERP('127.0.0.1', protocol='xmlrpc', port=48069)

# Check available databases
#print(oerp.db.list())

# Login (the object returned is a browsable record)
user = oerp.login('admin', 'password', 'bd')
print(user.name)            # name of the user connected
print(user.company_id.name) # the name of its company

# Simple 'raw' query
#user_data = oerp.execute('res.users', 'read', [user.id])
#print(user_data)

# Use all methods of an OSV class
order_obj = oerp.get('product.template')
order_ids = order_obj.search([('type','=','product')])
for order in order_obj.browse(order_ids):
    print(order.name)
    #products = [line.product_id.name for line in order.order_line]
    #print(products)
    vals = {'valuation': 'real_time', 'cost_method': 'average'}
    order_obj.write([order.id], vals)
    print(order.name)

# Update data through a browsable record
#user.name = "Brian Jones"
#oerp.write_record(user)
