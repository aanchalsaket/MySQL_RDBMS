create table city(
	cid INT NOT NULL AUTO_INCREMENT,
    cityname VARCHAR(10) NOT NULL,
    PRIMARY KEY (cid)
);

INSERT INTO city(cityname)
VALUES
("Agra"),
("Bhopal"),
("Jaipur"),
("Noida");

create table student(
	id int not null,
    name varchar(20) not null,
    percentage int  not null,
    age int not null,
    gender varchar(1) not null,
    city int not null,
    primary key(id),
    foreign key(city) references city (cid)
);

insert into student 
values
(1, "Ram Kumar", 45, 19, "M", 1),
(2, "Sarita Kumari", 55, 22, "M", 2),
(3, "Salman Khan", 62, 20, "M", 1),
(4, "Juhi Chawla", 47, 18, "M", 3),
(5, "Anil Kapoor", 74, 22, "M", 1),
(6, "John Abraham", 64, 21, "M", 2),
(7, "Shahid Kapoor", 52, 20, "M", 1);









