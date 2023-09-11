use ducat;
select * from customer;
desc customer;
select * from orders;
desc orders;
select * from salesman;
desc salesman;
-- 1. Write a SQL statement to prepare a list with salesman name, customer name
-- and their cities for the salesmen and customer who belongs to the same city.--
 
select salesman.name,salesman.city,
customer.cust_name,
customer.city from salesman
join customer on 
salesman.city=customer.city;
select s.name,s.city,
c.cust_name,
c.city from salesman as s
join customer as c on 
s.city=c.city;
-- 2. Write a SQL statement to make a list with order no, purchase amount,
-- customer name and their cities for those orders which order amount between 500
-- and 2000
select o.ord_no,
o.purch_amt,
c.cust_name,c.city
from orders as o
join customer as c
where purch_amt between 500 and 2000;

-- 3. Write a SQL statement to know which salesmen are working for which customer.- 
select s.salesman_id,
c.customer_id,s.name,
c.cust_name 
from salesman as s inner join 
customer as c 
on s.salesman_id=c.salesman_id;

-- 4. Write a SQL statement to find the list of customers who appointed a salesman-- 
-- for their jobs who gets a commission from the company is more than 12%. -- 

select c.cust_name,s.commision from salesman as s inner join 
customer as c on c.salesman_id=s.salesman_id where commision >0.12;

-- 5. Write a SQL statement to find the list of customers who appointed a salesman
-- for their jobs who does not live in the same city where their customer lives, and
-- gets a commission is above 12%
select c.cust_name,c.city,s.name,s.city,s.commision 
from salesman as s inner join customer as c on
c.salesman_id=s.salesman_id
where c.city <> s.city and commision > 0.12; 

select c.cust_name, max(purch_amt) from orders as o inner
join customer as c on c.customer_id =o.customer_id; 
select * from customer where cust_name like 'f%';

 
