#import "template.typ": *
#let title = "Tarea 5"
#let author = "Sergio Rodriguez"
#let course_id = "MATE 5201"
#let instructor = "Alejandro Velez"
#let semester = "C41"
#let due_time = "2 de diciembre"
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
  _(8 puntos) -- Dado ${a_n] in RR$ sucesion con $a_n gt 0$ para $n gt.eq N_0$ (algun
  $N_0 in NN$), pruebe que si $sum a_k$ converge, entonces
  $sum_(k eq 1)^(infinity) sqrt(abs(a_k)) / k$ converge._
  == Prueba:


  *MEP*
]

// problema 2
#prob[
  _(8 puntos) -- Sea ${a_n} in NN$ sucesion de numeros naturales con $a_n lt.eq
  n - 1$ para cada $n in NN$. Demuestre que $sum_(k eq 1)^(infinity) a_k / k! in
  QQ$ si y solo si existe $N_0 in NN$ tal que $a_n eq n - 1$ para todo $n gt.eq
  N_0$._
  == Prueba:



  *MEP*
]

// problema 3
#prob[
  _(16 puntos) -- Dado $a in (0, 1]$ y $s gt 1$, definimos la funcion a-zeta de
  Riemann por: $ zeta (s; a) := sum_(k eq 0)^(infinity) 1 / (a + k)^s $ La
  funcion zeta de Riemann clasica es cuando $a eq 1$, y se denota por $zeta (s)$
  ._

  _(a) - (4 puntos) -- Pruebe que $zeta (dot; dot)$ esta bien definida._
  == Prueba:
  Note que como $a$ es positivo, $1 / (a + k)^s lt.eq 1 / k^s$, pero
  $sum_(k eq 1)^infinity 1 / k^s$ converge por que es una $p$-serie con \ $p eq
  s gt 1$. Entonces $zeta (s; a)$ converge.

  Ahora note que dados $s_1 gt 1, s_2 gt 1, a_1, a_2 in (0, 1]$, $ &(s_1, a_1)
  eq (s_2, a_2) \ ==> &s_1 eq s_2 and a_1 eq a_2 $

  Ahora usaremos induccion. Note que $a_1^(s_1) eq a_2^(s_2)$. Ahora:
  $ &S_j (s_1, a_1) eq S_j (s_2, a_2) \ ==> &sum_(k eq 0)^j (a_1 + k)^(s_1) eq
  sum_(k eq 0)^j (a_2 + k)^(s_2) \ ==> &sum_(k eq 0)^j (a_1 + k)^(s_1) + (a_1 +
  j + 1)^(s_1) eq sum_(k eq 0)^j (a_2 + k)^(s_2) + (a_2 + j + 1)^(s_2) \ ==>
  &sum_(k eq 0)^(j + 1) (a_1 + k)^(s_1) eq sum_(k eq 0)^(j + 1) (a_2 + k)^(s_2)
  \ ==> &S_(j + 1) (s_1, a_1) eq S_(j + 1) (s_2, a_2) $

  Entonces: $ &S_n (s_1, a_1) eq S_n (s_2, a_2) \ ==> &liminfty S_n (s_1, a_1)
  eq liminfty S_n (s_2, a_2) $

  $therefore zeta (s_1; a_1) eq zeta (s_2; a_2)$ y $zeta$ esta bien definida.

  *MEP*

  ===

  _(b) - (6 puntos) -- Demuestre que $limits(sum)_(j eq 1)^(m) zeta (s; j / m)
  eq m^s zeta (s)$._
  == Prueba:



  *MEP*

  ===

  _(c) - (6 puntos) -- Pruebe que $limits(sum)_(k eq 1)^(infinity) (-1)^(k - 1)
  k^(-s) eq (1 - 2^(1 - s)) zeta (s)$._
  == Prueba:



  *MEP*
]

// problema 4
#prob[
  _(8 puntos) - Dadas las sucesiones ${a_n}, {b_n} subset.eq RR$, si $sum a_k$
  converge y ${b_n}$ es sucesion monotonica acotada, demuestre que $sum a_k b_k$
  converge._
  == Prueba:
  Primero demostraremos la formula de sumatorias parciales. Si ${a_n}, {b_n}$
  son sucesiones, y \ $A_n := sum_(k eq 0)^n a_k$ es la sucesion de sumas
  parciales de $a_n$, tenemos que:
  $ sum_(n eq p)^q a_n b_n eq sum_(n eq p)^(q - 1) A_n (b_n - b_(n + 1)) + A_q
  b_q - A_(p - 1) b_p $

  === Prueba:
  $ sum_(n eq p)^q a_n b_n &eq sum_(n eq p)^q (A_n - A_(n - 1)) b_n \ &eq
  sum_(n eq p)^q A_n b_n - sum_(n eq p - 1)^(q - 1) A_n b_(n + 1) \ &eq
  sum_(n eq p)^(q - 1) A_n b_n - sum_(n eq p - 1)^(q - 1) A_n b_(n + 1) + A_q
  b_q \ &eq sum_(n eq p)^(q - 1) A_n b_n - sum_(n eq p)^(q - 1) A_n b_(n + 1) +
  A_q b_q - A_(p - 1) b_p \ &eq sum_(n eq p)^(q - 1) A_n (b_n - b_(n + 1)) +
  A_q b_q - A_(p - 1) b-p \ square $

  Ahora demostraremos que $sum a_k b_k$ converge cuando $b_k$ es no-creciente.

  Como $sum a_k$ converge, $A_k$ es acotada. Entonces sea $M gt 0$ tal que
  $abs(A_k) lt M$. Ademas, al ser monotonica y acotada, $b_n$ converge. Sea
  $liminfty b_n eq L$. Entonces $exists N in NN$ tal que \ $n gt.eq N ==>
  abs(b_n - L) lt epsilon / (2 M) - L$.

  Entonces tenemos que, para $n gt m gt.eq N$, tenemos que:
  $ abs(sum_(k eq m + 1)^n a_k b_k) &eq abs(sum_(k eq m + 1)^(n - 1) A_k
  (b_k - b_(k + 1)) + A_n b_n - A_m b_(m + 1)) \ &lt.eq M
  abs(sum_(k eq m + 1)^(n - 1) (b_k - b_(k + 1)) + b_n - b_(m + 1)) \ &eq
  M abs(b_n + b_(n + 1)) eq M abs((b_n - L) + (b_(n + 1) - L) + 2 L) \ &lt
  M abs(epsilon / (2 M) - L + epsilon / (2 M) - L + 2 L) eq M abs(epsilon / M)
  lt epsilon $

  Entonces, por el criterio de Cauchy, $sum a_k b_k$ converge.

  *MEP*
]
