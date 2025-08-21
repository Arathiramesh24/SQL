create table students
( student_id int primary key
, name varchar(50) not null
, age int check (AGE>=17)
, department_id  int foreign key references departments(department_id)
,)

insert into students( student_id,name,age,department_id)
values
(1, 'raha',20,101)
,(2,'arya',19,104)
,(3,'oranga',20,105)
,(4,'pavani',18,102)
,(5,'avni',21,103)
create table departments
(
department_id int primary key
, departmentname varchar(50) not null unique
, )

insert into  departments( department_id, departmentname)
values ( 103 , 'computer science'),
(105, 'mechanical'),
(101, 'electrical'),
(104, 'civil'),
(102, 'electronics')

select*from departments
create table course 
(
course_id int  primary key
,course_name varchar (50) not null
, department_id int foreign key references departments(department_id)
,)

insert into course( course_id, course_name, department_id)
values
(1, 'DBMS', 103),
(2, 'thermodynamics' ,101 ),
(3 , 'circuits', 103),
(4, 'structures', 102),
(5, 'AI', 104)

select*from course
select * from students where age > 20
select * from course as c join  departments as d on c.department_id  = d.department_id where departmentname = 'computer science'
select * from students as s join  departments as d on s.department_id  = d.department_id where departmentname = 'electronics'
select * from students where age between 18 and 22
--inner join
select s.name, d.departmentname from students as s inner join departments as d on s.department_id = d.department_id
select c.course_name, d.department_id from course as c left join departments as d on d.department_id = c.department_id-- leftjoin
select name,course_name from course as c right join students as s on s.department_id = c.department_id -- right join