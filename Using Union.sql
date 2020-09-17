-- Using Union - using 3 separate Select statements
select lastname, 'A' as 'ABC'
 from student
 where SAT > 1200
Union
 select lastname, 'B' as 'ABC'
  from student
  where SAT <= 1200 and SAT > 1000
Union
 select lastname, 'C' as 'ABC'
 from student
 where SAT <= 1000