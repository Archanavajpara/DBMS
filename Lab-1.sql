create database Bsc_Hons_509

use Bsc_Hons_509

create table Deposit(
	ActNo int,
	Cname varchar(50),
	Bname varchar(50),
	Amount decimal(8,2),
	Adate datetime
)

insert into Deposit values
(101,'ANIL','VRCE',1000,'1995-03-01'),
(102,'SUNIL','AJNI',5000,'1996-01-04'),
(103,'MEHUL','KAROLBAGH',3500,'1995-11-17'),
(104,'MADHURI','CHANDI',1200,'1995-12-17'),
(105,'PRAMOD','M.G.ROAD',3000,'1996-03-27'),
(106,'SANDIP','ANDHERI',2000,'1996-03-31'),
(107,'SHIVANI','VIRAR',1000,'1995-09-05'),
(108,'KRANTI','NEHRU PALACE',5000,'1995-07-02'),
(109,'MINU','POWAI',7000,'1995-08-10')

select * from Deposit

create table Branch(
	Bname varchar(50),
	City varchar(50)
)

insert into Branch values
('VRCE','NAGPUR'),
('AJNI','NAGPUR'),
('KAROLBAGH','DELHI'),
('CHANDI','DELHI'),
('DHARAMPETH','NAGPUR'),
('M.G. ROAD','BANGLORE'),
('ANDHERI','BOMBAY'),
('VIRAR','BOMBAY'),
('NEHRU PLACE','DELHI'),
('POWAI','BOMBAY')

select * from Branch

create table Customers(
	Cname varchar(50),
	City varchar(50)
)

insert into Customers values
('ANIL','CALCUTTA'),
('SUNIL','DELHI'),
('MEHUL','BARODA'),
('MANDAR','PATNA'),
('MADHURI','NAGPUR'),
('PRAMOD','NAGPUR'),
('SANDIP','SURAT'),
('SHIVANI','BOMBAY'),
('KRANTI','BOMBAY'),
('NAREN','BOMBAY')

select * from Customers

CREATE TABLE BORROW(
LOANNO INT,
CNAME VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2)
);
INSERT INTO BORROW VALUES 
(201 , 'ANIL' , 'VRCE' , 1000.00),
(206 , 'MEHUL' , 'AJNI' , 5000.00),
(311, 'SUNIL' , 'DHARAMPETH' , 3000.00),
(321, 'MADHURI' , 'ANDHERI' , 2000.00),
(375 ,'PRAMOD' ,'VIRAR' ,8000.00),
(481, 'KRANTI' ,'NEHRU PLACE' ,3000.00);

SELECT * FROM BORROW