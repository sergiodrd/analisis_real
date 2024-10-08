#import "template.typ": *
#let title = "Tarea 3"
#let author = "Sergio Rodríguez"
#let course_id = "MATE 5201"
#let instructor = "Alejandro Vélez"
#let semester = "C41"
#let due_time = "7 de octubre"
#set enum(numbering: "a)")
#set math.equation(numbering: "(1)", supplement: "la ecuación")
#show: assignment_class.with(title, author, course_id, instructor, semester, 
  due_time)

#let contradiction = text($refmark$, size: 1.75em)

// problema 1
#prob[
  _(5 puntos) -- Demuestre que los únicos subconjuntos de $RR$ que son abiertos
  y cerrados son $nothing$ y $RR$._

  == Prueba:
  Sea $E subset.eq RR$ abierto y cerrado. Sea $E^compose := { x in E | exists r
  gt 0 "tal que" B(x; r) subset.eq E }$ y \ $E' := { x in RR | (U_(r)(x) without
  {x}) sect E eq.not nothing }$. Note que $E^compose subset.eq E'$. Como $E$ es
  abierto, $E eq E^compose$, y como $E$ es cerrado, $E' subset.eq E eq
  E^compose$. Por lo tanto, $E^compose eq E'$, lo que implica que $E' without
  E^compose eq nothing$.

  Suponga, por contradicción, que $E eq.not nothing and E eq.not RR$. Ahora fije
  un elemento arbitrario $x in E$ y considere $F := { d(x, y) | y in
  E^complement } subset.eq RR$. Note que $E eq.not RR ==> E^complement eq.not 
  nothing ==> F eq.not nothing$. Además, por la definición de la métrica, $0$ es
  una cota inferior para $F$. Por lo tanto, por la propiedad de la cota inferior
  mínima, $inf(F)$ existe en $RR$. Entonces existe un $alpha in RR$ tal que
  $d(x, alpha) = inf(F)$ con $(U_(rho)(alpha) without {alpha}) sect E eq.not
  nothing " " forall rho gt 0$ (porque $inf(F) - rho in.not F " " forall rho gt
  0 ==> "si" d(x, y) = inf(F) - rho, "entonces" y in.not E^complement ==> y in
  E$). Además, $U_(rho)(alpha) subset.eq.not E$ (porque $exists epsilon in F$
  tal que $inf(F) lt epsilon lt inf(F) + rho " " forall rho gt 0 ==> exists y in
  E^complement "tal que" d(x, y) = epsilon$). Por lo tanto, $x in E^compose
  without E' ==> E^compose without E' eq.not nothing$. $contradiction$

  Por lo tanto, $E eq nothing or E eq RR$. Ahora, note que $x in nothing ==>
  exists r gt 0 "tal que" B(x; r) subset.eq E$ es cierto porque la hipótesis es
  falsa, por lo tanto $nothing$ es abierto y $nothing^complement = RR$ es
  cerrado. Similarmente, $x in nothing ==> (U_(r)(x) without {x}) sect E eq.not
  nothing " " forall r gt 0$. Por lo tanto, $nothing$ es cerrado y
  $nothing^complement = RR$ es abierto.

  *MEP*
]

// problema 2
#prob[
  _(12 puntos) -- Para $x, y in RR$, definamos: $ &d_1(x, y) := (x - y)^2 \
  &d_2(x, y) := sqrt(abs(x - y)) \ &d_3(x, y) := abs(x - 2 y) \ &d_4(x, y) :=
  abs(x^2 - y^2) $_

  _Determine cuáles de estos definen métricas en $RR$. Justifique completamente
  cada respuesta._

  == Determinación:
  $d_1$ no define una métrica en $RR$ porque falla la desigualdad triangular.
  Tome $x eq 1, y eq 0, z eq -1$ y note que $d_1(1, -1) eq 4 lt.eq.not 2 eq 1 +
  1 eq d_1(1, 0) + d_1(0, -1)$.

  $d_2$ define una métrica en $RR$. Note que $d_2(x, y) eq sqrt(d(x, y))$ con
  $d$ siendo la métrica usual de $RR$. Ahora: $ d_2(x, x) eq sqrt(d(x, x)) eq
  sqrt(0) eq 0 $ $ d_2(x, y) eq sqrt(d(x, y)) eq sqrt(d(y, x)) eq d_2(y, x) $
  $ d_2(x, z) eq sqrt(d(x, z)) lt.eq sqrt(d(x, y)) + sqrt(d(y, z)) eq d_2(x, y)
  + d_2(y, z) $

  $d_3$ no define una métrica en $RR$ porque falla la propiedad de que $d(x, y)
  eq 0 <==> x eq y$. Tome \ $x eq 2, y eq 1$ y note que $d_3(2, 1) eq abs(2 - 2)
  = 0$

  $d_4$ no define una métrica en $RR$ porque falla la propiedad de que $d(x, y)
  eq 0 <==> x eq y$. Tome \ $x eq 1, y eq -1$ y note que $d_4(1, -1) eq abs(1^2
  - (-1)^2) eq abs(1 - 1) eq 0$.
]

// problema 3
#prob[
  _(5 puntos) -- Sea $(X, d)$ un espacio métrico, y definamos: $ d^*(x, y) :=
  d(x, y) / (1 + d(x, y)), " " forall x, y in X $_

  _Pruebe que $(X, d^*)$ es un espacio métrico, y que $d^*: X times X ->
  [0, 1)$._

  == Prueba:
  Note que como $d$ es una métrica:
  $ d^*(x, x) eq d(x, x) / (1 + d(x, x)) eq 0, " " forall x in X $

  $ d^*(x, y) eq d(x, y) / (1 + d(x, y)) eq d(y, x) / (1 + d(y, x)) eq
  d^*(y, x), " " forall x, y in X $

  $ d^*(x, z) &eq d(x, z) / (1 + d(x, z)) lt.eq (d(x, y) + d(y, z)) / (1 +
  d(x, y) + d(y, z)) \ &lt.eq (d(x, y) + 2 d(x, y) d(y, z) + d(y, z)) / (1 +
  d(x, y) + d(x, y) d(y, z) + d(y, z))\ &eq d(x, y) / (1 + d(x, y)) + d(y, z) /
  (1 + d(y, z)) eq d^*(x, y) + d^*(y, z) $

  Es claro que el dominio de $d^*$ es $X times X$. Como $d^*$ es una métrica, su
  rango empieza limitado a $[0, infinity)$, pero ahora, note que $lim_(d(x, y)
  -> infinity) d^*(x, y) eq 1$.

  $therefore d^*: X times X -> [0, 1)$.

  *MEP*
]

// problema 4
#prob[
  _(4 puntos c.u.) -- Dado $(X, d)$ espacio métrico, y $E subset.eq X$,
  definamos: $ E^compose := { x in E | x "punto interior" }, "  " E' := { x in X
  | x "punto límite" } $_

  _(a) Demuestre que $E^compose$ es abierto (no puede usar parte (d))._
  == Prueba:
  Tome $x in E^compose$. Como $x$ es un punto interior de $E$, sabemos que
  $exists r gt 0$ tal que $B(x; r) subset.eq E$. Suponga, por contradicción, que
  $B(x; r) sect (E^compose)^complement eq.not nothing$. Entonces, $exists y in
  B(x; r)$ tal que $y$ no es un punto interior de $E$. Esto implica que
  $B(y, rho) subset.eq.not E "  " forall rho gt 0$, pero como $B(x; r) subset.eq
  E$, también tenemos que $B(y, rho) subset.eq.not B(x; r) "  " forall rho gt
  0$. Esto quiere decir que encontramos un punto $y in B(x; r)$ tal que ninguna
  bola centrada en $y$ está contenida en $B(x; r)$. Por lo tanto, $B(x; r)$ no
  es abierto. $contradiction$

  Entonces: $ &B(x; r) sect (E^compose)^complement eq nothing \ ==> &B(x; r)
  subset.eq E^compose $

  $therefore$ $E^compose$ es abierto.

  *MEP*

  ===

  _(b) Pruebe que $E$ es abierto si y sólo si $E^compose eq E$._
  == Prueba:
  $(==>)$ Suponga que $E$ es abierto. Es claro que $E^compose subset.eq E$.
  Ahora, tome $x in E$ y note que, como $E$ es abierto, $exists r gt 0$ tal que
  $B(x; r) in E$. Pero esto implica, por definición, que $x in E^compose$.
  Entonces \ $E subset.eq E^compose$.

  $therefore E^compose eq E$

  $(<==)$ Suponga que $E^compose eq E$. Por (a), sabemos que $E^compose$ es
  abierto, pero como $E^compose eq E$, tenemos que $E$ es abierto.

  *MEP*
  
  ===

  _(c) Si $G$ es abierto y $G subset.eq E$, demuestre que $G subset.eq
  E^compose$._
  == Prueba:
  Tome $x in G$, y note que como $G$ es abierto, $exists r gt 0$ tal que
  $B(x; r) subset.eq G subset.eq E$. Por transitividad, esto quiere decir que
  $x$ es un punto interior de $E$. Entonces $x in E^compose$.

  $therefore G subset.eq E^compose$

  *MEP*

  ===

  _(d) Pruebe que $(E^compose)^complement eq overline(E^complement)$._
  == Prueba:
  Note que $(E^compose)^complement eq { x in X | x "no es punto interior de" E
  }$ y $overline(E^complement) eq E^complement union (E^complement)'$.

  Suponga que $x in (E^compose)^complement$.

  === Caso 1 --- $x in.not E$:
  $x in.not E ==> x in E^complement ==> x in overline(E^complement)$.

  === Caso 2 --- $x in E$:
  Como $x$ no es un punto interior de $E$, sabemos que $B(x; r) subset.eq.not
  E "  " forall r gt 0$. Esto implica que $B(x; r) sect E^complement eq.not
  nothing "  " forall r gt 0$. Pero $x in.not E^complement$, así que lo podemos
  quitar de la bola sin quitar la intersección: $B(x; r) without {x} sect
  E^complement eq.not nothing "  " forall r gt 0$. Por lo tanto, $x in
  (E^complement)' ==> x in overline(E^complement)$.

  *MEP*

  ===

  _(e) Determine si $E^compose eq (overline(E))^compose$. Pruebe ó provea un
  contraejemplo._
  == Prueba:

  *MEP*

  ===

  _(f) Determine si $overline(E) eq overline(E^compose)$. Pruebe ó provea un
  contraejemplo._
  == Prueba:

  *MEP*

  ===

  _(g) Si $E subset.eq RR^n$ es convexo, demuestre que $E^compose$ y $overline(
  E)$ son convexos._
  == Prueba:

  *MEP*

  ===

  _(h) Pruebe que $E'$ es cerrado._
  == Prueba:

  *MEP*

  ===

  _(i) Demuestre que $overline(E)' eq E'$._
  == Prueba:

  *MEP*

  ===

  _(j) Determine si $(E')' eq E'$. Pruebe ó provea un contraejemplo._
  == Prueba:

  *MEP*
]

// problema 5
#prob[
  _(4 puntos) -- Demuestre que el intervalo $(0, 1)$ no es compacto de forma
  directa, esto es, encuentre una cubierta abierta de $(0, 1)$ que no posee una
  subcubierta finita._
  == Prueba:
  Considere la familia $A_n := (1 / n, 1 - 1 / n), n in NN without {1}$. Note
  que $A_i$ es abierto $forall i in NN without {1}$.

  Tome $x in (0, 1)$ y note que $0 lt x lt 1$. Entonces $exists k in NN without
  {1}$ tal que $0 lt 1 / k lt x lt 1 - 1 / k lt 1$, por lo tanto, $x in A_k ==>
  x in union.big_(n eq 2)^infinity A_n$. Entonces: $ (0, 1) subset.eq
  union.big_(n eq 2)^infinity A_n ==> union.big_(n eq 2)^infinity
  "es una cubierta abierta para" (0, 1). $

  Sea ${A_1, A_2, ..., A_k}$ una subcolección finita arbitraria de
  $F := union.big_(n eq 2)^infinity A_n$. Ahora escoja \ $1 / m_0 eq min { 1 / m
  | (1 / m, 1 - 1 / m) in F }$, y note que $0 lt 1 / m_0$. Entonces, $exists
  alpha in (0, 1)$ tal que $0 lt alpha lt 1 / m_0$. Entonces $alpha in.not F$.

  $therefore (0, 1) subset.eq.not F ==> (0, 1)$ no es compacto.

  *MEP*
]

// problema 6
#prob[
  _(5 puntos) -- Sean $K_1, K_2, ..., K_n$ subconjuntos compactos del espacio
  métrico $(X, d)$. Pruebe que: $ K := union.big_(j eq 1)^n K_j $ es compacto._
  == Prueba:
  Sea $U$ una cubierta abierta para $K$. Entonces $U$ cubre a $union.big_(j=1)^n
  K_j$, lo que implica que $U$ cubre a $K_i " " forall i in {1, 2, ..., n}$.
  Pero, como $K_i$ es compacto $forall i in {1, 2, ..., n}$, existen
  subcubiertas abiertas finitas $F_i subset.eq U$ tal que $F_i$ cubre a $K_i " "
  forall i in {1, 2, ..., n}$. Ahora considere: $ F := union.big_(j eq 1)^n
  F_j $ Note que, por construcción, $F$ es una cubierta abierta finita que cubre
  a $K$. Además, $F_i subset.eq U$ \ $forall i in {1, 2, ..., n}$, lo que
  implica que $F subset.eq U$. Como $U$ era arbitrario, siempre podemos
  construir una subcubierta abierta finita de $U$ que cubre a $K$.

  $therefore K$ es compacto.

  *MEP*
]

// problema 7
#prob[
  _(4 puntos) -- Dado que $a, b in RR without QQ$ con $a lt b$, definamos el
  conjunto: $S := { x in QQ | a lt x lt b}$. Demuestre que $S subset.eq QQ$ es
  cerrado y acotado (en $QQ$), pero no compacto (en $QQ$)._
  == Prueba:
  Por contradicción, suponga que $S' subset.eq.not S$, entonces $S' eq.not
  nothing ==> exists x in S' without S$. Sin pérdida de generalidad, suponga que
  $x gt.eq b$. Note que $x in QQ$ y $b in.not QQ$ $==> x eq.not b ==> x gt b$.
  Pero $x in S' ==> U_(r)(x) without {x} sect S eq.not nothing " " forall r in
  (0, infinity)$. Ahora, tome $rho eq (x - b) / 2 in (0, infinity)$ y construya
  $U_(rho)(x)$. Note que: $ y in U_(rho)(x) ==> y gt x - rho eq x - abs(x - b) /
  2 eq (2 x - x + b) / 2 eq (x + b) / 2 $ Como $x gt b, exists alpha in
  (0, infinity)$ tal que $x eq b + alpha$. Entonces: $ &y gt ((b + alpha) + b) /
  2 eq (2 b + alpha) / 2 eq (2 b) / 2 + alpha / 2 eq b + alpha / 2 gt b \ ==>
  &y in.not S ==> U_(rho)(x) without {x} sect S eq nothing. contradiction $

  $therefore S' subset.eq S ==> S$ cerrado en $QQ$.

  Tome $p, q in QQ$ tal que $p lt a$ y $q gt b$. \ $therefore S$ está acotado
  por $p$ y $q$ en $QQ$.

  Sea $S_n := B((b - a) / 2; (b - a) / n) subset.eq QQ, n in NN without {1, 2}$.
  Tome $x in S$ y note que: $a lt x lt b$ \ $==> exists k in NN without {1, 2}$
  tal que $a lt (b - a) / 2 - (b - a) / k lt x lt (b - a) / 2 + (b - a) / k lt
  b ==> x in S_k ==> x in union.big_(n eq 3)^infinity S_n$ es una cubierta
  abierta para $S$.

  Tome una subcolección finita arbitraria $F := union {A_1, A_2, ..., A_k}
  subset.eq union_(n eq 3)^infinity S_n$. Sea $alpha eq (b - a) / j in F$ tal
  que $abs(alpha - a) eq min {abs(x - a) | x in F}$. Entonces $a lt (b - a) / j
  ==> exists s in S$ tal que $a lt s lt (b - a) / j$. Pero \ $s in.not F$. Por
  lo tanto $S subset.eq.not F$.

  $therefore S$ no es compacto en $QQ$.

  *MEP*
]
