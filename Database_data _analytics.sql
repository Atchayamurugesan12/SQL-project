create database data_analytics;
use data_analytics;

-- Department table
create table departments(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50) NOT NULL,
location VARCHAR(50) 
);

insert into departments values 
(1001, 'Human Resources', 'Chennai'),
(1002, 'Finance', 'Bangalore'),
(1003, 'Marketing', 'Mumbai'),
(1004, 'Sales', 'Delhi'),
(1005, 'IT', 'Hyderabad'),

(1006, 'Customer Support', 'Chennai'),
(1007, 'Research', 'Pune'),
(1008, 'Production', 'Coimbatore'),
(1009, 'Quality Control', 'Madurai'),
(1010, 'Logistics', 'Kolkata'),

(1011, 'Administration', 'Trichy'),
(1012, 'Legal', 'Delhi'),
(1013, 'Training', 'Bangalore'),
(1014, 'Design', 'Mumbai'),
(1015, 'Procurement', 'Hyderabad'),

(1016, 'Operations', 'Chennai'),
(1017, 'Security', 'Salem'),
(1018, 'Maintenance', 'Erode'),
(1019, 'Public Relations', 'Pune'),
(1020, 'Business Development', 'Kolkata');

-- Employee table
create table employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(30) NOT NULL,
dept_id INT,  
manager_id INT NOT NULL,
salary INT,
hire_date DATE,
city VARCHAR(40),
FOREIGN KEY (dept_id) references departments (dept_id)
);

insert into employees values
(101, 'Arun Kumar', 1001, 205, 90000, '2019-03-15', 'Chennai'),
(102, 'Priya Sharma', 1002, 201, 75000, '2018-07-10', 'Bangalore'),
(103, 'Rahul Verma', 1003, 202, 80000, '2017-05-20', 'Mumbai'),
(104, 'Sneha Iyer', 1004, 210, 43000, '2020-01-12', 'Delhi'),
(105, 'Roshini', 1005, 201, 88000, '2019-09-25', 'Hyderabad'),

(106, 'Vikram Singh', 1003, 203 , 85000, '2021-06-10', 'Mumbai'),
(107, 'Meena Das', 1001, 205, 95000, '2022-02-18', 'Chennai'),
(108, 'Ravi Patel', 1002, 203, 77000, '2021-11-05', 'Bangalore'),
(109, 'Anjali Nair', 1004, 206, 47000, '2023-01-10', 'Delhi'),
(110, 'Suresh Babu', 1005, 210, 90000, '2022-09-14', 'Hyderabad'),

(111, 'Deepak Gupta', 1015, 208, 65000, '2020-08-19', 'Hyderabad'),
(112, 'Lakshmi Devi', 1020, 201, 48000, '2023-03-22', 'Kolkata'),
(113, 'Mohit Jain', 1002, 209, 80000, '2021-04-17', 'Bangalore'),
(114, 'Pooja Menon', 1014, 205, 50000, '2022-06-30', 'Mumbai'),
(115, 'Ajith Kumar', 1019, 206, 55000, '2023-05-11', 'Pune'),

(116, 'Ramesh Kumar', 1011, 206, 70000, '2020-12-01', 'Trichy'),
(117, 'Divya', 1001, 202, 97000, '2022-08-09', 'Trichy'),
(118, 'Nikila reddy', 1007, 207, 60000, '2021-07-15', 'Pune'),
(119, 'Keerthana', 1006, 210, 45000, '2023-02-20', 'Chennai'),
(120, 'Harish', 1005, 203, 93000, '2022-10-10', 'Hyderabad');

-- Customers table
create table customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50) NOT NULL,
city VARCHAR(30),
signup_date DATE
);

insert into customers values
(501, 'Rohini K', 'Chennai', '2022-01-10'),
(502, 'Kalaivani T', 'Bangalore', '2021-12-05'),
(503, 'Saravanan P', 'Madurai', '2023-03-15'),
(504, 'Agalya R', 'Coimbatore', '2022-07-22'),
(505, 'Ramya S', 'Salem', '2021-09-18'),
(506, 'Bhavya L', 'Hyderabad', '2023-01-09'),
(507, 'Kishore V', 'Pune', '2022-05-14'),
(508, 'Yazhan D', 'Delhi', '2021-11-28'),
(509, 'Prathosy M', 'Trichy', '2023-04-03'),
(510, 'Shalini P', 'Chennai', '2022-08-17'),

(511, 'Subash R', 'Erode', '2025-06-25'),
(512, 'Aathiran S', 'Bangalore', '2025-02-11'),
(513, 'Vinothini K', 'Vellore', '2022-03-19'),
(514, 'Janani T', 'Mumbai', '2024-10-07'),
(515, 'Roshy B', 'Hyderabad', '2025-05-01'),
(516, 'Atchaya M', 'Kochi', '2022-04-12'),
(517, 'Madhana G', 'Chennai', '2024-07-29'),
(518, 'Revathi N', 'Madurai', '2023-01-20'),
(519, 'Kavin R', 'Coimbatore', '2024-09-08'),
(520, 'Deepika V', 'Bangalore', '2024-08-16');

-- Orders table
create table orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
amount DECIMAL (10,2),
status VARCHAR(30) DEFAULT 'Completed',
Foreign key (customer_id) references customers(customer_id)
);
insert into orders values
(301, 503, '2023-03-20', 8500.50, DEFAULT),
(302, 501, '2023-04-12', 4200.00, 'Shipped'),
(303, 507, '2023-05-08', 15600.75, DEFAULT),
(304, 503, '2023-06-02', 6800.40, DEFAULT),
(305, 510, '2023-06-25', 9200.00, 'Pending'),

(306, 505, '2023-07-10', 7400.20, DEFAULT),
(307, 518, '2023-08-05', 11200.00, 'Shipped'),
(308, 507, '2023-09-01', 5400.00, DEFAULT),
(309, 509, '2023-09-18', 8700.90, 'Cancelled'),
(310, 516, '2023-10-02', 6300.00, DEFAULT),

(311, 501, '2024-01-15', 12800.40, DEFAULT),
(312, 504, '2024-02-20', 5600.00, 'Pending'),
(313, 519, '2024-03-12', 9700.60, DEFAULT),
(314, 517, '2024-04-25', 7100.00, 'Shipped'),
(315, 520, '2024-05-09', 14300.30, DEFAULT),

(316, 503, '2024-06-14', 8200.00, DEFAULT),
(317, 512, '2025-02-20', 15000.00, 'Pending'),
(318, 511, '2025-03-05', 4600.00, DEFAULT),
(319, 515, '2025-05-18', 10100.75, 'Shipped'),
(320, 520, '2025-06-10', 8900.00, DEFAULT);

-- Products table
create table products(
product_id INT PRIMARY KEY,
product_name VARCHAR(50) unique not null,
category VARCHAR(50),
price DECIMAL(10,2)
);

insert into products values
(401, 'Wireless Headphones', 'Electronics', 4200.00),
(402, 'Office Chair', 'Furniture', 6800.40),
(403, 'Smart Watch', 'Electronics', 8500.50),
(404, 'Study Table', 'Furniture', 9200.00),
(405, 'Bluetooth Speaker', 'Electronics', 4600.00),

(406, 'Microwave Oven', 'Appliances', 11200.00),
(407, 'LED Monitor', 'Electronics', 9700.60),
(408, 'Gaming Keyboard', 'Electronics', 5400.00),
(409, 'Air Purifier', 'Appliances', 14300.30),
(410, 'Laptop Backpack', 'Accessories', 4200.00),

(411, 'Electric Kettle', 'Appliances', 5600.00),
(412, 'Printer', 'Electronics', 10100.75),
(413, 'Coffee Maker', 'Appliances', 7400.20),
(414, 'Tablet Device', 'Electronics', 12800.40),
(415, 'Fitness Band', 'Electronics', 6300.00),

(416, 'External Hard Disk', 'Electronics', 8700.90),
(417, 'Bookshelf', 'Furniture', 7100.00),
(418, 'Portable Fan', 'Appliances', 8200.00),
(419, 'Router', 'Electronics', 6800.00),
(420, 'Smartphone', 'Electronics', 15600.75);

-- Order_items table
create table order_items(
order_item_id INT PRIMARY KEY,
order_id INT, 
product_id INT,
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products (product_id),
quantity INT
);

insert into order_items values
(7101, 309, 410, 2), 
(7102, 307, 404, 1),
(7103, 317, 403, 2),
(7104, 301, 405, 1),
(7105, 303, 408, 1),

(7106, 319, 418, 1),
(7107, 305, 412, 1),
(7108, 306, 402, 2),
(7109, 302, 407, 1),
(7110, 304, 401, 1),

(7111, 308, 406, 1),
(7112, 318, 409, 1),
(7113, 320, 415, 1),
(7114, 315, 417, 1),
(7115, 310, 412, 1),

(7116, 312, 411, 1),
(7117, 311, 416, 1),
(7118, 316, 413, 1),
(7119, 314, 414, 1),
(7120, 313, 419, 1);
