use adoptease;
create table pet(
	p_id int auto_increment primary key,
    age int,
    breed varchar(20),
    status varchar(10),
    price int(4),
    img longblob NOT NULL,
    u_id varchar(50),
    avialable varchar(10),
    weight int,
    color varchar(15),
    activity varchar(15),
    gender varchar(20)
    );

insert into pet(age, breed, status, price, img, u_id, avialable, weight, color, activity) 
values (2, "Dog", "unsold", 2004, load_file('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\img.jpeg'), null, "yes", 10, "red", "active");

insert into pet(age, breed, status, price, img, u_id, avialable, weight, color, activity, gender) 
values (2, "German Shepherd", "unsold", 2004, load_file('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\img.jpeg'), null, "yes", 10, "red", "active", "female");

insert into pet(age, breed, status, price, img, u_id, avialable, weight, color, activity, gender) 
values (4, "German Shepherd", "unsold", 5500, load_file('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\img.jpeg'), null, "yes", 10, "red", "active", "female");

Select * from pet where gender = "female" and breed = "German Shepherd" and activity = "active";

SHOW VARIABLES LIKE 'secure_file_priv';

select * from pet;
drop table pet;