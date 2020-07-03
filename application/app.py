from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
from res import config


app = Flask(__name__)
app.config.from_object (config)
db = SQLAlchemy (app)







class User(db.Model):
    __tablename__="Users"
    UID=db.Column(db.Integer, primary_key=True)
    UserName=db.Column(db.String)
    Password=db.Column(db.String)

    def __repr__(self):
        return "(r)Username: " + self.UserName + " : " + str(self.Password)

    def __str__(self):
        return "(s)Username: " + self.UserName + " : " + self.Password



@app.route('/')
def home():
    return render_template("home.html")


@app.route('/about')
def about():
    return render_template("about_team.html")


@app.route('/profile/<name>')
def profile(name):
    return render_template("about_" + name + ".html")


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True, port=5000)
