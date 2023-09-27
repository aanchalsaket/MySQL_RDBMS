CREATE VIEW studentData
AS 
SELECT s.id, s.name, c.crname
FROM student s INNER JOIN courses c
ON s.courses = c.crid;

SELECT * FROM studentData;

ALTER VIEW studentData
AS
SELECT s.id, s.name, c.crname, ci.cityname
FROM student s INNER JOIN courses c
ON s.courses = c.crid
INNER JOIN city ci
ON s.city = ci.cid;

CREATE OR REPLACE VIEW studentData
AS
SELECT s.id, s.name, c.crname, ci.cityname
FROM student s INNER JOIN courses c
ON s.courses = c.crid
INNER JOIN city ci
ON s.city = ci.cid;

SELECT * FROM studentData;

-- rename views
RENAME TABLE studentData 
TO studentsDetail;

SELECT * FROM studentsDetail;

-- delete view
DROP VIEW studentsDetail;
