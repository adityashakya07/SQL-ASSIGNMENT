#CREATE A TABLE STUDENT WITH COLUMNS               DDL PRACTICAL QUESTIONS  
CREATE DATABASE Assignment;
USE Assignment;
CREATE TABLE student (                                         DDL 1
student_id INT PRIMARY KEY,
name TEXT,
age INT check (age>=18),                                         DDL 7
email varchar(30) UNIQUE
);
ALTER TABLE student ADD column phone_number varchar(15)UNIQUE;                   DDL 3
ALTER TABLE student MODIFY age smallint;                                         DDL 4
RENAME TABLE student to Students;                                                 DDL 5
INSERT INTO Students value                                       DML PRACTICAL QUESTION 1
(101,'RAHUL','19','rahul321@gmail.com','8907657887');
INSERT INTO Students values
(102,'KAMLESH','23','kamlesh123@gmail.com','9807658976'),
(103,'RAVI','21','ravi456@gmail.com','9848557534');
INSERT INTO Students values
(104,'ROHIT','24','rohit765@gmail.com','8678089678'),
(105,'AJAY','20','ajay4322gmail.com','7857743867'),
(106,'SAMEER','23','sameer321@gmail.com','9080708090');
select * from Students;                                                                            DML 3
select name,email FROM Students;                                                                   DML 4
update Students SET email='ravikumar@gmail.com' where student_id='103';                            DML 5
update Students SET age= age+1;                                                                    DML 6
SET SQL_SAFE_UPDATES = 0;          
DELETE from Students where student_id=105;                                                         DML 7
select * from Students where age>20;                                                               DML 8
select * from Students order by age DESC;                                                          DML 9 
SELECT * from Students where student_id<104;                                                      


CREATE TABLE Course(                                                                               DDL 2
course_id INT,
course_name TEXT,
duration INT
);
ALTER TABLE Course                                                                                 DDL 6
DROP column duration;
ALTER TABLE Course ADD column DURATION INt;
insert into Course values                                                
(1,'BBA','3'),
(2,'BCOM','3'),
(3,'LLB','5');

