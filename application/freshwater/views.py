from flask import render_template, url_for, request, session, redirect, url_for
from freshwater import app
from .search import search
from flask_wtf import FlaskForm
from .client import client
from wtforms import validators, Form, StringField, PasswordField, validators, BooleanField, SubmitField



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

@app.route('/dashboard')
def dashboard():
    return render_template("messages.html")

# Jinja Templating Global Filters
@app.template_filter()
def numberFormat(value):
    return format(int(value), ',d')

@app.route('/signup', methods=['GET', 'POST'])
def register():
    newform = RegisterForm()
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


@app.route("/login", methods = ['GET', 'POST'])
def login():
    if request.method == 'GET':
        login_form = LoginForm()
        reg_form = RegisterForm()
        return render_template("client/login.html", form = login_form, regForm = reg_form)
    
    if request.method == 'POST':
        login_form = LoginForm()
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





class RegisterForm(FlaskForm):
    """ Register """
    usernameR = StringField('username',[validators.Length(min=1,max=25)])
    passwordR = PasswordField('email',[validators.Length(min=1,max=25)])
    email = StringField('password', [validators.Length(min=1,max=25)])
    accept_tos = BooleanField('I agree to Terms and Conditions', [validators.DataRequired()])
    sumbitR = SubmitField('Register')

class LoginForm(FlaskForm):
    """ Login """
    username = StringField('username', [validators.Length(min=1,max=25)] )
    password = PasswordField('email', [validators.Length(min=1,max=25)])
    submit_button = SubmitField('Login')


def invalid_cred(form, field):
    """ Username/Password check """
    username_enter = form.username.data
    password_enter = field.data
    #check username valid
    user_object = User.query.filter_by(username=username_enter).first()
    if user_object is None:
        raise ValidationErro("Incorrect username/password")
    elif password_enter != user_object.password:
        raise ValidationError("Incorrect username/password")
