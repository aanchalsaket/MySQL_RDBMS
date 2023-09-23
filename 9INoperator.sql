create table students(
	id int not null unique,
    name varchar(50) not null,
    age int not null check(age>=18),
    gender varchar(1) not null,
    phone varchar(10) not null unique,
    city varchar(15) not null 
);

insert into students
values
(1, "Ram Kumar", 19, "M", "8241763209", "Agra"),
(2, "Sarita Kumari", 21, "F", "8351763209", "Delhi"),
(3, "Sakman Khan", 20, "M", "8242963209", "Agra"),
(4, "Juhi Chawla", 18, "F", "8242863209", "Bhopal"),
(5, "Anil Kapoor", 22, "M", "8241103209", "Agra"),
(6, "Johm Abraham", 21, "M", "8241943209", "Delhi");

SELECT * from students
where age IN(18,21,19);

SELECT * from students
where age NOT IN(18,21,19);

SELECT * from students
where city IN("Delhi", "Bhopal");

SELECT * from students
where city NOT IN("Delhi", "Bhopal");

SELECT * from students
where id IN(1,3,5);

SELECT * from students
where id NOT IN(1,3,5);

-- BETWEEN & NOT BETWEEN
select * from students
where age BETWEEN 18 and 20;

select * from students
where age NOT BETWEEN 18 and 20;

select * from students
where id BETWEEN 2 and 5;

select * from students
where id NOT BETWEEN 2 and 5;

select * from students
where name BETWEEN "a" and "k";

select * from students
where name BETWEEN "anil" and "kamal";

select * from personal;

select * from personal
where dob between "1990-01-01" and "1995-06-30";

-- LIKE & NOT LIKE
select * 
from students
where name like "r%";

select * 
from students
where name not like "r%";

select *
from students
where name like "r%";

select *
from students
where name like "%am%";

select *
from students
where name like "r%" OR name like "s%";

select *
from students
where name not like "r%";

-- for case sensitive
select *
from students
where BINARY name like "R%";

select *
from students
where name like "%r";

select *
from students
where phone like "%76%";

select *
from students
where phone not like "%76%";

select *
from students
where name like "s%n";

select *
from students
where name like "r%r";

select *
from students
where name like "_am%";

select *
from students
where name like "__m%";

select *
from students
where name like "__k%";

select *
from students
where name like "r_m%";

-- Regular Expression
select * 
from students
where name REGEXP 'ar';

select * 
from students
where name REGEXP '^ra';

select * 
from students
where name REGEXP '^sa';

select * 
from students
where name REGEXP 'an$';

select * 
from students
where name REGEXP 'ram | kapoor| khan';

select * 
from students
where name REGEXP '^ram |poor|^khan';

select * 
from students
where name REGEXP '^ram |poor|khan$';

select * 
from students
where name REGEXP '[is]';

select * 
from students
where name REGEXP '[rmh]a';

select * 
from students
where name REGEXP '^[rs]';

select * 
from students
where name REGEXP '[ra]$';

select * 
from students
where name REGEXP 'r[am]';

select * 
from students
where name REGEXP '[a-j]r';

-- Order by
select * 
from students
ORDER BY name;

select * 
from students
ORDER BY name DESC;

select * 
from students
where city = "Agra"
ORDER BY name;

select * 
from students
ORDER BY age;

select * 
from students
ORDER BY age DESC;

select * 
from students
ORDER BY city;

select * 
from students
ORDER BY name,city;

-- DISTINCT
select DISTINCT city 
from students;

select DISTINCT age
from students
order by age;

-- IS NULL
select *
from personal
where phone IS NULL;

-- IS NOT NULL
select *
from personal
where phone IS NOT NULL;

-- LIMIT
select * 
from students
limit 3;

select * 
from students
where age>=18
limit 3;

select * 
from students
where age>=20
limit 3;

select * 
from students
where city="Agra"
order by name
limit 3;

-- OFFSET
select * 
from students
where city = "Agra"
limit 2,3;

-- COUNT
select count(age)
from students
where age>18;

select count(name)
from students;

select count(*)
from students;

select count(distinct city) AS total_city
from students;

-- SUM
select sum(age)
from students
where age>18;

select sum(age)
from students;

-- MAX
select max(age)
from students
where age<20;

select max(age)
from students;

select name, city, age as MAX_AGE
from students
where age = (select max(age) from students);

select *
from students
where age = (select max(age) from students);

-- MIN
select min(age) as MINIMUM_AGE
from students;

-- AVG
select avg(age) as AVERAGE
from students;











