import re
from flask import Response
import json
def validate_email(email):
    if re.search('^[a-z0-9]+[\._]?[a-z0-9]+[@]\w+[.]\w{2,3}$', email):
        return Response(json.dumps({'status':'Valid Email'}), mimetype='application/json', status=201)
    return Response(json.dumps({'status':'Not A Valid Email'}), mimetype='application/json', status=400)
