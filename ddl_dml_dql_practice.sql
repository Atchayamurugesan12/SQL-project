-- DDL(Create, alter, drop)
-- 1. Create employees table with emp_id as primary key.
create table employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(30) NOT NULL,
dept_id INT,  
manager_id INT NOT NULL,
salary INT,
hire_date DATE
);

-- 2. Create departments table with dept_id as primary key.
create table departments(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50) NOT NULL,
location VARCHAR(50) 
);

-- 3. Add a foreign key from employees.dept_id to departments.dept_id.
alter table employees add constraint fk_dept foreign key(dept_id) references departments(dept_id);

-- 4. Add a city column to employees.
alter table employees add column city varchar(40) ;

-- 5. Rename column emp_name to employee_name.
alter table employees change emp_name employee_name varchar(50);

-- 6. Drop column city from employees.
alter table employees drop column city;

-- 7. Create orders table with amount having 2 decimal points.
alter table orders modify amount decimal(10,2);

-- 8. Drop the products table.
drop table products;

-- 9. Truncate the order_items table.
truncate table order_items;

-- 10. Modify salary column to BIGINT.
alter table employees modify salary bigint;


-- DML (INSERT, UPDATE, DELETE)
-- 11. Insert 5 records into employees.
insert into employees values
(121, 'Deepika', 1003, 205, 87000, '2023-08-12'),
(122, 'Pavithra mohan', 1007, 206, 63000, '2022-03-09'),
(123, 'Rathika', 1002, 206, 85000, '2023-11-20'),
(124, 'Vikashvi raman', 1001, 205, 100000, '2023-04-20'),
(125, 'Aathini', 1002, 209, 87000, '2023-08-17');

-- 12. Insert multiple records into customers.
insert into customers values
(521, 'Kalaiyarasi', 'Madurai', '2022-10-6'),
(522, 'vinitha jegan', 'Coimbatore', '2022-12-10'),
(523, 'Sakthi priya', 'Coimbatore', '2023-11-08');

-- 13. Update salary of employees working in dept 1001.
Update employees set salary = salary * 0.10 where dept_id = 1001;

-- 14. Increase salary by 10% for all employees.
update employees set salary = salary * 0.10;

-- 15. Delete employees with salary < 20000
delete from employees where salary < 20000;

-- 16. Update city as ‘Bangalore’ for all customers
update customers set city = 'Bangalore';

-- 17. Delete orders with status = 'Cancelled'.
delete from orders where status = 'cancelled';

-- 18. Insert data into orders using SELECT.
INSERT INTO orders(order_id, customer_id, order_date, amount, status)
SELECT 
order_id + 100,
customer_id,
order_date,
amount,
status
FROM orders
WHERE status = 'Completed';

-- 19. Update department for a specific employee.
update employees set dept_id = 1003 where emp_id = 103;

-- 20. Delete all records from order_items.
delete from order_itmes;

-- 21. Insert today’s date into order_date.
insert into orders values
(321, 507, '24-02-26', 10000.00, 'Shipped');

-- 22. Update NULL city values as ‘Unknown’.
update customers set city = 'unknown' where city = null;

-- 23. Delete duplicate records from employees.
delete E1 from employees E1 join employees E2
on E1.emp_id = E2.emp_id
and E1.employee_name = E2.employee_name
and E1.dept_id = E2.dept_id
and E1.salary = E2.salary
and E1.emp_id > E2.emp_id;

-- 24. Insert data respecting foreign key constraints.
insert into employees values (151, 'Thaniska', 1005, 202, 85000, '2017-08-09');
insert into orders values (326, 502, '2026-01-01', 8500.00, 'Pending');
insert into order_items values (7121, 303, 404, 1);

-- 25. Roll back a delete operation (using transaction).
start transaction;
delete from order_items where order_item_id = 7121;
rollback;
update order_items set order_item_id = 7120 where order_item_id = 7121;
commit;


-- DQL (SELECT)
-- 26. Fetch all records from employees.
select * from employees;

-- 27. Display only emp_name and salary
select employee_name, salary from employees;

-- 28. Find employees with salary > 50000.
select * from employees where salary > 50000;

-- 29. Display distinct cities of customers.
select distinct city from customers;

-- 30. Sort employees by salary descending.
select * from employees order by salary desc;

-- 31. Display top 5 highest paid employees.
select * from employees order by salary desc limit 5;

-- 32. Find employees hired after 2020
select * from employees where year(hire_date) > 2020; 

-- 33. Display employees from Chennai.
select * from employees where city = 'chennai';

-- 34. Fetch orders placed in 2024.
select * from orders where year(order_date) = 2024;

-- 35. Show products under ‘Electronics’ category
select * from products where category = 'Electronics';

