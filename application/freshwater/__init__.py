from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import MetaData
import os
from wtforms import *

app = Flask(__name__)
app.debug = True
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@127.0.0.1:3306/CSC_4'
#app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@127.0.0.1:3307/CSC'
# above is same line but with different port, 3307 -----------------^
# so you can quickly change if your 3306 port is bound 
# (for example: if you're running a local mysql server)

# app.config['SQLALCHEMY_BINDS'] =  {
#     'user':        'sqlite:///D:/CS638/JulyMS4Login/csc648-su20-team01/application/freshwater/security.db',
#     'db1' :        'mysql://root:abc123@127.0.0.1:3306/CSC_2'}

# app.config['SQLALCHEMY_BINDS'] =  {
#     'user':        'sqlite://' + os.path.join(basedir, 'freshwater/security.db'),
#     #'db1' :        'mysql://root:abc123@127.0.0.1:3306/CSC_2'
#     }

# app.config['SQLALCHEMY_BINDS'] =  {
#     'user':        'sqlite:///security.db',
# #     #'db1' :        'mysql://root:abc123@127.0.0.1:3306/CSC_2'
#      }


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
