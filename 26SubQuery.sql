-- SubQuery
select name
from student
where city = (select cid from city where cityname = "Agra");

select cid from city where cityname = "Agra";

select name
from student
where city = 1;

--
select name
from student
where courses = (select crid from courses where crname = "MBA");

select crid from courses where crname = "MBA";

select name
from student
where courses = 3;

--
select name
from student
where courses in (select crid from courses where crname in ("MBA","Btech"));

select crid from courses where crname in ("MBA","Btech");

select name
from student
where courses in (1,3);

-- --------------------------------------------------------------------------

-- EXISTS
select name
from student
where 
exists (select crid from courses where crname = "MBA");

select name
from student
where 
exists (select crid from courses where crname = "MCA");

-- NOT EXISTS
select name
from student
where 
not exists (select crid from courses where crname = "MCA");

select name
from student
where 
not exists (select crid from courses where crname = "MBA");

-- ----------------------------------------------------------------------------

-- UNION
select name
from students
UNION
select name
from student;

select name, age from students
UNION 
select name, age from student;

select name, age from students where gender = "M"
UNION 
select name, age from student where gender = "M";

select name, age from students where city = "Agra"
UNION
select name, age from student where city = (select cid from city where cityname = "Agra");

select s.name, s.age, c.cityname
from student s inner join city c
on s.city = c.cid
where c.cityname = "Agra"
UNION
select name, age, city
from students 
where city = "Agra";

-- UNION ALL
select name
from students
UNION ALL
select name
from student

select name, age from students
UNION ALL
select name, age from student;

select name, age from students where city = "Agra"
UNION ALL
select name, age from student where city = (select cid from city where cityname = "Agra");

select s.name, s.age, c.cityname
from student s inner join city c
on s.city = c.cid
where c.cityname = "Agra"
UNION ALL
select name, age, city
from students 
where city = "Agra";

select s.id, s.name, s.age, c.cityname
from student s inner join city c
on s.city = c.cid
where c.cityname = "Agra"
UNION ALL
select id, name, age, city
from students 
where city = "Agra"
order by id;

-- ---------------------------------------------------------------------

-- -------IF & CASE statement

-- IF clause
select name, percentage,
if (percentage>=50, "PASS", "FAIL") AS Result
from student
order by id;

SELECT IF(percentage >= 50, 'PASS', 'FAIL') AS Result FROM student;

SELECT name, percentage,
       IF(percentage >= 50, 'PASS', 'FAIL') AS Result
FROM student;

-- CASE clause
SELECT
    name,
    percentage,
    CASE
        WHEN percentage >= 90 THEN 'A'
        WHEN percentage >= 80 THEN 'B'
        WHEN percentage >= 70 THEN 'C'
        ELSE 'D'
    END AS grade
FROM student;

SELECT id,name,percentage,
CASE
	WHEN percentage >= 75 AND percentage <=100 THEN 'MERIT'
	WHEN percentage >= 60 AND percentage < 75 THEN 'A (1st DIVISION)'
	WHEN percentage >= 50 AND percentage < 60 THEN 'B (2nd DIVISION)'
	-- WHEN percentage >= 40 AND percentage < 50 THEN 'C (3rd DIVISION)'
	ELSE 'FAIL'
END AS grade
FROM student
where gender = "M"
order by id desc;

commit;
            
UPDATE students
SET age = CASE
    WHEN age = 18 THEN 19
    WHEN age = 19 THEN 20
    WHEN age = 20 THEN 21
    ELSE age  -- Optional, this line preserves the current age if it doesn't match any of the conditions
END;

commit;
rollback;

UPDATE students
SET age = ( CASE id
	when 2 then 27
    when 3 then 28
END)
where id in (2,3);

rollback;

SELECT POWER(4, 3);













