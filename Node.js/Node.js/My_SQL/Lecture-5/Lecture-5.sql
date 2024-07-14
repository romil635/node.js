----------------------number---------------------------------
-- 1.ABS
select ABS(-243.5); --243.5

-- 2.MOD
SELECT 18 MOD 4;
SELECT MOD(18, 4);
SELECT 18 % 4;      -- 2

-- 3.POWER
select power(3,3);  --27

--4.ROUND
select round(135.31512, 2);  //135.32

-- 6.SIN
select sin(2);      --0.9092974268256817

-- 7.COS
select cos(2);

-- 8.TAN
select tan(1.75);

--9.ASIN 
-- select asin(0.25);

-- 10.ACOS
-- select acos(0.25);

-- 11.ATAN
-- select atan(2.5);

-- 15.SQRT 
select sqrt(256); //16

-- 16.EXP
select exp(1);

-- 17.LN 
select ln(2);

--18.LOG
select log(2);

--19.CEIL
select ceil(25.75); --26
select ceil(25.25); --26

-- 20.SIGN
select sing(255.5); --1

--  5.TRUNC , 12.SINH ,13.COSH ,14.TANH

-- -------------------String Method------------------

-- 1.INITCAP
-- select 

-- 2.LOWER
select lower('MYSQL') as lowercasetext; 

-- 3.UPPER
select upper('mysql') as uppercasetext;

-- 4.CONCAT
select concat("MY" , "SQL") as concatenatedString;


-- 5.LPAD
select LPAD(" MY  ",10, "    SQL");  --S MY

-- 6.RPAD
select LPAD("MY",10, "SQL");  --MYSQLSQLSQ

-- 7.LTRIM
SELECT RTRIM(" MY SQL     ") AS RightTrimmedString;

-- 8.RTRIM
SELECT LTRIM("     SQL Tutorial") AS LeftTrimmedString;

-- 9.REPLACE
SELECT REPLACE("MYSQL", "SQL", "HTML");

-- 10.SUBSTR


-- 11.INSTR

---------------------------------date formet-------------------------------

-- 1.DD


-- 2.DY
select DY("SUN,12,SAT");

-- 3.DAY
SELECT DAY("2004-02-19");

-- 4.MM

-- 5.MON

-- 6.MONTH
select month("2004-02-19");

-- 7.RM

-- 8.YY or YYYY

-- 9.HH:MI:SS

-- 10.HH 12 or HH 24

-- 11.MI

-- 12.SS

-- 13.AM or PM

-- 11.SP

-- 12.TH

-- 14.TH
