select s.id, concat(s.firstname, ' ', s.Lastname) as 'name', s.gpa, m.description as 'major'
  from student s
  join major m on m.Id = s.MajorID