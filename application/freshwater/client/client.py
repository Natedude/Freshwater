from flask import render_template, request, session, redirect, url_for
from wtforms.validators import ValidationError
from ..models import Listings, Images, User
from ..models import db
from wtforms import validators, Form, StringField, PasswordField, validators, BooleanField, SubmitField
from flask_wtf import FlaskForm


###NOTE THIS IS A DEMO for login proccess###
def login(user, passwrd):
    user = request.form['email']
    result= User.query.filter(User.email==user)#result is a Basequery object
    result = result.first()

    #If username given by client does NOT match db User
    if result==None:
        login_form = LoginForm()
        reg_form = RegisterForm()

        # redirect if user not found
        print("client.py: login: login failed 1")
        return render_template("client/dashboard.html", form = login_form, regForm = reg_form, title="Login failed, passwords did not match")

    #if user found in db &
    # passed in pass hash matches db record pass hash
    elif passwrd == str(result.password):
        session['user'] = user# Not using Session yet
        return "Password and Name Match"
    else:
        login_form = LoginForm()
        reg_form = RegisterForm()
        print("client.py: login: login failed 2")
        return render_template("client/dashboard.html", form = login_form, regForm = reg_form, title="Login failed, passwords did not match")
        #elif "user" in session:#if get request and user is already in session, redircts them
#            return redirect(url_for("userLoggedIn"))
#return render_template("test/testLogin.html")


def userLoggedIn():
    if "user" in session:
        user = session["user"]
        return f"<h1>{user}</h1>"
    else:
        render_template("test/testLogin.html", title="Session timed out, relogin in")

def logout():
    session.pop("user", None)
    return redirect(url_for("login"))




class RegisterForm(FlaskForm):
    """ Register """
    # first_name = StringField('first_name', [validators.Length(min=1, max=25)])
    # last_name = StringField('last_name', [validators.Length(min=1, max=25)])
    # phone = StringField('phone', [validators.Length(min=1, max=25)])
    passwordR = PasswordField('password',[validators.Length(min=1,max=25)])
    email = StringField('email', [validators.Length(min=1,max=25)])
    accept_tos = BooleanField('I agree to Terms and Conditions', [validators.DataRequired()])
    sumbitR = SubmitField('Register')

class LoginForm(FlaskForm):
    """ Login """
    email = StringField('email', [validators.Length(min=1,max=25)] )
    password = PasswordField('email', [validators.Length(min=6,max=200)])
    submit_button = SubmitField('Login')
