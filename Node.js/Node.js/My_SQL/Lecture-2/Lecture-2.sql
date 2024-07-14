select SALESMANNAME from SALESMAN_MASTER where SALAMT=3000;


-- update data
update CLIENT_MASTER set city = 'Bangalore' where clientno='C0005';


-- delete data
delete from CLIENT_MASTER where clientno="C0005";

--drop statement
drop table CLIENT_MASTER;

