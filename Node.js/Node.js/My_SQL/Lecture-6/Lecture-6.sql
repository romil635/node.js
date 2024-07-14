desc customers;
desc orderdetails;
desc products;

select * from products;
select * from orderdetails;

---------------------------- innre join ---------------------------------
select p.productCode , o.orderNumber , p.productDescription from products p
inner join orderdetails o on p.productCode = o.productCode;

select p.productCode, o.orderNumber, p.productDescription from products P

----------------------------- right join----------------------------------
select p.productCode, o.orderNumber , p.productDescription from products p
inner join orderdetails o on p.productCode = o.productCode;

-------------------------------------------------------------------------------------------
select * from offices;
select * from employes;

select employees.firstname , employees.officeCode , employees.jobTitle , offices.phone , offices.country 
from employees inner join offices
on employees.officeCode = offices.officeCode;


select e.firstname, e.lastname , e.officeCode , e.jobTitle, o.phone ,o.country 
from employees e inner join offices o 
on e.officeCode > 4; 

-- --------------------------left join--------------------------------------
select e.firstname , e.lastname , e.officeCode , e.jobTitle , o.phone , o.country 
from employees e left join offices o 
on e.officeCode = o.officeCode;

-- --------------------------right join--------------------------------------
select e.firstname , e.lastname , e.officeCode , e.jobTitle , o.phone , o.country 
from employees e right join offices o 
on e.officeCode = o.officeCode;

-- ---------------------join---------------------------------------
select e.firstname , e.lastname , e.officeCode , e.jobTitle , o.phone , o.country 
from employees e  join offices o 
on e.officeCode = o.officeCode;







