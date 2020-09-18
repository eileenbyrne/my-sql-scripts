-- what classes are students taking - 2 joins student-studentclassrel-class (there are none that meet this criteria)


Select *
 from student s 
 join studentclassrel scl 
 on scl.StudentId = s.Id 
 join class c
 on c.Id = scl.ClassId