CREATE DATABASE task5;
USE task5;


CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);


CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customers VALUES
(1, 'Alice', 'Pune'),
(2, 'Bob', 'Mumbai'),
(3, 'Charlie', 'Delhi');

INSERT INTO Orders VALUES
(101, '2025-10-01', 1, 500.00),
(102, '2025-10-03', 2, 800.00),
(103, '2025-10-05', 1, 300.00); 

## INNER JOIN
SELECT Customers.customer_name, Orders.order_id, Orders.amount
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;

## LEFT JOIN
SELECT Customers.customer_name, Orders.order_id, Orders.amount
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

## RIGHT JOIN
SELECT Customers.customer_name, Orders.order_id, Orders.amount
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

## FULL JOIN
SELECT Customers.customer_name, Orders.order_id, Orders.amount
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id
UNION
SELECT Customers.customer_name, Orders.order_id, Orders.amount
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;
