from flask import Flask, render_template, session, request, redirect, g
from flask_sqlalchemy import SQLAlchemy
import json
from marshmallow import Schema, fields, ValidationError, pre_load
from datetime import datetime
import pprint  # for logging and pretty printing dictionary objects when debugging

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@127.0.0.1:3307/CSC'
db = SQLAlchemy(app)


class Users(db.Model):  # Main User Db All registered Users will be stored here
    __tablename__ = "Users"
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String)
    password = db.Column(db.String)

    def __repr__(self):
        return "(r)Username: " + self.email + " : " + str(self.password)

    def __str__(self):
        return "(s)Username: " + self.email + " : " + self.password


class Message(db.Model):
    __tablename__ = "Message"
    id = db.Column(db.Integer, primary_key=True)
    fkSender = db.Column(db.String)
    fkReciever = db.Column(db.String)
    message = db.Column(db.String)
    timeCreated = db.Column(db.DateTime, default=datetime.utcnow)

    def dict(self):
        return {"id": self.id,
                "fkSender": self.fkSender,
                "fkReciever": self.fkReciever,
                "message": self.message,
                "timeCreated": self.timeCreated}


class Image(db.Model):  # Db where all Image paths are stored
    __tablename__ = "Image"  # Name of table
    id = db.Column(db.Integer, primary_key=True)
    # All images must be associted with the Onwer(/User)'s ID
    fkIdUser = db.Column(db.Integer)
    fkEmail = db.Column(db.String)  # Email can also be used as a forigen key
    fkIdPost = db.Column(db.Integer)  # Forgien Key for the associated Post
    # Informs us if a sell or Someone looking to rent our a unit
    sellOrRent = db.Column(db.String)
    path = db.Column(db.String)  # Relative file path of image

    def __repr__(self):
        return "(r)fkEmail: " + self.fkEmail + " : " + str(self.path)

    def __str__(self):
        return "(s)fkEmail: " + self.fkEmail + " : " + self.path

    def dict(self):
        return {"id": self.id,
                "fkIdUser": self.fkIdUser,
                "fkEmail": self.fkEmail,
                "fkIdPost": self.fkIdPost,
                "sellOrRent": self.sellOrRent,
                "path": self.path}


class Listing(db.Model):
    __tablename__ = "Listing"
    id = db.Column(db.Integer, primary_key=True)
    fkId = db.Column(db.Integer)
    fkEmail = db.Column(db.String)
    title = db.Column(db.String)
    houseType = db.Column(db.String)
    sellOrRent = db.Column(db.String)
    city = db.Column(db.String)
    street = db.Column(db.String)
    houseNum = db.Column(db.Integer)
    gps = db.Column(db.String)
    description = db.Column(db.String)
    price = db.Column(db.Integer)
    roomNum = db.Column(db.Integer)
    adminAppr = db.Column(db.Integer)
    timeCreated = db.Column(db.DateTime, default=datetime.utcnow)
    petsAllowed = db.Column(db.Integer)
    postalCode = db.Column(db.Integer)

    def dict(self):
        return {"id": self.id,
                "fkId": self.fkId,
                "fkEmail": self.fkEmail,
                "title": self.title,
                "houseType": self.houseType,
                "sellOrRent": self.sellOrRent,
                "city": self.city,
                "street": self.street,
                "houseNum": self.houseNum,
                "gps": self.gps,
                "description": self.description,
                "price": self.price,
                "roomNum": self.roomNum,
                "adminAppr": self.adminAppr,
                "timeCreated": self.timeCreated,
                "petsAllowed": self.petsAllowed,
                "postalCode": self.postalCode}


@app.route('/', methods=['GET', 'POST'])
def home():
    return render_template("home_search.html")


def backendSearch(numRooms=None, buyOrRent=None, userTypedSearch=None, price=None, housingType=None):
    # if (userTypedSearch != None) and (userTypedSearch != ""):
    listingTypedRes = Listing.query.filter(
        Listing.description.like(userTypedSearch))
    if (numRooms != None) and (numRooms != 0) and (numRooms != '0'):
        listingTypedRes = listingTypedRes.filter(
            Listing.roomNum.like(numRooms))
    # ToDO Create a between a between for price
    if (housingType != None):
        listingTypedRes = listingTypedRes.filter(
            Listing.houseType.like(housingType))
    return listingTypedRes.all()


# TODO update to match search4
@app.route('/API/Search', methods=['GET', 'POST'])
def searchAPI():
    if request.method == 'POST':
        form = request.form
        # Variable typed into website to search
        userTypedSearch = form['search_string']
        # TODO  add if statement for 0 value or 6(or more)
        numRooms = form['numRooms']
        buyOrRent = form['buyOrRent']
        if buyOrRent == '0':
            buyOrRent = None
        results = backendSearch(numRooms=None, buyOrRent=None,
                                userTypedSearch=userTypedSearch, price=None)  # ToDO change price
        return results
    else:
        return '[]'


@app.route('/query', methods=['GET', 'POST'])
def query():
    if request.method == 'GET':
        print("***********************************query******")
        args = request.args
        for k, v in args.items():
            print(f"{k}: {v}")
        # access as a dictionary and key = 'search_string'
        s = args['search_string']
        if s == "":  # and housingType == None:
            all_listings = Listing.query.all()
            lstResults = postMaker(all_listings, Image)
        else:
            search = "%{}%".format(s)
            results = backendSearch(numRooms=None, buyOrRent=None, userTypedSearch=search,
                                    price=None, housingType='House')  # ToDO change price
            # returns a list of dictionaries matching images with associated posts
            lstResults = postMaker(results, Image)
        pretty_print_results_dictionaries_list(lstResults)
    return render_template("home_search.html")

# Special search function for vertical prototype. Logic will need to change for future version


@app.route('/search4', methods=['GET', 'POST'])
def search4():
    if request.method == 'POST':
        form = request.form  # Gets info from HTML form
        housingType = form['housingType']  # returns a string
        if housingType == '0':  # if housingType == '0' means user did not specify a type
            housingType = None
        # Variable typed into website to search
        userTypedSearch = form['search_string']
        # If Empty prints entire DB for vertical Prototype Version only
        if userTypedSearch == "" and housingType == None:
            all_listings = Listing.query.all()
            all_users = Users.query.all()
            all_messages = Message.query.all()
            lstResults = postMaker(all_listings, Image)
            data = json.dumps(lstResults)
            # pprint.pprint("DATA: " + str(data))
            # pprint.pprint("DATA: " + str(lstResults[0]))
            # pprint.pprint(lstResults[0])
            pretty_print_results_dictionaries_list(lstResults)
            return render_template('searchListing.html', title='Entire DataBase', images=json.loads(data), users=all_users, message=all_messages)
        else:
            search = "%{}%".format(userTypedSearch)
            # numRooms = form['numRooms']#TODO  add if statement for 0 value or 6(or more)
            # buyOrRent = form['buyOrRent']#Not numRooms are not needed for VerticalPrototype but will be in future
            results = backendSearch(numRooms=None, buyOrRent=None, userTypedSearch=search,
                                    price=None, housingType=housingType)  # ToDO change price
            # returns a list of dictionaries matching images with associated posts
            lstResults = postMaker(results, Image)
            # Converts to Json type, Note that Alchemey objects sometimes need to go through this proccess
            data = json.dumps(lstResults)
            # pprint.pprint(lstResults[0])
            pretty_print_results_dictionaries_list(lstResults)
            return render_template('searchListing.html', listing=None, title='test result page',  images=json.loads(data))
    else:
        return '[]'


def pretty_print_results_dictionaries_list(list_of_results):
    for d in list_of_results:
        print("\n************ TITLE: " + d['title'] + " ************")
        pprint.pprint(d)
    print("")


def postMaker(dbPost, dbImage):  # Takes in Alchemy objects and returns python list of dictionaries for Post/Image db tables. Returns similiar to Json
    imgList = dbTolst(dbImage)  # Returns a list of dictionaries
    frontendReadyPost = []
    for postResult in dbPost:  # Loops through all posts
        for dictionImage in imgList:
            # Note that postResult is not a dictionary, Its an alchemey object
            if dictionImage['fkIdPost'] == postResult.id:
                frontendReadyPost.append(
                    {
                        'id': postResult.id,
                        'email': postResult.fkEmail,
                        "title": postResult.title,
                        "houseType": postResult.houseType,
                        "sellOrRent": postResult.sellOrRent,
                        "city": postResult.city,
                        "street": postResult.street,
                        "houseNum": postResult.houseNum,
                        "gps": postResult.gps,
                        "description": postResult.description,
                        "price": postResult.price,
                        "roomNum": postResult.roomNum,
                        "adminAppr": postResult.adminAppr,
                        # "timeCreated" : postResult.timeCreated, #ToDO Need to convert to string, datetime object does not covert directly with json.loads
                        "petsAllowed": postResult.petsAllowed,
                        "postalCode": postResult.postalCode,
                        'path': dictionImage['path']
                    })
    return frontendReadyPost


def dbTolst(db):  # This Function takes in a table from db and returns a list of dictionaries(each row is a dictionary, columns titles are keys ) ordered by primary id in table
    entireDb = db.query.all()
    # make sure db in use has working dict function within its class
    lst = [x.dict() for x in entireDb]
    # Orders our list of dictionaries with id from smallest to largest
    lst.sort(key=lambda x: x["id"])
    return lst  # Remember this needs to be jsonfied to pass it to html


def queryedTolst(db):  # This Function takes in a table from db and returns a list of dictionaries(each row is a dictionary, columns titles are keys ) ordered by primary id in table
    # make sure db in use has working dict function within its class
    lst = [x.dict() for x in db]
    # Orders our list of dictionaries with id from smallest to largest
    lst.sort(key=lambda x: x["id"])
    return lst  # Remember this needs to be jsonfied to pass it to html


@app.route('/about')
def about():
    return render_template("about_team.html")


@app.route('/profile/<name>')
def profile(name):
    return render_template("about_" + name + ".html")


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True, port=5000)
