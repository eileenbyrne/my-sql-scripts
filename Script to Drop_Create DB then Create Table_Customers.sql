-- Create script that you can run over and over again

USE SYS; -- YOU MUST BE IN A DB OTHER THAN THE ONE YOU ARE DROPPING

Drop Database if exists BcDb;

create database BcDb;

-- need to ensure you are in the right Db before you create the table below
Use BcDb;

create table Customers (
  ID int not null primary key auto_increment,
  Code varchar(10) not null unique,
  Name varchar(30) not null,
  Sales decimal(9,2) not null default 0,
  Active bit not null default 1,
  Created Datetime not null default (current_date)
  );
  
 insert Customers
 (ID, Code, Name, Sales) 
 -- if any column has a default value, do not list here
 Values
 -- must include columns that cannot be null or it doesn't have a default
 (0, '7876', 'Blacksmith Company', '3400.02'),
 (0, '4556', 'Smith Company', '405510.72'),
 (0, '98675', 'Carter Company', '2300.72')
 ;
 
 select * from customers;
 
 Create table Orders (
  ID int not null primary key auto_increment,
  Description varchar(30) not null,

  Total decimal(9,2) not null default 0,
  CustomerID int not null,
   Foreign key (CustomerId) references Customers(ID)
);

Insert Orders -- in order to add these orders the CustomerID has to already exist in the Customers table or it will fail
(Description, Total, CustomerID)

Values
('Toys', 2000, 1),
('Equipment', 5000, 2);

Select * from Orders;
