#from freshwater.dev_utils import package_structure_printer
from freshwater import db, models

from freshwater.dev_utils.listing_generator import DevUtils
#from freshwater.dev_utils import listing_generator.DevUtils

# class Driver(object):
#     def __init__(self) -> None:
        

if __name__ == "__main__":
    d = DevUtils(db, models)

