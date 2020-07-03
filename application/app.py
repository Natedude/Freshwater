from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
from res import config


app = Flask(__name__)
app.config.from_object (config)
db = SQLAlchemy (app)





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
