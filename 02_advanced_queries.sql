
-- 1. Customer and Order Details using JOIN
SELECT
    c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.total_amount
FROM customer c
JOIN orders o
    ON c.customer_id = o.customer_id
ORDER BY o.order_date;


-- 2. Product and Sales Details using JOIN
SELECT
    p.product_name,
    p.category,
    p.price,
    o.quantity,
    o.total_amount
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
ORDER BY o.total_amount DESC;


-- 3. Customers whose total sales are above 30000
SELECT
    c.customer_name,
    SUM(o.total_amount) AS Total_Sales
FROM customer c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING SUM(o.total_amount) > 30000;


-- 4. Subquery: Orders above average order amount
SELECT *
FROM orders
WHERE total_amount >
(
    SELECT AVG(total_amount)
    FROM orders
);


-- 5. CTE: Total sales by customer
WITH CustomerSales AS
(
    SELECT
        customer_id,
        SUM(total_amount) AS Total_Sales
    FROM orders
    GROUP BY customer_id
)
SELECT
    c.customer_name,
    cs.Total_Sales
FROM CustomerSales cs
JOIN customer c
    ON cs.customer_id = c.customer_id
ORDER BY cs.Total_Sales DESC;


-- 6. Rank customers by total sales
SELECT
    c.customer_name,
    SUM(o.total_amount) AS Total_Sales,
    RANK() OVER
    (
        ORDER BY SUM(o.total_amount) DESC
    ) AS Sales_Rank
FROM customer c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name;


-- 7. Rank products by sales
SELECT
    p.product_name,
    SUM(o.total_amount) AS Total_Sales,
    DENSE_RANK() OVER
    (
        ORDER BY SUM(o.total_amount) DESC
    ) AS Product_Rank
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY p.product_name;


-- 8. Running total of sales by date
SELECT
    order_date,
    total_amount,
    SUM(total_amount) OVER
    (
        ORDER BY order_date
    ) AS Running_Total
FROM orders
ORDER BY order_date;
