

-- 1. Display all customers
SELECT *
FROM customer;

-- 2. Display all products
SELECT *
FROM products;

-- 3. Display all orders
SELECT *
FROM orders;

-- 4. Total sales
SELECT SUM(total_amount) AS Total_Sales
FROM orders;

-- 5. Total number of orders
SELECT COUNT(*) AS Total_Orders
FROM orders;

-- 6. Average order value
SELECT AVG(total_amount) AS Average_Order_Value
FROM orders;

-- 7. Highest order amount
SELECT MAX(total_amount) AS Highest_Order
FROM orders;

-- 8. Sales by customer
SELECT 
    c.customer_name,
    SUM(o.total_amount) AS Total_Sales
FROM customer c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY Total_Sales DESC;

-- 9. Sales by product
SELECT
    p.product_name,
    SUM(o.total_amount) AS Total_Sales
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY Total_Sales DESC;

-- 10. Sales by category
SELECT
    p.category,
    SUM(o.total_amount) AS Total_Sales
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY p.category
ORDER BY Total_Sales DESC;

-- 11. Customers with more than one order
SELECT
    c.customer_name,
    COUNT(o.order_id) AS Order_Count
FROM customer c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 1;

-- 12. Top 5 customers by sales
SELECT TOP 5
    c.customer_name,
    SUM(o.total_amount) AS Total_Sales
FROM customer c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY Total_Sales DESC;
