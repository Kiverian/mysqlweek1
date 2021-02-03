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


SELECT * FROM top_movies
WHERE title LIKE "%s%"
ORDER BY release_date DESC;