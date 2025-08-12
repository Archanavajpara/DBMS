create Database BSC_HON_512

use BSC_HON_512

create table Emp(
	EID Int,
	EName Varchar(50),
	Department Varchar(50),
	Salary Decimal(8,2),
	JoiningDate Date, 
	City Varchar(50),
	Gender Varchar(50)
);
insert into Emp values(101,'Rahul','Admin',56000,'1989-12-12','Rajkot','Male'),
	(102,'Hardik','IT',18000,'1925-09-12','Ahmedabad','Male'),
	(103,'Bhavin','HR',25000,'1914-04-02','Baroda','Male'),
	(104,'Bhoomi','Admin',39000,'1945-09-12','Rajkot','Female'),
	(105,'Rohit','IT',17000,'1969-05-06','Jamnagar','Male'),
	(106,'Priya','IT',9000,'1979-11-01','Ahmedabad','Female'),
	(107,'Bhoomi','HR',34000,'1999-04-05','Rajkot','Female');

Select * from Emp
----------------------------------------------PART-A------------------------------------------

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
select 
	max(Salary) as Maximum,
	min(Salary) as Minimum
from emp

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.
select 
	sum(Salary) as Total_Sal,
	avg(Salary) as Average_Sal
from emp

--3. Find total number of employees of EMPLOYEE table.
select count(eid) as total_emp
from emp

--4. Find highest salary from Rajkot city.
select max(salary) as Highest_Salary
from emp
where city ='Rajkot'

--5. Give maximum salary from IT department.
select max(salary) as Highest_Salary
from emp
where Department='IT'

--6. Count employee whose joining date is after 8-feb-91.
select count(eid)
from emp
where JoiningDate>'1991-02-08'

--7. Display average salary of Admin department.
select avg(salary)
from emp
where Department='Admin'

--8. Display total salary of HR department.
select sum(salary)
from emp
where Department='HR'

--9. Count total number of cities of employee without duplication.
select count(distinct City) as city
from emp


--10. Count unique departments.
select count(distinct Department) as dept
from emp

--11. Give minimum salary of employee who belongs to Ahmedabad.
select min(salary) as Min_sal
from emp
where city ='Ahmedabad'

--12. Find city wise highest salary.
select city,max(salary)
from emp
group by City

--13. Find department wise lowest salary.
select Department,min(salary)
from emp
group by Department

--14. Display city with the total number of employees belonging to each city.
select City,count(eid)
from emp
group by City

--15. Give total salary of each department of EMP table.
select Department,sum(salary) as Salary
from emp
group by Department
--16. Give average salary of each department of EMP table without displaying the respective department name. 
Select Department,Avg(Salary) as AVG_salary
from Emp
group by Department
--17. Count the number of employees for each department in every city. 
select Department,City,count(EName) as NUM_EMP
from emp
group by Department,City
--18. Calculate the total salary distributed to male and female employees. 
select Gender,sum(Salary) as Total_Salary
from emp
group by Gender
--19. Give city wise maximum and minimum salary of female employees. 
select City,max(Salary) as Max_Salary,
		min(Salary) as Min_Salary
from emp
Where Gender='Female'
group by City
--20. Calculate department, city, and gender wise average salary. 
Select Department,City,Gender,Avg(Salary) as AVG_salary
from Emp
group by Department,City,Gender
----------------------------------------------PART-B------------------------------------------

--1.Count the number of employees living in Rajkot.

	
	SELECT COUNT(EID) AS COUNT_
	FROM EMP
	WHERE CITY='RAJKOT';

--2.Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.

	
	SELECT MAX(SALARY) - MIN(SALARY) AS DIFFERENCE
	FROM EMP
	
--3.Display the total number of employees hired before 1st January, 1991.

	
	SELECT COUNT(EID) AS COUNT_EML
	FROM EMP
	WHERE JoiningDate<'1991-01-01';

----------------------------------------------PART-C------------------------------------------

--1. Count the number of employees living in Rajkot or Baroda.
	SELECT City,COUNT(EID) AS COUNT_Emp
	FROM EMP
	WHERE City in('Rajkot','Baroda')
	Group by City
--2. Display the total number of employees hired before 1st January, 1991 in IT department. 
	SELECT Department,COUNT(EID) AS TOTAL_EMP
	FROM EMP
	WHERE JoiningDate<'1991-01-01' and Department='IT'
	Group by Department
--3. Find the Joining Date wise Total Salaries. 
	SELECT JoiningDate,Sum(SAlary) AS Total_Salary
	FROM EMP
	Group by JoiningDate
--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
	select Department,City,max(Salary) as Max_Salary
	from emp
	Where City like 'R%'
	group by Department,City
	