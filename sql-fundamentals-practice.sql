-- ============================================================
-- SQL Fundamentals Practice
-- Data Technician Skills Bootcamp
-- Author: Ragad Alfatih
--
-- Topics:
-- SELECT, WHERE, comparison operators, BETWEEN, LIKE,
-- ORDER BY, aggregation functions and ALTER TABLE
-- ============================================================


-- ============================================================
-- SECTION 1: SELECT AND WHERE
-- ============================================================

-- Task 1
-- Display only the first_name and country of all customers.

SELECT first_name, country
FROM Customers;


-- Task 2
-- Display the item and amount columns from Orders.

SELECT item, amount
FROM Orders;


-- Task 3
-- Display all columns from Shippings.

SELECT *
FROM Shippings;


-- Task 4
-- Display customer_id, first_name and age from Customers.

SELECT customer_id, first_name, age
FROM Customers;


-- Task 5
-- Display all customers from the UK.

SELECT *
FROM Customers
WHERE country = 'UK';


-- Task 6
-- Display all orders where the item is Keyboard.

SELECT *
FROM Orders
WHERE item = 'Keyboard';


-- Task 7
-- Display all shipping records where status is not Pending.

SELECT *
FROM Shippings
WHERE status <> 'Pending';


-- Task 8
-- Display all customers whose last name is Doe.

SELECT *
FROM Customers
WHERE last_name = 'Doe';


-- Task 9
-- Display all customers from UAE.

SELECT *
FROM Customers
WHERE country = 'UAE';


-- Task 10
-- Display all orders placed by customer_id 4.

SELECT *
FROM Orders
WHERE customer_id = 4;


-- ============================================================
-- SECTION 2: BETWEEN
-- ============================================================

-- Task 11
-- Customers aged between 20 and 25.

SELECT *
FROM Customers
WHERE age BETWEEN 20 AND 25;


-- Task 12
-- Customers aged between 25 and 31.

SELECT *
FROM Customers
WHERE age BETWEEN 25 AND 31;


-- Task 13
-- Orders with amount between 250 and 500.

SELECT *
FROM Orders
WHERE amount BETWEEN 250 AND 500;


-- Task 14
-- Orders with amount between 300 and 1000.

SELECT *
FROM Orders
WHERE amount BETWEEN 300 AND 1000;


-- ============================================================
-- SECTION 3: COMPARISON OPERATORS
-- ============================================================

-- Task 15
-- Customers older than 25.

SELECT *
FROM Customers
WHERE age > 25;


-- Task 16
-- Orders with amount greater than 400.

SELECT *
FROM Orders
WHERE amount > 400;


-- Task 17
-- Customers older than 30.

SELECT *
FROM Customers
WHERE age > 30;


-- Task 18
-- Customers younger than 25.

SELECT *
FROM Customers
WHERE age < 25;


-- Task 19
-- Orders with amount less than 400.

SELECT *
FROM Orders
WHERE amount < 400;


-- Task 20
-- Customers younger than 28.

SELECT *
FROM Customers
WHERE age < 28;


-- Task 21
-- Customers aged 28 or older.

SELECT *
FROM Customers
WHERE age >= 28;


-- Task 22
-- Orders with amount greater than or equal to 400.

SELECT *
FROM Orders
WHERE amount >= 400;


-- Task 23
-- Customers aged 22 or older.

SELECT *
FROM Customers
WHERE age >= 22;


-- Task 24
-- Customers aged 25 or younger.

SELECT *
FROM Customers
WHERE age <= 25;


-- Task 25
-- Orders with amount less than or equal to 300.

SELECT *
FROM Orders
WHERE amount <= 300;


-- Task 26
-- Customers aged 22 or younger.

SELECT *
FROM Customers
WHERE age <= 22;


-- Task 27
-- Customers who are not from the USA.

SELECT *
FROM Customers
WHERE country <> 'USA';


-- Task 28
-- Customers whose first name is not John.

SELECT *
FROM Customers
WHERE first_name <> 'John';


-- Task 29
-- Shipping records not marked Delivered.

SELECT *
FROM Shippings
WHERE status <> 'Delivered';


-- Task 30
-- Orders where the item is not Keyboard.

SELECT *
FROM Orders
WHERE item <> 'Keyboard';


-- Task 31
-- Customers whose age is not 22.

SELECT *
FROM Customers
WHERE age <> 22;


-- ============================================================
-- SECTION 4: MULTIPLE CONDITIONS
-- ============================================================

-- Task 32
-- UK customers older than 22.

SELECT *
FROM Customers
WHERE country = 'UK'
  AND age > 22;


-- Task 33
-- USA customers aged between 20 and 30.

SELECT *
FROM Customers
WHERE country = 'USA'
  AND age BETWEEN 20 AND 30;


-- Task 34
-- Orders greater than 300 and less than 1000.

SELECT *
FROM Orders
WHERE amount > 300
  AND amount < 1000;


-- Task 35
-- Shipping records with status other than Pending.

SELECT *
FROM Shippings
WHERE status <> 'Pending';


-- Task 36
-- Customers aged between 22 and 28 who are not from UAE.

SELECT *
FROM Customers
WHERE age BETWEEN 22 AND 28
  AND country <> 'UAE';


-- Task 37
-- Orders with amount greater than or equal to 400.

SELECT *
FROM Orders
WHERE amount >= 400;


-- Task 38
-- Customers younger than 30 and not from USA.

SELECT *
FROM Customers
WHERE age < 30
  AND country <> 'USA';


-- Task 39
-- All customers except those from the UK.

SELECT *
FROM Customers
WHERE country <> 'UK';


-- Task 40
-- Orders with amount between 250 and 400.

SELECT *
FROM Orders
WHERE amount BETWEEN 250 AND 400;


-- ============================================================
-- SECTION 5: ADDITIONAL FILTERING PRACTICE
-- ============================================================

-- Display all details of customers from the UK.

SELECT *
FROM Customers
WHERE country = 'UK';


-- Display first_name and country for all customers.

SELECT first_name, country
FROM Customers;


-- Customers exactly 22 years old.

SELECT *
FROM Customers
WHERE age = 22;


-- Customers aged 25 or younger.

SELECT *
FROM Customers
WHERE age <= 25;


-- Orders with amount less than 500.

SELECT *
FROM Orders
WHERE amount < 500;


-- Item and amount for orders greater than 300.

SELECT item, amount
FROM Orders
WHERE amount > 300;


-- Customers who are not from the UK.

SELECT *
FROM Customers
WHERE country <> 'UK';


-- Customers aged between 22 and 28 inclusive.

SELECT *
FROM Customers
WHERE age BETWEEN 22 AND 28;


-- Orders except Keyboard.

SELECT *
FROM Orders
WHERE item <> 'Keyboard';


-- Customers older than 24 and not from UAE.

SELECT first_name, last_name, age
FROM Customers
WHERE age > 24
  AND country <> 'UAE';


-- Bonus:
-- Orders greater than 300 but less than 1000.

SELECT *
FROM Orders
WHERE amount > 300
  AND amount < 1000;


-- ============================================================
-- SECTION 6: LIKE OPERATOR
-- ============================================================

-- Task 1
-- First names beginning with J.

SELECT *
FROM Customers
WHERE first_name LIKE 'J%';


-- Task 2
-- Last names ending with son.

SELECT *
FROM Customers
WHERE last_name LIKE '%son';


-- Task 3
-- First names containing the letter o.

SELECT *
FROM Customers
WHERE first_name LIKE '%o%';


-- Task 4
-- Countries beginning with U.

SELECT *
FROM Customers
WHERE country LIKE 'U%';


-- Task 5
-- Last names containing Do.

SELECT *
FROM Customers
WHERE last_name LIKE '%Do%';


-- Task 6
-- Order items beginning with M.

SELECT *
FROM Orders
WHERE item LIKE 'M%';


-- Task 7
-- Order items ending with d.

SELECT *
FROM Orders
WHERE item LIKE '%d';


-- Task 8
-- First names containing exactly four characters.

SELECT *
FROM Customers
WHERE first_name LIKE '____';


-- Task 9
-- First names beginning with J and ending with n.

SELECT *
FROM Customers
WHERE first_name LIKE 'J%n';


-- Task 10
-- Order items containing Key.

SELECT *
FROM Orders
WHERE item LIKE '%Key%';


-- Bonus
-- Last names containing exactly three characters and ending with e.

SELECT *
FROM Customers
WHERE last_name LIKE '__e';


-- ============================================================
-- SECTION 7: ORDER BY
-- ============================================================

-- Task 1
-- Customers sorted by age ascending.

SELECT *
FROM Customers
ORDER BY age ASC;


-- Task 2
-- Customers sorted by age descending.

SELECT *
FROM Customers
ORDER BY age DESC;


-- Task 3
-- Customers sorted by country A-Z,
-- then by age highest to lowest.

SELECT first_name, last_name, country, age
FROM Customers
ORDER BY country ASC, age DESC;


-- Task 4
-- Orders sorted from highest to lowest amount.

SELECT *
FROM Orders
ORDER BY amount DESC;


-- ============================================================
-- SECTION 8: ALTER TABLE
-- ============================================================

-- Task 5
-- Add an email column to Customers.

ALTER TABLE Customers
ADD COLUMN email VARCHAR(255);


-- Task 6
-- Add an order_date column to Orders.

ALTER TABLE Orders
ADD COLUMN order_date DATE;


-- Task 7
-- Delete the email column from Customers.

ALTER TABLE Customers
DROP COLUMN email;


-- Task 8
-- Delete the order_date column from Orders.

ALTER TABLE Orders
DROP COLUMN order_date;


-- ============================================================
-- SECTION 9: AGGREGATION FUNCTIONS
-- ============================================================

-- Task 9
-- Total number of customers.

SELECT COUNT(*) AS Total_Customers
FROM Customers;


-- Task 10
-- Average customer age.

SELECT AVG(age) AS Average_Age
FROM Customers;


-- Task 11
-- Youngest customer age.

SELECT MIN(age) AS Youngest_Age
FROM Customers;


-- Task 12
-- Oldest customer age.

SELECT MAX(age) AS Oldest_Age
FROM Customers;


-- Task 13
-- Total value of all orders.

SELECT SUM(amount) AS Total_Order_Value
FROM Orders;


-- Task 14
-- Average order amount.

SELECT AVG(amount) AS Average_Order_Amount
FROM Orders;


-- Task 15
-- Highest order amount.

SELECT MAX(amount) AS Highest_Order_Amount
FROM Orders;


-- Task 16
-- Lowest order amount.

SELECT MIN(amount) AS Lowest_Order_Amount
FROM Orders;


-- ============================================================
-- SECTION 10: BONUS TASKS
-- ============================================================

-- Task 17
-- Number of customers from the USA.

SELECT COUNT(*) AS USA_Customers
FROM Customers
WHERE country = 'USA';


-- Task 18
-- Total value of orders greater than 300.

SELECT SUM(amount) AS Total_Orders_Over_300
FROM Orders
WHERE amount > 300;


-- Task 19
-- Customers older than 25 sorted by age descending.

SELECT *
FROM Customers
WHERE age > 25
ORDER BY age DESC;


-- Task 20
-- Add a status column to Orders.

ALTER TABLE Orders
ADD COLUMN status VARCHAR(50);

-- Remove the status column after checking the table structure.

ALTER TABLE Orders
DROP COLUMN status;
