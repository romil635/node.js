-- \sql
-- \connect root@localhost:3306
-- show databases;

-- create database node5to7;

--use node5to7
--show tables;

--------------------- create new table------------------------

create table user(
firstname varchar(30),
lastname varchar(30),
email varchar(50),
gender varchar(10),
mobileNo int
);


-- desc user;
-- describe user;


------------------------inser data-------------------------

-- insert into user (firstname ,lastname , email ,gender, mobileNo) values 
("Srushti" , 'bhanderi' , 'srushti@gmail.com' , "Female" ,1234567890);

-------------------- inser all fields----------------------

insert into user values ("Jasmi" , "mulani" , "Jasmi@gmail.com" , "Female" , 2587413691)


------------------inser Many data-------------------------
insert into user values
("Priyanka" , 'bhanderi' , 'priyanka@gmail.com' , "Female" ,1234567890),
("Divyesh" , 'bhanderi' , 'Divyesh@gmail.com' , "male" ,1234567890),
("Ashiti" , 'Dhanani' , 'ashiti@gmail.com' , "Female" ,1234567890);

---------------specific column data insert---------------
insert into user(firstname, lastname , gender , mobileNo) values
("Vishva" , "hirpara", 'female' ,1285296425);

select * from user;

select firstname from user;