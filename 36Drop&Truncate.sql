CREATE TABLE DT
(
	Id int(2),
    name varchar(40),
    city varchar(30)
);

INSERT INTO DT
VALUES
(1, "Amit", "Agra"),
(2, "Arpit", "Delhi");

select * from DT;

-- TRUNCATE 
Truncate table dt;

-- DROP
DROP TABLE dt;