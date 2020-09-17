-- parameter example of students in gpa range

set @mingpa = 2.1;
set @maxgpa = 3.7;

select *
 from student
 where gpa between @mingpa and @maxgpa
 order by gpa;
 