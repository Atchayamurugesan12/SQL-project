-- STORED PROCEDURE & FUNCTIONS
-- 94. Create stored procedure to fetch all employees.
delimiter //
 
create procedure all_employees()
begin
select * from employees;
end //

delimiter ;

-- 95. Stored procedure to get employees by dept_id.
delimiter //

create procedure get_dept_id (in id int)
begin
select * from employees where dept_id = id;
end //

delimiter ; 

-- 96. Stored procedure to insert employee record.
delimiter //

create procedure insert_employee()
begin
insert into employees values (170, 'Aathiran', 1005, 106, 75000, '2020-10-11');
end //

delimiter ;


-- 97. Stored procedure with IN and OUT parameters.
delimiter //

create procedure get_orders (in O_id int, out total_count int)
begin
select count(*) into total_count
from orders
where order_id = O_id;
end //

delimiter ;

-- 98. Create function to calculate yearly salary
delimiter //

create function annual_income (income decimal(10,2))
returns decimal(10,2)
deterministic
begin
return income * 12;
end //

delimiter ; 

-- 99. Function to return total order amount for customer
delimiter //

create function total_amount(cust_id INT)
returns decimal(10,2)
deterministic
begin
declare total decimal(10,2);
select SUM(amount) into total from orders where customer_id = cust_id;
return total;

end //

delimiter ;

-- 100. Call stored procedure and function.
call all_employees;

call get_dept_id (1002);

call insert_employee;

set @total_customer = 0;
call get_orders (301, @total_customer);
select @total_customer;

select annual_income(40000.00) as salary;

select total_amount(105);