from flask import render_template, request, session, redirect, url_for
from ..models import Listings, Images, User
from ..models import db
from wtforms import validators, Form, StringField, PasswordField, validators, BooleanField, SubmitField
from flask_wtf import FlaskForm





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



###NOTE THIS IS A DEMO for login proccess###
def login(user, passwrd):
    user = request.form['username']
    result= User.query.filter(User.email==user)#result is a Basequery object
    result = result.first()
    if result==None: #If username given by client matches db User
        login_form = LoginForm()
        reg_form = RegisterForm()
        return render_template("client/login.html", form = login_form, regForm = reg_form, title="Login failed, passwords did not match")
    elif passwrd == str(result.password):
        session['user'] = user# Not using Session yet
        return "Password and Name Match"
    else:
        login_form = LoginForm()
        reg_form = RegisterForm()
        return render_template("client/login.html", form = login_form, regForm = reg_form, title="Login failed, passwords did not match")
        #elif "user" in session:#if get request and user is already in session, redircts them
#            return redirect(url_for("userLoggedIn"))
#return render_template("test/testLogin.html")






###NOTE THIS IS A DEMO for login proccess###
def login2():
    if request.method == 'POST':
        user = request.form['username']
        result= User.query.filter(User.email==user)#result is a Basequery object
        result = result.first()
        if result==None:
            render_template("test/testLogin.html", title="UserName does not exsit")
        elif request.form['password'] == str(result.password):
            session['user'] = user#request.form['username']# Not using Session yet
            #return redirect(url_for('protected'))#TODO login with Sessions
            return redirect(url_for("userLoggedIn"))
        else:
            render_template("test/testLogin.html", title="Login failed, passwords did not match")
    elif "user" in session:#if get request and user is already in session, redircts them
                return redirect(url_for("userLoggedIn"))
    return render_template("test/testLogin.html")

###DB needs to be updated to add more features
def registration():
    if request.method == 'POST':
        user = request.form['username']
        userString = "%{}%".format(user)
        if ("@mail.sfsu.edu" not in userString) and ("@sfsu.edu" not in userString):
            return  "<html><body><H1>Email Must Be associated with SFSU</h1><body><html>"
        result= User.query.filter(User.email==user)#result is a Basequery object
        result = result.first()
        if result!=None:
            return  "<html><body><H1>Email Already Reigstered</h1><body><html>"
        psw = request.form['password']
        pswConfirm = request.form['password2']
        if psw != pswConfirm:
            return  "<html><body><H1>Password do note match</h1><body><html>"
        try:
            newUser = User(email=user, password=psw)
            db.session.add(newUser)
            try:
                db.session.commit()
            except:
                return "<html><body><H1>Something went wrong in commit, try again</h1><body><html>"    
        except:
            return "<html><body><H1>Something went wrong, try again</h1><body><html>"
        return "<html><body><H1>Successful Registratioin</h1><body><html>"
    return render_template("test/testRegistration.html")

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
    usernameR = StringField('username',[validators.Length(min=1,max=25)])
    passwordR = PasswordField('email',[validators.Length(min=1,max=25)])
    email = StringField('password', [validators.Length(min=1,max=25)])
    accept_tos = BooleanField('I agree to Terms and Conditions', [validators.DataRequired()])
    sumbitR = SubmitField('Register')

class LoginForm(FlaskForm):
    """ Login """
    email = StringField('email', [validators.Length(min=1,max=25)] )
    password = PasswordField('email', [validators.Length(min=6,max=200)])
    submit_button = SubmitField('Login')