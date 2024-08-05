mysql -u root -p


--Basics 
INSERT INTO cats (name, age)
VALUES ('Whiskers', 7);

SELECT * FROM cats;

--Multiple values 
INSERT INTO cats (name, age)
VALUES ('Spany', 5), ('PeeWee', 12);

--Exercise
CREATE TABLE people 
(
    first_name varchar(20),
    last_name varchar(20),
    age int
);

INSERT INTO people (first_name, last_name, age)
VALUES ("Tina", "Belcher", 13);

--Working with Not Null
--Null means that there is no value at all 
CREATE TABLE cats2
(
    name VARCHAR(100) NOT NULL, 
    age int NOT NULL
);

INSERT INTO cats2 (name, age)
VALUES ('Spany', 5), ('PeeWee', 12);

DESC cats2;

--Default values
CREATE TABLE cats3 
(
    name VARCHAR(100) DEFAULT 'mystery',
    age INT DEFAULT 5
);

INSERT INTO cats3 (age) VALUES (2);

--Primary Keys:
CREATE TABLE cats4 
(
    cat_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(100) DEFAULT 'mystery',
    age INT DEFAULT 5
);
