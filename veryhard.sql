-- Use Database
USE week1sql;

-- Create Table within Database with 4 columns. ID will update automatically
CREATE TABLE cars (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	make VARCHAR (20),
    model VARCHAR (20),
    year DATE
);

-- Insert Data into table (1st Entry)
INSERT INTO cars (make, model, year)
VALUES 
("Rolls Royce", "Wraith", "2020-01-01"), 
("Mercedes", "Maybach", "2020-03-01"), 
("Lamborghini", "Urus", "2020-02-01");

-- Insert Data into table (2nd Entry)
INSERT INTO cars (make, model, year)
VALUES 
("Ferrari", "488", "2020-03-19"), 
("Tesla", "Model 3", "2020-04-15"), 
("Bentley", "Continental GT", "2020-07-03");

-- Add two new columns for prices and colors
ALTER TABLE cars
ADD price INT,
ADD color VARCHAR(50);

-- Update for all cars with price and color values
UPDATE cars 
SET price = 69420, color = "Black"
WHERE id = 1;

UPDATE cars 
SET price = 25000, color = "White"
WHERE id = 2;

UPDATE cars 
SET price = 29995, color = "Red"
WHERE id = 3;

UPDATE cars 
SET price = 79990, color = "Red"
WHERE id = 4;

UPDATE cars 
SET price = 49990, color = "Blue"
WHERE id = 5;

UPDATE cars 
SET price = 28295, color = "Black"
WHERE id = 6;


-- JOIN make and model under one column name
SELECT CONCAT(make, " ", model) AS make_and_model
FROM cars;

-- Display all car makes as well as the number of times these car models repeat
SELECT make AS Make, COUNT(make) AS Matches 
FROM cars 
GROUP BY make;
