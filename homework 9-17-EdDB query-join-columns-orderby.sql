select s.id, description 'degree', minsat, firstname, lastname, sat, gpa
  from major m
  join student s
  on s.sat = m.minsat
  order by MinSAT desc
 -- this answer is wrong because I did not use PK and FK to join - data is going to be wrong
 