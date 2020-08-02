from pprint import pprint
from ..models import Images
from freshwater import db, db_engine
from sqlalchemy.sql import select

def test_insert():
    img = Images(path="test/path")
    insert_row(img)

def select_where_value(column, expression):
    conn = db_engine.connect()
    s = select([Images]).where(expression)
    result = conn.execute(s)
    row = result.fetchone()
    value = row[column]
    result.close()
    return value

#pass in row as a sqlalchemy object returned from model constructor
#returns id sqlalchemy created for it
def insert_row(row):
    print("Row inserted:" + str(row.__tablename__))
    db.session.add(row)
    db.session.commit()
    row_id = row.id
    print("Inserted: " +str(row.__tablename__)+ " with ID = " + str(row_id))
    return row.id

# def get_id_by_row(row):
#     s = select([Images]).where(row.c.id ==
#     result = db.engine(s)

#returns id if success or -1 if failed
def add_image_record(path, fk_user_id = None, fk_listing_id=None) -> int:
    img = Images(path=path, fk_listing_id=fk_listing_id, fk_user_id=fk_user_id)
    # img = None
    # if not fk_user_id and fk_listing_id:
    #     img = Images(path=path, fk_listing_id=fk_listing_id)  
    # if fk_user_id and not fk_listing_id:
    #     img = Images(path=path, fk_user_id=fk_user_id)  
    # if not fk_user_id and not fk_listing_id:
    #     img = Images(path=path)  
    if img:
        print("Img inserted")
        pprint(img)
        #insert and return id
        return insert_row(img)
        #return img.c.id
    else:
        return -1
    
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

