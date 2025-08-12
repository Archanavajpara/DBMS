--SELECT Operation 
--Part – A: 
--From the above given tables perform the following queries: 
--1. Retrieve all data from table DEPOSIT.

	select * from DEPOSIT

--2. Retrieve all data from table BORROW. 

	select * from BORROW

--3. Display Account No, Customer Name & Amount from DEPOSIT.

	select actno , cname , amount from DEPOSIT
--4. Display Loan No, Amount from BORROW.
	select LOANNO ,AMOUNT from BORROW
--5. Display loan details of all customers who belongs to ‘ANDHERI’ branch from borrow table. 
	select LOANNO from BORROW
	where BNAME = 'ANDHERI'
--6. Give account no and amount of depositor, whose account no is equals to 106 from deposit table.  
	select actno , amount from DEPOSIT
	where actno = 106
--7. Give name of borrowers having amount greater than 5000 from borrow table.  
	select AMOUNT from BORROW
	where AMOUNT>5000
--8. Give name of customers who opened account after date '1-12-95' from deposit table.
	select cname from DEPOSIT
	where adate>'1995-12-01'
--9. Display name of customers whose account no is less than 105 from deposit table. 
	select  cname from DEPOSIT
	where actno<105
--10. Display name of customer who belongs to either ‘NAGPUR’ or ‘DELHI’ from customer table. (USE OR & 
--IN) 
	select cname from CUSTOMERS
	where city = 'DELHI' OR city = 'NAGPUR'

	select cname from CUSTOMERS
	where city in ('NAGPUR', 'DELHI')
--11. Display name of customers with branch whose amount is greater than 4000 and account no is less than 
--105 from deposit table. 
	select cname from DEPOSIT
	where amount>4000 and actno<105
--12. Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow 
--table. (USE AND & BETWEEN) 
	select * from BORROW
	where AMOUNT>3000 and AMOUNT<8000

	select * from BORROW
	where AMOUNT between 3000 and 8000
--13. Find all depositors who do not belongs to ‘ANDHERI’ branch from deposit table. 
	select * from DEPOSIT
	where bname != 'ANDHERI' 
--14. Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’ 
--Or ‘M.G. ROAD’ and Account No is less than 104 from deposit table.
	select actno ,cname , amount  from DEPOSIT
	where bname in ('AJNI','KAROLBAGH','M.G. ROAD') and actno<104
--15. Display all loan no, customer from borrow table does not belong to ‘VIRAR’ or ‘AJNI’ branch. (use NOT 
--IN) 
	select LOANNO , CNAME from BORROW
	where  not bname in ('VIRAR','AJNI') 
---16. Display all the customer’s name other than ‘MINU’ from deposit table (Use: NOT, <>, !=)
	Select cname from DEPOSIT
	Where NOT cname='MINU'

	Select cname from DEPOSIT
	Where cname<>'MINU'

	Select cname from DEPOSIT
	Where cname!='MINU'
--17. Display customer name from deposit table whose branch name is not available. (NULL) 
	Select cname from DEPOSIT
	Where bname IS NULL

--18. Retrieve all unique branches using DISTINCT. (Use Branch Table) 
	Select distinct city 
	from BRANCH
	
--19. Retrieve first 50% record from borrow table. 
	Select top 50 percent *
	from BORROW 

--20. Retrieve first five account number from deposit table. 
	Select top 5 actno
	from DEPOSIT
 
--Part – B: 
--1. Display all the details of first five customers from deposit table. 
	select top 5* from DEPOSIT
--2. Display all the details of first three depositors from deposit table whose amount is greater than 1000. 
	select top 3 *from DEPOSIT
	where amount>1000
--3. Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to 
--‘ANDHERI’ from borrow table. 
	select  top 5 LOANNO ,CNAME from BORROW
	where  not BNAME = 'ANDHERI'
--4. Select all details with account numbers not in the range 105 to 109 in deposit table. 
	select * from DEPOSIT
	where not actno between 105 and 109 
--5. Select all records from BORROW where the amount is greater than 1000 and less than or equal to 7000, 
--and the loan number is between 250 and 600 
	select * from BORROW
	where (AMOUNT>1000 and AMOUNT<=7000) and (LOANNO BETWEEN 250 AND 600)
--Part – C: 
--1. Display all the detail of customer who deposited more than 5000 without using * from deposit table. 
	select actno , cname , bname , amount ,adate from DEPOSIT
	where amount > 5000
--2. Retrieve all unique customer names with city. (Use Customer table) 
	select distinct * from CUSTOMERS
--3. Retrieve records from the BORROW table where the loan amount is greater than 3000 and the loan 
--number is not a multiple of 3. 
	select * from BORROW
	where AMOUNT >3000 AND (LOANNO%3!=0)
--4. Retrieve records from the DEPOSIT table where amount is greater than 2000 also account number is 
--between 100 and 110 and date is after '1-MAR-1995' or before '27-MAR-1996'. 
	select * from DEPOSIT
	where (amount>2000)and (actno between 100 and 110) and (adate between '1995-03-01'and '1996-03-27')
--5. Retrieve all odd/even value loan number from Borrow table.
	select LOANNO from BORROW
	where LOANNO%2=0

	select LOANNO from BORROW
	where LOANNO%2!=0