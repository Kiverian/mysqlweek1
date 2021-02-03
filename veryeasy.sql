CREATE DATABASE week1sql;

USE week1sql;

CREATE TABLE cars(

make VARCHAR(20),
model VARCHAR(20),
year DATE
);

INSERT INTO cars (make, model, year)
VALUES ("Rolls Royce", "Wraith", "2020-01-01"),("Mercedes", "WMaybach", "2020-03-01"),("Lamborghini", "Urus", "2020-02-01");
SELECT * FROM CARS;