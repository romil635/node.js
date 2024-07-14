-- 1.Find out the products, which have been sold to 'Ivan Bayross'.
select cm.name, pm.descripion from sales_order_details sod
inner join product_master1 pm on sod.productNo = pm.productNo
inner join sales_order so on sod.orderNo = so.orderNo
inner join client_master1 cm on so.clientno = cm.clientno
where cm.name = 'Ivan bayross';


-- 2.Find out the products and their quanities that will have to be delivered in the current month.
select so.delydate , sod.qtyoedered ,pm.descripion
 from sales_order_details sod
 inner join product_master1 pm on sod.productNo = pm.productNo
 inner join sales_order so on sod.orderNo = so.orderNo
 where month(so.delydate) = month(current_date()); 
 

-- 3.List the productNo and decription of constantly sold(i.e, rapidly moving) produts.
select pm.productNo , pm.descripion , pm.peorderlvl
from sales_order_details sod
inner join product_master1 pm on sod.productNo = pm. productNo
where pm.peorderlvl > 30;

--4.Find the name of clients who have purchased 'Trousers.
select cm.clientno, cm.name ,pm.descripion  
from client_master1 cm
inner join sales_order so on cm.clientno = so.clientno
inner join sales_order_details sod on  so.orderNo = sod.orderno
inner join product_master1 pm on  pm.descripion = 'Trousers';

-- 5.List the products and orders from customers who have ordered less than 5 unit of 'Pull Overs'.
select sod.qtyoedered  , pm.descripion , pm.productNo ,pm.qtyonhand , cm.clientno
from product_master1 pm 
inner join sales_order_details sod on pm.productNo =  sod.productNo
inner join sales_order so on sod.orderNo = so.orderNo
inner join client_master1 cm on so.clientno = cm.clientno
where pm.descripion = 'pull overs' &&  sod.qtyoedered <= 5;

-- 6.find the products and their quantities for the orders placed by 'Ivan Bayross' and 'Mamta muzumdar'.
select sod.orderno,cm.name , pm.qtyonhand , sod.qtyoedered
from  sales_order_details sod
inner join sales_order so on sod.orderNo = so.orderNo
inner join product_master1 pm on sod.productNo = pm.productNo
inner join client_master1 cm on  so.clientno = cm.clientno
where cm.name IN('Ivan Bayross','Mamta muzumdar');


-- 7.Find the products and their quantities for the orders places by ClientNo 'C0001' and 'C0002'.
select so.productno , pm.qtyonhand 
from product_master1 pm
inner join sales_order_details sod on pm.productNo = sod.productNo
inner join sales_order so on sod.orderNo = so.orderNo
inner join client_mater1 cm on so.clientno =  cm.clientno
where cm.clientno IN('C0001' ,'C0002');