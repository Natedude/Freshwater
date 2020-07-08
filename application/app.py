from flask import Flask, render_template, session, request, redirect, g
from flask_sqlalchemy import SQLAlchemy



app = Flask(__name__)
#app.config.from_object (config)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@127.0.0.1/CSC'
db = SQLAlchemy (app)







class Users(db.Model):
    __tablename__="Users"
    id=db.Column(db.Integer, primary_key=True)
    email=db.Column(db.String)
    password=db.Column(db.String)

    def __repr__(self):
        return "(r)Username: " + self.email + " : " + str(self.password)

    def __str__(self):
        return "(s)Username: " + self.email + " : " + self.password


class Post(db.Model):
    __tablename__="Post"
    id=db.Column(db.Integer, primary_key=True)
    fkid=db.Column(db.Integer)
    fkemail=db.Column(db.String)
    image=db.Column(db.string)

    def __repr__(self):
        return "(r)Username: " + self.email + " : " + str(self.image)

    def __str__(self):
        return "(s)Username: " + self.email + " : " + self.image



@app.route('/', methods =['GET', 'POST'])
def home():
    return render_template("home.html")


@app.route('/search', methods=['GET', 'POST'])
def search():
    if request.method=='POST':
         form = request.form
         search_value = form['search_string']
         if search_value == "":
             all_listings = Users.query.all()#Variable name listing, but is returning all Users
             return render_template('searchListing.html', listing=all_listings, pageTitle='All Users')
         else:
             search = "%{}%".format(search_value)
             results = Users.query.filter(Users.email.like(search)).all()
             return render_template('searchListing.html', listing=results, title='test result page' )
    


@app.route('/searchListing')
def searchListing():
    return render_template("searchListing.html")

@app.route('/about')
def about():
    return render_template("about_team.html")


@app.route('/profile/<name>')
def profile(name):
    return render_template("about_" + name + ".html")


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True, port=5000)
