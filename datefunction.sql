-- 1 CURDATE
SELECT CURDATE();

-- 2 CURTIME
SELECT CURTIME();

-- 3 NOW
SELECT NOW();

-- 4 CURRENT_TIMESTAMP
SELECT CURRENT_TIMESTAMP();

-- 5 YEAR MONTH DAY
SELECT
YEAR(order_date),
MONTH(order_date),
DAY(order_date)
FROM orders;

-- 6 EXTRACT
SELECT
EXTRACT(YEAR FROM order_date),
EXTRACT(MONTH FROM order_date)
FROM orders;

-- 7 MONTHNAME DAYNAME
SELECT
MONTHNAME(order_date),
DAYNAME(order_date)
FROM orders;

-- 8 WEEKDAY DAYOFWEEK
SELECT
WEEKDAY(order_date),
DAYOFWEEK(order_date)
FROM orders;

-- 9 WEEKEND ORDERS
SELECT *
FROM orders
WHERE DAYNAME(order_date)
IN ('Saturday','Sunday');

-- 10 WEEKDAY ORDERS
SELECT *
FROM orders
WHERE DAYOFWEEK(order_date)
BETWEEN 2 AND 6;

-- 11 DATE_ADD
SELECT
DATE_ADD(order_date,INTERVAL 5 DAY)
FROM orders;

-- 12 DATE_SUB
SELECT
DATE_SUB(order_date,INTERVAL 3 DAY)
FROM orders;

-- 13 ADD MONTH
SELECT
DATE_ADD(order_date,INTERVAL 1 MONTH)
FROM orders;

-- 14 ADD YEAR
SELECT
DATE_ADD(order_date,INTERVAL 1 YEAR)
FROM orders;

-- 15 DATEDIFF
SELECT
order_id,
DATEDIFF(delivery_date,order_date)
AS delivery_days
FROM orders;

-- 16 TIMESTAMPDIFF
SELECT
TIMESTAMPDIFF(MONTH,order_date,delivery_date)
FROM orders;

-- 17 LAST_DAY
SELECT LAST_DAY(order_date)
FROM orders;

-- 18 FIRST DAY OF MONTH
SELECT DATE_SUB(order_date,
INTERVAL DAY(order_date)-1 DAY)
FROM orders;

-- 19 DATE_FORMAT
SELECT
DATE_FORMAT(order_date,'%d-%m-%Y')
FROM orders;

-- 20 TIMESTAMP FORMAT
SELECT
DATE_FORMAT(order_timestamp,
'%d-%m-%Y %H:%i:%s')
FROM orders;