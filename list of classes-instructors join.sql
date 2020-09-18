-- list all classes and instructors
select *
 from Instructor i 
 join class c 
 on i.id = c.InstructorId