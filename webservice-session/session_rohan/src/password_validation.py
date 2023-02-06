import re
from flask import Response
import json

def validate_password(password):
    if re.search('^(?=.*?[A-Z])(?=.*?[@_!#$%^&*()<>?/\|}{~:]).{8,}$', password):
        return Response(json.dumps({'status':'Valid Password'}), mimetype='application/json', status=201)
    return Response(json.dumps({'status':'Not A Valid Password'}), mimetype='application/json', status=400)

