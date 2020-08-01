from flask import render_template, request, session, redirect, url_for
from ..models import Listings, Images, User
from ..models import db





def makeListing(dics):
    newListing = Listings(
                        title = 'new title',
                        houseType = 'house',
                        sellOrRent = 'rent', 
                        petsAllowed = '1',
                        city = dics['city'],
                        postalCode = dics['area'],
                        street_address = dics['street'],
                        distance_from_SFSU = 12,
                        description = 'testing',
                        price = dics['price'],
                        sqft = 123,
                        bedroomNum = 123,
                        bathroomNum = 123,
                        adminAppr = 1
                        )
    db.session.add(newListing)   
    db.session.commit()
    return render_template("listings/post.html")