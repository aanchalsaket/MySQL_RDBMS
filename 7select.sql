select * from personal;

select * from personal1;

select id, name, gender 
from personal;

-- Aliases
select id AS Id, name AS "Student name", gender 
from personal;

-- where
select *
from personal
where gender = "F";

select *
from personal
where gender = "M";

select *
from personal1
where age > 20;

select *
from personal1
where city != "agra";

-- AND OR NOT
CREATE TABLE student(
	name varchar(10),
    age int,
    gender varchar(6)
);

INSERT INTO student
values 
("Ram", 19, "Male"),
("Salman", 22, "Male"),
("Meera", 21, "Female"),
("Sarita", 18, "Female"),
("Anil", 22, "Male");

select * from student;

select * 
from student
where age>=18 AND Age<=21;

select * 
from student
where age=18 OR Age=21;

select * 
from personal1
where age=18 AND gender="M" AND city="agra";

select * 
from personal1
where (NOT age=18) AND city="agra";

select * 
from personal1
where NOT age=18;








