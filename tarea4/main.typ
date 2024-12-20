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
  ($==>$)

  Suponga que $(X, d)$ es conexo. Note que $x in nothing ==> exists r in RR$ tal
  que $B(x; r) in X ==> nothing$ es abierto y $nothing^complement eq X$ es
  cerrado. Tambien $x in nothing ==> U_(r)(x) without {x} sect X eq.not nothing
  ==> nothing$ es cerrado y $nothing^complement eq X$ es abierto. Entonces, solo
  falta probar que estos subconjuntos son los unicos que son abiertos y
  cerrados. Haremos esto por contrareciproco.

  Suponga que $E subset.neq X$ con $E eq.not nothing$ es abierto y cerrado. Es
  claro que $E^complement eq.not nothing$, $E union E^complement eq X$, y \ $E
  sect E^complement eq nothing$. Como $E$ es cerrado, tenemos que $E eq
  overline(E) ==> overline(E) sect E^complement eq nothing$. Similarmente, como
  $E$ es abierto, $E^complement$ es cerrado, lo que implica que $E^complement eq
  overline(E^complement) ==> E sect overline(E^complement) eq nothing$.

  $therefore E$ y $E^complement$ estan separados $==> X$ no es conexo.

  ($<==$)

  Por contrareciproco, suponga que $X$ no es conexo, entonces $exists A, B
  subset.eq X$ con $A, B eq.not nothing$, $A, B eq.not X$, y $A union B eq X$
  tal que $overline(A) sect B eq nothing$ y $A sect overline(B) eq nothing$.
  Note que $A union B eq X$ y $A$ y $B$ son disjuntos, lo que implica que los
  conjuntos son complementos en $X$. Entonces llame $E := A$ y $E^complement :=
  B$.

  Tome $x$ punto limite de $E$ y note que $x in.not E^complement$ ($because x in
  E^complement ==> x in overline(E) sect E^complement contradiction$) $==> x in
  E ==> E$ es cerrado. Similarmente, tome $x$ punto limite de $E^complement$ y
  note que $x in.not E ==> x in E^complement ==> E^complement$ es cerrado $==>
  E$ es abierto.

  $therefore exists E subset.eq X$ con $E eq.not nothing$ y $E eq.not X$ abierto
  y cerrado.

  *MEP*
]

// problema 2
#prob[
  _(4 puntos) -- Si $E subset.eq RR^n$ es convexo, pruebe que $E$ es conexo._

  == Prueba:
  Por contrareciproco, suponga que $E$ no es conexo, entonces $exists A, B
  subset.eq E$ con $A, B eq.not nothing$, $A, B eq.not E$, y $A union B eq E$
  tal que $overline(A) sect B eq nothing$. Fije $a in A subset.eq E$, y $b in B
  subset.eq E$. Ahora, sean: $ &L_A := { lambda in [0, 1] | lambda a +
  (1 - lambda) b in A }, "y" \ &L_B := { lambda in [0, 1] | lambda a +
  (1 - lambda) b in B }. $ Note que ambos $L_A$ y $L_B$ son subconjuntos de
  $RR$, $1 in L_A ==> L_A eq.not nothing$, $0 in L_B ==> L_B eq.not nothing$, y
  ambos $L_A$ y $L_B$ estan claramente acotados por $0$ y $1$. Entonces, por la
  propiedad de la cota superior minima y la propiedad de la cota inferior maxima
  de los numeros reales, tenemos que $exists alpha, beta in RR$ tal que $alpha
  eq sup(L_A)$ y $beta eq inf(L_B)$.

  Es claro que $alpha gt.eq 0$ y $beta lt.eq 1$. Pero ahora note que $alpha lt
  beta$, porque si $alpha gt.eq beta$, entonces $exists lambda$ tal que $lambda
  a + (1 - lambda) b in A sect B$, lo que contradice que E no es conexo.
  Entonces, podemos usar la densidad en los reales para conseguir $lambda in
  [0, 1]$ tal que $alpha lt lambda lt beta$. Pero esto implica que $lambda a +
  (1 - lambda) b in.not A$, por definicion de $alpha$, y $lambda a + (1 -
  lambda) b in.not B$, por definicion de $beta$. Entonces, encontramos un
  $lambda in [0, 1]$ tal que $lambda a + (1 - lambda) b in.not E$.

  $therefore E$ no es convexo.

  *MEP*
]

// problema 3
#prob[
  _(6 puntos) -- Suponga que $0 lt x_1 lt 1$, y defina la sucesion recursiva:
  $x_(n + 1) := 1 - sqrt(1 - x_n)$. Demuestre que ${x_n}$ es decreciente, con
  $liminfty x_n eq 0$. Luego pruebe que $liminfty (x_(n + 1)) / x_n eq 1 / 2$._

  == Prueba:
  Sabemos que $0 lt x_1 lt 1$. Ahora suponga que $0 lt x_k lt 1$, entonces:
  $ &0 lt 1 - x_k lt 1 \ ==> &0 lt sqrt(1 - x_k) lt 1 \ ==> &0 lt 1 - sqrt(1 -
  x_k) lt 1 \ ==> &0 lt x_(k + 1) lt 1 $ Entonces, por induccion, $0 lt x_n lt
  1 space forall n in NN$. Ahora, note que si $0 lt alpha lt 1$, entonces:
  $ &0 lt 1 - alpha lt 1 \ ==> &alpha (1 - alpha) gt 0 \ ==> &alpha - alpha^2 gt
  0 \ ==> &alpha gt alpha^2 \ ==> &sqrt(alpha) gt alpha $

  Usando esto: $ &sqrt(1 - x_n) gt 1 - x_n \ ==> &-sqrt(1 - x_n) lt -1 + x_n \
  ==> &1 - sqrt(1 - x_n) lt x_n \ ==> &x_(n + 1) lt x_n $

  $therefore {x_n}$ es decreciente.

  Como ${x_n}$ es decreciente y acotada inferiormente, sabemos que $exists L
  gt.eq 0$ tal que $liminfty x_n eq L$. Ahora note que: $ &x_(n + 1) eq 1 -
  sqrt(1 - x_n) \ ==> & liminfty x_(n + 1) eq liminfty(1 - sqrt(1 - x_n)) \ ==>
  &L eq 1 - sqrt(1 - L) \ ==> &L - 1 eq -sqrt(1 - L) \ ==> &L^2 - 2 L + 1 eq 1
  - L \ ==> &L^2 - L eq 0 \ ==> &L (L - 1) eq 0 \ ==> &L eq 0 or L eq 1 $

  Pero sabemos que $L eq.not 1$.

  $therefore liminfty x_n eq 0$

  *MEP*
]

// problema 4
#prob[
  _(4 puntos) -- Sean ${x_n}, {y_n}$ sucesiones en un espacio metrico $(X, d)$,
  tales que $x_n -> x$ y $y_n -> y$ en $X$. Demuestre que $liminfty d(x_n, y_n) eq
  d(x, y)$._

  == Prueba:
  Fije $epsilon gt 0$. Entonces $exists N_x, N_y in NN$ tal que $n gt N_x ==>
  d(x_n, x) lt epsilon / 2$ y $n gt N_y ==> d(y_n, y) lt epsilon / 2$. Entonces,
  $forall n gt N := max{N_x, N_y}$, tenemos que: $ d(x_n, y_n) &lt.eq d(x_n, x)
  + d(x, y_n) \ &lt.eq d(x_n, x) + d(x, y) + d(y, y_n) \ &lt epsilon / 2 +
  d(x, y) + epsilon / 2 = d(x, y) + epsilon \ ==> d(x_n, y_n) &- d(x, y) lt
  epsilon \ ==> abs(d(x_n, y_n) &- d(x, y)) lt epsilon $

  $therefore liminfty d(x_n, y_n) eq d(x, y)$

  *MEP*
]

// problema 5
#prob[
  _(5 puntos) -- En $(X, d)$, si $E subset.eq X$ es completo, pruebe que $E$ es
  cerrado._

  == Prueba:
  Por contrareciproco, suponga que $E$ no es cerrado. Entonces $exists x in E'
  without E$. Ademas, E es infinito, porque todo subconjunto finito de un
  espacio metrico es cerrado. Tambien, $E^0 eq.not nothing$, porque si lo fuera,
  $E$ estaria compuesto exclusivamente de puntos aislados, lo que implicaria que
  $E' eq nothing$. Pero entonces $E' eq nothing subset.eq E. contradiction$

  Tome $x_1 in E^0$ y note que $E^0 subset.eq E and x in.not E ==> x_1 eq.not x
  ==> d(x_1, x) gt 0$. Entonces, $exists x_2 in E^0$ tal que $d(x_2, x) eq 1 / 2
  d(x_1, x) gt 0$. Haciendo esto recursivamente, podemos definir $x_n := alpha
  in E^0$ con $d(alpha, x) eq 1 / 2 d(x_(n - 1), x)$. Note que ${x_n} subset.eq
  E^0 subset.eq E$.

  Note que $d(x_1, x) eq d(x_1, x) / 1 eq d(x_1, x) / 2^0 eq d(x_1, x) /
  2^(1 - 1)$ y si $d(x_k, x) eq d(x_1, x) / 2^(k - 1)$, entonces $d(x_(k + 1))
  eq 1 / 2 d(x_k, x) eq 1 / 2 d(x_1, x) / 2^(k - 1) eq d(x_1, x) / 2^((k + 1) -
  1)$. Por lo tanto, por induccion, $d(x_n, x) eq d(x_1, x) / 2^(n - 1)$.

  Fije $epsilon gt 0$. Considere $N := ceil(log_(2)(d(x_1, x) dot epsilon)) + 1
  in NN$. En el caso donde $log_(2)(d(x_1, x) dot epsilon) in NN$, tenemos que:
  $ d(x_N, x) eq d(x_1, x) / 2^(N - 1) eq d(x_1, x) / 2^(log_(2)(d(x_1, x)dot
  epsilon) + 1 - 1) eq d(x_1, x) / (d(x_1, x) dot epsilon) eq 1 / epsilon lt
  epsilon $ Y como $n gt N ==> d(x_1, x) / 2^(n - 1) lt d(x_1, x) / 2^(N - 1)$,
  la desigualdad (3) se mantiene para $n gt N$. Por lo tanto, $liminfty x_n eq x
  in.not E$.

  Fije $epsilon gt 0$. Como $liminfty x_n eq x, exists N', N'' in NN$ tal que
  $ n gt N' space and space m gt N'' ==> d(x_n, x) lt epsilon / 2 space and
  space d(x_m, x) lt epsilon / 2 $

  Entonces: $ m, n gt N := max{N', N''} ==> d(x_n, x_m) lt.eq d(x_n, x) +
  d(x, x_m) lt epsilon / 2 + epsilon / 2 eq epsilon $ Por lo tanto, ${x_n}
  subset.eq E$ es de Cauchy.

  Entonces construimos una sucesion de Cauchy ${x_n}$ en $E$ que no converge en
  $E$.

  $therefore E$ no es completo.

  *MEP*
]

// problema 6
#prob[
  _(4 puntos) -- Demuestre que $overline(QQ) eq RR$ de la siguiente forma: dado
  $x in RR$, demuestre que existe una sucesion ${x_n} subset.eq QQ$ tal que
  $x_n -> x$._

  == Prueba:
  Para cada $n in NN$, considere el intervalo $((n x - 1) / n, (n x + 1) / n)$.
  Como el intervalo $(n x - 1, n x + 1)$ contiene al menos un entero, podemos
  escoger $m_n in ZZ$ tal que $(n x - 1) / n lt m_n / n lt (n x + 1) / n$.
  Entonces definamos \ $x_n := m_n / n in QQ$.

  Ahora, fije $epsilon gt 0$. Entonces, por la propiedad arquimideana, podemos
  encontrar $N in NN$ tal que $1 / N lt epsilon$, y entonces es claro que $n gt
  N ==> 1 / n lt epsilon$. Pero sabemos que: $ &(n x - 1) / n lt x_n lt (n x +
  1) / n \ ==> &x - 1 / n lt x_n lt x + 1 / n \ ==> &x - epsilon lt x_n lt x +
  epsilon \ ==> &abs(x_n - x) lt epsilon $

  $therefore liminfty x_n eq x ==> overline(QQ) eq RR$

  *MEP*
]

// problema 7
#prob[
  _(4 puntos) -- Sea ${x_n}$ sucesion en $(X, d)$, y sea $E_n := {x_n,
  x_(n + 1), x_(n + 2), ...}$. Demuestre que ${x_n}$ es sucesion de Cauchy si y
  solamente si $liminfty diam(E_n) eq 0$._

  == Prueba:
  ($==>$)

  Fije $epsilon gt 0$. Como ${x_n}$ es de Cauchy, $exists N in NN$ tal que $m, n
  gt N ==> d(x_m, x_n) lt epsilon / 2$. Esto implica que $epsilon / 2$ es una
  cota superior para $D_n := { d(x, y) | x, y in E_n } subset.eq RR$.
  Claramente, $D_n eq.not nothing$, entonces $exists sup(D_n) in RR$. Note que,
  por definicion, $sup(D_n) lt.eq epsilon / 2 ==> sup(D_n) lt epsilon$. Pero:
  $ &sup(D_n) eq diam(E_n) \ ==> &diam(E_n) lt epsilon \ ==> &abs(diam(E_n) - 0)
  lt epsilon $

  $therefore liminfty diam(E_n) eq 0$.

  ($<==$)

  Fije $epsilon gt 0$. Como $liminfty diam(E_n) eq 0$, tenemos que $exists N' in
  NN$ tal que: $ N gt N' &==> abs(diam(E_N) - 0) lt epsilon \ &==> diam(E_N) lt
  epsilon $ Pero $diam(E_N) eq sup{ d(x, y) | x, y in E_N } ==> d(x_m, x_n) lt
  epsilon space forall m, n gt N$.

  $therefore {x_n}$ es de Cauchy.

  *MEP*
]

// problema 8
#prob[
  _(8 puntos) -- Sea ${x_n}$ una sucesion de numeros reales, y definamos:
  $ y_n := 1 / n sum_(j eq 1)^n x_j, tab z_n := x_n / n. $_

  _(a) - (4 puntos) -- Si $x_n -> x$ en $RR$, demuestre que $y_n -> x$._
  == Prueba:
  Note que: $ y_n eq 1 / n sum_(j eq 1)^n x_j &eq 1 / n sum_(j eq 1)^n x + 1 / n
  sum_(j eq 1)^n (x_j - x) $ Ahora sean $A_n := 1 / n sum_(j eq 1)^n x$ y $B_n
  := 1 / n sum_(j eq 1)^n (x_j - x)$, y note que $liminfty y_n eq liminfty A_n +
  liminfty B_n$.

  Es claro que $liminfty A_n eq x$. Ahora trabajaremos con $B_n$. Fije $epsilon
  gt 0$, entonces $exists N in NN$ tal que \ $abs(x_n - x) lt epsilon$.
  Entonces: $ B_n eq 1 / n sum_(j eq 1)^N (x_j - x) + 1 / n sum_(j eq N + 1)^n
  (x_j - x) $ Sean $C_n := 1 / n sum_(j eq 1)^N (x_j - x)$ y $D_n := 1 / n
  sum_(j eq N + 1)^n (x_j - x)$, y note que $liminfty B_n eq liminfty C_n +
  liminfty D_n$.

  Note que, usando la propiedad arquimideana, $exists M in NN$
  tal que $C_n lt (N dot M) / n -> 0$. Por lo tanto, $liminfty C_n eq 0$. Para
  $D_n$, tenemos que: $ D_n lt 1 / n sum_(j eq N + 1)^(n) epsilon eq (n - N) / n
  dot epsilon lt epsilon $ Entonces $liminfty D_n eq 0 ==> liminfty B_n eq 0 + 0
  eq 0 ==> liminfty y_n eq x + 0$.

  $therefore liminfty y_n eq x$

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
  Fije $epsilon gt 0$. Entonces $exists N_x, N_y in NN$ tales que $m, n gt
  N_x ==> d(x_m, x_n) lt epsilon / 2$ y \ $m, n gt N_y ==> d(y_m, y_n) lt
  epsilon / 2$. Ahora, note que $forall m, n gt N := max{N_x, N_y}$, tenemos
  que: $ d(x_m, y_m) &lt.eq d(x_m, x_n) + d(x_n, y_m) \ &lt.eq d(x_m, x_n) +
  d(x_n, y_n) + d(y_n, y_m) \ &lt epsilon / 2 + d(x_n, y_n) + epsilon / 2 eq
  epsilon + d(x_n, y_n) \ ==> d(x_m, y_m) &- d(x_n, y_n) lt epsilon ==>
  abs(beta_m - beta_n) lt epsilon $ Entonces ${beta_n}$ es de Cauchy, pero
  ${beta_n} subset.eq RR$ y $RR$ es completo.

  $therefore {beta_n}$ converge.

  *MEP*
]

// problema 10
#prob[
  _(4 puntos) -- Considere la sucesion ${a_n}$ definida como sigue:
  $ a_1 eq 0; tab a_(2 n) eq a_(2 n - 1) / 2; tab a_(2 n + 1) eq 1 / 2 +
  a_(2 n); tab (n in NN). $ Calcule $limsupinfty a_n$ y $liminfinfty a_n$._

  == Prueba:
  Note que $a_(2 n + 1) gt a_(2 n) space forall n in NN$. Entonces, para
  calcular $limsupinfty a_n$, solo hace falta considerar ${a_(2 n + 1)}$. Note
  que: $ a_(2 (1) + 1) eq 1 / 2 + a_2 eq 1 / 2 + 0 eq (2^(1 - 1) - 1) /
  2^(1 - 1) ", y" \ a_(2 k + 1) eq (2^(k - 1) - 1) / 2^(k - 1) ==> a_(2 (k + 1)
  + 1) eq 1 / 2 + a_(2 (k + 1)) eq 1 / 2 + a_(2 k + 1) / 2 \ eq 1 / 2 + 1 / 2 (
  (2^(k - 1) - 1) / 2^(k - 1)) eq 1 / 2 + (2^(k - 1) - 1) / 2^k $


  *MEP*
]

// problema 11
#prob[
  _(4 puntos) -- Si ${x_n}$ es una sucesion acotada en $RR$, demuestre que:
  $ limsupinfty(-x_n) eq -liminfinfty(x_n) tab "y" tab liminfinfty(-x_n) eq
  -limsupinfty(x_n) $_

  == Prueba:
  Primero probaremos un resultado auxiliar. Suponga que $E subset.eq RR$ es
  acotado y no-vacio, y \ $-E := { -x | x in E }$. Entonces sabemos que $-E$
  tambien es acotado y no-vacio. Entonces $sup(-E) in RR$. Ahora, note que:
  $ alpha := sup(-E) &==> alpha gt.eq -x tab forall x in E \ &==> -alpha lt.eq
  x tab forall x in E \ &==> -alpha "es una cota inferior para" E. $ Ademas,
  como $alpha := sup(-E)$, sabemos que $x in RR "con" x lt.eq alpha ==> exists y
  in -E$ tal que $x lt.eq y lt.eq alpha$. Entonces, sea $lambda in RR$ con
  $lambda gt.eq -alpha$, entonces: $ -lambda lt.eq alpha &==> exists x in E
  "tal que" -lambda lt.eq -x lt.eq alpha \ &==> lambda gt.eq x gt.eq -alpha \
  &==> -alpha eq inf(E) \ &==> -sup(-E) eq inf(E) $

  $therefore sup(-E) eq -inf(E)$

  Similarmente, si $alpha := inf(-E)$, entonces: $ alpha lt.eq -x space forall x
  in E &==> -alpha gt.eq x space forall x in E \ &==> -alpha
  "es una cota superior para" E. $ Y si $lambda in RR$ tiene $lambda lt.eq
  -alpha$, entonces: $ -lambda gt.eq alpha &==> exists x in E "tal que" -lambda
  gt.eq -x gt.eq alpha \ &==> lambda lt.eq x lt.eq -alpha \ &==> -alpha eq
  sup(E) \ &==> -inf(-E) eq sup(E) $

  $therefore inf(-E) eq -sup(E)$

  Ahora, como tenemos que ${x_n} subset.eq RR$ es acotada y no-vacia, usando
  estos resultados, tenemos que: $ limsupinfty(-x_n) &eq inf_(n in NN)
  { sup{ -x_k | k gt.eq n }_n } \ &eq inf_(n in NN){ -inf{ x_k | k gt.eq n }_n }
  \ &eq -sup_(n in NN){ inf{x_k | k gt.eq n}_n } \ &eq -liminfinfty(x_n) $ Y,
  similarmente: $ liminfinfty(-x_n) &eq sup_(n in NN){ inf{-x_k | k gt n}_n } \
  &eq sup_(n in NN){ -sup{ x_k | k gt.eq n }_n } \ &eq -inf_(n in NN){ sup{ x_k
  | k gt.eq n }_n } \ &eq -limsupinfty(x_n) $

  *MEP*
]
