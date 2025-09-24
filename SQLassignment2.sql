--1.Create a customer table which comprises of these columns:customer_id’, ‘first_name’, ‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip

create table customers (customer_id int, first_name varchar(50), last_name varchar(50), email varchar(50), 
address varchar (100), city varchar(50), zip int)

insert into customers values
(108, 'Ganga','Nakulan','ganga345','USA','San jose',5678),
(101, 'Arun','Jetly','@arun123','IND','CBE',3456),
(102,'Kukku','Ramesh','@arathi345','USA','Newsland',7678),
(105,'Vani','Shyjan','@avu768','China','Seoul',8900),
(106,'Namika','Ramesh','@nami','IND','MUMBAI',9000),
(107,'Neon','Sia','@neo23','UK','Cheok',7689)


select * from customers


--Select only the ‘first_name’ and ‘last_name’ columns from the customer table

select first_name,last_name from customers


--Select those records where ‘first_name’ starts with “G” and city is ‘San Jose’

select * from customers where first_name like 'g%' and city = 'San jose'

--Select those records where Email has only ‘gmail’.

update customers set email='ar23@gmail' where customer_id=102
update customers set last_name ='Mema' where customer_id=106

select * from customers where email like '%gmail'

--Select those records where the ‘last_name’ doesn't end with “A”

select * from customers where last_name not like '%a'

