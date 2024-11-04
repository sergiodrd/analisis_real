#import "template.typ": *
#let title = "Tarea 4"
#let author = "Sergio Rodriguez"
#let course_id = "MATE 5201"
#let instructor = "Alejandro Velez"
#let semester = "C41"
#let due_time = "8 de octubre"
#set enum(numbering: "a)")
#set math.equation(numbering: "(1)", supplement: "la ecuacion")
#show: assignment_class.with(title, author, course_id, instructor, semester,
  due_time)

#let contradiction = text($refmark$, size: 1.75em)
#let liminfty = $limits(lim)_(n -> infinity)$
#let limsupinfty = $limits(limsup)_(n -> infinity)$
#let liminf = math.op("lim inf")
#let liminfinfty = $limits(liminf)_(n -> infinity)$
#let diam = math.op("diam")
#let tab = $space space space space space space space space$

// problema 1
#prob[
  _(6 puntos) -- Demuestre que un espacio metrico $(X, d)$ es conexo si y solo
  si los unicos subconjuntos $E$ abiertos y cerrados de $X$ son $E eq nothing$ y
  $ E eq X$._

  == Prueba:

  *MEP*
]

// problema 2
#prob[
  _(4 puntos) -- Si $E subset.eq RR^n$ es convexo, pruebe que $E$ es conexo._

  == Prueba:

  *MEP*
]

// problema 3
#prob[
  _(6 puntos) -- Suponga que $0 lt x_1 lt 1$, y defina la sucesion recursiva:
  $x_(n + 1) := 1 - sqrt(1 - x_n)$. Demuestre que ${x_n}$ es decreciente, con
  $liminfty x_n eq 0$. Luego pruebe que $liminfty (x_(n + 1)) / x_n eq 1 / 2$._

  == Prueba:

  *MEP*
]

// problema 4
#prob[
  _(4 puntos) -- Sean ${x_n}, {y_n}$ sucesiones en un espacio metrico $(X, d)$,
  tales que $x_n -> x$ y $y_n -> y$ en $X$. Demuestre que $liminfty d(x_n, y_n) eq
  d(x, y)$._

  == Prueba:

  *MEP*
]

// problema 5
#prob[
  _(5 puntos) -- En $(X, d)$, si $E subset.eq X$ es completo, pruebe que $E$ es
  cerrado._

  == Prueba:

  *MEP*
]

// problema 6
#prob[
  _(4 puntos) -- Demuestre que $overline(QQ) eq RR$ de la siguiente forma: dado
  $x in RR$, demuestre que existe una sucesion ${x_n} subset.eq QQ$ tal que
  $x_n -> x$._

  == Prueba:

  *MEP*
]

// problema 7
#prob[
  _(4 puntos) -- Sea ${x_n}$ sucesion en $(X, d)$, y sea $E_n := {x_n,
  x_(n + 1), x_(n + 2), ...}$. Demuestre que ${x_n}$ es sucesion de Cauchy si y
  solamente si $liminfty diam(E_n) eq 0$._

  == Prueba:

  *MEP*
]

// problema 8
#prob[
  _(8 puntos) -- Sea ${x_n}$ una sucesion de numeros reales, y definamos:
  $ y_n := 1 / n sum_(j eq 1)^n x_j, tab z_n := x_n / n. $_

  _(a) - (4 puntos) -- Si $x_n -> x$ en $RR$, demuestre que $y_n -> x$._
  == Prueba:

  *MEP*

  ===

  _(b) - (4 puntos) -- Si $(x_(n + 1) - x_n) -> x$ en $RR$, pruebe que $z_n ->
  x$._
  == Prueba:

  *MEP*
]

// problema 9
#prob[
  _(5 puntos) -- Sean ${x_n}$ y ${y_n}$ dos sucesiones de Cauchy en $(X, d)$, y
  definamos $beta_n := d(x_n, y_n)$. Pruebe que ${beta_n}$ converge en $RR$._

  == Prueba:

  *MEP*
]

// problema 10
#prob[
  _(4 puntos) -- Considere la sucesion ${a_n}$ definida como sigue:
  $ a_1 eq 0; tab a_(2 n) eq a_(2 n - 1) / 2; tab a_(2 n + 1) eq 1 / 2 +
  a_(2 n); tab (n in NN). $ Calcule $limsupinfty a_n$ y $liminfinfty a_n$._

  == Prueba:

  *MEP*
]

// problema 11
#prob[
  _(4 puntos) -- Si ${x_n}$ es una sucesion acotada en $RR$, demuestre que:
  $ limsupinfty(-x_n) eq -liminfinfty(x_n) tab "y" tab liminfinfty(-x_n) eq
  -limsupinfty(x_n) $_

  == Prueba:

  *MEP*
]
