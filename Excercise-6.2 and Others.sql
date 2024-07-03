use coffee_store;
select NAME, price from coffee_store.products where cofee_origin in( 'colambia','indoensia')
order by name;

select * FROM orders WHERE order_time BETWEEN '2023-02-01' AND '2023-02-28 23:59:59.999999' AND customer_id IN (19,20,21,24);
select * FROM orders WHERE year(order_time) = 2023 AND month(order_time) = 2
AND customer_id in (19,20,21,24); 

INSERT INTO orders
(id, product_id, customer_id, order_time)
VALUES ('Ema', 21, 'F'), ('John', 32, 'M'), ('Thomas', 35, 'M'), ('Chris', 40, 'M'),
('Sally', 23, 'F'), ('Frank', 55, 'M');

select * from orders where order_time = '01-02-2023' AND customer_id = (19,20,21,24);

select first_name, last_name, phone_number FROM customers WHERE last_name like '%ar%';

--- Distinct Key word usage ----

SELECT DISTINCT cofee_origin FROM products;

SELECT DISTINCT cofee_origin, id FROM products;

SELECT DISTINCT cofee_origin , price FROM products;

SELECT DISTINCT customer_id FROM orders 
WHERE order_time BETWEEN '2023-02-01' and '2023-02-28 23:59:59:999999'
ORDER BY customer_id;

--- Limiting the number of rows ----

SELECT * FROM customers
LIMIT 5 OFFSET 5;

SELECT * FROM customers
LIMIT 3,3 ;

SELECT * FROM customers
LIMIT `row_count`; --- only retrun row-count rows

SELECT * FROM customers
LIMIT `offset`, `row_count`; --- retrun row_count rows starting from row 5

SELECT * FROM customers
LIMIT `row_count` OFFSET `offset`; --- Same as above

SELECT * FROM customers
ORDER BY last_name
LIMIT 10;

--- Column Aliases ----

SElECT id, name, price, cofee_origin FROM products;

SELECT id, name AS cofee, price, cofee_origin AS country FROM products;

--- Excercise 6.3 ---

SELECT * FROM customers;
SELECT DISTINCT last_name FROM customers ORDER BY last_name;

SELECT * FROM ORDERS WHERE product_id = 3
 AND order_time BETWEEN '2023-02-01' AND '2023-02-28 23:59:59:999999'
 ORDER BY order_time
 LIMIT 4;

SELECT name, price AS `retail price` , cofee_origin FROM products;