USE EMPLOYEE;
SHOW TABLES;
SELECT * FROM LOGINTIME;
INSERT INTO LOGINTIME VALUES
(5455, 1001, 'Ragavi', 5515, '09:15:30'), 
(5456, 1002, 'Nivetha', 5616, '09:20:30'),
(5457, 1003, 'Vaishnavi', 5717, '09:20:40'),
(5458, 1004, 'Harshini', 5818, '09:10:40'),
(5459, 1005, 'Vishnu', 5818, '09:20:40');
select * from loginTime;

select * from orderdetails;
insert into orderdetails values
(171-801003, 900000000001 , 'Laptop', 'Madurai-625001', 45000.00),
(172-801004, 900000000002 , 'Headphones', 'Ramanathapuram-623501', 3000.00),
(173-801005, 900000000003 , 'Trimmer', 'Karaikudi-630002', 5000.00),
(174-801006, 900000000004 , 'Travel bag', 'Dindugal-624001', 1600.00),
(175-801007, 900000000005 , 'smartwatch', 'Erode-638001', 5500.00);

select * from PersonalInformations;
alter table personalInformations modify column emailid varchar(50);
alter table personalInformations modify column phoneNo varchar(10);
insert into personalInformations values
('Kalaivani', 9056570405, 'B.Tech (IT)', 2, 'Kalaivani03@gmail.com'),
('Priya nair', 8046570985, 'BCA', 5, 'priya.nair@gmail.com'),
('Rasviya jahan', 8544500085, 'B.Com (PA)', 1, 'jahan2803@gmail.com'),
('Divya bharathi', 9056570985, 'B.Sc(CS)', 3, 'Bharathi1247@gmail.com'),
('Rathika', 8056570985, 'MBA', 3, 'Rathika1997@gmail.com');

select * from Project;
alter table project modify projectid varchar(20);
insert into project values
('PRJ001', 'Student Management system', '2024-10-12', '2024-11-12', 103),
('PRJ002', 'Online Quiz Application', '2025-03-20', '2025-03-30', 104),
('PRJ003', 'Employee Attendance App ', '2025-04-02', '2025-05-01', 105),
('PRJ004', 'Library Management system', '2025-05-10', '2025-07-12', 106),
('PRJ005', 'Billing system', '2025-06-25', '2024-07-25', 107);

select * from salaryDetails;
insert into salaryDetails values
(205102, 'Amirtha', 'Quality control', '2000-05-03', 25000.00),
(205103, 'Agalya', 'consulting', '2001-01-18', 20000.00),
(205104, 'Roshini', 'Supervisor', '2001-05-20', 25000.00),
(206105, 'Aathiran', 'Coordinator', '2003-12-02', 27000.00),
(9205106, 'Aathini', 'Coordinator', '2002-08-16', 27000.00);

use employee;
show tables;
select * from orderdetails where productName = 'Headphones';
select * from salaryDetails where year(DOB) = 2001;
Select count(*) From project;
Grant select on tablename to username(atchaya) @localhost 
Revoke select on tablename to username(atchaya) @localhost 


Select * From LoginTime;
Select * From SalaryDetails;
insert into SalaryDetails values
(5455, 'Ragavi', 'Quality control', '2002-10-05', 30000.00),
(5457, 'Vaishnavi', 'Coordinator', '2001-09-08', 25000.00),
(5459, 'Vishnu', 'Supervisor', '2000-01-12', 25000.00);
Select l.loginId, sd.Employeename
from LoginTime as l Right join SalaryDetails as sd on L.EmplopyeeId = Sd.EmployeeId;

Select l.LastLogin, sum(sd.salary) as totalSalary from loginTime as l inner join salaryDetails as sd on l.emplopyeeId = sd.EmployeeID
group by l.lastLogin having TotalSalary >= 30000.00 order by TotalSalary asc;

Select l.loginID, l.UserName, l.lastLogin, sd.Designation, sd.DOB, sd.salary
From LoginTime as l left join salaryDetails as sd 
on l.EmplopyeeID = Sd. EmployeeId
Union
Select l.loginID, l.UserName, l.lastLogin, sd.Designation, sd.DOB, sd.salary
From LoginTime as l Right join salaryDetails as sd 
on l.EmplopyeeID = Sd. EmployeeId;

Select l.lastLogin, sum(sd.Salary) from loginTime as l inner join salaryDetails as sd
on l.Emplopyeeid = sd.employeeID group by l.LastLogin;
