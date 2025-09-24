--Use the inbuilt functions and find the minimum, maximum and average amount from the orders table

select min(amount) as min_amount, max(amount) as max_amount, AVG(amount) as avg_amount from Orders

Create a user-defined function which will multiply the given 
number with 10

create function dbo.MultiplyByTen (@num int)
returns int
as 
begin 
return @num * 10
end

select dbo.multiplybyten(5) as result


--Use the case statement to check if 100 is less than 200, greater than 200 or equal to 200 and print the corresponding value

select 
case
when 100 < 200 then '100 is less than 200'
when 100>200 then '100 is greater than 200'
else '100 is equal to 200'
end
as result

--Using a case statement, find the status of the amount. Set the status of the amount as high amount, low amount or medium amount based upon the condition

select * from Orderss

select order_id, amount, 
case when amount <1000 then 'Low Amount'
when amount < 2500 then 'Medium amount'
when amount < 6000 then ' High amount'
end
from orderss

--Create a user-defined function, to fetch the amount greater than then given input

create function dbo.greateramount (@num int)
returns table
as 
return (select order_id, amount from Orderss where amount > @num )

select * from dbo.greateramount(2200)