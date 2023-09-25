SELECT current_date() as date;
SELECT curdate() as date;

SELECT sysdate() as "system date";
SELECT now();

SELECT date("2019-10-15 09:34:21") as date;

SELECT month("2019-10-15 09:34:21") as date;

SELECT monthname("2019-11-15 09:34:21") as date;

SELECT year("2019-10-15 09:34:21") as date;

SELECT id, name, dob, year(dob) as year
from students;

SELECT quarter("2019-10-15 09:34:21") as date;

SELECT day("2019-10-15 09:34:21") as date;
SELECT dayofmonth("2019-10-15 09:34:21") as date;

SELECT dayname("2019-10-15 09:34:21") as day_name;
SELECT dayname("2019-11-15 09:34:21") as day_name;
SELECT dayname("2019-12-15 09:34:21") as day_name;

SELECT dayofweek("2019-12-15 09:34:21") as week;

SELECT dayofyear("2019-12-16 09:34:21") as week;

SELECT week("2019-12-16 09:34:21") as week;

SELECT weekday("2019-03-16 09:34:21") as week;

SELECT yearweek("2019-03-16 09:34:21") as week;
SELECT yearweek("2019-03-15 09:34:21") as week;

SELECT last_day("2019-02-16 09:34:21") as date;

SELECT extract(month from "2019-03-16 09:34:21") as week;





