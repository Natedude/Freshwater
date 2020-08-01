from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import MetaData
import os
from wtforms import *

app = Flask(__name__)
app.debug = False
#app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:abc123@127.0.0.1:3306/CSC_5'
#for non-Garrett people use below for local host db
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@127.0.0.1:3306/CSC_4'


app.config['SECURITY_REGISTERABLE'] = True
app.config['SECURITY_PASSWORD_SALT'] = 'mysalt'
app.config['SECURITY_SEND_REGISTER_EMAIL'] = False


app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False #to suppress warning
app.config['SQLALCHEMY_ECHO'] = True  # to print out SQL queries
app.secret_key ='replace later'
db = SQLAlchemy(app)#

# conn = db.session.get_bind()
# meta = MetaData(conn)
# meta.reflect()
