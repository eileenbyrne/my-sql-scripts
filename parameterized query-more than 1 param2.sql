-- will get gpa scores that are 2.5 because based on the calculated set, @gpa is 2.5
set @gpa = 2.0;
set @gpa = @gpa + .5;

select *
 from student
 where gpa = @gpa;