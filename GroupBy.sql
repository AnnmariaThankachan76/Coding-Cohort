--CREATING
CREATE TABLE Books (
    bookid INT PRIMARY KEY,
    bookname VARCHAR(100),
    bcategory VARCHAR(50),
    isbn VARCHAR(20)
);
--Inserting
INSERT INTO Books (bookid, bookname, bcategory, isbn) VALUES 
(1, 'operating systems', 'computer', '1234567'),
(2, 'Java Black Book', 'programming', '22233367'),
(3, 'Java programming', 'programming', '33333367'),
(4, 'Complete hTML5', 'programming', '4444467'),
(5, 'operating systems', 'computer', '11223344');

--1.Problem: List the number of books in each book category
SELECT COUNT(bookname),bcategory FROM Books GROUP BY bcategory;



--creating
CREATE TABLE BookDetails (
    bookid INT PRIMARY KEY,
    bookprice INT,
    edition VARCHAR(20),
    publisher VARCHAR(50)
);

--inserting
INSERT INTO BookDetails (bookid, bookprice, edition, publisher) VALUES 
(1, 223, 'second', 'Wiley'),
(2, 335, 'first', 'Shawms'),
(5, 555, 'third', 'PBB'),
(4, 444, 'second', 'Wiley'),
(3, 333, 'first', 'Wiley');

--1.Problem: List the number of books published by each publisher in the descending order of the  publisher name.
SELECT COUNT(bookid),publisher FROM BookDetails GROUP BY publisher  ORDER BY publisher DESC;

--Q. Problem: List the number of books published by each publisher and thepublisher name, who has published more than one book.
SELECT COUNT(bookid) ,publisher FROM BookDetails GROUP BY publisher HAVING Count(bookid)>2;

--2.Problem: List the number of books available in each edition in the ascendingorder of edition.
SELECT COUNT(bookid),edition From BookDetails GROUP BY edition ORDER BY  edition  ASC;

--3Problem: List the number of books available(with more than 1 books) in each edition in the ascending order of edition.
SELECT COUNT(bookid),edition,publisher FROM BookDetails GROUP BY edition HAVING COUNT(bookid)>1 ORDER BY edition ASC;





