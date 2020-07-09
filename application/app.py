from flask import Flask, render_template, session, request, redirect, g
from flask_sqlalchemy import SQLAlchemy
import json
from marshmallow import Schema, fields, ValidationError, pre_load
from datetime import datetime

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@127.0.0.1/CSC'
db = SQLAlchemy (app)



class Users(db.Model): #Main User Db All registered Users will be stored here
    __tablename__="Users"
    id=db.Column(db.Integer, primary_key=True)
    email=db.Column(db.String)
    password=db.Column(db.String)

    def __repr__(self):
        return "(r)Username: " + self.email + " : " + str(self.password)

    def __str__(self):
        return "(s)Username: " + self.email + " : " + self.password


class Message(db.Model):
    __tablename__="Message"
    id=db.Column(db.Integer, primary_key=True)
    fkSender=db.Column(db.String)
    fkReciever=db.Column(db.String)
    message=db.Column(db.String)
    timeCreated=db.Column(db.DateTime, default=datetime.utcnow)

    def dict(self):
        return {"id" : self.id, 
        "fkSender" : self.fkSender,
        "fkReciever" : self.fkReciever,
        "message" : self.message,
        "timeCreated" : self.timeCreated}



class Image(db.Model): #Db where all Image paths are stored
    __tablename__="Image" #Name of table
    id=db.Column(db.Integer, primary_key=True) 
    fkIdUser=db.Column(db.Integer) #All images must be associted with the Onwer(/User)'s ID
    fkEmail=db.Column(db.String)  #Email can also be used as a forigen key
    fkIdPost=db.Column(db.Integer) #Forgien Key for the associated Post
    sellOrRent=db.Column(db.String) #Informs us if a sell or Someone looking to rent our a unit
    path=db.Column(db.String) #Relative file path of image

    def __repr__(self):
        return "(r)fkEmail: " + self.fkEmail + " : " + str(self.path)

    def __str__(self):
        return "(s)fkEmail: " + self.fkEmail + " : " + self.path

    def dict(self):
        return {"id" : self.id, 
        "fkIdUser" : self.fkIdUser,
        "fkEmail" : self.fkEmail,
        "fkIdPost" : self.fkIdPost,
        "sellOrRent" : self.sellOrRent, 
        "path" : self.path}





class Post(db.Model):
    __tablename__="Post"
    id=db.Column(db.Integer, primary_key=True)
    fkId=db.Column(db.Integer)
    fkEmail=db.Column(db.String)
    sellOrRent=db.Column(db.String)
    city=db.Column(db.String) 
    street=db.Column(db.String) 
    houseNum=db.Column(db.Integer) 
    gps=db.Column(db.String) 
    description=db.Column(db.String) 
    price=db.Column(db.Integer) 
    roomNum=db.Column(db.Integer) 
    adminAppr=db.Column(db.Integer) 
    timeCreated=db.Column(db.DateTime, default=datetime.utcnow) 
    petsAllowed=db.Column(db.Integer) 
    postalCode=db.Column(db.Integer)

    def dict(self):
        return {"id" : self.id, 
        "fkId" : self.fkId,
        "fkEmail" : self.fkEmail,
        "sellOrRent" : self.sellOrRent,
        "city" : self.city, 
        "street" : self.street,
        "houseNum" : self.houseNum,
        "gps" : self.gps,
        "description" : self.description,
        "price" : self.price, 
        "roomNum" : self.roomNum,
        "adminAppr" : self.adminAppr,
        "timeCreated" : self.timeCreated, 
        "petsAllowed" : self.petsAllowed,
        "postalCode" : self.postalCode}


@app.route('/', methods =['GET', 'POST'])
def home():
    return render_template("home2.html")


@app.route('/search', methods=['GET', 'POST'])
def search():
    if request.method=='POST':
         form = request.form
         search_value = form['search_string']#Variable typed into website to search
         if search_value == "":#If Empty prints entire DB TODO: print all DBs
             all_listings = Users.query.all()#Variable name listing, but is returning all Users
             return render_template('searchListing.html', listing=all_listings, title='All Users', images=None )
         else:
             search = "%{}%".format(search_value)
             results = Users.query.filter(Users.email.like(search)).all()#Apply a like sql search on email names
             images = Image.query.all()#Taking the entire DB.. TODO in a more effcient way later 
             lst = [ x.dict() for x in images]#Putting each element in a row in a dictionary, each row has its own dictionary, list of dictionaries 
             lst.sort(key=lambda x: x["id"])#Orders our list of dictionaries with id from smallest to largest
             data = json.dumps(lst)#Convert to Json String
             return render_template('searchListing.html', listing=results, title='test result page',  images=json.loads(data) )

@app.route('/search2', methods=['GET', 'POST'])
def search2():
    if request.method=='POST':
         form = request.form
         search_value = form['search_string']#Variable typed into website to search
         if search_value == "":#If Empty prints entire DB TODO: print all DBs
             all_listings = Users.query.all()#Variable name listing, but is returning all Users
             return render_template('searchListing2.html', listing=all_listings, title='All Users', images=None )
         else:
             search = "%{}%".format(search_value)
             results = Post.query.filter(Post.description.like(search)).all()#Apply a like sql search on email names
             if len(results) == 0:
                return render_template('searchListing2.html', listing=None, title='Nothing found Search Empty',  images=None ) 
             else:
                images = Image.query.all()#Taking the entire DB.. TODO in a more effcient way later 
                lst = [ x.dict() for x in images]#Putting each element in a row in a dictionary, each row has its own dictionary, list of dictionaries 
                lst.sort(key=lambda x: x["id"])#Orders our list of dictionaries with id from smallest to largest
                lstImages=[]
                for postResult in results:
                    for dictionImage in lst:
                        if dictionImage['fkIdPost'] == postResult.id:#Note that postResult is not a dictionary, Its an alchemey object
                            lstImages.append(dictionImage)
                if len(lstImages)==0:
                    return render_template('searchListing2.html', listing=results, title='test result page',  images=None )
                else:
                    data = json.dumps(lstImages)#Convert to Json String            
                    return render_template('searchListing2.html', listing=results, title='test result page',  images=json.loads(data) )


@app.route('/search3', methods=['GET', 'POST'])
def search3():
    if request.method=='POST':
        form = request.form
        search_value = form['search_string']#Variable typed into website to search
        if search_value == "":#If Empty prints entire DB TODO: print all DBs
            all_listings = Users.query.all()#Variable name listing, but is returning all Users
            return render_template('searchListing2.html', listing=all_listings, title='All Users', images=None )
        else:
            search = "%{}%".format(search_value)
            results = Post.query.filter(Post.description.like(search)).all()#Apply a like sql search on email names
            if len(results) == 0:
                return render_template('searchListing2.html', listing=None, title='Nothing found Search Empty',  images=None ) 
            else:
                #data = json.dumps( self.postMaker(results, Image) )#Convert to Json String            
                images = Image.query.all()#Taking the entire DB.. TODO in a more effcient way later 
                lst = [ x.dict() for x in images]#Putting each element in a row in a dictionary, each row has its own dictionary, list of dictionaries 
                lst.sort(key=lambda x: x["id"])#Orders our list of dictionaries with id from smallest to largest
                frontendReadyPost=[]
                dbPost=results
                for postResult in dbPost:#Loops through all posts
                    for dictionImage in lst:
                        if dictionImage['fkIdPost'] == postResult.id:#Note that postResult is not a dictionary, Its an alchemey object
                            frontendReadyPost.append({
                            'email': postResult.fkEmail,
                            "sellOrRent" : postResult.sellOrRent,
                            "city" : postResult.city, 
                            "street" : postResult.street,
                            "houseNum" : postResult.houseNum,
                            "gps" : postResult.gps,
                            "description" : postResult.description,
                            "price" : postResult.price, 
                            "roomNum" : postResult.roomNum,
                            "adminAppr" : postResult.adminAppr,
                            "petsAllowed" : postResult.petsAllowed,
                            "postalCode" : postResult.postalCode,
                            'path': dictionImage['path']})
                data=json.dumps(frontendReadyPost)
                return render_template('searchListing3.html', listing=None, title='test result page',  images=json.loads(data) )



def postMaker(self, dbPost, dbImage):
    imgList = self.dbTolst(dbImage)#Returns a list of dictionaries
    frontendReadyPost=[]
    for postResult in dbPost:#Loops through all posts
        for dictionImage in imgList:
            if dictionImage['fkIdPost'] == postResult.id:#Note that postResult is not a dictionary, Its an alchemey object
                frontendReadyPost.append({
                    'email': postResult.fkEmail,
                    "sellOrRent" : postResult.sellOrRent,
                    "city" : postResult.city, 
                    "street" : postResult.street,
                    "houseNum" : postResult.houseNum,
                    "gps" : postResult.gps,
                    "description" : postResult.description,
                    "price" : postResult.price, 
                    "roomNum" : postResult.roomNum,
                    "adminAppr" : postResult.adminAppr,
                    "timeCreated" : postResult.timeCreated, 
                    "petsAllowed" : postResult.petsAllowed,
                    "postalCode" : postResult.postalCode,
                    'path': dictionImage['path']})    
    return frontendReadyPost


def dbTolst(self, db): #This Function takes in a table from db and returns a list of dictionaries(each row is a dictionary, columns titles are keys ) ordered by primary id in table
    entireDb = db.query.all()
    lst = [ x.dict() for x in entireDb]#make sure db in use has working dict function within its class
    lst.sort(key=lambda x: x["id"])#Orders our list of dictionaries with id from smallest to largest
    return lst#Remember this needs to be jsonfied to pass it to html



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
