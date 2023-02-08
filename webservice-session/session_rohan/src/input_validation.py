from flask import Response
import json
import requests

def validate_input(id):
    response = requests.get(f'https://jsonplaceholder.typicode.com/todos/{id}')
    if ((id < 0) or (id > 200)):
        return Response(json.dumps({'status':'Input must be integer between 1 to 200'}), mimetype='application/json', status=400)
    return Response(response, mimetype='application/json', status=200)
    