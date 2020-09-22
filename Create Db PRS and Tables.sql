-- creating PRS Db and tables

USE SYS; -- YOU MUST BE IN A DB OTHER THAN THE ONE YOU ARE DROPPING

Drop Database if exists PRS;

Create database PRS; -- need to ensure you are in the right Db before you create the table below

Use PRS;

Create table User (
 ID int Primary Key auto_increment,
 UserName varchar(20) not null unique,
 Password varchar(10) not null,
 FirstName varchar(20) not null,
 LastName varchar(20),
 PhoneNumber varchar(12),
 Email varchar(75),
 IsReviewer bit default 0,
 IsAdmin bit default 0
 );
 
 -- insert test data to table
 
insert User
 (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email) 
 -- if any column has a default value, do not list here
 Values
 -- must include columns that cannot be null or it doesn't have a default
(0, 'EileenByrne', '0000', 'Eileen', 'Byrne', '8591234567', 'ebyrne@123.com'),
(0, 'MarySmith', '0000', 'Mary', 'Smith', '8594324567', 'msmith@123.com'),
(0, 'KathyJones', '0000', 'Kathy', 'Jones', '5131234567', 'ljones@123.com')
;

select * from user;

Create table Vendor (
 ID int Primary Key auto_increment,
 Code varchar(10) not null unique,
 Name varchar(255),
 Address varchar(255),
 City varchar(255),
 State varchar(2),
 Zip varchar(5),
 PhoneNumber varchar(12),
 Email varchar(100)
 );
 
 insert Vendor
 (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email) 

values 
(0, '1234', 'Johnson Company', '123 Main St', 'Cincinnati', 'OH', '45202', '5133455454', 'steve@johnsonco.com'),
(0, '1222', 'Jones Company', '123 Elm St', 'Cincinnati', 'OH', '45202', '5133453254', 'paul@Jonescompany.com'),
(0, '5034', 'Green Company', '144 Main St', 'Newport', 'KY', '41071', '8593455884', 'mike@greenco.com')
;

select * from vendor;

Create table Product (
ID int Primary Key auto_increment,
VendorID int not null,
 foreign key (vendorID)
  references vendor(ID),
PartNumber varchar(50) not null,
Name varchar(150) not null,
Price decimal(10,2) not null,
Unit varchar(255) null,
PhotoPath varchar(255) null,
Constraint vendor_part unique (VendorID, PartNumber) -- this will keep us from having same vendor's part number for different vendors (MySQL only code)
);

insert Product
 (ID, VendorID, PartNumber, Name, Price, Unit)
 
values 
(0, 1, '9001', 'Controller', 43, '1'),
(0, 2, '9441', 'Console', 493, '1'),
(0, 3, '8901', 'Wiring', 23, '1')
;

select * from product;

create table Request (                -- nothing in this table creation code will keep a person from entering a duplicate request; this is allowed; there is no constraint
 ID int Primary Key auto_increment,
 UserID int not null,
  foreign key (UserID)
   references User(ID),
Description varchar(100) not null, -- why requested products
Justification varchar(255) not null, -- why you need product
DateNeeded datetime not null,
DeliveryMode varchar(25) not null,
Status varchar(20) not null default 'New',
Total decimal(10,2) not null,
SubmittedDate Datetime not null default (current_date),
ReasonForRejection varchar(100) null
);

Insert Request
 (ID, UserID, Description, Justification, DateNeeded, DeliveryMode, Total)
 
 Values
 (0, 1, 'Moved to new location', 'Setting up new office', '20201101', 'UPS', 12345),
 (0, 2, 'House blew away', 'Tornado came through', '20201201', 'USPS', 172345),
 (0, 3, 'PC no longer works', 'Needed to do my work', '20201001', 'UPS', 1245)
 ;
 
 select * from Request;
 
 Create table LineItem (
 ID int not null Primary Key auto_increment,
 RequestID int not null,
  foreign key (RequestID)
   references Request(ID),
ProductID int not null,
  foreign key (ProductID)
   references Product(ID),
Quantity int not null default 1,
Constraint req_pdt unique (RequestID, ProductID) -- this says you can't put the same product on the same request more than once
);

Insert LineItem
 (ID, RequestID, ProductID, Quantity)
 
 Values
  (0, 1, 2, 3),
  (0, 2, 1, 1),
  (0, 3, 3, 1)
  ;
  
  select * from LineItem;
  
  -- this creates a user who has certain rights to the database
  
  Drop User if exists prs_user@localhost;
  Create User prs_user@localhost Identified By 'sesame';
  Grant Select, Insert, Delete, Update on prs.* to prs_user@localhost;