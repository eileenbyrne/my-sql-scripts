-- list of students and their majors, only those who have major declared
select *
 from student s 
  join major m 
  on m.id = s.MajorId;
 