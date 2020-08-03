from flask import render_template, url_for, request, session, redirect, url_for

from freshwater import app
from .search import search
from flask_wtf import FlaskForm
from .client import client
from wtforms import validators, Form, StringField, PasswordField, validators, BooleanField, SubmitField
from flask_security import login_required, current_user
import yaml
import pandas as pd


@app.route('/', methods=['GET', 'POST'])
def home():
    #workaround, pass in saved_options with nothing selected
    saved_options = {}
    saved_options['search_string'] = ''
    saved_options['HousingType'] = []
    saved_options['sellOrRent'] = []
    saved_options['petsAllowed'] = []
    return render_template("home.html", saved_options=saved_options)



@app.route('/query/<sorting>', methods=['GET', 'POST'])
def query(sorting):
    results_list_of_dicts, saved_options = search.query()
    df = pd.DataFrame.from_records(results_list_of_dicts)
    if sorting == 'none':
        return render_template("home.html", results_list_of_dicts=results_list_of_dicts, saved_options=saved_options)
    if sorting=='lowhigh':
        df = df.sort_values(by='price', ascending = True)
    elif sorting=='highlow':
        df = df.sort_values(by='price', ascending = False)
    else:
        df = df.sort_values(by=sorting, ascending = True)

    print(df.columns)
    df_json = df.to_json(orient='records')
    return render_template("home.html", results_list_of_dicts=yaml.safe_load(df_json), saved_options=saved_options)

@app.route('/about')
def about():
    return render_template("about/about_team.html")

@app.route('/post')
def post():
    return render_template("listings/post.html")

@app.route('/confirm')
def confirm():
    return render_template("listings/confirm.html")

@app.route('/profile/<name>')
def profile(name):
    return render_template("about/about_" + name + ".html")

@app.route('/listing', methods=['POST'])
def listing():
    if request.method == 'POST':
        # print("-----------------------------------------")
        data = yaml.safe_load(request.form['listing'])
        # print(data, type(data))
        return render_template("listings/listing.html", data=data)

@app.route('/dashboard')
def dashboard():
    return render_template("/client/dashboard.html")

# Jinja Templating Global Filters
@app.template_filter()
def numberFormat(value):
    return format(int(value), ',d')

@app.route('/signup', methods=['GET', 'POST'])
def register():
    newform = client.RegisterForm()
    if newform.validate_on_submit():
        username = newform.username.data
        password = newform.password.data
        email = newform.email.data

        #username exits check
        user_object = User.query.filter_by(username=username).first()
        if user_object:
            return "Username already taken"

        #add user to DB
        user = User(username = username, password = password, email = email)
        db.session.add(user)
        db.session.commit()

        return render_template("client/login.html", form = newform)
    return render_template("client/login.html", form = newform)


@app.route('/protected')
@login_required
def protected():
    email = current_user.email
    return '<h1>This is protected! Your email is {}</h1>'.format(email)



@app.route("/loginn", methods = ['GET', 'POST'])
def login():
    if request.method == 'GET':
        login_form = client.LoginForm()
        reg_form = client.RegisterForm()
        return render_template("client/login.html", form = login_form, regForm = reg_form)
    
    if request.method == 'POST':
        login_form = client.LoginForm()
        if login_form.validate_on_submit():
            user = login_form.username.data
            print(type(user))
            print('user is : ', user)
            password = login_form.password.data
            return client.login(user, password)
        #     #result= Users.query.filter(Users.email==user)#result is a Basequery object
        #     #result = result.first()
        #     if result==None:
        #         render_template("client/login.html", title="UserName does not exsit")
        #     elif login_form.password.data == str(result.password):
        #         ##session['user'] = user#request.form['username']# Not using Session yet
        #         #return redirect(url_for('protected'))#TODO login with Sessions
        #         return "data Base connection, life connection, everything connection, password"
        #     else:
        #         render_template("test/testLogin.html", title="Login failed, passwords did not match")
        # elif "user" in session:#if get request and user is already in session, redircts them
        #     return redirect(url_for("userLoggedIn"))
        # return render_template("test/testLogin.html")







