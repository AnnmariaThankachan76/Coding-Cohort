--table
create table Customer
(id int ,
 name varchar(20),
 salary int,
 dept varchar(20));

--Inserting
INSERT INTO Customer (id,name, salary, dept) 
VALUES 
    (1,'Anu', 4000, 'Chemical'),
    (2,'Bob', 5000, 'Mechanical'),
    (3,'Catherine', 5500, 'Electrical'),
    (4,'David', 6000, 'Computer Science');

--ORDER IN descendinfg order
SELECT * FROM Customer ORDER BY salary DESC;


--AGGREGATE FUNCTIONS

--SUM
SELECT SUM(salary) as Total FROM Customer ; 

--avg
--avg of salary greater then 4000
SELECT AVG(salary) as AVERAGE FROM Customer
WHERE salary>4000; 

--MIN and MAX
SELECT MIN(salary) as MIN_SALARY,
MAX (salary) as MAX_SALARY
FROM Customer; 

