from flask import render_template, url_for
from freshwater import app
from .search import search

@app.route('/', methods=['GET', 'POST'])
def home():
    #workaround, pass in saved_options with nothing selected
    saved_options = {}
    saved_options['search_string'] = ''
    saved_options['HousingType'] = []
    saved_options['sellOrRent'] = []
    saved_options['petsAllowed'] = []
    return render_template("home.html", saved_options=saved_options)

@app.route('/query', methods=['GET', 'POST'])
def query():
    return search.query()

@app.route('/about')
def about():
    return render_template("about/about_team.html")

@app.route('/post')
def post():
    return render_template("post.html")

@app.route('/confirm')
def confirm():
    return render_template("confirm.html")

@app.route('/profile/<name>')
def profile(name):
    return render_template("about/about_" + name + ".html")



@app.route('/listing')
def listing():
    return render_template("listing.html")

# Jinja Templating Global Filters
@app.template_filter()
def numberFormat(value):
    return format(int(value), ',d')

