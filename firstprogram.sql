CREATE TABLE student(
id int primary key,
name vrchar(50),
age int not null,
);

INSERT INTO student values(1,"Tara",24);
  INSERT INTO student values(2,"Mona",20);
  INSERT INTO student values(3,"Priya",25);
  INSERT INTO student values(4,"Aman",22);

Select * from student;

Insert into student (id,name,age) 
 values 
 (5,"Ann",19),
 (6,"Sarath",23);

CREATE TABLE employee(
  id int primary key,
  name varchar(50),
  age int not null,
  salary int default 25000,
  foreign key(coust_id) references Customers(customer_id)
  );

