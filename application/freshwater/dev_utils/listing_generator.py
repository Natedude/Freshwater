import math
from .scraper import Scraper
#from freshwater import db

import os
import lorem
import glob
from pprint import pprint
import random

class DevUtils(object):
    """
    Run from dev_utils_driver.py in freshwater/ 
    Used to generate fake listings with 
    some scraped, random, and lorem ipsum data
    """
    def __init__(self, db_, models_) -> None:
        self.db = db_
        self.models = models_
        print(type(self.db))
        print(type(self.models))
        #scrape craigslist data
        scraper = Scraper()
        self.listings_dict_list = scraper.run()
        self.listings_index = 0
        print("Results list len: " + str(len(self.listings_dict_list)))
        
        #most popular terms used in real estate listings / ads
        self.listing_keywords_list = ["Granite","countertop","Hardwood","floors","Granite","Pool","spa","Hardwood","floors","Gourmet","kitchen","Stainless steel","appliances","Granite","Stainless steel","appliances","Ocean views","Stainless steel","appliances","Open","floor plan","Wine cellar","Covered","patio","appliances","Vaulted","ceilings","kitchen","dining room","Formal","bar","Guest","house","Vaulted","ceilings","Vaulted","ceilings","dining","room","New","roof","Chef","kitchen","Hardwood","Natural","light","Open","concept","French doors","Media room","Perfect","location","Pool","spa","Open","concept","Move-in","ready","Gas","fireplace","Pool","Dual","sinks", "roomate", "sky", "neighborhood", "mission", "SFSU", "campus","majors", "close", "restaurants", "shopping", "mall", "nearby", "dorm", "walking distance", "walk", "utilities included", "amenities", "class", "apartment", "studio", "looking", "bathroom", "bedroom", "furnished", "furniture"
        ]
        self.keywords_count = len(self.listing_keywords_list)
        print(f"Number of keywords: {self.keywords_count}")
        #remove duplicates
        self.listing_keywords_dict = list(dict.fromkeys(self.listing_keywords_list))
        self.houseType = ["house","apartment", "room"]
        self.sellOrRent = ['rent','sale']
        self.petsAllowed = [0,1]
        self.postalCodes = [ #all SF postal Codes list
            94102, 94103, 94104, 94105, 94107, 94108, 94109, 94110, 94111, 94112, 94114, 94115, 94116, 94117, 94118, 94119, 94120, 94121, 94122, 94123, 94124, 94125, 94126, 94127, 94128, 94129, 94130, 94131, 94132, 94133, 94134, 94137, 94139, 94140, 94141, 94142, 94143, 94144, 94145, 94146, 94147, 94151, 94158, 94159, 94160, 94161, 94163, 94164, 94172, 94177, 94188
        ]
        print("************\n" + self.make_description() + "\n*****************\n")
        
        self.image_paths_list = glob.glob(
            "freshwater/dev_utils/unused_images/*")
        #pprint(self.image_paths_list)
        print("Image paths = " + str(len(self.image_paths_list)))
        
        
        
    def random_image_path(self):
        return random.choice(self.image_paths_list)

    def make_listing_object(self):
        l = self.models.Listings(
            title=self.make_title(), 
            houseType=random.choice(self.houseType), 
            sellOrRent=random.choice(self.sellOrRent),
            petsAllowed=random.choices(self.petsAllowed, weights=(2,1))[0],
            city = "San Francisco", 
            postalCode=random.choice(self.postalCodes),
            street_address = self.make_address(), 
            distance_from_SFSU=random.uniform(0.01, 7.0),
            description = self.make_description(), 
            price = self.make_price(), 
            sqft = self.make_sqft(), 
            bedroomNum = self.make_bedroom_count(),
            bathroomNum = random.choices([1, 2, 3], weights=(4, 2, 1))[0],
            adminAppr=random.choices([0,1], weights=(1,5))[0])
        self.listings_index += 1
        return l

    def make_address(self):
        num = random.randint(1,10000)
        street_name = random.choice(lorem.sentence().split(" ")).capitalize()
        return str(num) + " " + street_name + " St"
               
    def make_title(self):
        return self.listings_dict_list[self.listings_index]['title']

    def make_description(self):
        keywords_to_add_in = random.sample(self.listing_keywords_list, k= ( math.ceil(self.keywords_count / 10.0 )))
        desc = " ".join(keywords_to_add_in) + " " + lorem.paragraph()
        #print(f"Description: {desc}")
        return str(desc)
    
    def make_price(self):
        return self.listings_dict_list[self.listings_index]['price']
    
    def make_sqft(self):
        if 'sqft' in self.listings_dict_list[self.listings_index]:
            return self.listings_dict_list[self.listings_index]['sqft']
        else:
            return random.randint(100,2000)

    def make_bedroom_count(self):
        if 'bed_count' in self.listings_dict_list[self.listings_index]:
            return self.listings_dict_list[self.listings_index]['bed_count']
        else:
            return random.choices([1,2,3,4], weights=(4,3,2,1))[0]
