-- parameterized query - involves dates and ranges often times
-- need to define the variable first using set
set @maxsat = 1100;
select *
 from student
 where sat > @maxsat
 order by sat desc;
