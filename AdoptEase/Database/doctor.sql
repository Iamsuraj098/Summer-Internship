use adoptease;

create table doctor(
doc_id int auto_increment primary key,
name varchar(20),
quali varchar(50),
fees int,
user varchar(30),
meeting varchar(40),
address varchar(40),
status varchar(10)
);

select * from doctor;

drop table doctor;