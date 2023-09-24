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

SELECT id, name, concat(name, percentage) as Name, percentage
from student;

SELECT id, name, concat(name, " - ", percentage) as Name, percentage
from student;

SELECT id, name, concat(name, " - ", percentage, " - ", city) as Name, percentage
from student;

SELECT concat("My", "name", "is", "Aanchal", "Saket.") as intro;

SELECT concat_ws("-", "My", "name", "is", "Aanchal", "Saket.") as intro;

SELECT concat_ws(" ", "My", "name", "is", "Aanchal", "Saket.") as intro;

SELECT ltrim("                     Aanchal Saket                   ") as name;

SELECT rtrim("                     Aanchal Saket                   ") as name;

SELECT trim("                     Aanchal Saket                   ") as name;



