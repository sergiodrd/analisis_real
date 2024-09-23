#import "template.typ": *
#let title = "Tarea 3"
#let author = "Sergio Rodríguez"
#let course_id = "MATE 5201"
#let instructor = "Alejandro Vélez"
#let semester = "C41"
#let due_time = ""
#set enum(numbering: "a)")
#set math.equation(numbering: "(1)", supplement: "la ecuación")
#show: assignment_class.with(title, author, course_id, instructor, semester, 
  due_time)

#let contradiction = text($refmark$, size: 1.75em)
