select * FROM customer;
select * FROM alarm;
show databases;
use otis_db;

create database coffee_store;
use coffee_store;
show tables;
CREATE TABLE products (
  id INT auto_increment PRIMARY KEY,
  name VARCHAR(30),
  price DECIMAL(3,2)
);

SHOW TABLES;
SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM orders;

DROP TABLE customers;

CREATE TABLE customers (
   id INT auto_increment PRIMARY KEY,
   first_name VARCHAR(30),
   gender ENUM('M','F'),
   last_name VARCHAR(30),
   phone_number VARCHAR(11)
   );
   
   CREATE TABLE orders (
     id INT auto_increment PRIMARY KEY,
     product_id INT,
     customer_id INT,
     order_time DATETIME,
     FOREIGN KEY (product_id) REFERENCES products(id),
     FOREIGN KEY (customer_id) REFERENCES customers(id)
     );
     
     -- How to add and remove columns
     
     DESCRIBE products;
     ALTER TABLE products
     ADD COLUMN cofee_origin VARCHAR(30);
     
     ALTER TABLE products
  --   DROP COLUMN cofee_origin; (Deleting column)
  
  -- Delete tables from database.
  -- DROP TABLE products;
  
  -- Truncate the table
  -- TRUNCATE TABLE products;
  
