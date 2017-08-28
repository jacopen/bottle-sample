# -*- coding: utf-8 -*-

import os
import bottle
from bottle import route, run, template, view

@route('/')
@view('home_template')
def index():
    return dict()

@route('/hello/<name>')
def index(name):
    return template('<b>Hello {{name}}</b>!', name=name)

if __name__ == '__main__':
    port = int(os.getenv('PORT', '8080'))
    bottle.run(host='0.0.0.0', port=port, debug=True, reloader=False)
