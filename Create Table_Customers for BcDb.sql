create table Customers (
  ID int not null primary key auto_increment,
  Code varchar(10) not null unique,
  Name varchar(30) not null,
  Sales decimal(9,2) check (Sales >=0),
  Active bit default 1,
  Created Datetime not null default (current_date)
  );