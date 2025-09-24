--Arrange the ‘Orders’ dataset in decreasing order of amount
select * from orderss order by amount asc

--Create a table with the name ‘Employee_details1’ consisting of these
 columns: ‘Emp_id’, ‘Emp_name’, ‘Emp_salary’. 
Create another table with the name 
‘Employee_details2’ consisting of the same 
columns as the first table

create table Employee_details11 
(Emp_id int, Emp_name varchar(50), Emp_salary int)
create table Employee_details2 
(Emp_id int, Emp_name varchar(50), Emp_salary int)

insert into Employee_details11 values
(1,'kukku',800),
(4,'remya',900),
(5,'yuyu',2000),
(9,'kiki',300)


insert into Employee_details2 values
(1,'kukku',800),
(4,'remya',900),
(8,'duva',2500),
(11,'lilli',300),
(14,'Sumav',2900)

--Apply the UNION operator on these two table

select * from Employee_details11 union select * from Employee_details2

--Apply the INTERSECT operator on these two tables

select * from Employee_details11 intersect select * from Employee_details2

--Apply the EXCEPT operator on these two tables

select * from Employee_details11 except select * from Employee_details2



