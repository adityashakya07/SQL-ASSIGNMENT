#CREATE A TABLE STUDENT WITH COLUMNS             
CREATE DATABASE Assignment;
USE Assignment;
CREATE TABLE student (                                        
student_id INT PRIMARY KEY,
name TEXT,
age INT check (age>=18),                                         
email varchar(30) UNIQUE
);
ALTER TABLE student ADD column phone_number varchar(15)UNIQUE;                  
ALTER TABLE student MODIFY age smallint;                                         
RENAME TABLE student to Students;                                                 
INSERT INTO Students value                                       
(101,'RAHUL','19','rahul321@gmail.com','8907657887');
INSERT INTO Students values
(102,'KAMLESH','23','kamlesh123@gmail.com','9807658976'),
(103,'RAVI','21','ravi456@gmail.com','9848557534');
INSERT INTO Students values
(104,'ROHIT','24','rohit765@gmail.com','8678089678'),
(105,'AJAY','20','ajay4322gmail.com','7857743867'),
(106,'SAMEER','23','sameer321@gmail.com','9080708090');
select * from Students;                                                                            
select name,email FROM Students;                                                                   
update Students SET email='ravikumar@gmail.com' where student_id='103';                            
update Students SET age= age+1;                                                                    
SET SQL_SAFE_UPDATES = 0;          
DELETE from Students where student_id=105;                                                        
select * from Students where age>20;                                                               
select * from Students order by age DESC;                                                          
SELECT * from Students where student_id<104;                                                      


CREATE TABLE Course(                                                                               
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_name TEXT,
duration INT
);
ALTER TABLE Course                                                                                 
DROP column duration;
insert into Course values                                                
(1,'BBA'),
(2,'BCOM'),
(3,'LLB');
SELECT * FROM Course;
CREATE TABLE Employee(
employee_id INT PRIMARY KEY AUTO_INCREMENT,
employee_name varchar(30)NOT NULL,
employee_add varchar(30),
course_id int not null,
foreign key (course_id) references Course( course_id)
);
INSERT INTO Employee values
(101,'Rahul','Noida','2'),
(102,'Kamlesh','Agra','1'),
(103,'Aman','Noida','3'),
(104,'Vikas','Delhi','2'),
(105,'Ritik','Delhi','1'),
(106,'Rohit','Noida','2');
select * from Course c
Join Employee e
on c.course_id = e.course_id ;
truncate Employee;
select * from Employee;
  
