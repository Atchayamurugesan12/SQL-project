-- SUBQUERIES
-- 76. Find employees earning more than average salary
select employee_name from employees where salary > 
(select avg(salary) from employees);

-- 77. Find second highest salary
select max(salary) as second_highest_price from employees
where salary < (select max(salary) from employees);

-- 78. Employees working in same dept as ‘Ravi’.
select * from employees where dept_id = (select dept_id from employees where employee_name = 'Ravi');

-- 79. Customers who placed at least one order.
select customer_name from customers where customer_id in (select customer_id from orders);

-- 80. Products never ordered.
select product_name from products where product_id not in (select product_id from order_items);

-- 81. Employees earning highest salary in each department.
select emp_id, employee_name, salary
from employees as E 
where salary = (select max(salary) from employees where dept_id =E.dept_id);

-- 82. Orders with amount greater than avg order amount.
select order_id from orders where amount > (select avg(amount) from orders);

-- 83. Departments with no employees.
select dept_id from departments 
where dept_id not in
(select dept_id from employees);

-- 84. Customers with highest total purchase.
select C.customer_id, C.customer_name 
from customers as C join orders as O
where C.customer_id = O.customer_id
group by C.customer_id, C.customer_name
having sum(O.amount) =
(select max(total_amount) from (select sum(amount) as total_amount from orders group by customer_id) as T);

-- 85. Find employees hired before manager.
select E.employee_name as Employees,
E.hire_date as Employees_hiring
from employees as E
where E.hire_date < (
select M.hire_date from employees as M
where M.emp_id = E.manager_id);

