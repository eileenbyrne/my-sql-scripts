-- writing a subquery - students with gpa > avg gpa of all students
select * 
 from student
 where gpa > (select avg(gpa) from student)