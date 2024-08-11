mysql -u root -p

--Operations on strings 
--Concat 
SELECT CONCAT('h', 'e','l');

SELECT CONCAT(author_fname, '!!!') FROM books;
SELECT CONCAT(author_fname, ' ', author_lname) as 'Author Full Name' FROM books;
SELECT CONCAT_WS(' ', author_fname, author_lname) as 'Author Full Name' FROM books;