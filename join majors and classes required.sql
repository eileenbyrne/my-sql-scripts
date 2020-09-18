-- for each major, how many classes are required

select m.Description as 'Major', count(*)
 from major m 
 join majorclassrel mc
 on m.id = mc.majorid
 join class c 
 on c.id = mc.classid
group by m.description

