use adoptease;
create table Admin(
	a_id int AUTO_INCREMENT primary key,
	name varchar(50),
    email varchar(50) unique,
    address varchar(100),
    password varchar(10)
);

insert into Admin(name, email, address, password) values
("Ram", "ram@gmail.com", "ghaziabad", "123");

Select * from Admin;

drop table Admin;
