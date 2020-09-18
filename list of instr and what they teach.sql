-- list of all instructors only if they are teaching a class

select *
 from instructor i  
 left join class c  
 on c.instructorid = i.id