-- all students and majors if they have one - outer (left) joins give you all data from both tables
-- for outer join, you have to list table you want all info from FIRST; if major was first table, ans would be different
-- all subsequent joins then have to reference that 1st table
select *
 from student s 
  left join major m 
  on m.id = s.MajorId; -- list column from the join first to keep things straight