CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE customers (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone VARCHAR(15),
    Address VARCHAR(255),
    Registration_Date DATE DEFAULT (CURRENT_DATE)
);

INSERT INTO customers (Customer_Name, Email, Phone, Address) VALUES
('Ajay', 'ajay@email.com', '9876543210', 'Ramanthurai, Kanyakumari District'),
('Lowell', 'lowell@email.com', '8765432109', 'Pillaiyarkovil, Kanyakumari District'),
('Noel', 'noel@email.com', '7654321098', 'Nagercoil, Kanyakumari District'),
('Ruben', 'ruben@email.com', '6543210987', 'Marathandam, Kanyakumari District'),
('Merjo', 'merjo@email.com', '5432109876', 'Keezhanputhenurai, Kanyakumari District'),
('Aulto', 'aulto@email.com', '4321098765', 'Pallam, Kanyakumari District'),
('Jefrin', 'jefrin@email.com', '3210987654', 'Kadiyapattanam, Kanyakumari District'),
('Jeni', 'jeni@email.com', '2109876543', 'Pattanam, Kanyakumari District'),
('Gowthem', 'gowthem@email.com', '1098765432', 'Eniyam, Kanyakumari District'),
('Sathish', 'sathish@email.com', '1987654321', 'Kumarkovil, Kanyakumari District');

SELECT * FROM customers;
SELECT * FROM customers WHERE Address LIKE '%Ramanthurai%';
SELECT * FROM customers ORDER BY Customer_Name;
UPDATE customers SET Phone = '9998887776' WHERE Customer_ID = 1;
UPDATE customers SET Address = 'Pillaiyarkovil Main Road, Kanyakumari District' WHERE Customer_ID = 2;
UPDATE customers SET Customer_Name = 'Noel Mathew' WHERE Customer_ID = 3;
SELECT Customer_ID, Customer_Name, Phone, Address FROM customers WHERE Customer_ID = 2;
DELETE FROM customers WHERE Customer_ID = 10;
DELETE FROM customers WHERE Email = 'lowell@email.com';
SELECT * FROM customers ORDER BY Customer_ID;


