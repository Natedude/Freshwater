from sqlalchemy import create_engine
from sqlalchemy_utils import create_database, database_exists
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from wtforms import *
from pprint import pprint

print("******** Initializing App & Database ********")
###########

app = Flask(__name__)

UPLOAD_FOLDER = 'static/images/listings'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.debug = True
app.config['SECURITY_REGISTERABLE'] = True
app.config['SECURITY_PASSWORD_SALT'] = 'mysalt'
app.config['SECURITY_SEND_REGISTER_EMAIL'] = False
#TODO comment out next line for production
app.config['ENV'] = 'development'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False #to suppress warning
app.config['SQLALCHEMY_ECHO'] = False  # to print out SQL queries
app.secret_key ='replace later'

#set db info
proto = 'mysql'
user = 'root'
password = ''#'abc123'
host = '127.0.0.1'
port = '3306'
# NOTE use this to select the database you want to use
# it will be created (and have tables and relationships created)if it does not exist
database = 'CSC_777'

# This engine just used to query for list of databases
mysql_url = '{0}://{1}:{2}@{3}:{4}'.format(proto, user, password, host, port)
mysql_engine = create_engine(mysql_url)
pprint(mysql_engine)

# Query for existing databases
existing_databases = mysql_engine.execute("SHOW DATABASES;")
# Results are a list of single item tuples, so unpack each tuple
existing_databases = [d[0] for d in existing_databases]
pprint(existing_databases)

url = '{0}://{1}:{2}@{3}:{4}/{5}'.format(proto,
                                         user, password, host, port, database)
app.config['SQLALCHEMY_DATABASE_URI'] = url

# Not sure if we even ever use this
db_engine = create_engine(url)
pprint(db_engine)

db = SQLAlchemy(app)
pprint(db)

if not database_exists(url):
    print("Created database {0}".format(database))
    create_database(url)
    from .database.init_db import run as init_db
    init_db(db)
else:
    print(f"Did NOT create database, {database} already exists.")


############
print("******** FINISHED Initializing App & Database ********")
