SELECT * FROM student
WHERE age > 19;

CREATE INDEX sAge
ON student (age);

-- CREATE INDEX sAge
-- ON student (dob, age);

SHOW INDEX FROM student;

DROP INDEX sAge ON student; 