-- Create Salesman table
CREATE TABLE Salesman (
    SalesmanId     INT ,
    SalesmanName   VARCHAR(50),
    Commission     INT,
    City           VARCHAR(50),
    Age            INT
)

INSERT INTO Salesman (SalesmanId, SalesmanName, Commission, City, Age) VALUES
(101, 'Joe',    50,  'California', 17),
(102, 'Simon',  75,  'Texas',      25),
(103, 'Jessie', 105, 'Florida',    35),
(104, 'Danny',  100, 'Texas',      22),
(105, 'Lia',    65,  'New Jersy',  30)


-- Create Customer table
CREATE TABLE Customer (
    SalesmanId     INT,
    CustomerId     INT ,
    CustomerName   VARCHAR(50),
    PurchaseAmount INT,

)

INSERT INTO Customer (SalesmanId, CustomerId, CustomerName, PurchaseAmount) VALUES
(101, 2345, 'Andrew',  550),
(103, 1575, 'Lucky',  4500),
(104, 2346, 'Andrew', 4000),
(107, 3747, 'Remona', 2700),
(110, 4004, 'Julia',  4545)

-- Create Orders table
CREATE TABLE Orders (
    OrderId     INT ,
    CustomerId  INT,
    SalesmanId  INT,
    OrderDate   DATE,
    Amount      INT,

)

INSERT INTO Orders (OrderId, CustomerId, SalesmanId, OrderDate, Amount) VALUES
(5001, 2345, 101, '2021-07-04',  550),
(5003, 1234, 105, '2022-02-15', 1500)

select * from Orders
select * from Customer
select * from salesman

--1)inserting record into orders
insert into orders values
(5004, 3456,102, '2023-04-11', 650)

--2) Add Primary key constraint for SalesmanId column in Salesman table.
--Add default constraint for City column in Salesman table.
--Add Foreign key constraint for SalesmanId column in Customer table.
--Add not null constraint in Customer_name column for the Customer table

alter table salesman add constraint pk_salesman_salesmanid primary key (salesmanid)

alter table salesman add constraint df_salesman_salesmaid default 'Newsland' for city

alter table salesman  add constraint fk_salesman_salesmanid foreign key (salesmanid) references customer(salesmanid)
alter table customer alter column salesmanid int not null
alter table customer add constraint pk_customer_salesmanid primary key (salesmanid)

insert into salesman values
(107, 'remya', 80, 'los',20),
(110, 'hari', 60,'lucknow',22)

insert into customer values
(102, 2222, 'john',800),
(105,2321,'jia',1000)


alter table customer alter column customername varchar(50) not null
select * from Customer
select * from orders
select * from salesman

--Fetch the data where the Customer’s name is ending with ‘N’ also get the purchase amount value greater than 500.

select * from customer where CustomerName like '%n' and PurchaseAmount>500

-- Using SET operators, retrieve the first result with unique SalesmanId values from two tables, and the other result containing SalesmanId with duplicates from two tables

select salesmanid from salesman union select salesmanid from Orders
select salesmanid from salesman intersect select salesmanid from orders



-- Display the below columns which has the matching data.Orderdate, Salesman Name, Customer Name, Commission, and City which has the 
--range of Purchase Amount between 500 to 1500

select o.orderdate, s.salesmanname, c.customername,s.commission, s.city from salesman as s join orders as o on o.SalesmanId = s.SalesmanId join customer as c on c.salesmanid=o.customerid where o.amount between 100 and 2500

--Using right join fetch all the results from Salesman and Orders table

select * from salesman as s right join orders as o on s.salesmanid = o.SalesmanId 
