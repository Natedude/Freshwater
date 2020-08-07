from flask import render_template, request, session, redirect, url_for
from ..models import Listings, Images, User
from ..models import db


def makeListing(dics):
    newListing = Listings(
                        fk_user_id = dics['fk_user_id'],
                        title = 'new title',
                        houseType = 'rent', #dics['typeHome'],
                        sellOrRent = 'myType', #dics['rentOrSell'], 
                        petsAllowed = 1, #int('1'),
                        city = 'LoveDoc', #dics['city'],
                        postalCode = 123,#int(dics['area']),
                        street_address = 123,#dics['street'],
                        distance_from_SFSU = float(12),
                        description = "Here", #dics['description'],
                        price = 123,#int(dics['price']),
                        sqft = int(123),
                        bedroomNum =123123,# int(dics['numBeds']),
                        bathroomNum =123,# int(dics['numBaths']),
                        adminAppr = 0
                        )
    db.session.add(newListing)   
    db.session.commit()
    db.session.refresh(newListing)
    saveImage(dics['image1'], newListing.id)
    
    return render_template("/")


def saveImage(path, listId):
    newImage = Images(
        fk_listing_id = listId,
        path       = path
    )
    db.session.add(newImage)   
    db.session.commit()
