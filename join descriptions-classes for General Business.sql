-- create list of descriptions and classes for General Business
select m.description, c.section, c.subject
 from major m
 join majorclassrel mc
 on mc.majorid = m.id
 join class c
 on c.id = mc.classid
 -- so i only show class for the business major
where m.description = 'General Business'