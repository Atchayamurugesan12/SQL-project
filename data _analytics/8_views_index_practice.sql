-- VIEWS
-- 86. Create a view for employee details with department.
create view Employee_details as
select E.emp_id, E.employee_name, E.salary, D.dept_name
from employees as E 
left join departments as D
on E.dept_id = D.dept_id;

-- 87. Create view for customer total purchase.
create view Customers_purchase as
select C.customer_id, C.customer_name, sum(O.amount) as total_purchase
from customers as C inner join orders as O
on C.customer_id = O.customer_id
group by C.customer_id, C.customer_name;

-- 88. Update data using view.
create view customer_details as
select * from customers;

update customer_details set city = 'Pudukottai' where customer_id = 515;

-- 89. Drop a view.
drop view customer_details;

-- 90. Check view definition.
show create view employee_details;

-- INDEX
-- 91. Create index on emp_name.
create index employee on employees(employee_name);

-- 92. Create composite index on customer_id and order_date.
create index details on orders(customer_id, order_date);
show index from orders;

-- 93. Drop an index.
drop index employee on employees;

