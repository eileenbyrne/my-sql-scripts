-- see all classes for a student
-- have to use an intermediate table (studentclassrel) to join 2 tables that are not related
-- produces no results because there is no data; but query is correct
select *
 from student s
  join studentclassrel sc
   on s.id = sc.studentid
  join class c
   on c.id = sc.classid