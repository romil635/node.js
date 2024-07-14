
-- create database foreignkey;
 use foreignkey;
-- show tables;
-- 1. -------------------------------- 
create table CLIENT_MASTER1(
      CLIENTNO varchar(6) primary key,
      NAME varchar(20) Not null,
      ADDRESS1 varchar(30),
      ADDRESS2 varchar(30),
      CITY varchar(15),
      PINCODE int(8),
      STATE varchar(15),
      BALDUE int(10)
 );
 
 

 insert into CLIENT_MASTER1 values
 ("C0001" , "Ivan Bayross" ,"A/14", "Worli" ,"Mumbai" , 400054,"Maharashtra",15000),
 ("C0002" , "Mamta Muzumdar" ,"65", "Nariman" , "Madras" , 78001,"Tamil Nadu",0),
 ("C0003" , "Chhaya Bankar" ,"P-7", "Worli" , "Mumbai" , 400057,"Maharashtra",5000),
 ("C0004" , "Ashwini Joshi" ,"A/5", "Bandra" , "Bangalore" , 560001,"Karnataka",0),
 ("C0005" , "Hansel Colaco" ,"A/15", "Worli" , "Mumbai" , 400060,"Maharashtra",2000),
 ("C0006" , "Deepak Sharma" ,"A/18", "Juhu" , "Mangalore" , 560050,"Karnataka",0); 

 select * from  CLIENT_MASTER1;

-- -- 2. -----------------------------------------------------------------------
  create table PRODUCT_MASTER1(
               PRODUCTNO varchar (6) primary key,
               DESCRIPION varchar(15) Not null,
               PROFITPERCENT int(4) Not null,
               UNITMEASURE varchar(10) Not null,
               QTYONHAND int(8) Not null,
               PEORDERLVL int(8) Not null,
               SELLPRICE int(8) Not null,
               COSTPRICE int(8) Not null
          );
		desc PRODUCT_MASTER1;

 insert into PRODUCT_MASTER1 values
 ("P0001", "T-Shirts"    , 5  , "piece" , 200 , 50 , 350 , 250),
 ("P0002", "Shirts"      , 6  , "piece" , 150 , 50 , 500 , 350),
 ("P0003", "Cotton Jeans", 5  , "piece" , 100 , 20 , 600 , 450),
 ("P0004", "Jeans"       , 5  , "piece" , 100 , 20 , 750 , 500),
 ("P0005", "Trousers"    , 2  , "piece" , 150 , 50 , 850 , 550),
 ("P0006", "Pull Overs"  , 2  , "piece" , 80  , 30 , 700 , 450),
 ("P0007", "Denim Shirts", 4  , "piece" , 100 , 40 , 350 , 250),
 ("P0008", "Lyera Tops"  , 5  , "piece" , 70  , 30 , 300 , 175),
 ("P0009", "Skirts"      , 5  , "piece" , 75  , 30 , 450 , 300);
 
 select * from PRODUCT_MASTER1;

-- 3. -----------------------------------------------------------------------
 create table SALESMAN_MASTER1(
      SALESMANNO varchar(6) primary key,
      SALESMANNAME varchar(20) Not null,
      ADDRESS1 varchar(30),
      ADDRESS2 varchar(30),
      CITY varchar(20),
      PINCODE int(8),
      STATE varchar(20),
      SALAMT int(8) Not null,
      TGTTOGET int(6) Not null,
      YTDSALES int(6) Not null,
    REMARKS varchar(60)
 );
 desc SALESMAN_MASTER1;

insert into SALESMAN_MASTER1 values
("S0001" , "Aman"   , "A/14", "Worli"   , "Mumbai" , 40001 , "Maharashtra" , 3000 , 100 , 50 ,"Good"),
("S0002" , "Omkar"  , "65"  , "Nariman" , "Mumbai" , 40002 , "Maharashtra" , 3000 , 200 , 100 ,"Good"),
("S0003" , "Raj"    , "p-7" , "Bandra"  , "Mumbai" , 40003 , "Maharashtra" , 3000 , 200 , 100 ,"Good"),
("S0004" , "Ashish" , "A/5" , "Juhu"    , "Mumbai" , 40004 , "Maharashtra" , 3500 , 200 , 150 ,"Good");

select * from SALESMAN_MASTER1;


-- 4. -----------------------------------------------------------------------
 create table SALES_ORDER(
     ORDERNO varchar(6) primary key,
     CLIENTNO varchar(6) references CLIENT_MASTER1(CLIENTNO), 
     ORDERDATE date Not null,
     SALESMANNO varchar(6) references SALESMAN_MASTER1(SALESMANNO),
     DELYTYPE char(1),
     BILLYN char(1),
     DELYDATE date,
     ORDERSTATUS varchar(10)
 );


-- desc SALES_ORDER;


insert into SALES_ORDER values
 ('O0001','C0001','2022-08-12' ,'S0001','F','N','20-04-02','inprocess'),
 ('O0002','C0002','2023-02-22' ,'S0002','P','N','27-07-02','cancelled'),
 ('O0003','C0003','2021-04-22' ,'S0004','F','Y','20-02-02','fulfilled'),
 ('O0004','C0004','2020-03-12' ,'S0002','F','N','2017-03-25','fulfilled'),
 ('O0005','C0005','2016-06-22' ,'S0004','F','Y','2019-05-02','cancelled'),
 ('O0006','C0006','2021-01-13' ,'S0005','P','Y','2023-04-01','inprocess');

select * from SALES_ORDER;

 
  
-- 5. -----------------------------------------------------------------------
create table SALES_ORDER_DETAILS(
    ORDERNO varchar(6), 
    foreign key(ORDERNO) references SALES_ORDER(ORDERNO),
    PRODUCTNO varchar(6),
    foreign key(PRODUCTNO) references PRODUCT_MASTER1(PRODUCTNO),
    QTYOEDERED  int(8),
    QTYDISP int(8),
    PRODUCTRATE int(10)
);
desc SALES_ORDER_DETAILS;

insert into SALES_ORDER_DETAILS values
('O0001' , 'P0001' , 4 , 4 , 525),
('O0002' , 'P0002' , 2 , 1 , 8400),
('O0003' , 'P0003' , 2 , 1 , 5250),
('O0004' , 'P0004' , 10 , 0 , 525),
('O0005' , 'P0005' , 3 , 3 , 3150),
('O0006' , 'P0006' , 3 , 1 , 5250),
('O0005' , 'P0007' , 10 , 10 , 525),
('O0003' , 'P0008' , 4 , 4 , 1050),
('O0002' , 'P0001' , 2 , 2 , 1050),
('O0006' , 'P0002' , 1 , 1 , 12000),
('O0004' , 'P0003' , 1 , 0 , 8400),
('O0005' , 'P0004' , 1 , 0 , 1050),
('O0003' , 'P0005' , 10 , 5 , 525),
('O0004' , 'P0006' , 5 , 3 , 1050);

select * from SALES_ORDER_DETAILS;





