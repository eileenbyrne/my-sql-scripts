-- bump gpas by .1 point for certain students SAT between 1000 and 1300 inclusive

update student set
 GPA = gpa + 0.1
  where SAT between 1000 and 1300
