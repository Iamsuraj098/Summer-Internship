use adoptease;
create table User(
    email varchar(50)  primary key,
	name varchar(50),
    address varchar(100),
    password varchar(10)
);

insert into User(name, email, address, password) values
("Ram", "ram@gmail.com", "ghaziabad", "123");

insert into User(name, email, address, password) values
("Raju", "raju@gmail.com", "ghaziabad", "1234");

Select email, password from User where email = "ram@gmail.com" and password = "123";
Select email, password from User where email = "ram@gmail.com" and password = "1234";

select * from user;

drop table User;