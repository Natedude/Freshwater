from flask import render_template, request, session, redirect, url_for
from ..models import Listings, Images, User
from ..models import db





def makeListing(dics):
    newListing = Listings(
                        fkId = dics['fkId'],
                        title = 'new title',
                        houseType = dics['typeHome'],
                        sellOrRent = dics['rentOrSell'], 
                        petsAllowed = int('1'),
                        city = dics['city'],
                        postalCode = int(dics['area']),
                        street_address = dics['street'],
                        distance_from_SFSU = float(12),
                        description = dics['description'],
                        price = int(dics['price']),
                        sqft = int(123),
                        bedroomNum = int(dics['numBeds']),
                        bathroomNum = int(dics['numBaths']),
                        adminAppr = 1
                        )
    db.session.add(newListing)   
    db.session.commit()
    db.session.refresh(newListing)
    saveImage(dics['image1'], newListing.id)
    
    return render_template("listings/post.html")


def saveImage(path, usrId):
    newImage = Images(
        fkIdPost = usrId,
        path     = path
    )
    db.session.add(newImage)   
    db.session.commit()
