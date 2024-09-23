#import "template.typ": *
#let title = "Tarea 2"
#let author = "Sergio Rodríguez"
#let course_id = "MATE 5201"
#let instructor = "Alejandro Vélez"
#let semester = "C41"
#let due_time = "20 de septiembre"
#set enum(numbering: "a)")
#set math.equation(numbering: "(1)", supplement: "la ecuación")
#show: assignment_class.with(title, author, course_id, instructor, semester, 
  due_time)

#let contradiction = text($refmark$, size: 1.75em)

Resultado auxiliar:

Note que si $A, B$ son conjuntos, y $f: A -> B$ es inyectiva, entonces
podemos hacer a $f$ biyectiva restringiendo su codominio: $f: A -> R_f$.
Entonces: $mu(A) = mu(R_f)$. Entonces $ &R_f subset.eq B \ ==> &mu(R_f) lt.eq
mu(B) \ ==> &mu(A) lt.eq mu(B) $

Similarmente, si $A, B$ son conjuntos, y $f: A -> B$ es sobreyectiva, entonces
existe una función \ $g: B -> A$ inyectiva, pues usando el axioma de la
elección puedes asignar a cada $b in B$ un elemento de $f^(-1)(b)$. Ahora:
$ mu(B) lt.eq mu(A) ==> mu(A) gt.eq mu(B) $

#prob[
  _(5 puntos) -- Demuestre que $ZZ times ZZ$ es contable, de forma explícita;
  esto es, construya una función biyectiva entre $ZZ times ZZ$ y $NN$._

  == Prueba:
  Sabemos que la función $f: NN -> ZZ$ dada por $ f(n) = cases(
    n / 2 &" si" 2 divides n \
    (1 - n) / 2 &" si" 2 divides.not n
  ) $ es una biyección por la demostración hecha en clase.

  Note que la inversa $f^(-1): ZZ -> NN$ dada por $ f^(-1)(n) = cases(
    2 n &" si" n gt 0 \
    1 - 2 n &" si" n lt.eq 0
  ) $ también es una biyección.

  Ahora considere $g: ZZ times ZZ -> NN times NN$ dada por $g(m, n) =
  (f^(-1)(m), f^(-1)(n))$ y suponga, por contradicción, que $g$ no es inyectiva,
  esto es: $exists m, n, k, j in ZZ$ tal que $g(m, n) = g(k, j)$ y \
  $(m, n) eq.not (k, j)$. Ahora:

  $ &g(m, n) = g(k, j) \
  ==> &(f^(-1)(m), f^(-1)(n)) = (f^(-1)(k), f^(-1)(j)) \
  ==> &f^(-1)(m) = f^(-1)(k) " y " f^(-1)(n) = f^(-1)(j) \
  ==> &m = k " y " n = j \
  ==> &(m, n) = (k, j). contradiction $

  Por lo tanto, $g$ es inyectiva. Por otro lado: $m, n in NN ==> f^(-1)(m),
  f^(-1)(n) in ZZ$ existen (por sobreyectividad de $f^(-1)$). Note que
  $(f^(-1)(m), f^(-1)(n)) = g(m, n)$. Por lo tanto, $g$ es sobreyectiva y una
  biyección.

  Sabemos que la función $h: NN times NN -> NN$ dada por $h(m, n) = 2^(m - 1)
  (2 n - 1)$ es una biyección por la demostración hecha en clase. Entonces,
  sabemos que $h compose g: ZZ times ZZ -> NN$ es una biyección, porque la
  composición de biyecciones es una biyección.

  $therefore ZZ times ZZ$ es contable.

  *MEP*
]

#prob[
  _(5 puntos) -- Pruebe que el conjunto $QQ$ de números racionales es
  contable._

  == Prueba:
  Sea $F: ZZ times ZZ -> NN$ la biyección construida en el ejercicio anterior.
  Entonces:

  $ &F(m, n) = h(g(m, n)) = h((f^(-1)(m), f^(-1)(n)))
  = 2^(f^(-1)(m) - 1) (2 f^(-1)(n) - 1) \
  ==> &F(m, n) = cases(
    2^(2 m - 1) (4 n - 1) &" si " m", " n gt 0,
    2^(2 m - 1) (1 - 4 n) &" si " m gt 0", " n lt.eq 0,
    2^(-2 m) (4 n - 1) &" si " m lt.eq 0", " n gt 0,
    2^(-2 m) (1 - 4 n) &" si " m", " n lt.eq 0
  ) $

  Note que, dados $m, n in ZZ$, siempre podemos encontrar biyecciones
  $phi: ZZ -> NN, psi: ZZ -> ZZ$ con \ $2 divides.not psi(n)$ tal que $g(m, n)
  = 2^(phi(m)) psi(n)$.

  Considere la función $f: QQ -> NN$ dada por $f(a / b) = F(a / gcd(a, b),
  b / gcd(a, b))$. Note que:
  $ &f(a / b) = f(c / d) \
  ==> &F(a / gcd(a, b), b / gcd(a, b)) = F(c / gcd(c, d), d / gcd(c, d)) \
  ==> &2^(phi(a / gcd(a, b))) psi(b / gcd(a, b)) = 2^(phi(c / gcd(c, d)))
  psi(d / gcd(c, d)) $

  Sin pérdida de generalidad, suponga que $phi(a / gcd(a, b)) gt.eq
  phi(c / gcd(c, d))$, entonces:

  $ &2^(phi(a / gcd(a, b)) - phi(c / gcd(c, d))) psi(b / gcd(a, b)) =
  psi(d / gcd(c, d)) $

  Pero como $2 divides.not psi(d / gcd(c, d))$, tenemos que:

  $ &phi(a / gcd(a, b)) - phi(c / gcd(c, d)) = 0 \
  ==> &phi(a / gcd(a, b)) = phi(c / gcd(c, d)) ==> a / gcd(a, b) = c /
  gcd(c, d) "(1 a 1)" $

  Sustituyendo en (6), tenemos:

  $ psi(b / gcd(a, b)) = psi(d / gcd(c, d)) ==> b / gcd(a, b) = d / gcd(c, d)
  "(1 a 1)" $

  Multiplicando las ecuaciones (7) y (8), tenemos:

  $ &(a d) / (gcd(a, b) gcd(c, d)) = (b c) / (gcd(a, b) gcd(c, d)) \
  ==> &a d = b c \ ==> &a / b = c / d $

  Por lo tanto, $f$ es inyectiva. Entonces, por el teorema de equivalencia
  demostrado en clase, $QQ$ es contable.

  *MEP*
]

#prob[
  _(5 puntos) -- Sea $A$ un conjunto incontable, y sea $B subset.eq A$ contable.
  Pruebe que $A tilde A without B$._

  == Prueba:
  Sea $C subset.eq A without B$ contable. Como ambos $B$ y $C$ son contables,
  podemos hablar sobre una biyección $f: B -> C$.

  Ahora, considere el mapa $phi: A -> A without B$ dado por $phi(a) = cases(
    f(a) &" si" x in B,
    a &" si" x in.not B
  )$

  Note que:

  $ phi(a_1) = phi(a_2) $

  Caso $phi(a_1), &phi(a_2) in C$:
  $
  ==> &f(a_1) = f(a_2) \
  ==> &a_1 = a_2
  $

  Caso $phi(a_1), &phi(a_2) in.not C$:
  $
  ==> &a_1 = a_2
  $

  Por lo tanto, $phi$ es inyectiva.

  Pero $A without B subset.eq A ==> mu(A without B) lt.eq mu(A)$ y $phi: A ->
  A without B "inyectiva" ==> mu(A) lt.eq mu(A without B)$. Por lo tanto,
  $mu(A) = mu(A without B) ==> A tilde A without B$.

  *MEP*
]

#prob[
  _(5 puntos) -- Un número $z in CC$ es algebraico, si existen número
  $a_1, a_2, ... , a_n$ tales que_

  $ sum_(k = 0)^n a_k z^(n - k) = 0. $

  _Si $S := { z in CC | z "número algebraico" }$, demuestre que $S$ es
  contable._

  == Prueba:
  Sea ${ p_n }$ la secuencia de los números primos con $p_1 = 2, p_2 = 3, p_3 =
  5, ...$

  Ahora considere el mapa $f: ZZ [x] -> NN$ dado por
  $ f(q) = product_(k = 0)^(deg(q)) p_(k + 1)^(g(a_k)) $
  donde $g: ZZ -> NN$ es una biyección (sabemos que existe) y $a_k$ es el
  coeficiente de $x^k$ en $q$. Note que:
  $ f(q_1) = f(q_2) ==> product_(k = 0)^(deg(q_1)) p_(k + 1)^(g(a_k^((1)))) =
  product_(k = 0)^(deg(q_2)) p_(k + 1)^(g(a_k^((2)))) $
  Por el teorema fundamental de la aritmética, esto implica que $deg(q_1) =
  deg(q_2)$ y \ $g(a_k^((1))) = g(a_k^((2))) " " forall k in
  { 1, 2, ..., deg(q_1) }$. Pero como sabemos que $g$ es biyectiva, entonces
  $a_k^((1)) = a_k^((2)) " " forall k in { 1, 2, ..., deg(q_2) }$, pero esto
  quiere decir que $q_1 = q_2$. Por lo tanto $f$ es inyectiva. Por el teorema
  de equivalencia demostrado en clase, $ZZ [x]$ es contable.

  Considere $B_(p(x)) := { z in CC | p(z) = 0 }, " " p(x) in ZZ [x] without
  { 0 }$. Note que, por el teorema fundamental del álgebra, $B_(p(x))$ es
  finito $forall p(x) in ZZ [x] without { 0 }$. Por lo tanto, $ U :=
  union.big_(p(x) in ZZ [x] without { 0 }) B_(p(x)) $ es contable, pues es la
  unión contable de conjuntos finitos. Pero:
  $ &z in U ==> exists p(x) in ZZ [x] without { 0 } "tal que" p(z) = 0 \
  ==> &z "es algebraico" ==> z in S ==> U subset.eq S $ y
  $ &z in S ==> z "es algebraico" ==> exists p(x) in ZZ [x] without { 0 }
  "tal que" p(z) = 0 \ ==> &z in B_(p(x)) ==> z in U ==> S subset.eq U $

  $therefore U = S$

  $therefore S$ es contable.

  *MEP*
]

#prob[
  _(5 puntos) -- Sea $f: RR -> RR$ una función, y definamos:_

  $ A := { a in RR | lim_(x -> a) f(x) "existe, y "
  lim_(x -> a) f(x) eq.not f(a) }. $

  _Pruebe que $A$ es a lo más contable._

  == Prueba:
  Si $A = nothing$, $A$ es finito y terminamos.

  Ahora, para cada $a in A$, sabemos que $lim_(x -> a) f(x)$ existe. Por lo
  tanto, existe un intervalo $(alpha, beta)_a$ tal que $(alpha, beta)_a sect A
  = {a}$. Ahora escoja estos $alpha, beta$ tal que cada intervalo sea disjunto.
  Ahora escoja un $q_a in (alpha, beta)_a sect QQ " " forall a in A$. Entonces
  $B := { q_i } subset.eq QQ$ es a lo más contable.

  Note que $f: A -> B$ dado por $f(a) = q_a$ es biyectiva por construcción.
  
  $therefore A$ es a lo más contable.

  *MEP*
]

#prob[
  _(10 puntos) -- Demuestre que el conjunto $RR$ de números reales es
  incontable, de la siguiente forma:_

  + _(5 puntos) -- Desmuestre que $RR tilde (0, 1)$._

  == Prueba:
  Considere el mapa $f: RR -> (0, 1)$ dado por $f(x) = 2^(-2^x)$. Note que:
  $ f(x) = f(y) ==> 2^(-2^x) = 2^(-2^y) ==> -2^x = -2^y ==> 2^x = 2^y ==>
  x = y $ por la unicidad de exponentes reales. Entonces $f$ es inyectiva.
  Además: $ x in (0, 1) ==> exists 2^x in RR ==> exists -2^x in RR ==> exists
  2^(-2^x) in RR ==> exists f(x) in RR $ por la existencia de exponentes reales.

  *MEP*

  + _(5 puntos) -- Pruebe que $(0, 1)$ es incontable. Concluya entonces que
  $RR$ es incontable._

  == Prueba:
  Suponga, por contradicción, que $(0, 1)$ es contable, entonces sea ${x_n} =
  (0, 1)$. Note que cada $x_i$ tiene una expansión decimal, entonces tenemos:
  $
  &x_1 = 0.a_1^1 a_2^1 ... a_j^1 ... \
  &x_2 = 0.a_1^2 a_2^2 ... a_j^2 ... \
  &... \
  &x_i = 0.a_1^i a_2^i ... a_j^i ... \
  &... \
  $
  donde $x_i eq.not 0.9999... and x_i eq.not 0.0000... forall i in NN$.
  Ahora construya $y in (0, 1)$ como $y = 0.b_1 b_2 ... b_i ...$ donde $b_i
  eq.not a_i^i " " forall i in NN$. Note que $y in.not {x_n} = (0, 1).
  contradiction$

  *MEP*
]

#prob[
  _(5 puntos) -- Sea $S := { f:RR -> RR "función" | D_f = RR }$. Demuestre
  que $S tilde.not RR$; esto es, demuestre que no existe biyección de
  $S$ a $RR$._

  == Prueba:
  Usando esto, considere el mapa $phi: S -> P(RR) without nothing$ dado por
  $phi(f) = R_f$. Ahora, dado $A in P(RR) without nothing, a in A$, podemos
  construir una función $f: RR -> A$ de la siguiente manera:
  $ f(x) = cases(x &" si" x in A, a &" si" x in.not A) $
  Note que $D_f = RR$ y $A subset.eq RR$, por lo tanto $f in S$, entonces se
  cumple que $A = phi(f)$. Entonces $phi$ es sobreyectiva. Entonces,
  $mu(S) gt.eq mu(P(RR)) gt mu(RR) ==> mu(S) gt mu(RR) ==> S tilde.not RR$.

  *MEP*
]
