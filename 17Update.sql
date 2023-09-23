-- UPDATE
update students
set age = 19
where id = 1;

update students
set age = 18, gender = "F"
where id = 1;

update students
set age = 19, gender = "M"
where id = 1;

update students
set age = 20
where id IN(2,6);

update students
set age = 21
where id IN(2,6);

commit;

update students
set age = 18
where id IN(1,2,3,4);

rollback;

update students
set age = 20
where id in(2,4);

commit;

update students
set age = 19
where id = 1;

rollback;

insert into students
values(7, "Shahid Kapoor", 20, "M", 8235128887, "Agra");

commit;

update students
set age = 19;

rollback;

-- delete
delete from students
where id = 2;

delete from students
where gender = "F";

delete from students;

rollback;










