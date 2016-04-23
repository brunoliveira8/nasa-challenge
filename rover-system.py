from bottle import route, run, template, static_file, response, request
from json import dumps
import serial
import time

ser = serial.Serial('COM3', 9600, timeout=0)
ser.readlines()


@route('/assets/:path#.+#', name='assets')
def static(path):
    return static_file(path, root='assets')

@route('/')
def index():
    return template('hello')



@route('/medidas')
def medidas():
    ser.write('M')
    time.sleep(0.5)
    medidas = ser.readline()
    medidas = medidas.split()
    rv = [{ "temp": medidas[2], "lux": medidas[5]}]
    response.content_type = 'application/json'
    return dumps(rv)


@route('/comandos', method='POST')
def comandos():
    comando = request.forms.get('comando')
    ser.write(comando)
    return "Success"


run(host='localhost', port=8080, debug=True)
