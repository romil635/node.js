-- cd mysql/bin
-- mysql -u root -p
-- show databases;
-- use node5to7
-------------------------------------------------------------------------------------------------
 create table CLIENT_MASTER(
      CLIENTNO varchar(6),
      NAME varchar(20),
      ADDRESS1 varchar(30),
      ADDRESS2 varchar(30),
      CITY varchar(15),
      PINCODE int(8),
      STATE varchar(15),
      BALDUE int(10)
 );

-- desc CLIENT_MASTER

 insert into CLIENT_MASTER values
 ("C0001" , "Ivan Bayross" ,"A/14", "Worli" ,"Mumbai" , 400054,"Maharashtra",15000),
 ("C0002" , "Mamta Muzumdar" ,"65", "Nariman" , "Madras" , 78001,"Tamil Nadu",0),
 ("C0003" , "Chhaya Bankar" ,"P-7", "Worli" , "Mumbai" , 400057,"Maharashtra",5000),
 ("C0004" , "Ashwini Joshi" ,"A/5", "Bandra" , "Bangalore" , 560001,"Karnataka",0),
 ("C0005" , "Hansel Colaco" ,"A/15", "Worli" , "Mumbai" , 400060,"Maharashtra",2000),
 ("C0006" , "Deepak Sharma" ,"A/18", "Juhu" , "Mangalore" , 560050,"Karnataka",0);

--  select * from CLIENT_MASTER;

-------------------------------------------------------------------------------------------------
          create table PRODUCT_MASTER(
               PRODUCTNO varchar(6),
               DESCRIPION varchar(15),
               PROFITPERCENT int(4),
               UNITMEASURE varchar(10),
               QTYONHAND int(8),
               PEORDERLVL int(8),
               SELLPRICE int(8),
               COSTPRICE int(8)
          );

 insert into PRODUCT_MASTER values
 ("P0001", "T-Shirts"    , 5  , "Piece" , 200 , 50 , 350 , 250),
 ("P0002", "Shirts"      , 6  , "Piece" , 150 , 50 , 500 , 350),
 ("P0003", "Cotton Jeans", 5  , "Piece" , 100 , 20 , 600 , 450),
 ("P0004", "Jeans"       , 5  , "Piece" , 100 , 20 , 750 , 500),
 ("P0005", "Trousers"    , 2  , "Piece" , 150 , 50 , 850 , 550),
 ("P0006", "Pull Overs"  , 2  , "Piece" , 80  , 30 , 700 , 450),
 ("P0007", "Denim Shirts", 4  , "Piece" , 100 , 40 , 350 , 250),
 ("P0008", "Lyera Tops"  , 5  , "Piece" , 70  , 30 , 300 , 175),
 ("P0001", "Skirts"      , 5  , "Piece" , 75  , 30 , 450 , 300);

select * from PRODUCT_MASTER;

-------------------------------------------------------------------------------------------------

 create table SALESMAN_MASTER(
      SALESMANNO varchar(6),
      SALESMANNAME varchar(20),
      ADDRESS1 varchar(30),
      ADDRESS2 varchar(30),
      CITY varchar(20),
      PINCODE int(8),
      STATE varchar(20),
      SALAMT int(8),
      TGTTOGET int(6),
      YTDSALES int(6),
    REMARKS varchar(60)
 );

insert into SALESMAN_MASTER values
("S0001" , "Aman"   , "A/14", "Worli"   , "Mumbai" , 40001 , "Maharashtra" , 3000 , 100 , 50 ,"Good"),
("S0002" , "Omkar"  , "65"  , "Nariman" , "Mumbai" , 40002 , "Maharashtra" , 3000 , 200 , 100 ,"Good"),
("S0003" , "Raj"    , "p-7" , "Bandra"  , "Mumbai" , 40003 , "Maharashtra" , 3000 , 200 , 100 ,"Good"),
("S0004" , "Ashish" , "A/5" , "Juhu"    , "Mumbai" , 40004 , "Maharashtra" , 3500 , 200 , 150 ,"Good");

select * from SALESMAN_MASTER;


---------------------------------------------------------------------------------------------------
-- 3.(A)
select NAME from CLIENT_MASTER;

-- (B)
select * from CLIENT_MASTER;

--(C)
select NAME,CITY,STATE from CLIENT_MASTER;

--(D)
select DESCRIPION from PRODUCT_MASTER;

--(E)
select NAME from CLIENT_MASTER where CITY ="mumbai";

--(F)
select SALESMANNAME from SALESMAN_MASTER where SALAMT = 3000;


-----------------------------------------------------------------------------------------------------
--4(A)
update CLIENT_MASTER set city = 'Bangalore' where clientno = "C0005";

-- (B)
update CLIENT_MASTER set BALDUE = 1000 where clientno = "C0001";


--(c)
update PRODUCT_MASTER set COSTPRICE = 950 where DESCRIPION = "Trousers";

--(D)
update SALESMAN_MASTER set CITY = 'Pune';