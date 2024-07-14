-------------1. Database Creation------------

\sql
\connect root@localhost:3306
create database student_management
show databases;
use student_management;


------------2. Table Creation---------------

-- Students
create table students(
    student_id int,
    first_name varchar(50),
    last_name varchar(50),
    DOB date,
    gender varchar(10),
    class_id int
);

-- Classes
create table classes(
    class_id int,
    class_name varchar(50),
    teacher_id int
);

-- Teachers
create table teachers(
    teacher_id int,
    first_name varchar(50),
    last_name varchar(50),
    subject varchar(50)
);


------------- 3. Data Insertion --------------

-- Students
insert students values
(1, "Arjun", "kumar", "2005-04-23", "Male", 1),
(2, "Priya", "Sharma", "2006-06-15", "Female", 1),
(3, "Rohan", "Singh", "2007-09-12", "Male", 2),
(4, "Anjali", "Varma", "2005-11-22", "Female", 2),
(5, "Amit", "Patel", "2008-02-03", "Male", 1);

-- Classes
insert classes values
(1, "Mathematics", 1),
(2, "Science", 2),
(3, "English", 3),
(4, "History", 4),
(5, "Geography", 5);

-- Teachers
insert Teachers values
(1, "Ravi", "Mehata", "Mathematics"),
(2, "Suman", "Rao", "Science"),
(3, "Kavita", "Desai", "English"),
(4, "Rajesh", "Khan", "History"),
(5, "Sneha", "Joshi", "Geography");


-------------- 4. Basic Queries----------------

-- 1. select all details of students who are in class 1.
select * from students where student_id = 1;

-- 2.Retrive the first and last names of all teachers.
select first_name, last_name from teachers;

---------------5.Table Relationship and Joins-------------------- 

create table Enrollments(
    enrollment_id int primary key,
    enrollment_date date,
    student_id int references students (student_id),
    teacher_id int references teachers (teacher_id)
);

insert Enrollments values
(1, "2024-07-05", 1, 1),
(2, "2024-07-06", 2, 2),
(3, "2024-07-07", 3, 3),
(4, "2024-07-08", 4, 4),
(5, "2024-07-09", 5, 5);
select * from Enrollments;

--------------6.Updating Data-------------- 

--1. Updating the last name of the student with student_id 1 to 'Singh'.

UPDATE students SET last_name = 'Singh' WHERE student_id = 1;

--2 Updating the subject of the teacher with teacher_id 2 to 'physice'.

UPDATE teachers SET subject = 'physice' WHERE teacher_id = 2;

--------------7.Aggregate Functions-------------

--1.Count the total numbar of students.

select count(*) from students;

--2. Find the maximum age of students,assuming today's data is '2024-07-05'.

SELECT MAX(TIMESTAMPDIFF(YEAR, date_of_birth, '2024-07-05')) AS max_age FROM students;


---------------8.Deleting Data ---------------------

--1. Delete the student with student_id 5 from the Students table.

DELETE FROM Students WHERE student_id = 5;

--2. Delete the enrollment with enrollment_id 4 from the Enrollments table.

DELETE FROM Enrollments WHERE enrollment_id = 4;




