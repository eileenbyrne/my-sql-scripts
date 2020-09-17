-- example of outer join
select * 
from student s -- will get all data from this table
 left join major m 
  on m.id = s.majorid