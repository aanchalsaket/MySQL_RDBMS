-- create database
CREATE DATABASE db;

use db;

-- create table
create table personal(
	id int,
    name varchar(50),
    dob date,
    phone varchar(10),
    gender varchar(1)
);

-- create table product 
create table product(
	pid int,
    pname varchar(50),
    pcompany varchar(50),
    price int
);

-- insert values in table 
insert into personal(id, name, dob, phone, gender)
values(1,'Ram', '1990-07-23', '9737126824', 'M');

insert into personal
values(2,'Meera', '1995-07-21', '9733426824', 'F');

insert into personal(id, name, dob, gender)
values(3,'Anil', '1990-07-23',  'M');

-- insert multiple rows 
insert into personal
values
(4,'Sham', '1993-07-21', '8733426824', 'M'),
(5,'Ramesh', '1991-07-11', '8733421824', 'M'),
(6,'Raju', '1997-01-11', '8733421124', 'M');

SELECT * FROM personal;
 







