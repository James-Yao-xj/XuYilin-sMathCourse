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
    #text(8pt, gray)[数学一轮补习讲义]
  ]
)


#set heading(numbering: "1.")

#align(center)[
  #text(font: "SimSun", size: 24pt, weight: "bold")[高二数学补习 第3课（新）]\
  #v(10pt)
  #text(font: "SimSun", size: 16pt)[——必要条件探路——]
]

= 回顾
参变分离的两种主要方式：全分离/半分离.

他们的优劣分别是什么？

#v(50pt)

= 逻辑：充分必要的含义

定义：若$p -> q$则称$p$是$q$的充分条件；$q$是$p$的必要条件。

对于含参函数，如果我们知道某个关于参数的条件是必要的，然后可以再证明这个必要条件是充分的，那么就可以合法地获得这个参数的精确范围。这类题目称为_必要条件探路_法。在很多题目中，这是非常常见的方法，并且倘若不用这个方法，而是尝试参变分离，会带来比较复杂的结果。

= 一些小小的例子

== 例题1

已知函数$f(x) = a x - sin x, forall x >= 0, f(x) >= 0,$那么$a$的范围是？

【提示】如何去寻找一个必要条件？你需要观察到一些特殊点的函数值。

#pagebreak()

== 例题2

已知函数$f(x) = a x - ln(x + 1) forall x > 0, f(x) > 0$，求a的取值范围。

#v(250pt)

== 例题3

已知函数$f(x) = e ^ x - 1 - a x >= 0, forall x >= 0$，求a的范围。

#pagebreak()
有时，求一阶导函数并不能解决问题，你可能需要多求几次，比如这个题目：

== 例题4
已知函数$f(x) = cos x - 1 + a x^2 >= 0, forall x >= 0$，求$a$的取值范围。