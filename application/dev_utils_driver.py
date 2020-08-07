#from freshwater.dev_utils import package_structure_printer
from freshwater import db, models, app
import os
from freshwater.dev_utils.DevUtils import DevUtils
from freshwater.database.database import test_insert, insert_row, select_where_value, get_listing_by_id
from pprint import pprint
#from freshwater.dev_utils import listing_generator.DevUtils

# class Driver(object):
#     def __init__(self) -> None:


if __name__ == "__main__":
    d = DevUtils(app, db, models, insert_row, select_where_value)

    #get_listing_by_id usage example
    # wanted_id = 1
    # row = get_listing_by_id(wanted_id)
    # print("get_by_id returns: ")
    # pprint(row)
    # print("\nTitle ONLY: "+row['title'])

    #Image mover testing
    # img_list = d.random_image_paths()
    # source = img_list[0]
    # dest = d.get_dest_path(source)
    # #print before move
    # listings_path = 'freshwater/static/images/listings/'
    # print(os.listdir(listings_path))
    # d.image_mover(source, dest)
    # #print after move
    # print(os.listdir(listings_path))

    #generate users
    d.generate_users_multi(db, models, 10)
    # generate listings
    d.generate_listings_multi(20)
