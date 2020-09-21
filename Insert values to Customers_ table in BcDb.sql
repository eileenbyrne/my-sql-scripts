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
 