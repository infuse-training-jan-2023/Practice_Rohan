from flask import Flask,Response,request
from item_actions import ItemAction
import json
import re

app = Flask(__name__)
item_action = ItemAction() 

# @app.route('/',methods=['GET'])
# def index():
#     return 'Hello World!'

@app.route('/item',methods=['GET'])
def get_all_items():
    items = item_action.get_all_items()
    print(items)
    return Response(json.dumps(items),mimetype = 'application/json',status= 200)

@app.route('/item',methods=['POST'])
def add_new_item():
    request_data = request.get_json()
    item = request_data['item']
    reminder = request_data['reminder']

    added_item = item_action.add_item(item, reminder)
    if added_item == {}:
       return Response("{'error': 'Error addding the item'}", mimetype='application/json', status=500)
    return Response(json.dumps(added_item), mimetype='application/json', status=201)

@app.route('/item/<int:item_id>',methods=['GET'])
def get_item(item_id):
    item_id = item_action.get_item(item_id)
    print(item_id)
    return Response(json.dumps(item_id),mimetype = 'application/json',status= 200)

@app.route('/item/<int:item_id>',methods=['DELETE'])
def delete_item(item_id):
    item_id = item_action.delete_item(item_id)
    if item_id == {}:
        return Response("{'Error': 'Error deleting item'}", mimetype="application/json", status=404)
    return Response(json.dumps(item_id),mimetype = 'application/json',status= 200)

@app.route('/item/<int:item_id>',methods=['PUT'])
def update_item(item_id):
    update_data = request.get_json()
    # item = request_data['item']
    # status = request_data['status']
    # reminder = request_data['reminder']
    # update_data = item_actions.update(item_id,item,status,reminder)
    update_item = item_action.update_item(item_id,update_data)
    if update_item == {}:
       return Response("{'error': 'Error addding the item'}", mimetype='application/json', status=500)
    return Response(json.dumps(update_item), mimetype='application/json', status=200)

@app.route('/itemss',methods=['POST'])
def add_item_to_csv():
    added_item = item_action.add_item_to_csv()
    # if added_item == {}:
    #    return Response("{'error': 'Error addding the item'}", mimetype='application/json', status=500)
    return Response(json.dumps(added_item), mimetype='application/json', status=201)

@app.route('/user',methods=['POST'])
def add_new_user():
    request_data = request.get_json()
    name = request_data['name']
    age = request_data['age']
    gender = request_data['gender']
    address = request_data['address']

    added_user = item_action.add_new_user(name, age,gender,address)
    if added_user == {}:
       return Response("{'error': 'Error addding the user'}", mimetype='application/json', status=500)
    return Response(json.dumps(added_user), mimetype='application/json', status=201)

#PROBLEM -1
@app.route('/email',methods=['POST'])
def get_email():
    request_email = request.get_json()
    email = request_email.get('email')
    if re.search('^[a-z0-9]+[\._]?[a-z0-9]+[@]\w+[.]\w{2,3}$', email):
        return Response(json.dumps({'status':'Valid Email'}), mimetype='application/json', status=201)
    return Response(json.dumps({'status':' Not A Valid Email'}), mimetype='application/json', status=400)

if __name__ == '__main__':
    app.run(debug=True,port=5000,host='0.0.0.0')