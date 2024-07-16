show databases;
use classicmodels;

-- order by   (length counting)
select * from employees;
select * from customers;
select * from customers order by customerName desc, city asc;
select * from employees where employeeNumber>=1300 order by jobTitle desc, firstNAme asc;
select * from employees where !(officeCode != 5);


--  || = (include USA, Germany ,France )
select * from customers where country = 'USA' ||  country = 'France' ||  country = 'Poland';


--  IN = (include France , Germany country)
select * from customers where country in ("France", "Germany"); 

-- NOT IN = (not a show country France , Germany)
select * from customers where country not in ('France' , 'Germany');

-- BETWEEN = (140 to 199 number show)
select * from customers where customerNumber between 140 and 199;

-- NOT BETWEEN = (140 to 500 number NOt a show)
select * from customers where customerNumber not between 140 and 500;

-- limit (first 10 number)
select * from customers limit 10;

-- limit (first 10 number pachi na 3 number show kare)
select * from customers limit 10,3;

-- distinct(Unice)
select distinct country from customers; --country na name aek var ave

select count(customerName) from customers; --Total Customer

select country , count(customerNumber) as "Total Member" from customers group by country; --Every  country na member total count kare