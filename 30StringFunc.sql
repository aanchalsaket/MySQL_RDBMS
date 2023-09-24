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

SELECT position("Aanchal" in "      Aanchal Saket       Aanchal") as name;

SELECT instr("      Aanchal Saket       Aanchal", "Aanchal" ) as name;

SELECT locate("Aanchal", "      Aanchal Saket       Aanchal", 8) as name;

-- ----------------------------------------------------------------------------------

SELECT substring("Aanchal Saket", 3);

SELECT substring("Aanchal Saket", 3, 8);

SELECT substring("Aanchal Saket", -3, 2);

SELECT substr("Aanchal Saket", -3, 2);

SELECT mid("Aanchal Saket", -3, 2);

SELECT substring_index("Aanchal.Saket.234", ".", 2);

SELECT substring_index("Aanchal.Saket.234", "a", 3);

SELECT left("Aanchal.Saket.234",3);

SELECT right("Aanchal.Saket.234",3);

SELECT RPAD("Aanchal.Saket.234", 250, ' a') as name;

SELECT LPAD("Aanchal.Saket.234", 25, ' ') as name;

SELECT space(100);

SELECT reverse("abcd") as reverse;

SELECT replace("Akira wish", "wish", "Akira");

SELECT strcmp("Akira", "akira"); -- L = R --> 0
SELECT strcmp("Akira", "akira yo yo"); -- R > L --> -1
SELECT strcmp("akira yo yo", "Akira"); -- L > R --> 1

SELECT field("a", "X", "a", "k") as field;
SELECT field("a", "X", "A", "k") as field;
SELECT field("x", "X", "A", "k") as field;
SELECT field(5, 0, 1, 2, 3, 4, 5) as field;
SELECT field("ram", "ramesh", "ram", "ggits") as field;

SELECT find_in_set("ram", "ram,mohan,shyam") as sets; -- dont use space

SELECT format(255.35678, 3) as Value;

SELECT hex("Akira yo yo") as hexadeciamal;







