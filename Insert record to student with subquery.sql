-- Insert record to student table with a subquery to find major

insert student
 (id, firstname, lastname, sat, gpa, majorid) -- these can be in any order you want
 values -- always plural "values"
 (0, 'Mary', 'Jones', 1400, 3.75,  -- the values have to be in same order you put column names above 
  (Select id from Major where Description = 'Math'))
 
 -- then run query on student table to make sure it was added
 