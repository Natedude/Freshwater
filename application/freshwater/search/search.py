from flask import render_template, request
from ..models import Listings, Images
import pprint

def query():
    if request.method == 'GET':
        print("**************************query**************************")
        args = request.args
        for k, v in args.items():
            print(f"{k}: {v}")
        # access as a dictionary and key = 'search_string'
        s = args['search_string']
        housingType = None
        if 'HousingType' in args.keys():
            housingType = args['HousingType']
        if s == "" and housingType == None:
            all_listings = Listings.query.all()
            results_list_of_dicts = postMaker(all_listings, Images)
        else:
            search = "%{}%".format(s)
            results = backendSearch(numRooms=None, buyOrRent=None, userTypedSearch=search,
                                    price=None, housingType=housingType)  # ToDO change price
            # returns a list of dictionaries matching images with associated posts
            results_list_of_dicts = postMaker(results, Images)
        pretty_print_results_dictionaries_list(results_list_of_dicts)
    return render_template("home.html", results_list_of_dicts=results_list_of_dicts)

def backendSearch(numRooms=None, buyOrRent=None, userTypedSearch=None, price=None, housingType=None):
    # if (userTypedSearch != None) and (userTypedSearch != ""):
    listingTypedRes = Listings.query.filter(
        Listings.description.like(userTypedSearch))
    if (numRooms != None) and (numRooms != 0) and (numRooms != '0'):
        listingTypedRes = listingTypedRes.filter(
            Listings.roomNum.like(numRooms))
    # ToDO Create a between a between for price
    if (housingType != None):
        listingTypedRes = listingTypedRes.filter(
            Listings.houseType.like(housingType))
    return listingTypedRes.all()


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
                        # 'email': postResult.fkEmail,
                        "title": postResult.title,
                        "houseType": postResult.houseType,
                        "sellOrRent": postResult.sellOrRent,
                        "city": postResult.city,
                        "postalCode": postResult.postalCode,
                        "street_address": postResult.street_address,
                        "distance_from_SFSU": postResult.distance_from_SFSU,
                        #"houseNum": postResult.houseNum,
                        # "gps": postResult.gps,
                        "description": postResult.description,
                        "price": postResult.price,
                        "sqft": postResult.sqft,
                        "bedroomNum": postResult.bedroomNum,
                        "bathroomNum": postResult.bathroomNum,
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
