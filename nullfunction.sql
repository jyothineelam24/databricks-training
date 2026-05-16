-- 1
SELECT *
FROM Employees
WHERE salary IS NULL;

-- 2
SELECT *
FROM Orders
WHERE discount IS NOT NULL;

-- 3
SELECT *
FROM products_data
WHERE category IS NULL;

-- 4
SELECT COUNT(*) AS null_managers
FROM Employees
WHERE manager_id IS NULL;

-- 5
SELECT name,
IFNULL(salary,0)
FROM Employees;

-- 6
SELECT name,
IFNULL(bonus,1000)
FROM Employees;

-- 7
SELECT customer_name,
IFNULL(amount,500)
FROM Orders;

-- 8
SELECT product_name,
IFNULL(stock,0)
FROM products_data;

-- 9
SELECT name,
COALESCE(salary,bonus)
FROM Employees;

-- 10
SELECT name,
COALESCE(salary,bonus,0)
FROM Employees;

-- 11
SELECT product_name,
COALESCE(price,1000)
FROM products_data;

-- 12
SELECT customer_name,
COALESCE(amount,discount,0)
FROM Orders;

-- 13
SELECT name,
NULLIF(salary,0)
FROM Employees;

-- 14
SELECT order_id,
NULLIF(discount,0)
FROM Orders;

-- 15
SELECT order_id,
amount / NULLIF(discount,0)
FROM Orders;

-- 16
SELECT order_id,
NULLIF(coupon_code,'DISC10')
FROM Orders;

-- 17
SELECT name,
IFNULL(salary,0)+IFNULL(bonus,0)
AS total_earnings
FROM Employees;

-- 18
SELECT *
FROM Employees
WHERE salary IS NULL
AND bonus IS NULL;

-- 19
SELECT *
FROM products_data
WHERE price IS NULL
AND category IS NOT NULL;

-- 20
SELECT *
FROM Orders
WHERE amount IS NULL
AND discount IS NULL;