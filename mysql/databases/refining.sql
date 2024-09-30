mysql -u root -p

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);


-------------- DISTINCT 
SELECT DISTINCT author_lname from books; 

SELECT DISTINCT released_year from books; 

SELECT DISTINCT author_fname, author_lname from books; 
SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) 
AS 'Distinct Author Names' 
FROM books; 