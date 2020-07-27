CREATE DATABASE IF NOT EXISTS CSC_3;
SHOW DATABASES;
USE CSC_3;
SHOW TABLES;

############################################################

CREATE TABLE IF NOT EXISTS Users (
	email VARCHAR(20), 
	password VARCHAR(20),
    id INT NOT NULL AUTO_INCREMENT, 
    PRIMARY KEY(id));

INSERT INTO Users (email, password) 
						values ("Dan", "abc123");
INSERT INTO Users (email, password) 
						values ("G", "abc1233");
INSERT INTO Users (email, password) 
						values ("Danny", "bcc123");
INSERT INTO Users (email, password) 
						values ("Bruce", "cba321");

########################################################

CREATE TABLE IF NOT EXISTS Images (
	fkIdPost INT UNSIGNED NOT NULL,
	path VARCHAR(200) NULL,
	id INT NOT NULL AUTO_INCREMENT, 
	PRIMARY KEY(id));

INSERT INTO Images (fkIdPost, path) 
						values (1, "/static/images/listings/EastOaklandstreetview.jpg"); 
INSERT INTO Images (fkIdPost, path)  
						values (2, "/static/images/listings/lovely.jpg"); 
INSERT INTO Images (fkIdPost, path)  
						values (3, "/static/images/listings/apart.jpg"); 
INSERT INTO Images (fkIdPost, path)  
						values (4, "/static/images/listings/pexels-photo-1918291.jpeg"); 
INSERT INTO Images (fkIdPost, path)  
						values (5, "/static/images/listings/pexels-photo-106399.jpeg"); 
                        
########################################################

CREATE TABLE IF NOT EXISTS Messages (
  id INT NOT NULL AUTO_INCREMENT,
  fkSender VARCHAR(45) NOT NULL,
  fkReciever VARCHAR(45) NOT NULL,
  message VARCHAR(1000) NOT NULL,
  timeCreated TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id));


INSERT INTO Messages (fkSender, fkReciever, message) 
							values ("G", "Dan", "This is a test, Please can I rent your home, this is my first time doing this");

INSERT INTO Messages (fkSender, fkReciever, message) 
							values ("Danny", "Dan", "I hear G wants to rent your place, I will pay more as long as he doesn't get this place");
                            
########################################################

CREATE TABLE IF NOT EXISTS Listings(
  id INT NOT NULL AUTO_INCREMENT,
  #fkId INT NOT NULL,
  #fkEmail VARCHAR(45) NOT NULL,
  timeCreated TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  title VARCHAR(45) NOT NULL,
  houseType Varchar(10) NOT NULL,
  sellOrRent VARCHAR(4) NOT NULL,
  petsAllowed INT NULL,
  city VARCHAR(45) NULL,
  postalCode INT NULL,
  street_address VARCHAR(45) NULL,
  distance_from_SFSU FLOAT(6) NULL,
  #houseNum INT NULL,
  #gps VARCHAR(45) NULL,
  description VARCHAR(1000) NULL,
  price INT UNSIGNED NULL,
  sqft INT UNSIGNED NULL,
  bedroomNum INT UNSIGNED NULL,
  bathroomNum INT UNSIGNED NULL,
  adminAppr INT NULL,

  PRIMARY KEY (id));


INSERT INTO Listings (title, houseType, sellOrRent, city, postalCode, street_address, distance_from_SFSU, description, price, sqft, bedroomNum, bathroomNum, adminAppr) 
						values ("First Poster its a deal", "house", "rent", "San Francisco", 94115, "9999 Main St.", 5.0,"Nice place, you won't ever want to leave", 6000, 574, 4, 3, 1);

INSERT INTO Listings (title, houseType, sellOrRent, city, postalCode, street_address, distance_from_SFSU, description, price, sqft, bedroomNum, bathroomNum, adminAppr)
 						values (" 4 bedroom, nice view Near SFSU campus", "apartment", "rent", "San Francisco", 94116, "66666 San Jose St.", 1.0,  
                        "Don't miss out! This gorgeous remodeled Victorian is a renters dream. Fully furnished 3 bedroom 1 bathroom waiting for you. The pictures speak for themselves.", 3000, 800, 4, 2, 1);

INSERT INTO Listings (title, houseType, sellOrRent, city, postalCode, street_address, distance_from_SFSU, description, price, sqft, bedroomNum, bathroomNum, adminAppr)
 						values ("Room For Rent/All Utilities Included","room", "rent", "San Francisco", 94117, "22222 Lombard St.", 3.5, 
                        "Looking for roommate to fill extra room in a large apartment August 1st. $900 all utilities included. No lease/200$ deposit required/street parking only/10 minute walk to BART station and stores, close to freeway. I pay electric and internet but I will include it in the $900 per month, also fully furnished. Room needs to be filled by August1st, text if interested. 

- Two bedroom with Spacious Closets
- Second Floor Unit
- New tile kitchen and bathroom flooring
- Subtle paint colors", 
						2000, 200, 1, 1, 1);

INSERT INTO Listings (title, houseType, sellOrRent, city, postalCode, street_address, distance_from_SFSU, description, price, sqft, bedroomNum, bathroomNum, adminAppr, petsAllowed)
 						values ("1 Bed Apt. for Rent", "apartment", "rent", "San Francisco", 95111, "1879 Geneva St.", 0.2, 
                        "Spacious, sunny, private apartment - 1 bedroom, 1 bath, with living room/studio space (it can be rearrange as you like), August 1, or flexible date. Looking for someone temporary, 6 months and maybe longer. Sorry no pets and no couples.",
                        1000, 577, 4, 3, 1, 0);

INSERT INTO Listings (title, houseType, sellOrRent, city, postalCode, street_address, distance_from_SFSU, description, price, sqft, bedroomNum, bathroomNum, adminAppr) 
						values ("4 Bed House for Sale", "house", "sale", "San Francisco", 95112, "1879 Beechmont Ave.", 0.4,
                        "Need more sunny space to spend a pandemic? Need interesting layout and architectural details? Need a sense of home and style? Come live in our grand Victorian lady.", 
                        2200000, 1577, 4, 3, 1);
