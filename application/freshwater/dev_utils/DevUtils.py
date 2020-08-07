import math

#from sqlalchemy.sql.expression import insert
from .scraper import Scraper
#from freshwater import db
#from ..database.database import add_image_record
from flask_security.utils import encrypt_password

import shutil
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
    def __init__(self, app, db_, models_, insert, select) -> None:
        self.app = app
        self.db = db_
        self.models = models_
        self.insert = insert
        self.select = select
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
        # self.postalCodes = [ #all SF postal Codes list
        #     94102, 94103, 94104, 94105, 94107, 94108, 94109, 94110, 94111, 94112, 94114, 94115, 94116, 94117, 94118, 94119, 94120, 94121, 94122, 94123, 94124, 94125, 94126, 94127, 94128, 94129, 94130, 94131, 94132, 94133, 94134, 94137, 94139, 94140, 94141, 94142, 94143, 94144, 94145, 94146, 94147, 94151, 94158, 94159, 94160, 94161, 94163, 94164, 94172, 94177, 94188
        # ]
        #test desc
        self.make_description()
        self.image_paths_list = glob.glob(
            "freshwater/dev_utils/unused_images/*")
        #pprint(self.image_paths_list)
        print("Image paths = " + str(len(self.image_paths_list)))
        print("***********************************")



    def make_listing_object(self):
        l = self.models.Listings(
            title=self.make_title(),
            houseType=random.choice(self.houseType),
            sellOrRent=random.choice(self.sellOrRent),
            petsAllowed=random.choices(self.petsAllowed, weights=(2,1))[0],
            city = "San Francisco",
            postalCode=94132,
            street_address="1600 Holloway Ave",
            distance_from_SFSU=round(random.uniform(0.01, 7.0),2),
            description = self.make_description(),
            price = self.make_price(),
            sqft = self.make_sqft(),
            bedroomNum = self.make_bedroom_count(),
            bathroomNum = random.choices([1, 2, 3], weights=(4, 2, 1))[0],
            adminAppr=random.choices([0,1], weights=(1,5))[0],
            fk_user_id = random.randint(1, self.num_users)
        )
        self.listings_index += 1
        return l

    # def make_address(self):
    #     # num = random.randint(1,10000)
    #     # street_name = random.choice(lorem.sentence().split(" ")).capitalize()
    #     # return str(num) + " " + street_name + " St"


    def make_title(self):
        return self.listings_dict_list[self.listings_index]['title']

    def make_description(self):
        keywords_to_add_in = random.sample(self.listing_keywords_list, k= ( math.ceil(self.keywords_count / 10.0 )))
        desc = " ".join(keywords_to_add_in) + " " + lorem.paragraph()
        print(f"Description: {desc}")
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

    #moves image and returns dest path
    def image_mover(self, src_path, dest_path):
        dest_path = shutil.move(src_path, dest_path)
        print("image_mover: Image moved.")
        print('source_path: ' + src_path)
        print('dest_path: ' + dest_path)
        return dest_path

    #move images given by a list of paths
    #returns list of new paths
    def image_path_list_mover(self, img_path_list):
        dest_list = []
        for i in img_path_list:
            dest = self.get_dest_path(i)
            #create correct path for server
            dest_list.append(dest.split("freshwater")[1])
            self.image_mover(i, dest)
        self.delete_source_paths(img_path_list)
        return dest_list

    #get a list of img paths from unused_images with no repeats
    # and with it more likely to have a lower number of images
    def random_image_paths(self):
        num_images = 1#random.choices([1, 2, 3, 4], weights=(4, 3, 2, 1))[0]
        img_path_list = random.sample(self.image_paths_list, num_images)
        return img_path_list

    #deletes img paths from self.image_paths_list so they aren't later used again after being moved
    def delete_source_paths(self, img_path_list):
        for x in img_path_list:
            try:
                self.image_paths_list.remove(x)
            except ValueError:
                print("lisintg_generator: delete_source_paths: ERROR deleting")
        return self.image_paths_list

    #takes in source path and returns dest path
    def get_dest_path(self, source_path):
        dest_dir = "freshwater/static/images/listings/"
        #print(source_path)
        #get filename
        filename = source_path.split("unused_images/")[1]
        #add filename to end of new path
        dest_path = dest_dir + filename
        #print(dest_path)
        return dest_path

    def generate_listings_multi(self, num_listings_to_make):
        self.num_users = len(self.models.User.list_of_dicts())
        for i in range(num_listings_to_make):
            self.generate_listing()

    def generate_listing(self):
        # make listing object
        # auto chooses a user id to associate with listing
        l = self.make_listing_object()
        # insert & get id
        listing_id = self.insert(l)
        user_id = l.dict()['fk_user_id']
        print(f"********\nCreating listing with User Id: {user_id}")
        #pprint(user_id)

        # pick 1-4 images
        img_list = self.random_image_paths()
        # make new dest paths returned from image_path_list_mover
        # move images from unused_images to dest
        # del moved images from self.image_paths_list (done inside mover)
        img_list = self.image_path_list_mover(img_list)

        # make image objects
        #user_id = random.randint(1,len(self.models.User.list_of_dicts()))
        for i in img_list:
            img = self.models.Images(path=i, fk_listing_id=listing_id, fk_user_id=user_id)
            self.insert(img)

        # insert them with listing id

    def generate_user(self, db_, models_):
        with self.app.app_context():
            rand_words = lorem.paragraph()
            rand_words = rand_words.split(" ")
            for i in range(len(rand_words)):
                rand_words[i] = rand_words[i].strip(".,;:'\"")
                #print(rand_words[i])
                #remove duplicates
            rand_words = list(dict.fromkeys(rand_words))
            chosen = random.sample(rand_words, 2)
            first_name = chosen[0] + str(random.randint(1, 777))
            #last_name = chosen[1]
            # phone_number = "(415) 338-1111"
            email_end = random.choice(['random.com', 'sfsu.edu'])
            email = first_name + "@" + email_end
            #from freshwater import app
            pass_hash = encrypt_password('123456')
            if "sfsu.edu" in email_end:
                sfsu_confirmed = 1
            else:
                sfsu_confirmed = 0
            u = self.models.User(email=email, password=pass_hash, active=True, sfsu_confirmed=sfsu_confirmed)
            self.insert(u)
            pprint(u)

    def generate_users_multi(self, db_, models_, num_users_to_create):
        for i in range(num_users_to_create):
            self.generate_user(db_, models_)
