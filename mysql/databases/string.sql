mysql -u root -p

--Operations on strings 
--Concat 
SELECT CONCAT('h', 'e','l');

SELECT CONCAT(author_fname, '!!!') FROM books;
SELECT CONCAT(author_fname, ' ', author_lname) as 'Author Full Name' FROM books;
SELECT CONCAT_WS(' ', author_fname, author_lname) as 'Author Full Name' FROM books;

--Working with Sub-string 
SELECT SUBSTRING(title, 1, 15) FROM books; 
SELECT SUBSTR(author_lname, 1,1) as 'first letter of last name', author_lname FROM books; 

--Combing String functions 
SELECT CONCAT(SUBSTR(title, 1, 10), '...') AS 'Short Title' FROM books; 
SELECT 
    CONCAT(
        SUBSTR(author_fname, 1,1), '.', 
        SUBSTRING(author_lname,1,1), '.'
    ) 
    AS 'Authors Initials' FROM books; 

--Replace
SELECT REPLACE('cheese brear coffee milk', ' ', ' and ');
SELECT REPLACE(title, ' ', '-') FROM books; 