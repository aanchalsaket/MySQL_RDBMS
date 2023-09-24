SELECT id, upper(name) as name, percentage
from student;

SELECT id, ucase(name) as name, percentage
from student;

SELECT id, lower(name) as name, percentage
from student;

SELECT id, lcase(name) as name, percentage
from student;

SELECT id, name, character_length(name) as Characters, percentage
from student;

SELECT id, name, char_length(name) as Characters, percentage
from student;

SELECT id, name, length(name) as Characters, percentage
from student;

SELECT id, name, concat(name, percentage) as Namme, percentage
from student;

