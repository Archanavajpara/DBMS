Use BSC_HON_512

Create Table STU_INFO(
	Rno Int Primary Key,
	Name Varchar(50),
	Branch Varchar(50)
);

Insert into STU_INFO Values
	(101, 'Raju', 'CE'),
	(102 ,'Amit' ,'CE'),
	(103 ,'Sanjay', 'ME'),
	(104 ,'Neha' ,'EC'),
	(105 ,'Meera', 'EE'),
	(106 ,'Mahesh', 'ME')

Select * From STU_INFO 

Create Table RESULT(
	Rno int ,
	SPI	Decimal(4,2)
);

Insert into RESULT Values
	(101 ,8.8),
	(102 ,9.2),
	(103 ,7.6),
	(104 ,8.2),
	(105 ,7.0),
	(107 ,8.9)

Select * From RESULT	

Create Table EMPLOYEE_MASTER(
	EmployeeNo Varchar(3) ,
	Name Varchar(50),
	ManagerNo Varchar(3)
);

Insert into EMPLOYEE_MASTER Values
	('E01','Tarun', NULL),
	('E02' ,'Rohan' ,'E02'),
	('E03' ,'Priya', 'E01'),
	('E04', 'Milan', 'E03'),
	('E05' ,'Jay' ,'E01'),
	('E06', 'Anjana', 'E04')

Select * from EMPLOYEE_MASTER

-----------------Part A---------------
--1. Combine information from student and result table using cross join or Cartesian product.
	Select *
	from STU_INFO
	Cross Join RESULT
--2. Perform inner join on Student and Result tables.
	Select *
	from STU_INFO
	Inner Join RESULT
	On STU_INFO.Rno=RESULT.Rno
--3. Perform the left outer join on Student and Result tables.
	Select *
	from STU_INFO
	left outer Join RESULT
	On STU_INFO.Rno=RESULT.Rno
--4. Perform the right outer join on Student and Result tables.
	Select *
	from STU_INFO
	right outer Join RESULT
	On STU_INFO.Rno=RESULT.Rno
--5. Perform the full outer join on Student and Result tables.
	Select *
	from STU_INFO
	full outer Join RESULT
	On STU_INFO.Rno=RESULT.Rno
--6. Display Rno, Name, Branch and SPI of all students.
	Select s.Rno,s.Name,s.branch,result.SPI
	from STU_INFO s 
	inner join RESULT
	On s.Rno=RESULT.Rno
--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
	Select s.Rno,s.Name,s.branch,result.SPI
	from STU_INFO s 
	inner join RESULT
	On s.Rno=RESULT.Rno
	Where s.Branch='CE'
--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
	Select s.Rno,s.Name,s.branch,result.SPI
	from STU_INFO s 
	inner join RESULT
	On s.Rno=RESULT.Rno
	Where s.Branch!='EC'
--9. Display average result of each branch.
	Select s.branch,Avg(result.SPI)
	from STU_INFO s 
	inner join RESULT
	On s.Rno=RESULT.Rno
	group by s.Branch
--10. Display average result of CE and ME branch.
	Select Avg(result.SPI) as Avg_SPI
	from STU_INFO s 
	inner join RESULT
	On s.Rno=RESULT.Rno
	Where s.Branch in ('CE','ME')
	group by s.Branch
--11. Display Maximum and Minimum SPI of each branch.
	Select s.branch,max(result.SPI) as MAX_SPI,
	min(result.SPI) as MIN_SPI
	from STU_INFO s 
	inner join RESULT
	On s.Rno=RESULT.Rno
	group by s.Branch
--12. Display branch wise student’s count in descending order.
	Select s.branch,COUNT(s.Name) As STU_Count
	from STU_INFO s
	group by s.Branch
	order by COUNT(s.Name) desc


--------------Part  B------------
--1. Display average result of each branch and sort them in ascending order by SPI.
	Select s.branch,Avg(result.SPI) As AVG_SPI
	from STU_INFO s 
	inner join RESULT
	On s.Rno=RESULT.Rno
	group by s.Branch
	order by avg(RESULT.SPI)
--2. Display highest SPI from each branch and sort them in descending order.
	Select s.branch,Max(result.SPI) As MAX_SPI
	from STU_INFO s 
	inner join RESULT
	On s.Rno=RESULT.Rno
	group by s.Branch
	order by MAx(RESULT.SPI)
-------------Part  C----------
--1. Retrieve the names of employee along with their manager’s name from the Employee table.
	Select e.Name as Employee,m.Name as Manager
	from EMPLOYEE_MASTER e
	inner join EMPLOYEE_MASTER m
	on e.ManagerNo=m.EmployeeNo
	