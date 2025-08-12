---------Table Created Using Design Mode------
Select * from Dept
Select * from Person
									---Part A--- 
--1. Combine information from Person and Department table using cross join or Cartesian product.
	Select * from Dept
	cross join Person
--2. Find all persons with their department name
	Select person.PersonName,Dept.DeptName
	from Dept join Person
	on Person.DeptId=Dept.DeptID
--3. Find all persons with their department name & code. 
	Select person.PersonName,Dept.DeptName,Dept.Deptcode
	from Dept join Person
	on Person.DeptId=Dept.DeptID
--4. Find all persons with their department code and location. 
	Select person.PersonName,Dept.location,Dept.Deptcode
	from Dept join Person
	on Person.DeptId=Dept.DeptID
--5. Find the detail of the person who belongs to Mechanical department. 
	Select person.PersonName,Dept.DeptName
	from Dept join Person
	on Person.DeptId=Dept.DeptID
	Where dept.DeptName='mechanical'
--6. Final person’s name, department code and salary who lives in Ahmedabad city.  
	Select person.PersonName,Dept.Deptcode,Salary
	from Dept join Person
	on Person.DeptId=Dept.DeptID
	Where City='Ahemdabad'
--7. Find the person's name whose department is in C-Block. 
	Select person.PersonName
	from Dept join Person
	on Person.DeptId=Dept.DeptID
	Where location='C-block'
-- 8. Retrieve person name, salary & department name who belongs to Jamnagar city.
	SELECT Person.PersonName, Person.Salary, Dept.DeptName
	FROM Person
	JOIN Dept ON Person.DeptId = Dept.DeptId
	WHERE Person.City = 'Jamnagar';

-- 9. Retrieve person’s detail who joined the Civil department after 1-Aug-2001.
	SELECT Person.*
	FROM Person
	JOIN Dept ON Person.DeptId = Dept.DeptId
	WHERE Dept.DeptName = 'Civil'
	AND Person.JoiningDate > '2001-08-01';

-- 10. Display all the person's name with the department whose joining date difference with the current date is more than 365 days.
	Select person.PersonName,Dept.DeptName,JoiningDate
	from Dept join Person
	on Person.DeptId=Dept.DeptID
	where DATEDIFF(DAY,Person.JoiningDate,GETDATE())>365
	--where DATEDIFF(YEAR,Person.JoiningDate,GETDATE())>1
	--where DATEDIFF(MONTH,Person.JoiningDate,GETDATE())>12
	--where DATEDIFF(WEEK,Person.JoiningDate,GETDATE())>52

-- 11. Find department wise person counts.
	SELECT Dept.DeptName, COUNT(Person.PersonID) AS PersonCount
	FROM Dept
	LEFT JOIN Person ON Person.DeptId = Dept.DeptId
	GROUP BY Dept.DeptName;

-- 12. Give department wise maximum & minimum salary with department name.
	SELECT Dept.DeptName,
		   MAX(Person.Salary) AS MaxSalary,
		   MIN(Person.Salary) AS MinSalary
	FROM Dept
	JOIN Person ON Person.DeptId = Dept.DeptId
	GROUP BY Dept.DeptName;

-- 13. Find city wise total, average, maximum and minimum salary.
	SELECT Person.City,
		   SUM(Person.Salary) AS TotalSalary,
		   AVG(Person.Salary) AS AvgSalary,
		   MAX(Person.Salary) AS MaxSalary,
		   MIN(Person.Salary) AS MinSalary
	FROM Person
GROUP BY Person.City;

-- 14. Find the average salary of a person who belongs to Ahmedabad city.
	SELECT AVG(Person.Salary) AS AvgSalary_Ahmedabad
	FROM Person
	WHERE Person.City = 'Ahmedabad';

-- 15. Produce Output Like: <PersonName> lives in <City> and works in <DeptName> Department.
	SELECT CONCAT(Person.PersonName, ' lives in ', Person.City, ' and works in ', Dept.DeptName, ' Department') AS PersonInfo
	FROM Person
	JOIN Dept ON Person.DeptId = Dept.DeptId;

													----Part B ----
-- 1. Produce Output Like: <PersonName> earns <Salary> from <DeptName> department monthly.
	SELECT CONCAT(Person.PersonName, ' earns ', Person.Salary, ' from ', Dept.DeptName, ' department monthly.') AS PersonEarningInfo
	FROM Person
	JOIN Dept ON Person.DeptId = Dept.DeptId;

-- 2. Find city & department wise total, average & maximum salaries.
	SELECT Person.City, Dept.DeptName,
		   SUM(Person.Salary) AS TotalSalary,
		   AVG(Person.Salary) AS AvgSalary,
		   MAX(Person.Salary) AS MaxSalary
	FROM Person
	JOIN Dept ON Person.DeptId = Dept.DeptId
	GROUP BY Person.City, Dept.DeptName;

-- 3. Find all persons who do not belong to any department.
	SELECT *
	FROM Person
	WHERE DeptId IS NULL;

-- 4. Find all departments whose total salary is exceeding 100000.
	SELECT Dept.DeptName, SUM(Person.Salary) AS TotalSalary
	FROM Dept
	JOIN Person ON Person.DeptId = Dept.DeptId
	GROUP BY Dept.DeptName
	HAVING SUM(Person.Salary) > 100000;

										---PART C---
-- 1. List all departments who have no person.
	SELECT Dept.DeptName
	FROM Dept
	LEFT JOIN Person ON Dept.DeptId = Person.DeptId
	WHERE Person.DeptId IS NULL;

-- 2. List out department names in which more than two persons are working.
	SELECT Dept.DeptName
	FROM Dept
	JOIN Person ON Dept.DeptId = Person.DeptId
	GROUP BY Dept.DeptName
	HAVING COUNT(Person.PersonID) > 2;

-- 3. Give a 10% increment in the computer department employee’s salary. (Use Update)
	UPDATE Person
	SET Person.Salary = Person.Salary * 1.10
	from Person
	JOIN Dept ON Person.DeptId = Dept.DeptId
	WHERE Dept.DeptName = 'Computer'

	SELECT * FROM Person