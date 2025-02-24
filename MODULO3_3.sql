CREATE TABLE Staff (
    SNO VARCHAR(10) PRIMARY KEY,
    NAME VARCHAR(50),
    SALARY INT,
    POSITION VARCHAR(50),
    DNO VARCHAR(10)
);

CREATE TABLE DEP (
    DNO VARCHAR(10) PRIMARY KEY,
    DNAME VARCHAR(50),
    BLOCK VARCHAR(50)
);

-Inseting

INSERT INTO Staff (SNO, NAME, SALARY, POSITION, DNO) VALUES 
('SL100', 'JOHN', 30000, 'MANAGER', 'D100'),
('SL101', 'SUSAN', 4000, 'MANAGER', 'D101'),
('SL102', 'DAVID', 12000, 'PROJECT MANAGER', 'D102'),
('SL103', 'ANN', 5000, 'PROJECT MANAGER', 'D103'),
('SL104', 'MARY', 9000, 'PROJECT MANAGER', 'D101');

INSERT INTO DEP (DNO, DNAME, BLOCK) VALUES 
('D100', 'HR', 'MG BLOCK'),
('D103', 'LOGISTICS', 'CVR BLOCK'),
('D104', 'BANKING', 'VKN BLOCK'),
('D105', 'MARKETING', 'PJN BLOCK'),
('D101', 'FINANCE', 'APJ BLOCK');

--Q1) Get the name of the staff working in HR department

SELECT name FROM Staff,DEP WHERE Staff.DNO=DEP.DNO AND DNAME="HR";


--2) Get the average salary of staffs working in Finance dept

SELECT AVG(SALARY) FROM Staff,DEP WHERE DNAME="FINANCE";

--Q3) Get the details of block in which Ann is working
SELECT dep.block FROM staff,dep Where staff.dno=dep.dno AND staff.name="ANN";

--Q4) Get the name of position working in APJ block
SELECT staff.position FROM staff,dep
WHERE staff.dno=dep.dno AND dep.block="APJ BLOCK";



