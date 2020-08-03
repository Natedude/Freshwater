from flask import render_template, request
from ..models import Listings, Images, to_dict
import pprint
from sqlalchemy import or_, and_
from freshwater import db#, meta

def query():
    if request.method == 'GET':
        print("**************************query**************************")
        args = request.args
        forms = request.form
        #print("forms: " + str(forms.to_dict()))
        #print("getlist('HousingType')" + str(args.getlist('HousingType')))
        for k, v in args.items():
            #print(f"{k}: {v}  (if there is a list, you will only see first item)")
            print(f"{k}: " + str(args.getlist(k)))
            args['search_string']
        # access as a dictionary and key = 'search_string'
        # but now because there can be multiple checkboxes, need to use args.getlist('param_name')

        # package data to send for backend seaarch and
        # also persistent search and filters in saved_options
        saved_options = {}
        search = query_helper(args, saved_options, 'search_string', '', take_first_element=True)
        housingType = query_helper(args, saved_options, 'HousingType', [])
        sellOrRent = query_helper(args, saved_options, 'sellOrRent', [])
        petsAllowed = query_helper(args, saved_options, 'petsAllowed', [])

        if not (search or housingType or sellOrRent or petsAllowed):
            all_listings = db.session.query(Listings)
            results_list_of_dicts = postMaker(all_listings)
        else:
            results = backendSearch(search_string=search, housingType=housingType, sellOrRent=sellOrRent, petsAllowed=petsAllowed)
            # returns a list of dictionaries matching images with associated posts
            results_list_of_dicts = postMaker(results)
        #pretty_print_results_dictionaries_list(results_list_of_dicts)

    return results_list_of_dicts, saved_options

def query_helper(args, saved_options, str_key, if_not_present, take_first_element:bool = False):
    t = None
    if str_key in args.keys():
        t = args.getlist(str_key)
        if take_first_element:
            saved_options[str_key] = t[0]  # can be list
            return t[0]
        else:
            saved_options[str_key] = t  # can be list
    else:
        saved_options[str_key] = if_not_present
    return t

# searches listings for search_string in title and desc
# and also applies filter options
def backendSearch(search_string=None, housingType=None, sellOrRent=None, petsAllowed=None):
    results = search_title_and_desc(search_string)
    results = filter_in_list(
        results,Listings.houseType, housingType)
    results = filter_in_list(
        results, Listings.sellOrRent, sellOrRent)
    results = filter_in_list(
        results, Listings.petsAllowed, petsAllowed)
    return results

# searches title and description for search string
# and if empty, returns all Listings
def search_title_and_desc(search):
    if search:
        search = "%{}%".format(search)
        results = Listings.query.filter(or_(
            Listings.description.ilike(search),
            Listings.title.ilike(search)))
    else:
        results = Listings.query
    pprint.pprint(results)
    print(type(results))
    return results

# returns sqlalchemy BaseQuery object
# that has been filtered to include only records/rows that have values in list
def filter_in_list(results, table_column, list_):
    if list_:
        results = results = results.filter(table_column.in_(list_))
    pprint.pprint(results.all())
    print(type(results))
    return results

def pretty_print_results_dictionaries_list(list_of_results):
    for d in list_of_results:
        print(f"\n************ ID: { d['id'] }  TITLE: { d['title'] }  ************")
        pprint.pprint(d)
    print("")

def postMaker(results):  # Takes in Alchemy objects and returns python list of dictionaries for Post/Image db tables. Returns similiar to Json
    # imgList = model_to_list_of_dicts(dbImage)  # Returns a list of dictionaries
    frontend_ready_list_of_dicts = []
    for postResult in results:  # Loops through all posts
        for dictionImage in Images.list_of_dicts():
            # Note that postResult is not a dictionary, Its an alchemey object
            if dictionImage['fkIdPost'] == postResult.id:
                # print("******** postMaker: before")
                frontend_ready_list_of_dicts.append(
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
                # print("******** postMaker: after")
    return frontend_ready_list_of_dicts


# def pretty(d, indent=0):
#    for key, value in d.items():
#       print('\t' * indent + str(key))
#       if isinstance(value, dict):
#          pretty(value, indent+1)
#       else:
#          print('\t' * (indent+1) + str(value))

"""OLD BACKEND SEARCH """
# def backendSearch(numRooms=None, buyOrRent=None, userTypedSearch=None, price=None, housingType=None):
#     # if (userTypedSearch != None) and (userTypedSearch != ""):
#     listingTypedRes = Listings.query.filter(
#         Listings.description.like(userTypedSearch))
#     if (numRooms != None) and (numRooms != 0) and (numRooms != '0'):
#         listingTypedRes = listingTypedRes.filter(
#             Listings.roomNum.like(numRooms))
#     # ToDO Create a between a between for price
#     if (housingType != None):
#         listingTypedRes = listingTypedRes.filter(
#             Listings.houseType.like(housingType))
#     return listingTypedRes.all()
