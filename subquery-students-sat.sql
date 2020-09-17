-- writing a subquery - students with sat < avg sat of all students
select * 
 from student
 where sat < (select avg(sat) from student)