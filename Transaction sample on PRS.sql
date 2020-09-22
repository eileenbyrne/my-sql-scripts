-- select * from user
Start Transaction; -- can also use BEGIN (without word Transaction)

Insert User (Username, Password, FirstName, LastName, PhoneNumber, Email)
  Values ('xxxx', 'xxxx', 'xxxx', 'xxxx', 'xxxx', 'xxxx');
  
 select * from User; 

Rollback;