-- based on a student's sat score there are certain majors they can take based on minSat required

set @studentsat = 1000; -- this gets plugged in based on student

select *
 from major
 where minsat >= @studentsat;