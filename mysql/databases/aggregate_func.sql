mysql -u root -p

------- COUNT 
SELECT COUNT(DISTINCT author_fname) FROM books; 

SELECT count(title) FROM books WHERE title LIKE '%the%';

------ GROUP BY 
SELECT author_lname FROM books
GROUP BY author_lname; 

SELECT author_lname, count(*) AS Count FROM books
GROUP BY author_lname ORDER BY Count DESC; 

SELECT released_year, count(*) AS Count FROM books
GROUP BY released_year ORDER BY Count DESC; 

------ Min and Max 

SELECT MIN(released_year) FROM books; 
SELECT MAX(pages) FROM books; 

--- Subqueries 

SELECT title, pages FROM books 
ORDER BY pages DESC 
LIMIT 1; 

-- To this 
SELECT * FROM books 
WHERE pages = (SELECT MIN(pages) FROM books);

SELECT title, released_year FROM books
WHERE released_year = (SELECT min(released_year) FROM books);

----- Grouping by multiple columns 
SELECT concat(author_fname, ' ', author_lname) AS author, count(*) 
FROM books
GROUP BY author_fname, author_lname;

