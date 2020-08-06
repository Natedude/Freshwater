from pprint import pprint
from ..models import Images, Listings
from freshwater import db, db_engine
from sqlalchemy.sql import select
import sys

def test_insert():
    img = Images(path="test/path")
    insert_row(img)

#returns first row that fulfills .where expression
# Ex:
# value = select_where_value(models.Images, "path", models.Images.path == "test/path")
def select_where_value(table, column_name_str, expression):
    conn = db_engine.connect()
    s = select([table]).where(expression)
    result = conn.execute(s)
    row = result.fetchone()
    # print("select_where_value: Row:")
    # pprint(row)
    # print(str(type(row)))
    value = row[column_name_str]
    # print(value)
    result.close()
    return value

# get a listing by an id
# access variables with:
# row['description']

def get_listing_by_id(wanted_id):
    table = Listings
    expression = (Listings.id == wanted_id)
    conn = db_engine.connect()
    s = select([table]).where(expression)
    result = conn.execute(s)
    row = result.fetchone()
    # print("select_where_value: Row:")
    # pprint(row)
    # print(str(type(row)))
    # value = row[column_name_str]
    # print(value)
    result.close()
    return row

#pass in row as a sqlalchemy object returned from model constructor
#returns id sqlalchemy created for it
def insert_row(row):
    #print("Row inserted:" + str(row.__tablename__))
    try:
        db.session.add(row)
        db.session.commit()
        row_id = row.id
        print("Inserted: " +str(row.__tablename__)+ " with ID = " + str(row_id))
        return row.id
    except:
        print("insert_row: ERROR:")
        print("sys.exc_info:\n" +
        str(sys.exc_info()[0]) + "\n" +
        str(sys.exc_info()[1]))
        print("**********ERROR**********")
        return (-1) #failed

# TODO Add Listing

# TODO Add Message

# TODO Check if email is SFSU verified function
