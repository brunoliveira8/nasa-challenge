from bottle import route, run, template, static_file
import os

BASE_DIR = os.path.dirname(os.path.dirname(__file__))
STATIC_PATH = os.path.join(BASE_DIR,'static')


@route('/static/:path#.+#', name='static')
def static(path):
    return static_file(path, root=STATIC_PATH)

@route('/')
def index():
    return template('hello')



run(host='localhost', port=8080, debug=True)