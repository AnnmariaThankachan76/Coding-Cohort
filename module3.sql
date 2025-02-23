--create a table
CREATE TABLE Instructor(
  name VARCHAR(50),
  salary INT,
  dept VARCHAR(50)
  );

--Inserting
INSERT INTO Instructor (name,salary,dept) values 
  ("Tara", 30000,'HR'),
  ("Saman", 70000,'Finance'),
  ("Sudhir", 28000,'Manager'),
  ("Omin", 60000,'HR'),
  ("Raha", 120000,'Manager');

--displaying
SELECT * from Instructor;


--Upadeting
UPDATE Instructor
SET salary=35000,dept='Finance'
WHERE name= "Sudhir";

Select * from Instructor;

SELECT name,dept FROM Instructor;

--Delete
DELETE FROM Instructor WHERE salary=60000;

--Q:find the names of all instructors:
SELECT name from Instructor;

--Select without duplicates.
SELECT distinct dept from Instructor;

--contain arithmetic expressions
SELECT  name ,salary*2 as Monthly_salary FROM Instructor;

--To find all instructors in hr dept with salary > 20000
SELECT name FROM Instructor 
WHERE dept='Finance' AND salary>20000;

--display count of salaries
SELECT COUNT (salary) as no_of_Sals FROM Instructor;

--display count with where condition
SELECT COUNT (salary) as no_of_Sals FROM Instructor 
WHERE salary<110000;

---display count with where condition with distinct
SELECT COUNT (Distinct  dept ) as total_depts  FROM Instructor ;

--count with where
SELECT COUNT (dept ) as total_depts  FROM Instructor 
WHERE dept="Finance";




