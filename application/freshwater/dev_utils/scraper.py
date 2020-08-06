#import get to call a get request on the site
from random import random
from bs4 import BeautifulSoup
from requests import get
from pprint import pprint
from warnings import warn
import requests

class Scraper(object):
    def __init__(self):
        self.results_list_of_dicts = []
        
    def run(self, url="https://sfbay.craigslist.org/search/sfc/apa?hasPic=1&availabilityMode=0"):
        posts = self.set_url(url)
        return self.scrape(posts)
        
    def set_url(self, url):
        #get the first page of craigslist page
        # get rid of those lame-o's that post a housing option without a pic using their filter
        response = get(url)
        
        #throw warning for status codes that are not 200
        if response.status_code != 200:
            warn('Request: {}; Status code: {}'.format(requests, response.status_code))

        html_soup = BeautifulSoup(response.text, 'html.parser')

        #get the macro-container for the housing posts
        posts = html_soup.find_all('li', class_='result-row')
        # print(type(posts))  # to double check that I got a ResultSet
        # print(len(posts))  # to double check I got 120 (elements/page)
        # print("-------")
        return posts

    def scrape(self, posts):
        i = 1
        for post in posts: 
            #new dict
            d = {}
            
            #PRICE
            price = post.find('span', class_='result-price').text
            d['price'] = int(price.strip("\n$"))
            #print(price)
            
            #TITLE
            title = post.find('a', class_='result-title hdrlnk').text
            # print(title)
            title = title.strip("\n")
            d['title'] = title
            #print(title)
            
            if post.find('span', class_='housing') is not None:
                
                #if the first element is accidentally square footage
                if 'ft2' in post.find('span', class_ = 'housing').text.split()[0]:
                    #make sqft the first element
                    sqft = int(
                        post.find('span', class_='housing').text.split()[0][:-3])
                    d['sqft'] = sqft
                    
                #if the length of the housing details element is more than 2
                elif len(post.find('span', class_ = 'housing').text.split()) > 2:
                    #therefore element 0 will be bedroom count
                    bedroom_count = post.find('span', class_ = 'housing').text.replace("br", "").split()[0]
                    d['bed_count'] = bedroom_count

                    #and sqft will be number 3, so set these here and append
                    sqft = int(post.find('span', class_ = 'housing').text.split()[2][:-3])
                    d['sqft'] = sqft
                
                #if there is num bedrooms but no sqft
                elif len(post.find('span', class_ = 'housing').text.split()) == 2:

                    #therefore element 0 will be bedroom count
                    bedroom_count = post.find('span', class_ = 'housing').text.replace("br", "").split()[0]
                    d['bed_count'] = bedroom_count
                    
                #NOTE there may be dictionaries without bed_count and or sqft
                # good random guess ranges: sqft 100-2000, bedrooms 1-5
            
            self.results_list_of_dicts.append(d)
            #print('i = ' + str(i))
            #pprint(d)
            #print()
            i += 1
        return self.results_list_of_dicts

if __name__ == "__main__":
    url_1 = "https://sfbay.craigslist.org/search/sfc/apa?hasPic=1&availabilityMode=0"
    s1 = Scraper()
    s1.run(url_1)
