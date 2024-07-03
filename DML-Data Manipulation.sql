use coffee_store;

SHOW tables;

SELECT * FROM products;

INSERT INTO products (name,price,cofee_origin)
VALUES ('Esspresso',2.50,'Brazil');

INSERT INTO products (name, price, cofee_origin)
VALUES ('filter', 3, 'INDIA'), ('Cappucino',3.50,'Sweden');

INSERT INTO products (name, price, cofee_origin)
VALUES ('Latte', 3.50 , 'Indoensia'), ('Americano', 3.00, 'Brazil'), ('Flat White', 3.50, 'Indonesia'), ('Macchiato', 3.50, 'Brazil');

-- Deleting Data in the table

create database example;
use example;
SHOW tables;

CREATE TABLE people (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(10),
age INT,
gender ENUM('M','F')
);

INSERT INTO people
(name, age, gender)
VALUES ('Ema', 21, 'F'), ('John', 32, 'M'), ('Thomas', 35, 'M'), ('Chris', 40, 'M'),
('Sally', 23, 'F'), ('Frank', 55, 'M');

SELECT * FROM people;

DELETE FROM people WHERE gender = 'F';

SELECT * FROM customers;

SELECT last_name FROM customers;

SELECT last_name, phone_number FROM customers;

INSERT INTO customers 
(first_name, gender, last_name, phone_number)
VALUES ('Kamesh', 'M', 'Pratapa', '9885122290'),
('Vaishnavi', 'F', 'J S S','7674820240'),
('Dhanya', 'F','Pratapa', '23456789'),
('Ashok', 'M', 'Pratapa','34567890'),
('Hari', 'M', 'Pratapa','9703813030'),
('Nagalakshmi', 'F', 'Pratapa', '2567890');

SELECT * FROM products;

SELECT * FROM products
WHERE cofee_origin = 'Brazil';

SELECT * FROM products
WHERE price = 3.00;

SELECT * FROM products
WHERE price = 3.00 
AND cofee_origin = 'BRAZIL';


/*
!= ... not equal to
<> ... not equal to
> .... greater than
< .... less than
>= ... greater than or equal to
<= ... less than or equal to
*/

SELECT * FROM products
WHERE price != 3.00;
SELECT * FROM products
WHERE price <> 3.00;

SELECT * FROM products
WHERE price >= 3.00;

SELECT * FROM products
WHERE price > 3.00;

SELECT * FROM products
WHERE price < 3.00;

SELECT * FROM products
WHERE price <= 3.00;

SELECT * FROM products
WHERE name < 'D';

SELECT * FROM customers
WHERE phone_number is null;

SELECT * FROM customers
WHERE phone_number is not null;

-- From the customers table select the first name and phone number of all the females who have last name of Bluth

SELECT first_name, phone_number FROM customers
WHERE gender = 'F' AND last_name = 'pratapa';

-- From the products table select the name for all products that have a price greater than 3.00 or a cofee origin of Srilanka.

SELECT * FROM products;

SELECT name FROM products
WHERE price > 3 OR cofee_origin = 'INDIA';

-- How many male customers don't have phone numbers entered in the customer table

SELECT * FROM customers;
INSERT INTO customers 
(first_name, gender, last_name, phone_number)
VALUES ('Kishore', 'M', 'Darbha',""),
('Uday', 'M', 'Peddibotla', ""),
('Kiran', 'M', 'Darbha',"");

SELECT * FROM customers
WHERE phone_number is null AND gender = 'M';

SELECT * FROM customers
WHERE last_name IN ('pratapa', 'Darbha','nanda');

SELECT * FROM customers
WHERE last_name NOT IN ('pratapa', 'Darbha');

SELECT * FROM orders
WHERE order_time BETWEEN '2023-01-01' AND '2023-12-31';

SELECT * FROM orders
WHERE customer_id BETWEEN 5 AND 7;

SELECT * FROM customers
WHERE last_name BETWEEN 'A' AND 'L';
/*
- Percentage is matching any number of characters

- _ matching a single character

*/

SELECT * FROM customers
WHERE last_name LIKE '_r_';

SELECT * FROM products
WHERE price LIKE '3%';

SELECT * FROM customers
WHERE last_name LIKE 'P%';

SELECT * FROM customers
WHERE last_name LIKE '%r%';

SELECT * FROM products
ORDER BY price ASC;

SELECT * FROM products
ORDER BY price DESC;

SELECT * FROM customers
ORDER BY last_name;

SELECT * FROM customers
WHERE last_name = 'Pratapa'
ORDER BY last_name, first_name DESC;

SELECT * FROM orders
ORDER BY order_time DESC;