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

SELECT extract(month from "2019-03-16 09:34:21") as month;
SELECT extract(day from "2019-03-16 09:34:21") as day;
SELECT extract(year from "2019-03-16 09:34:21") as year;
SELECT extract(week from "2019-03-16 09:34:21") as week;
SELECT extract(hour from "2019-03-16 09:34:21") as hour;
SELECT extract(minute from "2019-03-16 09:34:21") as minute;
SELECT extract(second from "2019-03-16 09:34:21") as second;
SELECT extract(microsecond from "2019-03-16 09:34:21") as microsecond;
SELECT extract(hour_minute from "2019-03-16 09:34:21") as hourminute;

-- ------------------------------------------------------------------------------------

SELECT adddate("2019-06-15", interval 10 day) as nextDate;
SELECT adddate("2019-06-15", interval 1 week) as nextDate;
SELECT adddate("2019-06-15", interval 1 month) as nextDate;
SELECT adddate("2019-06-15", interval 1 year) as nextDate;
SELECT adddate("2019-06-15", interval 1 quarter) as nextDate;
SELECT adddate("2019-06-15", interval 24 hour) as nextDate;
SELECT adddate("2019-06-15", interval 500 minute) as nextDate;
SELECT adddate("2019-06-15", interval 5000 second) as nextDate;

SELECT date_add("2019-06-15", interval 10 day) as nextDate;
SELECT date_add("2019-06-15", interval 1 week) as nextDate;
SELECT date_add("2019-06-15", interval 1 month) as nextDate;
SELECT date_add("2019-06-15", interval 1 year) as nextDate;
SELECT date_add("2019-06-15", interval 1 quarter) as nextDate;
SELECT date_add("2019-06-15", interval 24 hour) as nextDate;
SELECT date_add("2019-06-15", interval 500 minute) as nextDate;
SELECT date_add("2019-06-15", interval 5000 second) as nextDate;

SELECT makedate(2019, 3);

SELECT subdate("2019-06-15", interval 1 day) as yesterday;
SELECT subdate("2019-06-15", interval 1 week) as Date;
SELECT subdate("2019-06-15", interval 1 month) as Date;
SELECT subdate("2019-06-15", interval 1 year) as Date;
SELECT subdate("2019-06-15", interval 1 quarter) as Date;
SELECT subdate("2019-06-15", interval 24 hour) as Date;
SELECT subdate("2019-06-15", interval 500 minute) as Date;
SELECT subdate("2019-06-15", interval 5000 second) as Date;

SELECT datediff("2019-06-15","2019-05-15") as difference;
SELECT datediff("2019-06-15","2018-06-15") as difference;

SELECT to_days("2019-06-15") as date;

SELECT DATE("2019-06-15") AS date;

SELECT PERIOD_ADD(202309, 5) as date;

SELECT PERIOD_DIFF(202309, 202402) AS date;

SELECT date_format("2019-06-15", "%Y") as date;

SELECT date_format("2019-06-15", "%d/%b/%Y") as date;
SELECT date_format("2019-06-15", "%d-%c-%Y") as date;
SELECT date_format("2019-06-15", "%d-%c-%y, %W") as date;
SELECT date_format("2019-06-15 02:30:45:20", "%d-%c-%y, %h:%i") as date;

SELECT str_to_date("July 10 2019", "%M %d %Y") as date;
















