from bottle import route, run, template, static_file, response
from json import dumps
import os

BASE_DIR = os.path.dirname(os.path.dirname(__file__))
STATIC_PATH = os.path.join(BASE_DIR,'assets')

@route('/assets/:path#.+#', name='assets')
def static(path):
    return static_file(path, root=STATIC_PATH)

@route('/')
def index():
    return template('hello')



@route('/medidas')
def medidas():
	rv = [{ "temp": 1, "lux": 2}]
	response.content_type = 'application/json'
	return dumps(rv)



run(host='localhost', port=8080, debug=True)