-- JOINS
-- 46. INNER JOIN employees and departments.
select E.emp_id, E.employee_name, E.salary, D.dept_name
from employees as E inner join departments as D
on E.dept_id = D.dept_id;

-- 47. LEFT JOIN employees with departments.
select * from employees as E left join departments as D
on E.dept_id = D.dept_id;

-- 48. RIGHT JOIN employees with departments.
select * from employees as E right join departments as D
on E.dept_id = D.dept_id;

-- 49. Find employees without department.
select E.emp_id, E.employee_name, D.dept_name from 
employees as E left join departments as D
on E.dept_id = D.dept_id
where D.dept_id is null;

-- 50. Find departments without employees.
select D.dept_name, E.emp_id, E.employee_name from
departments as D right join employees as E 
on D.dept_id = E.dept_id
where E.employee_name is null;

-- 51. Join customers and orders.
select * from customers as C join orders as O
on C.customer_id = O.customer_id;

-- 52. Fetch customer name and total order amount.
select C.customer_name, sum(O.amount) as Total_amount
from customers as C right join orders as O
on C.customer_id = O.customer_id
group by C.customer_name;

-- 53. Join orders and order_items.
select * from orders as O join order_items as Otms
on O.order_id = Otms.order_id;

-- 54. Join products and order_items.
select * from products as P inner join order_items as otms
on P.product_id = Otms.product_id;

-- 55. Find total quantity sold per product.
select P.product_name, count(Otms.quantity) as Total_quantity
from products as P left join order_items as Otms
on P.product_id = Otms.product_id
group by P.product_name;

-- 56. SELF JOIN to find employee-manager pairs.
select E1.employee_name as Employees,
M1.employee_name as Managers 
from Employees as E1 left join Employees as M1
on E1.manager_id = M1.emp_id;

-- 57. Display employees earning more than their manager.
select E.employee_name as employees,
E.salary as Emp_salary,
M.employee_name as managers,
M.salary as manager_salary
from employees E left join employees M
on E.manager_id = M.emp_id
where E.salary > M.salary;

-- 58. Join 3 tables: orders, order_items, products.
select * from orders as O inner join order_items as Ot
on O.order_id = Ot.order_id
join Products as P
on Ot.product_id = P.product_id;

-- 59. Find highest selling product.
select P.product_name, sum(Ot.quantity) as total_quantity
from products as P inner join order_items as Ot
on P.product_id = Ot.product_id
group by P.product_name
order by total_quantity desc
limit 1;

-- 60. Show employees and their department locations.
select E.emp_id, E.employee_name, D.location
from employees as E inner join departments as D
on E.dept_id = D.dept_id;

