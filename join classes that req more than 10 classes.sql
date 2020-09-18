-- want to see classes that only require more than 10 classes

select m.Description as 'Major', count(*) as 'Classes Req'
 from major m 
 join majorclassrel mc
 on m.id = mc.majorid
 join class c 
 on c.id = mc.classid
group by m.description
having count(*) > 10
