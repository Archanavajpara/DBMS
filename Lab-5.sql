----ALTER----
--Use deposit table
--Part A
--1. Add two more columns City VARCHAR (20) and Pincode INT.
alter table deposit
add city varchar(20), pincode int

select * from Deposit
--2. Add column state VARCHAR(20).
alter table deposit
add state varchar(20)

select * from Deposit
--3. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).

alter table deposit 
alter column cname varchar(35)

select * from Deposit
--4. Change the data type DECIMAL to INT in amount Column.
alter table deposit
alter column amount int

select * from Deposit
--5. Delete Column City from the DEPOSIT table.
alter table deposit
drop column city

select * from Deposit
--6. Rename Column ActNo to ANO.
sp_rename 'deposit.actno','ano'

select * from Deposit
--7. Change name of table DEPOSIT to DEPOSIT_DETAIL
sp_rename 'deposit','deposit_detail'

select * from deposit_detail

--Part B
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
sp_rename 'deposit_detail.adate','aopendate'

select * from Deposit_detail
--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
alter table deposit_detail
drop column aopendate

select * from Deposit_detail
--3. Rename Column CNAME to CustomerName.
sp_rename 'deposit_detail.cname','customername'

select * from Deposit_detail
--4. Add Column country.
alter table deposit_detail
add country varchar(30)

select * from Deposit_detail

--Part C
create table student_detail(
	Enrollment_No VARCHAR(20),
	Name VARCHAR(25),
	CPI DECIMAL(5,2),
	Birthdate DATETIME
)
 select * from student_detail
--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
alter table student_detail
add city varchar(20) not null default 'rajkot',backlog int

select * from student_detail
--2. Add column department VARCHAR (20) Not Null.
alter table student_detail 
add department varchar(20) not null
--3. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
alter table student_detail
alter column name varchar(35)
--4. Change the data type DECIMAL to INT in CPI Column.
alter table student_detail
alter column cpi int
--5. Delete Column City from the student_detail table.
alter table student_detail
drop constraint [DF__student_de__city__5BE2A6F2],
	column city

select * from student_detail
--6. Rename Column Enrollment_No to ENO.
sp_rename 'student_detail.Enrollment_No','eno'

select * from student_detail
--7. Change name of table student_detail to STUDENT_MASTER.
sp_rename 'student_detail','student_master'

select * from student_master

----DELETE,TRUNCATE,DROP----
--Part A
--1. Delete all the records of DEPOSIT_DETAIL table having amount less than and equals to 4000.
 delete from Deposit_detail
 where amount<=4000 

 select * from DEPOSIT_DETAIL
--2. Delete all the accounts CHANDI BRANCH.
delete from deposit_detail
where bname='CHANDI'

select * from Deposit_detail
--3. Delete all the accounts having account number (ANO) is greater than 102 and less than 105.
delete from Deposit_detail
where ano between 103 and 104

select * from Deposit_detail
--4. Delete all the accounts whose branch is ‘AJNI’ or ‘POWAI’
delete from Deposit_detail
where bname in ('AJNI','POWAI')

select * from Deposit_detail
--5. Delete all the accounts whose account number is NULL.
delete from deposit_detail 
where ano is null

select * from Deposit_detail
--6. Delete all the remaining records using Delete command.
delete from Deposit_detail

select * from Deposit_detail
--7. Delete all the records of Deposit_Detail table. (Use Truncate)
truncate table deposit_detail
--8. Remove Deposit_Detail table. (Use Drop)
drop table deposit_detail

--Part B
create table employee_master(
	EmpNo INT,
	EmpName VARCHAR(25),
	JoiningDate DATETIME,
	Salary DECIMAL (8,2),
	City VARCHAR(20)
)
insert into employee_master values
(101,'Keyur','2002-01-05',12000.00,'Rajkot'),
(102, 'Hardik', '2004-02-15',14000.00,'Ahmedabad'),
(103, 'Kajal','2006-04-14',15000.00,'Baroda'),
(104, 'Bhoomi','2005-06-23',12500.00,'Ahmedabad'),
(105, 'Harmit','2004-02-14',14000.00,'Rajkot'),
(106, 'Mitesh','2001-09-25',5000.00,'Jamnagar'),
(107, 'Meera',Null,7000.00,'Morbi'),
(108, 'Kishan','2003-02-06',10000.00,NULL)

select * from employee_master

--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
delete from employee_master
where Salary>=14000

select * from employee_master
--2. Delete all the Employees who belongs to ‘RAJKOT’ city.
delete from employee_master
where city='Rajkot'

select * from employee_master
--3. Delete all the Employees who joined after 1-1-2007.
delete from employee_master
where JoiningDate>'2007-01-01'

select * from employee_master
--4. Delete the records of Employees whose joining date is null and Name is not null.
delete from employee_master
where JoiningDate is null and EmpName is not null

select * from employee_master
--5. Delete the records of Employees whose salary is 50% of 20000.
delete from employee_master
where salary=10000

select * from employee_master
--6. Delete the records of Employees whose City Name is not empty.
delete from employee_master
where City is not NULL

select * from employee_master
--7. Delete all the records of Employee_MASTER table. (Use Truncate)
truncate table employee_master
--8. Remove Employee_MASTER table. (Use Drop)
drop table employee_master