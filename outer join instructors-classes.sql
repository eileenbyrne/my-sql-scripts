select c.*, i.lastname as 'instructor' -- asking for all columns of class and just instructor last name
 from class c
 left join instructor i
 on c.instructorid = i.id