USE week1sql;

CREATE TABLE top_movies(

id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR (220),
release_date DATE,
rating DECIMAL (2,1)
); 

INSERT INTO top_movies (title, release_date, rating)
VALUES
("The Godfather", "1972-03-24", 9.2),
("Paid In Full", "2002-02-10", 7.1),
("Wolf of Wall Street", "2013-10-25", 8.2),
("Life", "1999-04-16", 6.8),
("Training Day", "2001-10-05", 7.7),
("John Q", "2002-02-15", 7.1),
("He Got Game", "1998-05-01", 6.9),
("Mechanic Resurrection", "2016-08-16", 5.7),
("The Pursuit of Happyness", "2006-12-15", 8.0),
("Friday", "1995-04-26", 7.3);

ALTER TABLE top_movies
ADD first_name VARCHAR (220), 
ADD last_name VARCHAR (220);
UPDATE top_movies SET first_name = "Francis", last_name = "Coppola"
 WHERE id =1; 

 UPDATE top_movies SET first_name = "Charles", last_name = "Stones"
 WHERE id =2; 

 UPDATE top_movies SET first_name = "Martin", last_name = "Scorsese"
 WHERE id =3; 

 UPDATE top_movies SET first_name = "Tedd", last_name = "Demme"
 WHERE id =4; 

 UPDATE top_movies SET first_name = "Antoine", last_name = "Fuqua"
 WHERE id =5; 

UPDATE top_movies SET first_name = "Nick", last_name = "Cassavets"
 WHERE id =6; 

 UPDATE top_movies SET first_name = "Spike", last_name = "Lee"
 WHERE id =7; 

 UPDATE top_movies SET first_name = "Dennis", last_name = "Gansel"
 WHERE id =8; 

 UPDATE top_movies SET first_name = "Gabriele", last_name = "Muccino"
 WHERE id =9; 
 
 UPDATE top_movies SET first_name = "F", last_name = "Gary Gary"
 WHERE id =10; 


-- Concat first name and last name to create full name
SELECT CONCAT(first_name, " ", last_name) AS full_name FROM top_movies;

-- Ordering by last name alphabetically
SELECT * FROM top_movies
ORDER BY last_name;

-- Deletes movies where the last name is between R-Z alphabetically
DELETE FROM top_movies
WHERE last_name BETWEEN "R" AND "Z";

-- Order by last name then display the first 3 entries
SELECT * FROM top_movies
ORDER BY last_name
LIMIT 3;