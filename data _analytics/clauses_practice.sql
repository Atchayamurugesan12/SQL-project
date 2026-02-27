-- CLAUSES (WHERE, GROUP BY, HAVING, ORDER BY)
-- 36. Count employees in each department.
select dept_id, count(emp_id) as total_employees
from employees
group by dept_id;

-- 37. Show departments having more than 5 employees.
select dept_id, count(emp_id) as total_employees
from employees
group by dept_id
having total_employees > 5;

-- 38. Calculate total salary per department.
select dept_id, sum(salary) as total_salary
from employees
group by dept_id;

-- 39. Display average salary per department.
select dept_id, avg(salary) as avg_salary
from employees
group by dept_id;

-- 40. Find cities having more than 10 customers.
select city, count(customer_id) as total_customers
from customers
group by city
having total_customers > 10;

-- 41. Order departments by total salary.
select D.dept_name, sum(E.salary) 
from departments as D inner join employees as E
on D.dept_id = E.dept_id
group by D.dept_name
order by sum(E.salary) desc;

-- 42. Find max salary in each department.
select dept_id, max(salary) from employees
group by dept_id;

-- 43. Show minimum order amount per customer.
select customer_id, min(amount) as min_order_amount
from orders 
group by customer_id;

-- 44. Fetch only departments with avg salary > 60000.
select dept_id, avg(salary) as avg_salary 
from employees
group by dept_id
having avg_salary > 60000;

-- 45. Display count of orders by status.
select status, count(order_id) as total_orders
from orders
group by status;

