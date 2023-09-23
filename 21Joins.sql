-- JOINS

-- INNER JOIN
select * 
from student
INNER JOIN city
ON student.city = city.cid;

select * 
from student s
INNER JOIN city c
ON s.city = c.cid;

select * 
from student s
INNER JOIN city c
ON s.city = c.cid
order by s.id;

select id, name, percentage, age, gender, cityname
from student s
INNER JOIN city c
ON s.city = c.cid
order by s.id;

select s.id, s.name, s.percentage, s.age, s.gender, c.cityname
from student s
INNER JOIN city c
ON s.city = c.cid
order by s.id;

select s.id, s.name, s.percentage, s.age, s.gender, c.cityname
from student s
INNER JOIN city c
ON s.city = c.cid
where c.cityname = "Agra"
order by s.id;

select s.id, s.name, s.percentage, s.age, s.gender, c.cityname
from student s
JOIN city c
ON s.city = c.cid
where c.cityname = "Agra"
order by s.id;

-- LEFT JOIN 
select * 
from student s
LEFT JOIN city c
ON s.city = c.cid;

select s.id, s.name, c.cityname 
from student s
LEFT JOIN city c
ON s.city = c.cid;

-- RIGHT JOIN
select * 
from student s
RIGHT JOIN city c
ON s.city = c.cid
order by s.id;

select s.id, s.name, c.cityname  
from student s
RIGHT JOIN city c
ON s.city = c.cid
order by s.id;

-- CSROSS JOIN
select * 
from student
CROSS JOIN city;

select s.id, s.name as "Student name", c.cityname
from student s
CROSS JOIN city c;

select s.id, s.name as "Student name", c.cityname
from student s, city c;

select *
from student s, city c;

-- JOIN multiple tables

create table courses(
	crid int,
    crname varchar(20),
    primary key(crid)
);

insert into courses
values
(1, "Btech"),
(2, "BCA"),
(3, "MBA");

commit;

alter table student
add courses int;

update student
set courses = 1;

update student
set courses = 2
where id in (2,6);

update student
set courses = 3
where id in (5,7,8);

update student
set city = 3
where id = 8;

alter table student
add foreign  key (courses) references courses(crid);

-- JOIN 3 tables
select *
from student s
inner join city c
on s.city = c.cid
inner join courses cr
on s.courses = cr.crid;

select s.name, s.percentage, c.cityname, cr.crname
from student s
inner join city c
on s.city = c.cid
inner join courses cr
on s.courses = cr.crid
order by s.id;

commit;

-- GROUP BY
select city, COUNT(city)
from student
GROUP BY city;

select c.cityname, COUNT(s.city) as "Total"
from student s
inner join city c
on s.city = c.cid
GROUP BY city;

select c.cityname, COUNT(s.city) as "Total"
from student s
inner join city c
on s.city = c.cid
where s.age>=20
GROUP BY s.city
order by COUNT(s.city);

select c.cityname, COUNT(s.city) as "Total"
from student s
inner join city c
on s.city = c.cid
GROUP BY city;

-- HAVING
select c.cityname, COUNT(s.city) as "Total"
from student s
inner join city c
on s.city = c.cid
GROUP BY city
HAVING COUNT(s.city) < 3;












