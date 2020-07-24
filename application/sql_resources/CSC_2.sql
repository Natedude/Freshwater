CREATE DATABASE IF NOT EXISTS CSC_2;
SHOW DATABASES;
USE CSC_2;
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
  fkId INT NOT NULL,
  fkEmail VARCHAR(45) NOT NULL,
  title VARCHAR(45) NOT NULL,
  houseType Varchar(10) NOT NULL,
  sellOrRent VARCHAR(4) NOT NULL,
  city VARCHAR(45) NULL,
  street VARCHAR(45) NULL,
  houseNum INT NULL,
  gps VARCHAR(45) NULL,
  description VARCHAR(1000) NULL,
  price INT UNSIGNED NULL,
  roomNum INT UNSIGNED NULL,
  adminAppr INT NULL,
  timeCreated TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  petsAllowed INT NULL,
  postalCode INT NULL,
  PRIMARY KEY (id));


INSERT INTO Listings (fkId, fkEmail, title, houseType, sellOrRent, city, description, price, roomNum) 
						values (1, "Dan", "First Poster its a deal", "house", "Rent", "SF", "Nice place, you won't ever want to leave", 1000,4);

INSERT INTO Listings (fkId, fkEmail, title, houseType, sellOrRent, city, description, price, roomNum) 
						values (2, "G", " 4 bedroom, nice view Near SFSU campus", "apartment", "Rent", "SF", "Don't miss out! This gorgeous remodeled Victorian is a renters dream. Fully furnished 3 bedroom 1 bathroom waiting for you. The pictures speak for themselves.", 3000, 4);

INSERT INTO Listings (fkId, fkEmail, title, houseType, sellOrRent, city, description, price, roomNum, adminAppr, petsAllowed, postalCode) 
						values (4, "Bruce", "Room For Rent/All Utilities Included","room", "Rent", "SF", "Looking for roommate to fill extra room in a large apartment August 1st. $900 all utilities included. No lease/200$ deposit required/street parking only/10 minute walk to BART station and stores, close to freeway. I pay electric and internet but I will include it in the $900 per month, also fully furnished. Room needs to be filled by August1st, text if interested. 

- Two bedroom with Spacious Closets
- Second Floor Unit
- New tile kitchen and bathroom flooring
- Subtle paint colors", 2000, 1, 1, 0, 94070);

INSERT INTO Listings (fkId, fkEmail, title, houseType, sellOrRent, city, description, price, roomNum) 
						values (3, "Danny", "First Poster its a deal", "house", "Rent", "SF", "Nice place, you won't ever want to leave", 1000,4);

