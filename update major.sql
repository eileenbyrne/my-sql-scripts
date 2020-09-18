-- update greg gould so his major is accounting, without hardcoding id number

update student set
  MajorID = (select id from major where description = 'accounting')
  where id = 110;
 
 select * 
   from student
   where id = 110;