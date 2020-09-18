-- majors and all classes they are related to them sorted by classid

select *
 from major m 
 join majorclassrel mc
 on m.id = mc.majorid
 join class c 
 on c.id = mc.classid
order by ClassId
 
 