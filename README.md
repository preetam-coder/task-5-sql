📖 Project Objective

The objective of this project is to understand and implement different types of SQL JOIN operations to combine data from multiple related tables.

This project demonstrates how to merge data from two tables using:

INNER JOIN

LEFT JOIN

RIGHT JOIN

FULL JOIN

🛠 Tools Used

PostgreSQL

pgAdmin 4

🗂 Database Schema

This project contains two related tables:

1️⃣ Customers Table

Stores customer details.

Column Name	Data Type	Description
customer_id	SERIAL (PK)	Unique customer ID
customer_name	VARCHAR(100)	Name of the customer
city	VARCHAR(100)	Customer city
2️⃣ Orders Table

Stores order details placed by customers.

Column Name	Data Type	Description
order_id	SERIAL (PK)	Unique order ID
order_date	DATE	Date of order
amount	NUMERIC(10,2)	Order amount
customer_id	INT (FK)	References customers(customer_id)
🔗 Relationship

One Customer → Can have Multiple Orders

Foreign Key: orders.customer_id references customers.customer_id

This represents a One-to-Many relationship.

🔍 SQL JOIN Operations Implemented
✅ 1. INNER JOIN

Returns only records where there is a match in both tables.

Use Case:
Shows customers who have placed orders.

✅ 2. LEFT JOIN

Returns all customers and matching orders.
If a customer has no orders, NULL values are shown for order columns.

Use Case:
Shows all customers, even those who haven't placed any orders.

✅ 3. RIGHT JOIN

Returns all orders and matching customers.

Use Case:
Shows all orders, even if customer details are missing.

✅ 4. FULL JOIN

Returns all records from both tables.

Use Case:
Shows complete data from both tables including unmatched records.

🎯 Learning Outcome

After completing this project, you will:

Understand table relationships

Work with Primary and Foreign Keys

Perform different types of JOIN operations

Merge data from multiple tables efficiently

Understand real-world relational database design
