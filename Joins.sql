--- Joins Links two tables together---

--- Inner Join retrieves data only when there are matching values in both tables ----
---  Left join retrieves all data from left table (table 1) and matching rows from the right table (table 2) ---
--- Right join retrieves all data from right table (table 2) and any matching rows from the left table (table 1) ---

USE coffee_store;
SELECT * FROM orders;

SELECT products.name , orders.order_time FROM orders
INNER JOIN products ON orders.product_id = products.id;

SELECT p.name, o.order_time FROM orders AS o
INNER JOIN products p ON o.product_id = p.id
WHERE o.product_id =4
ORDER BY o.order_time;

--- INNER JOIN Syntax ---

--- SELECT <table_name>.<column_name>,... FROM <table 1> ---
--- JOIN <table 2> ON <table 1>.<Column name> = <table 2>.<column name> ---
--- WHERE Clause if needed ---
---- ORDER clause if needed ----

SELECT o.*, c.* FROM CUSTOMERS c
LEFT JOIN orders o ON o.customer_id = c.id
ORDER BY o.id;

SELECT o.*, c.* FROM CUSTOMERS c
RIGHT JOIN orders o ON o.customer_id = c.id
ORDER BY o.id;

SELECT o.*, c.* FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.id 
ORDER BY o.order_time;

SELECT * FROM orders;

--- Joining more than 2 tables ---

SELECT p.name, p.price, c.first_name, c.last_name , o.order_time FROM products p
JOIN orders o ON p.id = o.product_id
JOIN customers c ON c.id = o.customer_id;