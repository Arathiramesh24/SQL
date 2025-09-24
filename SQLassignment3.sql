-- 1.Create an ‘Orders’ table which comprises of these columns: ‘order_id’, ‘order_date’, ‘amount’, ‘customer_id’
create table orderss (order_id int, order_date date,amount int,customer_id int)
insert into orderss values
(2,'08-03-2021',2000,101),
(4,'10-03-2021',2500,102),
(1,'12-05-2022',1000,105),
(3,'06-12-2021',2200,107),
(5,'09-10-2021',3000,108),
(8,'12-12-2022',5000,106)
select * from orderss

select * from customers
insert into customers values(111,'sia','su','su@gmail','korea','seoul',345)


--Make an inner join on ‘Customer’ and ‘Orders’ tables on the ‘customer_id’ column

alter table customers add constraint pk_customers_customer_id primary key(customer_id)
alter table customers alter column customer_id int not null
alter table orderss alter column customer_id int not null
alter table orderss add constraint pk_orderss_customer_id primary key(customer_id)
alter table orderss add constraint fk_orderss_customer_id foreign key(customer_id) references customers(customer_id)
 

 select * from customers as c inner join orderss as o on c.customer_id=o.customer_id

 --Make left and right joins on ‘Customer’ and ‘Orders’ tables on the ‘customer_id’ column.
 select * from customers as c left join orderss as o on c.customer_id = o.customer_id

 select * from customers as c right join orderss as o on c.customer_id = o.customer_id

 --Make a full outer join on ‘Customer’ and ‘Orders’ table on the ‘customer_id’ column

 select * from customers as c full outer join orderss as o on c.customer_id = o.customer_id

 --Update the ‘Orders’ table and set the amount to be 100 where ‘customer_id’ is 3

 update orderss set amount=100 where customer_id =102


