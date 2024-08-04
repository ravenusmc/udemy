--Create a database 
-- Do not put spaces 
mysql -u root -p

CREATE DATABASE <name>;
CREATE DATABASE pet_shop;

SHOW DATABASES; 

DROP DATABASE pet_shop;

USE pet_shop; 
--think of it as double clicking on the database 

******************
--Tables 

CREATE TABLE cats 
(
    name varchar(100),
    age int
);

CREATE TABLE dogs 
(
    name varchar(50),
    breed varchar(50),
    age int
);

--To see table 
SHOW TABLES;
SHOW COLUMNS FROM cats;
DESC cats;

--Deleting tables
DROP TABLE cats; 



