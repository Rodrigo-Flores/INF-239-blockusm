import mysql.connector

mydb = mysql.connector.connect(host="localhost", user="root", password="pass", database="usm")

mycursor = mydb.cursor()

# change columns names in table as id 	original_language 	original_title 	popularity 	release_date 	vote_average 	vote_count 	genre 	overview 	revenue 	runtime 	tagline
mycursor.execute("ALTER TABLE peliculas CHANGE `COL 2` `id` INT(11) NOT NULL, CHANGE `COL 3` `original_language` VARCHAR(255) NOT NULL, CHANGE `COL 4` `original_title` VARCHAR(255) NOT NULL, CHANGE `COL 5` `popularity` FLOAT NOT NULL, CHANGE `COL 6` `release_date` DATE NOT NULL, CHANGE `COL 7` `vote_average` FLOAT NOT NULL, CHANGE `COL 8` `vote_count` INT(11) NOT NULL, CHANGE `COL 9` `genre` VARCHAR(255) NOT NULL, CHANGE `COL 10` `overview` VARCHAR(255) NOT NULL, CHANGE `COL 11` `revenue` INT(11) NOT NULL, CHANGE `COL 12` `runtime` INT(11) NOT NULL, CHANGE `COL 13` `tagline` VARCHAR(255) NOT NULL")


mydb.commit()

mycursor.close()
mydb.close()

