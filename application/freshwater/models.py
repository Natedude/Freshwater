from datetime import datetime
from sqlalchemy import ForeignKey, Table, Column
from sqlalchemy.orm import relationship
from sqlalchemy.ext.declarative import declarative_base
from freshwater import db, app
from flask_security import Security, SQLAlchemyUserDatastore, UserMixin, RoleMixin


# This Function takes in a table from db and returns a list of dictionaries for each existing record in that table (each row is a dictionary, columns titles are keys ) ordered by primary id in table
def model_to_list_of_dicts(model):
    # print("**** dbTolst: before query")
    print(".",end='')
    #print()
    records_in_model = model.query.all()
    # print("**** dbTolst: after query")
    # make sure db in use has working dict function within its class
    lst = [x.dict() for x in records_in_model]
    # Orders our list of dictionaries with id from smallest to largest
    lst.sort(key=lambda x: x["id"])
    return lst  # Remember this needs to be jsonfied to pass it to html


class Messages(db.Model):
    __tablename__ = "Messages"
    id = db.Column(db.Integer, primary_key=True)
    fkSender = db.Column(db.String(255))
    fkReciever = db.Column(db.String(255))
    message = db.Column(db.String(400))
    timeCreated = db.Column(db.DateTime, default=datetime.utcnow)
    unread = db.Column(db.Integer) #0 is read, 1 is unread
    fk_listing_id = db.Column(db.Integer)

    def dict(self):
        return {"id": self.id,
                "fkSender": self.fkSender,
                "fkReciever": self.fkReciever,
                "message": self.message,
                "timeCreated": self.timeCreated,
                "fk_listing_id": self.fk_listing_id
                }


    @staticmethod
    def list_of_dicts():
        return model_to_list_of_dicts(Messages)

class Images(db.Model):  # Db where all Image paths are stored
    #__bind_key__ = 'db1'
    __tablename__ = "Images"  # Name of table
    id = db.Column(db.Integer, primary_key=True)
    # All images must be associted with the Onwer(/User)'s ID & Listing ID
    fk_user_id = db.Column(db.Integer, ForeignKey('User.id')) # Forgien Key for
    user = relationship("User")
    fk_listing_id = db.Column(db.Integer, ForeignKey('Listings.id')) # Forgien Key for
    listing = relationship("Listings")
    # Informs us if a sell or Someone looking to rent our a unit
    # sellOrRent = db.Column(db.String)
    path = db.Column(db.String(255))  # Relative file path of image

    def dict(self):
        return {"id": self.id,
                "fk_user_id": self.fk_user_id,
                # "fkEmail": self.fkEmail,
                "fk_listing_id": self.fk_listing_id,
                # "sellOrRent": self.sellOrRent,
                "path": self.path}

    @staticmethod
    def list_of_dicts():
        return model_to_list_of_dicts(Images)


class Listings(db.Model):
    #__bind_key__ = 'db1'
    __tablename__ = "Listings"
    id = db.Column(db.Integer, primary_key=True)
    fk_user_id = db.Column(db.Integer)
    #fkEmail = db.Column(db.String)
    timeCreated = db.Column(db.DateTime, default=datetime.utcnow)
    title = db.Column(db.String(255))
    houseType = db.Column(db.String(255))
    sellOrRent = db.Column(db.String(255))
    petsAllowed = db.Column(db.Integer)
    city = db.Column(db.String(255))
    postalCode = db.Column(db.Integer)
    street_address = db.Column(db.String(255))
    distance_from_SFSU = db.Column(db.Float)
    #houseNum = db.Column(db.Integer)
    #gps = db.Column(db.String)
    description = db.Column(db.String(8000))
    price = db.Column(db.Integer)
    sqft = db.Column(db.Integer)
    bedroomNum = db.Column(db.Integer)
    bathroomNum = db.Column(db.Integer)
    adminAppr = db.Column(db.Integer)

    def dict(self):
        return {
                "id": self.id,
                "fk_user_id": self.fk_user_id,
                #"fkEmail": self.fkEmail,
                "timeCreated": self.timeCreated,
                "title": self.title,
                "houseType": self.houseType,
                "sellOrRent": self.sellOrRent,
                "petsAllowed": self.petsAllowed,
                "city": self.city,
                "postalCode": self.postalCode,
                "street_address": self.street_address,
                "distance_from_SFSU": self.distance_from_SFSU,
                #"houseNum": self.houseNum,
                #"gps": self.gps,
                "description": self.description,
                "price": self.price,
                "sqft": self.sqft,
                "bedroomNum": self.bedroomNum,
                "bathroomNum": self.bathroomNum,
                "adminAppr": self.adminAppr,
                }

    @staticmethod
    def list_of_dicts():
        return model_to_list_of_dicts(Listings)


#Define models
roles_users = db.Table('roles_users',
        db.Column('user_id', db.Integer(), db.ForeignKey('User.id')),
        db.Column('role_id', db.Integer(), db.ForeignKey('Role.id')),
        # info={'bind_key': 'user'}
        )


class Role(db.Model, RoleMixin):
    # __bind_key__ = 'user'
    __tablename__ = "Role"
    id = db.Column(db.Integer(), primary_key=True)
    name = db.Column(db.String(80), unique=True)
    description = db.Column(db.String(255))


class User(db.Model, UserMixin):
    # __bind_key__ = 'user'
    __tablename__ = "User"
    id = db.Column(db.Integer, primary_key=True)
    # first_name = db.Column(db.String(255))
    # last_name = db.Column(db.String(255))
    # phone_number = db.Column(db.String(25))
    email = db.Column(db.String(255), unique=True)
    password = db.Column(db.String(255))
    active = db.Column(db.Boolean())
    sfsu_confirmed = db.Column(db.Integer()) # 0 no, 1 yes
    date_registered = db.Column(db.DateTime(), default=datetime.utcnow)
    roles = db.relationship('Role',
                            secondary=roles_users,
                            backref=db.backref('users', lazy='dynamic'))
    def dict(self):
        return {
            'id': self.id,
            # 'first_name': self.first_name,
            # 'last_name' : self.last_name,
            # 'phone_number': self.phone_number,
            'email': self.email,
            'password': self.password,
            'active': self.active,
            'sfsu_confirmed': self.sfsu_confirmed,
            'date_registered': self.date_registered,
            'roles': self.roles
        }

    @staticmethod
    def list_of_dicts():
        return model_to_list_of_dicts(User)


user_datastore = SQLAlchemyUserDatastore(db, User, Role)
app.security = Security(app, user_datastore)

