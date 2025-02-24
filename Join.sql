--creating
CREATE TABLE BookDetails (
    bookid INT PRIMARY KEY,
    bookprice INT,
    edition VARCHAR(20),
    publisher VARCHAR(50)
);
CREATE TABLE Books (
    bookid INT PRIMARY KEY,
    bookname VARCHAR(100),
    bcategory VARCHAR(50),
    isbn VARCHAR(20)
);

--Inserting
INSERT INTO BookDetails (bookid, bookprice, edition, publisher) VALUES 
(1, 223, 'second', 'Wiley'),
(2, 335, 'first', 'shawms'),
(5, 555, 'third', 'PBB');

INSERT INTO Books (bookid, bookname, bcategory, isbn) VALUES 
(1, 'operating systems', 'computer', '1234567'),
(2, 'Java Black Book', 'programming', '22233367'),
(3, 'Java programming', 'programming', '33333367'),
(4, 'Complete hTML5', 'programming', '4444467'),
(5, 'operating systems', 'computer', '11223344');

--inner join
SELECT bookprice,publisher,bookname,isbn FROM Books Join BookDetails ON books.bookid=BookDetails.bookid;

--LEFT OUTER JOIN
SELECT bookprice,publisher,bookname,isbn FROM Books LEFT OUTER Join BookDetails ON books.bookid=BookDetails.bookid;

--RIGHT OUTER JOIN
SELECT bookprice,publisher,bookname,isbn FROM Books RIGHT OUTER  Join BookDetails ON books.bookid=BookDetails.bookid;

--FULL OUTER JOIN
SELECT bookprice,publisher,bookname,isbn FROM Books FULL OUTER  Join BookDetails ON books.bookid=BookDetails.bookid;

--in clause
SELECT * FROM BookDetails WHERE bookprice IN (223);
SELECT * FROM Books WHERE bcategory IN ('programming');
