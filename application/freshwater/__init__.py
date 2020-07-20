from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@127.0.0.1:3306/CSC_2'
#app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@127.0.0.1:3307/CSC'
# above is same line but with different port, 3307 -----------------^
# so you can quickly change if your 3306 port is bound 
# (for example: if you're running a local mysql server)
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False #to suppress warning
db = SQLAlchemy(app)
