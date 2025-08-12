----PART-A----
create table student(
	StuID INT,
	FirstName VARCHAR(25),
	LastName VARCHAR(25),
	Website VARCHAR(50),
	City VARCHAR(25),
	[Address] VARCHAR(100) --address is a default keyword in sql so write it in [] to avoid conflicts
)
insert into student values
	(1011, 'Keyur', 'Patel', 'techonthenet.com', 'Rajkot', 'A-303 ‘Vasant Kunj’, Rajkot'),
	(1022, 'Hardik', 'Shah', 'digminecraft.com', 'Ahmedabad', '"Ram Krupa", Raiya Road'),
	(1033, 'Kajal', 'Trivedi', 'bigactivities.com', 'Baroda', 'Raj bhavan plot, near garden'),
	(1044, 'Bhoomi', 'Gajera', 'checkyourmath.com', 'Ahmedabad', '"Jig''s Home", Narol'),
	(1055, 'Harmit', 'Mitel', '@me.darshan.com', 'Rajkot', 'B-55, Raj Residency'),
	(1066, 'Ashok', 'Jani', NULL, 'Baroda',' A502, Club House Building')

select * from student

--1. Display the name of students whose name starts with ‘k’.
select *
from student
where FirstName like 'K%'

--2. Display the name of students whose name consists of five characters.
select *
from student
where FirstName like '_____'

--3. Retrieve the first name & last name of students whose city name ends with ‘a’ & contains six characters.
select *
from student
where City like '_____a'

--4. Display all the students whose last name ends with ‘tel’.
select *
from student
where LastName like '%tel'

--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.
select *
from student
where FirstName like 'ha%t'

--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’
select *
from student
where FirstName like 'K_y%'

--7. Display the name of students having no website and name consists of five characters.
select *
from student
where Website is NULL and FirstName like '_____'

--8. Display all the students whose last name consist of ‘jer’.
select *
from student
where LastName like '%jer%'

--9. Display all the students whose city name starts with either ‘r’ or ‘b’.
select *
from student
where City like '[rb]%'

--10. Display all the name students having websites.
select *
from student
where Website is not NULL

--11. Display all the students whose name starts from alphabet A to H.
select *
from student
where FirstName like '[a-h]%'

--12. Display all the students whose name’s second character is vowel.
select *
from student
where FirstName like '_[aeiou]%'

--13. Display the name of students having no website and name consists of minimum five characters.
select *
from student
where Website is NULL and FirstName like '_____%'

--14. Display all the students whose last name starts with ‘Pat’.
select *
from student
where Lastname like 'Pat%'

--15. Display all the students whose city name does not starts with ‘b’
select *
from student
where city not like 'b%'

--16. Display all the students whose student ID ends with digit.
select *
from student
where StuID like '%[0-9]'

--17. Display all the students whose address does not contain any digit.
select *
from student
where Address not like '%[0-9]%'

--18. Find students whose first name starts with 'B', last name ends with 'A', and their website contains either 'math' or 'science'. Ensure that their city does not start with 'B'.
select *
from student
where FirstName like 'B%' and LastName like '%A' and (website like '%math%' or website like '%science%') and city not like 'b%'

--19. Retrieve students who have 'Shah' in their last name and whose city ends with 'd'. Additionally, their website should be either null or contain 'com'.
select *
from student
where LastName like '%shah%' and city like '%d' and (website like '%com%' or website is null)

--20. Select students whose first and second character is a vowel. Their city should start with 'R' and they must have a website containing '.com'.
select *
from student
where FirstName like '[aeiou][aeiou]%' and city like 'r%' and website like '%com%'


----PART-B----
--1. Display all the students whose name’s second character is vowel and start with H.
select *
from student
where FirstName like 'h[aeiou]%'

--2. Display all the students whose last name does not ends with ‘a’.
select *
from student
where FirstName not like '%a'

--3. Display all the students whose first name starts with consonant.
select *
from student 
where FirstName not like '[aeiou]%'

--4. Retrieve student details whose first name starts with 'K', last name ends with 'tel', and either their website contains 'tech' or they live in a city starting with 'R'.
select *
from student
where FirstName like 'k%' and LastName like '%tel' and (website like '%tech%' OR city like 'r%')

--5.Retrieve students whose address contains a hyphen '-' and whose city starts with either 'R' or 'B'. They must have a website that ends with '.com' and their first name should not start with 'A'.
select *
from student
where firstName like 'a%'
and Website like '%.com' or city  like '[rb]%' and Address like '-'

----PART C----
--1.Display all the students whose address contains single quote or double quote.
select *
from student
where Address Like '%[''"]%'

--2.Find students whose city does not contain the letter 'S' and their address contains either single or double quotes. Their last name should start with 'P' and they must have a website that contains 'on'.
select *
from student
where Address Like '%[''"]%' and LastName like 'p%'
and Website like '%on%' or city  like '%s%'
