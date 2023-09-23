-- Arithmetic function

SELECT 5 + 6;
SELECT 5 + 6 AS Total;
SELECT 5 - 6 AS Total;
SELECT 15 * 6 AS Result;
SELECT 15 / 6 AS Result;  -- decimal / float
SELECT 15 DIV 6 AS Result; -- floor value
SELECT 15 MOD 6 AS Result;
SELECT 15 % 6 AS Remainder;

SELECT id, name, (percentage + 5) as "new percentage"
from student;

SELECT pi();

SELECT round(4.51);
SELECT round(4.45);
SELECT round(-4.45);
SELECT round(-4.55);
SELECT round(1234.987,2);

SELECT ceil(6.2);

SELECT floor(6.9);

SELECT pow(2,3);

SELECT sqrt(9);

SELECT round(sqrt(5));

SELECT rand();
SELECT rand()*100;
SELECT round(rand()*100);
SELECT floor(1 + (rand()*5)); -- b/w 1 andd 5

SELECT id, name, percentage
FROM student
ORDER BY rand();

SELECT abs(-56.56);

SELECT sign(45);
SELECT sign(0);
SELECT sign(-45);


