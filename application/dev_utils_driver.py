#from freshwater.dev_utils import package_structure_printer
from freshwater import db, models, app
import os
from freshwater.dev_utils.DevUtils import DevUtils
from freshwater.database.database import test_insert, insert_row, select_where_value
#from freshwater.dev_utils import listing_generator.DevUtils

# class Driver(object):
#     def __init__(self) -> None:
        

if __name__ == "__main__":
    d = DevUtils(app, db, models, insert_row, select_where_value)
    # test_insert()
    # value = select_where_value(models.Images, "path", models.Images.path == "test/path")
    # print("select_where_value returns: " + str(value)) #TODO error!
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
    #d.generate_users_multi(db, models, 50)
    # generate listings
    #d.generate_listings_multi(120)
