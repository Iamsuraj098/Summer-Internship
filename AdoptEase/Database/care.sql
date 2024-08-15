use adoptease;

create table checkup(
 doc_id int auto_increment primary key,
 name varchar(20),
 quali varchar(30),
 fees int,
 user varchar(20),
 timing varchar(30),
 status varchar(10)
 );
 
insert into checkup(name, quali, fees) values ("Vishal", "MBBS", 2200);

UPDATE checkup
SET user = 'newemail@example.com', timing = "10", status = "pending"
WHERE doc_id = 123;

	
 
drop table checkup;