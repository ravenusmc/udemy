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