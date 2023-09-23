create table personal1(
	id int not null unique,
    name varchar(50) not null,
    age int not null check(age>=18),
    gender varchar(1) not null,
    phone varchar(10) not null unique,
    city varchar(15) not null default "agra"
);

insert into personal1(id, name, age, gender, phone, city)
values
(1, "Ram", 19, "M", "8241763209", "agra");

insert into personal1(id, name, age, gender, phone, city)
values
(2, "Sham", 19, "M", "8241783209", "agra");

insert into personal1(id, name, age, gender, phone, city)
values
(3, "Meera", 20, "F", "8561783209", "agra");

insert into personal1(id, name, age, gender, phone)
values
(4, "Anil", 21, "M", "8561789209");

insert into personal1(id, name, age, gender, phone)
values
(5, "Aman", 18, "M", "8561789289");

SELECT * FROM personal1;

