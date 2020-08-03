#from freshwater.dev_utils import package_structure_printer
from freshwater import db, models

from freshwater.dev_utils.listing_generator import DevUtils
from freshwater.database.database import test_insert, select_where_value
#from freshwater.dev_utils import listing_generator.DevUtils

# class Driver(object):
#     def __init__(self) -> None:
        

if __name__ == "__main__":
    #d = DevUtils(db, models)
    test_insert()
    value = select_where_value(models.Images, "path", models.Images.path == "test/path")
    print("select_where_value returns: " + str(value)) #TODO error!

