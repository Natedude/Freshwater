from freshwater.models import Images
from freshwater import db, db_engine
from sqlalchemy.sql import select

def select_where_value(column, expression):
    conn = db_engine.connect()
    s = select([Images]).where(expression)
    result = conn.execute(s)
    row = result.fetchone()
    value = row[column]
    result.close()
    return value

# def add_image_record(path, fk_user_id = None, fk_listing_id=None):
#     img = None
#     if not fk_user_id and fk_listing_id:
#         img = Images(path=path, fk_listing_id=fk_listing_id)  
#     if fk_user_id and not fk_listing_id:
#         img = Images(path=path, fk_listing_id=fk_listing_id)  
#     if not fk_user_id and not fk_listing_id:
#         img = Images(path=path)  
#     if not img:
#         db.session.add(img)
#         db.session.commit()
#         #move image to static folder
        
#         #get the id to return
#         s = select([Images]).where(Images.path == path)
#         results = db.engine
    
# def add_listing_record(title, houseType, sellOrRent, petsAllowed, city, postalCode, street_address, distance_from_SFSU, description):
    
    
    
    
    
#     title = db.Column(db.String(255))
#     houseType = db.Column(db.String(255))
#     sellOrRent = db.Column(db.String(255))
#     petsAllowed = db.Column(db.Integer)
#     city = db.Column(db.String(255))
#     postalCode = db.Column(db.Integer)
#     street_address = db.Column(db.String(255))
#     distance_from_SFSU = db.Column(db.Float)
#     #houseNum = db.Column(db.Integer)
#     #gps = db.Column(db.String)
#     description = db.Column(db.String(255))
#     price = db.Column(db.Integer)
#     sqft = db.Column(db.Integer)
#     bedroomNum = db.Column(db.Integer)
#     bathroomNum = db.Column(db.Integer)
#     adminAppr = db.Column(db.Integer)
