import os
import load_env
from flask import Flask, render_template

app = Flask(__name__)

load_env

app.config['SQLALCHEMY_DATABASE_URI'] = os.getenv('FLASK_APP_DATABASE_URI')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = os.getenv('FLASK_APP_TRACK_MODIFICATIONS')

DEBUG = os.getenv('FLASK_APP_DEBUG')
PORT = os.getenv('FLASK_APP_PORT')

@app.route('/')
def welcome():
    return render_template('welcome.html')


if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=DEBUG, port=PORT)
