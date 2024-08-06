mysql -u root -p

CREATE TABLE cats 
(
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age int, 
    PRIMARY KEY (cat_id)
);

--READ 
SELECT * FROM cats;
SELECT name FROM cats;
SELECT name, age FROM CATS;

--WHERE Clause 
SELECT * FROM cats 
WHERE age = 4; 

SELECT * from cats 
WHERE age > 10;

--RAPID FIRE EXERCISES 
SELECT cat_id FROM cats; 
SELECT name, breed FROM cats;
SELECT name, age FROM cats WHERE breed = 'Tabby';
SELECT cat_id, age FROM cats WHERE cat_id = age;

--Aliases 
SELECT cat_id as id, name FROM cats;

-- Update
UPDATE cats set breed = 'Shorthair'
WHERE breed = 'Tabby';

UPDATE employees SET current_status = 'laid-off', last_name = 'who cares';

--Exercise 
UPDATE cats SET name = 'Jack'
WHERE name = 'Jackson';

UPDATE cats set age = 12 
WHERE breed = 'Maine Coon';

--Delete 
DELETE FROM cats WHERE name = 'Egg';

DELETE FROM cats WHERE age = 4; 
DELETE FROM cats WHERE cat_id = age; 
DELETE FROM cats; 
