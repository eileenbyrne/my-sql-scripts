-- join between student and majors
select *
from major m
 join student s
  on m.id =s.MajorId;