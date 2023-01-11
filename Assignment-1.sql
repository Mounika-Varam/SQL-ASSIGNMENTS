-- DATABASE CREATION
CREATE DATABASE sqlDatabase;


USE sqlDatabase;

-- CREATING PRODUCT TABLE

CREATE TABLE product
(id int NOT NULL PRIMARY KEY,
 productName nvarchar(50),
 unitPrice decimal(12,2),
 package nvarchar(30),
 isDiscontinued bit);

-- CREATING CUSTOMER TABLE

CREATE TABLE customer
(id int NOT NULL PRIMARY KEY,
firstName nvarchar(40) NOT NULL,
lastName nvarchar(40),
city nvarchar(40),
country nvarchar(40),
phone nvarchar(40));

--CREATING ORDERR TABLE

CREATE TABLE orderr
(id int NOT NULL PRIMARY KEY,
 orderDate datetime NOT NULL,
 orderNumber nvarchar(10),
 customerId int REFERENCES customer(id),
 totalAmount decimal(12,2));

-- CREATING ORDERITEM TABLE

CREATE TABLE orderItem
(id int NOT NULL PRIMARY KEY,
 orderId int REFERENCES orderr(id),
 productId int REFERENCES product(id),
 unitPrice decimal(12,2),
 quantity int);

-- INSERTING ROWS INTO PRODUCT TABLE

INSERT INTO product
VALUES (101, 'Laptop', 50000, 'Cardboard', 0),
(102, 'Mobile', 20000, 'Box', 0),
(103, 'Tab', 22000, 'Cardboard', 0),
(104, 'Desktop', 30000, 'Cardboard', 0),
(105, 'Earpods', 2000, 'Box', 0),
(106, 'Mouse', 1000, 'Box', 1);

-- CHECKING WHETHER THE TABLE ACCEPTS NULL VALUE FOR ID OR NOT

INSERT INTO product
VALUES (NULL,'GGHC',43234, 'FF',1);

--SELECT * FROM product

-- INSERTING ROWS INTO CUSTOMER TABLE

INSERT INTO customer
VALUES (201, 'Sita', 'Devi', 'Banglore', 'India', '9876543210'),
(202, 'Rama', 'Sri', 'Banglore', 'India', '7852656548'),
(203, 'Lakshmana', 'Sri', 'Banglore', 'India', '9566577877');

--SELECT * FROM customer;

-- INSERTING ROWS INTO ORDERR TABLE

INSERT INTO orderr
VALUES (301, '2023-01-09 11:30', '565333', '201', 51000),
(302, '2023-01-09 06:45', '734664', '202', 20000),
(303, '2023-01-01 08:34', '464546', '203', 54000);

-- INSERTING ROWS INTO ORDERITEM TABLE

INSERT INTO orderItem
VALUES (401, 301, 101, 50000, 1),
(402, 301, 106, 1000, 1),
(403, 302, 102, 20000, 1),
(404, 303, 103, 22000, 1),
(405, 303, 104, 30000, 1),
(406, 303, 105, 2000, 1);

--SELECT * FROM orderItem;
--SELECT * FROM orderr;
--SELECT * FROM customer;
--SELECT * FROM product;

-- CHECKING WHETHER THE FIRSTNAME ATTRIBUTE IN CUSTOMER TABLE ACCEPTS NULL OR NOT

INSERT INTO customer
VALUES (205, NULL, NULL, 'somewhere', 'India', '3456366666');

-- CHECKING WHETHER THE ORDERDATE ATTRIBUTE IN ORDERR TABLE ACCEPTS NULL OR NOT

INSERT INTO orderr
VALUES (434, NULL, 222, 201, 2333)

-- DISPLAY COUNTRY WHOSE NAME STARTS WITH I OR S

SELECT country FROM customer 
WHERE firstName LIKE 'I%' OR firstName LIKE 'S%';

-- DISPLAY WHOSE NAME OF CUSTOMER WHOSE THIRD CHARACTER IS T

SELECT * FROM customer 
WHERE firstName LIKE '__t%';


