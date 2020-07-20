from flask import render_template
from freshwater import app
from .search import search

@app.route('/', methods=['GET', 'POST'])
def home():
    return render_template("home.html")

@app.route('/query', methods=['GET', 'POST'])
def query():
    return search.query()

@app.route('/about')
def about():
    return render_template("about/about_team.html")

@app.route('/profile/<name>')
def profile(name):
    return render_template("about/about_" + name + ".html")