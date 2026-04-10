#import "@preview/cetz:0.4.2"
#import "@preview/tablex:0.0.9"
#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2cm, right: 2cm),
  header: context [
    #text(8pt, gray)[数学一轮补习讲义 · 练习题]
  ]
)

#set heading(numbering: "1.")

#align(center)[
  #text(font: "SimSun", size: 24pt, weight: "bold")[第2课 练习题]\
  #v(10pt)
  #text(font: "SimSun", size: 16pt)[——函数含参问题——]
]

#v(10pt)

#align(center)[#text(font: "KaiTi", size: 14pt)[
  好好读讲义吧，例题如果过了手，这应该不是很难的啦~
]]

#v(20pt)

= 参变分离（完全分离）

== 题目1

已知函数 $f(x) = e^x - a x$，讨论 $f(x)$ 零点个数与参数 $a$ 的关系。

#v(5pt)
#text(font: "KaiTi", size: 10pt)[
  【提示】令 $a = display(frac(e^x, x))$，研究 $g(x) = display(frac(e^x, x))$ 在 $(-infinity, 0)$ 和 $(0, +infinity)$ 上的单调性与极值。
]

#v(160pt)



== 题目2

已知函数 $f(x) = ln x - display(frac(a, x))$ 在 $[1, e]$ 上有零点，求实数 $a$ 的取值范围。

#v(5pt)
#text(font: "KaiTi", size: 10pt)[
  【提示】分离参数得 $a = x ln x$，研究其在 $[1, e]$ 上的值域。
]

#v(160pt)

#pagebreak()

= 含参不等式中的参变分离

== 题目3

若不等式 $ln x <= a x$ 对一切 $x > 0$ 恒成立，求实数 $a$ 的取值范围。

#v(5pt)
#text(font: "KaiTi", size: 10pt)[
  【提示】$a >= display(frac(ln x, x))$ 恒成立，即 $a >= display(lr((frac(ln x, x))))_(max)$。讲义提到的 $f(x) = display(frac(ln x, x))$ 在此派上用场。
]

#v(160pt)

== 题目4

已知 $f(x) = x^2 - a e^x$，若对所有 $x >= 0$ 都有 $f(x) <= 0$，求 $a$ 的取值范围。

#v(5pt)
#text(font: "KaiTi", size: 10pt)[
  【提示】$a >= display(frac(x^2, e^x))$，研究 $g(x) = x^2 e^(-x)$ 在 $[0, +infinity)$ 上的最大值点。
]

#v(160pt)

#pagebreak()

= 化曲为直（半分离）

== 题目5

已知函数 $f(x) = a e^x + x$，讨论 $f(x)$ 零点的个数与 $a$ 的关系。

#v(5pt)
#text(font: "KaiTi", size: 10pt)[
  【提示】$a e^x = -x$，得 $a = -x e^(-x)$。研究 $g(x) = -x e^(-x)$ 的图像，它与讲义中的 $display(frac(x, e^x))$ 密切相关。
]

#v(160pt)

== 题目6

已知直线 $y = a x$ 与曲线 $y = ln x$ 有且仅有一个公共点，求 $a$ 的取值范围。

#v(5pt)
#text(font: "KaiTi", size: 10pt)[
  【提示】联立得 $a = display(frac(ln x, x))$，这正是讲义要求记住的函数。注意"恰好一个"需考虑相切和只有一个交点两种情形。
]

#v(160pt)

#pagebreak()

= 参考答案

#set enum(numbering: "1.")

*题目1* \
令 $f(x) = e^x - a x = 0$，则当 $x != 0$ 时 $a = display(frac(e^x, x))$。

设 $g(x) = display(frac(e^x, x))$，则 $g'(x) = display(frac(e^x (x - 1), x^2))$。

- *当 $x in (-infinity, 0)$ 时*：$x - 1 < 0$，故 $g'(x) < 0$，$g$ 单调递减。又 $lim_(x -> -infinity) g(x) = 0^-$，$lim_(x -> 0^-) g(x) = -infinity$，故 $g$ 在 $(-infinity, 0)$ 上值域为 $(-infinity, 0)$。

- *当 $x in (0, +infinity)$ 时*：$g'(x) = 0$ 当且仅当 $x = 1$，此时 $g(1) = e$ 为极小值（也是最小值）。$lim_(x -> 0^+) g(x) = +infinity$，$lim_(x -> +infinity) g(x) = +infinity$。

综上，方程 $a = g(x)$ 的解的个数即 $f(x)$ 零点个数：

#table(
  columns: (1fr, 1fr),
  inset: 6pt,
  [$a$ 的范围], [零点个数],
  [$a < 0$], [$1$ 个（在 $(-infinity, 0)$ 上）],
  [$a = 0$], [$0$ 个（$f(x) = e^x > 0$）],
  [$0 < a < e$], [$0$ 个],
  [$a = e$], [$1$ 个（$x = 1$）],
  [$a > e$], [$2$ 个（均在 $(0, +infinity)$ 上）],
)

#v(10pt)

*题目2* \
$ln x - display(frac(a, x)) = 0$ 即 $a = x ln x$。

设 $h(x) = x ln x$，则 $h'(x) = ln x + 1$。在 $[1, e]$ 上，$ln x >= 0$，故 $h'(x) >= 1 > 0$，$h$ 单调递增。

$h(1) = 0$，$h(e) = e$。故 $h$ 在 $[1, e]$ 上的值域为 $[0, e]$。

$f(x)$ 在 $[1, e]$ 上有零点，当且仅当 $a in [0, e]$。

#v(10pt)

*题目3* \
当 $x > 0$ 时，$ln x <= a x$ 即 $display(frac(ln x, x)) <= a$。

需要 $a >= max_(x > 0) display(frac(ln x, x))$。

设 $h(x) = display(frac(ln x, x))$，$h'(x) = display(frac(1 - ln x, x^2))$。$h'(x) = 0$ 当 $x = e$，$h(e) = display(frac(1, e))$ 为最大值。

因此 $a >= display(frac(1, e))$，即 $a in [display(frac(1, e)), +infinity)$。

#v(10pt)

*题目4* \
$f(x) = x^2 - a e^x <= 0$ 对 $x >= 0$ 恒成立，即 $a >= display(frac(x^2, e^x))$ 对 $x >= 0$ 恒成立。

设 $g(x) = x^2 e^(-x)$，$g'(x) = x e^(-x)(2 - x)$。

在 $[0, +infinity)$ 上：$g'(x) = 0$ 当 $x = 0$ 或 $x = 2$。$g(0) = 0$，$g(2) = 4 e^(-2) = display(frac(4, e^2))$，$lim_(x -> +infinity) g(x) = 0$。

$g$ 在 $[0, 2]$ 上递增，在 $[2, +infinity)$ 上递减，最大值为 $display(frac(4, e^2))$。

因此 $a >= display(frac(4, e^2))$，即 $a in [display(frac(4, e^2)), +infinity)$。

#v(10pt)

*题目5* \
$a e^x + x = 0$ 即 $a = -x e^(-x)$。

设 $g(x) = -x e^(-x)$，$g'(x) = e^(-x)(x - 1)$。$g'(x) = 0$ 当 $x = 1$。

- $x < 1$ 时 $g'(x) < 0$（递减），$x > 1$ 时 $g'(x) > 0$（递增）。
- $g(1) = -display(frac(1, e))$ 为极小值（最小值）。
- $lim_(x -> -infinity) g(x) = +infinity$（令 $x = -t$，$t -> +infinity$，$g = t e^t -> +infinity$）。
- $lim_(x -> +infinity) g(x) = 0^-$。

$g$ 在 $(-infinity, 1)$ 上从 $+infinity$ 递减至 $-display(frac(1, e))$，在 $(1, +infinity)$ 上从 $-display(frac(1, e))$ 递增趋向 $0^-$。

#table(
  columns: (1fr, 1fr),
  inset: 6pt,
  [$a$ 的范围], [零点个数],
  [$a < -display(frac(1, e))$], [$0$ 个],
  [$a = -display(frac(1, e))$], [$1$ 个（$x = 1$）],
  [$-display(frac(1, e)) < a < 0$], [$2$ 个],
  [$a = 0$], [$1$ 个（$x = 0$）],
  [$a > 0$], [$1$ 个],
)

#v(10pt)

*题目6* \
联立 $a x = ln x$（$x > 0$），得 $a = display(frac(ln x, x))$。

设 $h(x) = display(frac(ln x, x))$（$x > 0$），$h'(x) = display(frac(1 - ln x, x^2))$。

- $h$ 在 $(0, e)$ 上递增，$(e, +infinity)$ 上递减，$h(e) = display(frac(1, e))$ 为最大值。
- $lim_(x -> 0^+) h(x) = -infinity$，$lim_(x -> +infinity) h(x) = 0^+$，$h(1) = 0$。

由图像分析 $a = h(x)$ 恰有一个解的情况：

+ $a < 0$：$h$ 在 $(0, 1)$ 上递增且从 $-infinity$ 到 $0$，恰好一个解。$checkmark$
+ $a = 0$：$h(x) = 0$ 仅 $x = 1$（$x > 1$ 时 $h > 0$，$x < 1$ 时 $h < 0$），一个解。$checkmark$
+ $0 < a < display(frac(1, e))$：递增段和递减段各交一次，两个解。$times$
+ $a = display(frac(1, e))$：相切于 $x = e$，恰好一个解。$checkmark$
+ $a > display(frac(1, e))$：超过最大值，无解。$times$

故 $a in (-infinity, 0] union {display(frac(1, e))}$，即 $a <= 0$ 或 $a = display(frac(1, e))$。