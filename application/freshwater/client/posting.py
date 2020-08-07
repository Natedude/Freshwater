from flask import render_template, request, session, redirect, url_for
from ..models import Listings, Images, User
from ..models import db
from freshwater import UPLOAD_FOLDER


def makeListing(dics):
    newListing = Listings(
                        fk_user_id = dics['fk_user_id'],
                        title = dics['title'],
                        houseType = dics['houseType'], #dics['typeHome'],
                        sellOrRent = dics['sellOrRent'], #dics['rentOrSell'],
                        petsAllowed = 1, #int('1'),
                        city = dics['city'], #dics['city'],
                        postalCode = int(dics['postalCode']),#int(dics['area']),
                        street_address = dics['street_address'],
                        distance_from_SFSU=dics['distance_to_SFSU'],
                        description = dics['description'],
                        price = int(dics['price']),
                        sqft = int(dics['sqft']),
                        bedroomNum =int(dics['bedroomNum']),# int(dics['numBeds']),
                        bathroomNum =int(dics['bathroomNum']),# int(dics['numBaths']),
                        adminAppr = 0
                        )
    db.session.add(newListing)
    db.session.commit()
    db.session.refresh(newListing)
    saveImage(dics['image1'], newListing.id)
    return redirect(url_for('home'))


def saveImage(filename, listId):
    path = "/" + UPLOAD_FOLDER + "/" + filename
    newImage = Images(
        fk_listing_id = listId,
        path=path
    )
    db.session.add(newImage)
    db.session.commit()
