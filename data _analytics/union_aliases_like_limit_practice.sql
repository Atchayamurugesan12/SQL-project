-- UNION & ALIASES
-- 61. Combine customer and employee cities using UNION.
select city from customers
union
select city from employees;

-- 62. Use UNION ALL to merge two tables.
select * from customers
union all
select * from order_items;

-- 63. Rename salary as monthly_salary.
select salary as monthly_salary from employees;

-- 64. Alias table names in joins.
select * from customers as C inner join orders as O
on C.customer_id = O.customer_id;

-- 65. Display calculated column with alias.
select sum(salary) as Total_salary 
from employees;

-- LIKE, LIMIT 
-- 66. Find employees whose name starts with ‘A’.
select * from employees where employee_name like 'A%';

-- 67. Find customers whose city ends with ‘ai’.
select * from customers where city like 'Ai%';

-- 68. Fetch products containing word ‘Pro’.
select * from products where product_name like '%Pro%';

-- 69. Display top 3 expensive products.
select price from products 
order by price desc
limit 3;

-- 70. Skip first 5 employees and fetch next 5.
select employee_name from employees
limit 5 offset 5;

