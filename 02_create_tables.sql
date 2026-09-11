USE ecommerce_sales;
GO

CREATE TABLE customer
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    state VARCHAR(100),
    join_date DATE
);
GO

CREATE TABLE products
(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(100),
    price INT,
    stock INT
);
GO

CREATE TABLE orders
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    total_amount DECIMAL(10,2),

    FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id),

    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);
GO
