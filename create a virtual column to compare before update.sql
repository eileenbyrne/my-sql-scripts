-- create a virtual column
-- bump gpas by .1 point for certain students SAT between 1000 and 1300 inclusive

select *, (s.gpa +0.1) as 'new gpa'
from student s 
