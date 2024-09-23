#import "template.typ": *
#let title = "Tarea 1"
#let author = "Sergio Rodríguez"
#let course_id = "MATE 5201"
#let instructor = "Alejandro Vélez"
#let semester = "C41"
#let due_time = "6 de septiembre"
#set enum(numbering: "a)")
#set math.equation(numbering: "(1)", supplement: "la ecuación")
#show: assignment_class.with(title, author, course_id, instructor, semester, 
  due_time)


#prob[
  _(5 puntos) -- Demuestre que $sqrt(n + 1) + sqrt(n - 1)$ es un número
  irracional, para todo $n in NN$._

  == Prueba:
  Por contradicción, suponga que $sqrt(n + 1) + sqrt(n - 1) in QQ$. Entonces,
  $exists a in ZZ$ y $b in NN$ tal que:
  $ a / b = sqrt(n + 1) + sqrt(n - 1) $
  Sin perder la generalidad, suponga que $a / b$ está en su forma más simple.
  Ahora:
  $ &a / b = sqrt(n + 1) + sqrt(n - 1) \
  ==> &a^2 / b^2 = 2 n + 2 sqrt(n + 1) sqrt(n - 1) \
  ==> &a^2 = 2 n dot b^2 + 2 sqrt(n + 1) sqrt(n - 1) dot b^2 \
  ==> &a^2 - 2 n b^2 = 2 sqrt(n + 1) sqrt(n - 1) dot b^2 \
  ==> &a^4 - 4 n a^2 b^2 + 4 n^2 b^4 = 4 (n^2 - 1) b^4 = 4 n^2 b^4 - 4 b^4 \
  ==> &a^4 - 4 n a^2 b^2 = - 4 b^4 \
  ==> &a^4 = 4 n a^2 b^2 - 4 b^4 = 2 (2 n a^2 b^2 - 2 b^4) $ <enteros>
  Como $(2 n a^2 b^2 - 2 b^4) in ZZ$, entonces $2 divides a^4$, lo cual implica
  que $2 divides a$ (porque 2 es primo). Además:
  $2 divides a ==> 4 divides a^4$.

  Por otro lado, usando @enteros:
  $ a^4 = 4 n a^2 b^2 - 4 b^4
  ==> a^4 +4 b^4 = 4 n a^2 b^2
  ==> 4 b^4 = 4 n a^2 b^2 - a^4 $

  Como $4 divides a^2$, entonces $exists c in ZZ$ tal que $a^2 = 4 c$.
  Sustituyendo:
  $ 4 b^4 = 16 n b^2 c - 16 c^2
  ==> b^4 = 4 n b^2 c - 4 c^2 = 2 (2 n b^2 c - 2 c^2) $
  Como $(2 n b^2 c - 2 c^2) in ZZ$, entonces $2 divides b^4$, lo cual implica
  que $2 divides b$ (porque 2 es primo).
  Entonces $2 divides a$ y $2 divides b$, por lo tanto, $a / b$ no está en su
  forma más simple. $bot$

  $therefore sqrt(n + 1) + sqrt(n - 1) in.not QQ$

  *MEP*
]

#prob[
  _(5 puntos) -- Sean $A, B subset RR_+ := { x in RR | x gt.eq 0 }$ dos
  conjuntos acotados superiormente, y sean \ $alpha := sup(A)$,
  $beta := sup(B)$. Sea $C := { x y | x in A, y in B }$. Pruebe que C está
  acotado superiormente, y que $sup(C) = alpha beta$._

  == Prueba:
  Tome $c in C$. Entonces $exists a in A$ y $b in B$ tal que $c = a b$. Como
  $alpha = sup(A)$ y $beta = sup(B)$, entonces $alpha gt.eq a$ y $beta gt.eq b$.
  Como $a, b, alpha, beta gt.eq 0$, entonces $alpha beta gt.eq a b = c$. Por
  lo tanto, $alpha beta$ es una cota superior de $C$, y $C$ está acotado
  superiormente. Ahora, por contradicción, suponga que $alpha beta eq.not
  sup(C)$. Entonces $exists s in RR$ tal que $c lt.eq s lt alpha beta$
  $forall c in C$. Note que: $ s gt.eq c forall c in C ==> a b forall a in
  A, forall b in B $
  Esto implica que 
]

#prob[
  _(5 puntos) -- Sea $P := { p "primo" }$. Demuestre que $P$ no está acotado
  superiormente._

  == Prueba:
  Por contradicción, suponga que $P$ está acotado superiormente, entonces,
  como $P eq.not nothing in RR$, por lo tanto, $exists s in RR$ tal que
  $s = sup(P)$. Ahora tome $ p' = (product_(p in P)) + 1 $ y note que $p'$
  no es divisible por algún $p in P$. Esto quiere decir que $p'$ es primo y
  por lo tanto, \ $p' in P$. Pero $p' gt s$ (pues $p gt 1$ $forall p in P$),
  entonces $s eq.not sup(P)$. $bot$

  $therefore$ $P$ no está acotado superiormente.

  *MEP*
]

#prob[
  _(4 puntos) -- Sea $S subset RR$ un conjunto acotado superiormente, y sea
  $k$ una cota superior para $S$. Si $k in S$, pruebe que $k = sup(S)$._

  == Prueba:
  Por contradicción, suponga que $k eq.not sup(S)$. Entonces $exists x in RR$
  tal que $s lt.eq x lt k$ $forall s in S$. Pero \ $k in S$, por lo tanto,
  $k lt.eq x lt k$. $bot$

  $therefore k = sup(S)$.

  *MEP*
]

#prob[
  _(3 puntos c.u.) -- Sea $b gt 1$ un número real fijo._

  1. _Sean $m, p in ZZ, n, q in NN$. Si $r = m / n = p / q$, pruebe que
  $(b^m)^(1 / n) = (b^p)^(1 / q)$. \
  Entonces definimos $b^r = (b^m)^(1 / n)$._

  == Prueba:
  Por contradicción, suponga que $(b^m)^(1 / n) eq.not (b^p)^(1 / 1)$. Sin
  pérdida de generalidad, suponga que \ $(b^m)^(1 / n) gt (b^p)^(1 / q)$.
  Entonces:
  $ &(b^m)^(1 / n) gt (b^p)^(1 / q) \
  ==> &b^m gt ((b^p)^(1 / q))^n \
  ==> &b^(m q) gt (((b^p)^(1 / q))^n)^q \
  ==> &b^(m q) gt (((b^p)^(1 / q))^q)^n \
  ==> &b^(m q) gt (b^p)^n \
  ==> &b^(m q) gt b^(p n) \
  ==> &m q gt p n \
  ==> &m / n gt p / q $ $bot$

  $therefore b^r$ está bien definido.

  *MEP*

  2. _Demuestre que $b^(r+s) = b^r b^s$ $forall r, s in QQ$._

  == Prueba:
  Si $r = m / n$ y $s = p / q$ para $m, p in ZZ$ y $n, q in NN$, entonces:
  $ b^(r + s) &= b^(m / n + p / q) \
  &= b^(m / n) b^(p / q) \
  &= b^((m q + n p) / (n q)) \
  &= (b^(1 / (n q)))^(m q + n p) \
  &= (b^(1 / (n q)))^(m q) (b^(1 / (n q)))^(n p) \
  &= b^(m / n) b^(p / q) \
  &= b^r b^s $

  *MEP*

  3. _Dado $x in RR$, definimos $K_x := { b^t | t in QQ, t lt x }$. Demuestre
  que si $r in QQ$, entonces \ $b^r = sup(K_r)$. Luego, definimos
  $b^x = sup(K_x)$._

  == Prueba:



  4. _Pruebe que $b^(x + y) = b^x b^y$ $forall x, y in RR$._

  == Prueba:
  Considere el conjunto $K_x K_y = { alpha beta | alpha in K_x, beta in
  K_y }$ y note que:

  $ sup(K_x K_y) = sup(K_x) sup(K_y) $ por el resultado demostrado en clase.
  Además:

  $ K_x K_y &= { b^t b^s | t, s in QQ, t lt x, s lt y } \
  &= { b^(t + s) | t, s in QQ, t lt x, s lt y } \
  &= { b^(t + s) | t, s in QQ, t + s lt x + y } \
  &= { b^r | r in QQ, r lt x + y } \
  &= K_(x + y) $ (todo racional se puede expresar como la suma de dos
  racionales).

  Por lo tanto:

  $ b^(x + y) &= sup(K_(x + y)) \
  &= sup(K_x K_y) \
  &= sup(K_x) sup(K_y) \
  &= b^x b^y $

  *MEP*
]

#prob[
  _(4 puntos) -- Si $x, y in CC$, pruebe que $abs(abs(x) - abs(y)) lt.eq
  abs(x - y)$._

  == Prueba:
  $ abs(x - y)^2 &= (x - y) overline((x - y)) \
  &= (x - y) (overline(x) - overline(y)) \
  &= x overline(x) - y overline(x) - overline(y) x + y overline(y) \
  &= abs(x)^2 - y overline(x) - overline(y overline(x)) + abs(y)^2 \
  &= abs(x)^2 - 2 Re(y overline(x)) + abs(y)^2 \
  &gt.eq abs(x)^2 - 2 abs(y overline(x)) + abs(y)^2 \
  &= abs(x)^2 - 2 abs(x) abs(y) + abs(y)^2 \
  &= (abs(x) - abs(y))^2 $
  $ ==> &(abs(x) - abs(y))^2 lt.eq abs(x - y)^2 \
  ==> &abs(abs(x) - abs(y)) lt.eq abs(x - y) $

  *MEP*
]

#prob[
  _(5 puntos) -- Sea $z in CC$, tal que $abs(z) = 1$. Calcule el valor de
  $abs(1 + z)^2 + abs(1 - z)^2$. Justifique completamente su respuesta._

  == Cálculo:
  $ abs(1 + z)^2 + abs(1 - z)^2 &= (1 + z) overline((1 + z)) + (1 - z)
  overline((1 - z)) \
  &= (1 + z) (1 + overline(z)) + (1 - z) (1 - overline(z)) \
  &= 1 + overline(z) + z + z overline(z) + 1 - overline(z) - z - z
  overline(z) \
  &= 2 + 2 z overline(z) = 2 + 2 abs(z)^2 = 2 + 2 (1)^ 2 = 4 $

  $therefore abs(1 + z)^2 + abs(1 - z)^2 = 4$

  *MEP*
]
