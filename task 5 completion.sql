-- =========================================
-- DROP TABLES IF ALREADY EXIST
-- =========================================

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

-- =========================================
-- CREATE CUSTOMERS TABLE
-- =========================================

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(100)
);

-- =========================================
-- CREATE ORDERS TABLE
-- =========================================

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL,
    amount NUMERIC(10,2),
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
        ON DELETE CASCADE
);

-- =========================================
-- INSERT SAMPLE DATA INTO CUSTOMERS
-- =========================================

INSERT INTO customers (customer_name, city) VALUES
('Rahul', 'Bangalore'),
('Amit', 'Mumbai'),
('Sneha', 'Chennai'),
('Priya', 'Delhi');

-- =========================================
-- INSERT SAMPLE DATA INTO ORDERS
-- =========================================

INSERT INTO orders (order_date, amount, customer_id) VALUES
('2026-02-01', 1500.00, 1),
('2026-02-05', 2500.00, 1),
('2026-02-10', 1800.00, 2),
('2026-02-12', 2200.00, 3);

-- =========================================
-- 1️⃣ INNER JOIN
-- Shows only matching records
-- =========================================

SELECT 
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- =========================================
-- 2️⃣ LEFT JOIN
-- Shows all customers + matching orders
-- =========================================

SELECT 
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

-- =========================================
-- 3️⃣ RIGHT JOIN
-- Shows all orders + matching customers
-- =========================================

SELECT 
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;

-- =========================================
-- 4️⃣ FULL JOIN
-- Shows all customers + all orders
-- =========================================

SELECT 
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
FROM customers c
FULL JOIN orders o
ON c.customer_id = o.customer_id;