USE ECommerceSalesDB;
GO

-- Insert Customer Data
INSERT INTO customer
(customer_id, customer_name, email, city, state, join_date)
VALUES
(1, 'Rahul Kumar', 'rahul@gmail.com', 'Hyderabad', 'Telangana', '2024-01-15'),
(2, 'Priya Sharma', 'priya@gmail.com', 'Bangalore', 'Karnataka', '2024-02-10'),
(3, 'Anjali Reddy', 'anjali@gmail.com', 'Chennai', 'Tamil Nadu', '2024-03-05'),
(4, 'Arjun Rao', 'arjun@gmail.com', 'Vijayawada', 'Andhra Pradesh', '2024-03-20'),
(5, 'Sneha Patel', 'sneha@gmail.com', 'Mumbai', 'Maharashtra', '2024-04-12'),
(6, 'Kiran Kumar', 'kiran@gmail.com', 'Delhi', 'Delhi', '2024-05-01'),
(7, 'Pooja Singh', 'pooja@gmail.com', 'Pune', 'Maharashtra', '2024-05-18'),
(8, 'Vamsi Krishna', 'vamsi@gmail.com', 'Nellore', 'Andhra Pradesh', '2024-06-02'),
(9, 'Divya Rao', 'divya@gmail.com', 'Kochi', 'Kerala', '2024-06-15'),
(10, 'Ravi Teja', 'ravi@gmail.com', 'Tirupati', 'Andhra Pradesh', '2024-07-01');
GO

-- Insert Product Data
INSERT INTO products
(product_id, product_name, category, price, stock)
VALUES
(101, 'Laptop', 'Electronics', 55000, 20),
(102, 'Smartphone', 'Electronics', 25000, 30),
(103, 'Headphones', 'Electronics', 2000, 50),
(104, 'Keyboard', 'Accessories', 1500, 40),
(105, 'Mouse', 'Accessories', 800, 60),
(106, 'Monitor', 'Electronics', 10000, 15),
(107, 'Smart Watch', 'Electronics', 5000, 25),
(108, 'Tablet', 'Electronics', 35000, 10),
(109, 'Backpack', 'Accessories', 1200, 35),
(110, 'Printer', 'Electronics', 15000, 12);
GO

-- Insert Order Data
INSERT INTO orders
(order_id, customer_id, product_id, order_date, quantity, total_amount)
VALUES
(1001, 1, 101, '2024-07-05', 1, 55000),
(1002, 2, 102, '2024-07-06', 2, 50000),
(1003, 3, 103, '2024-07-07', 3, 6000),
(1004, 4, 104, '2024-07-08', 2, 3000),
(1005, 5, 105, '2024-07-10', 3, 2400),
(1006, 6, 106, '2024-07-12', 1, 5000),
(1007, 7, 107, '2024-07-15', 2, 3600),
(1008, 8, 108, '2024-07-18', 1, 3500),
(1009, 9, 109, '2024-07-20', 4, 3600),
(1010, 10, 110, '2024-07-22', 2, 3000),
(1011, 1, 102, '2024-08-01', 1, 25000),
(1012, 2, 101, '2024-08-03', 1, 55000),
(1013, 3, 106, '2024-08-05', 2, 10000),
(1014, 4, 108, '2024-08-07', 2, 7000),
(1015, 5, 103, '2024-08-10', 2, 4000);
GO
