-- Create a Test DB and tables inside the DB
CREATE DATABASE test;

USE test;

CREATE TABLE address (
   id INT,
   house_number INT,
   city varchar(20),
   postcode VARCHAR(7)
);

CREATE TABLE people (
	id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    address_id INT
);

CREATE TABLE pets (
 id INT,
 name VARCHAR(20),
 species VARCHAR(20),
 owner_id INT
);

SHOW TABLES;

-- Add a primary key and delete the same

ALTER TABLE addresses
ADD PRIMARY KEY (id);

-- Excercise queries

-- Add a primary key to the id field in pets table
ALTER TABLE pets
ADD PRIMARY KEY (id);

-- Add a primary key to the id field in the people table

DESCRIBE TABLE people;
ALTER TABLE people
ADD PRIMARY KEY (id) ;

-- Add a foreigen key to the onwer_id column in the pets table reference to the id field in the people table 
DESCRIBE pets;
AlTER TABLE pets
ADD CONSTRAINT FK_people
FOREIGN KEY (owner_id) REFERENCES people(id);

-- Add a column named email to the people table

ALTER TABLE people
ADD COLUMN email VARCHAR(20);
DESCRIBE people;

-- Add a unique constraint to email column in the people table
ALTER TABLE people
ADD CONSTRAINT email_constraint UNIQUE(email);

-- Rename the name column in the pets table to first_name
ALTER TABLE pets
RENAME COLUMN name TO first_name;

-- Change the postcode data type to CHAR(7) in the addresses table.
ALTER TABLE addresses
MODIFY COLUMN postcode CHAR(7);

ALTER TABLE addresses
DROP PRIMARY KEY;

ALTER TABLE addresses
MODIFY id int;

-- Add a Forigen key and delete the same

ALTER TABLE people
ADD CONSTRAINT FK_PeopleAddressess
FOREIGN KEY (address_id)
REFERENCES addressess(id);

ALTER TABLE people
DROP FOREIGN KEY FK_PeopleAddress,
DROP INDEX FK_PeopleAddress;

-- Adding unique constraint to a column and deleting

ALTER TABLE pets
ADD CONSTRAINT u_species UNIQUE(species);

ALTER TABLE pets
DROP INDEX u_species;

-- How to change column names

ALTER TABLE pets
CHANGE species animal_type VARCHAR(20);

ALTER TABLE pets
RENAME COLUMN animal_type TO species;

-- Modify column data types

ALTER TABLE addresses
CHANGE COLUMN city city VARCHAR(30);

ALTER TABLE addresses
MODIFY COLUMN city CHAR(25);