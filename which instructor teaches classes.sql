select *
 from instructor i
 join class c
   on c.instructorid = i.id;
   -- this tells us which instructor teaches which classes