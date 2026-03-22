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
  #text(font: "SimSun", size: 24pt, weight: "bold")[高二数学补习 第1课]\
  #v(10pt)
  #text(font: "SimSun", size: 16pt)[——函数性质与导数基础——]
]

= 函数性质与导数基础
== 函数
=== 函数的定义
#v(150pt)

例题1

下列是函数$x$与$y$的函数关系的是（#h(15pt)）.

$A. y = x^2 + 1 $

$B. y^2 = x + 1$

$C. y = x^2 + 1, x > 0 $

$D. x^2 + y^2 = 1$

=== 基本初等函数
==== 指数函数
#pagebreak()

==== 对数函数
#v(250pt)


==== 幂函数

#v(250pt)

=== 单调性与单调区间

#pagebreak()

== 导函数

=== 平均变化率到瞬时变化率
#v(150pt)

导数定义如下：
$
 lim_(x -> x _ 0 ) (f(x) - f(x_ 0)) / (x - x_ 0)
$

$
  lim_(Delta x -> 0) (f(x_ 0 + Delta x) - f(x_ 0)) / (Delta x)
$
$
  lim_(Delta x -> 0) (f(x_ 0) - f(x_ 0 - Delta x)) / (Delta x)
$

*常见的求导公式*（需记住）
#v(150pt)

*求导法则：*

#v(150pt)

= 常见不等式

$
  sin x < x < tan x, forall x in (0, pi/2)
$
$
  ln(1 + x) < x, forall x > -1, x != 0
$
$
  e^x > 1 + x, forall x != 0
$
#v(200pt)
= 一些习题
== 高考模拟考试题目
=== 

（2025 八省联考）已知$f(x) = a ln x + b / x - x$.

(1)设$a = 1, b = -2,$求曲线$y = f(x)$的斜率为2的切线；

(2)若$x = 1$是$f(x)$的极小值点，求b的范围.

#v(200pt)

=== 
#image("1.png")

#pagebreak()

===
#image("2.png")

#v(200pt)

=== 

#image("3.png")

#v(200pt)
#pagebreak()

=== #footnote("这是数学教材上浓墨重彩的一笔，在考试中出现非常合情合理！")
#image("4.png")

#pagebreak()

=== 
#image("5.png")
#pagebreak()

=== 
#image("6.png")
#v(200pt)

=== 
#image("7.png")


#pagebreak()




===
#image("9.png")
#v(200pt)

好叭，我承认前面的这些题目是我寒假的时候给高三的高考生找的题目，虽然放在这里有偷懒的嫌疑，但是确确实实是很高质量的题目，有点舍不得删除，接下来的题目可能更加适合那你，所以前面的题目我不会全部讲解，剩余的部分可以出于兴趣去思考学习，每一个想法与每一次思考都是导数学习中至关重要的。即使做不出来，也可以跟我分享你的想法，然后我们一起看看是真的算不出来还是某些地方没有打通。导数的试错过程是超级重要的！

课余时间可以看一看一些题目，有任何思考随时可以联系我哦！

#pagebreak()

= 另一些题目

== 奇偶性

=== 判断下列函数的奇偶性
$f(x) = ln(x + 1) - ln (1 - x)$
#v(100pt)
$f(x) = 1 / ( 3 ^ x - 1) + 1 / 2 $
#v(100pt)
$f(x) = lg(1 - x^2) / (abs(x - 2) - 2)$
#v(100pt)
$f(x) = sqrt(1 - x) + sqrt( 1 + x)$
#v(100pt)
$f(x) = (x - 1)sqrt((1 + x) / (1 - x))$
#v(100pt)
$f(x) = lg(sqrt(x ^ 2 + 1) - x)$
#v(100pt)
多数情况下我们所遇到的都是判断具体函数的奇偶性，但有时我们也会遇到没有给出具体的函数
解析式的情况。对于抽象函数的奇偶性的判断，同样需要牢牢抓住奇偶性的定义，通过赋值让$f(-x), f(x)$同时出现，从而判断其关系。#footnote("摘自《新高考你真的掌握了吗》，有删改。")

=== 

(2008 重庆理科6)若定义在$RR$上的函数$f(x)$满足：对$forall x_1, x_2 in RR$，有$f(x_1 + x_2) = f(x_1) + f(x_2) + 1$，则下列说法正确的是（#h(15pt)）。

A. $f(x)$是奇函数 #h(15pt) B. $f(x)$是偶函数 #h(15pt) C. $f(x) + 1$是奇函数 #h(15pt) D. $f(x) + 1$是偶函数 #h(15pt)


#v(150pt)

===

$forall x, y in RR$，满足$f(x y) = f(x) + f(y)$，证明：$f(x)$是偶函数。

#v(150pt)

奇偶函数的运算规律：

#pagebreak()

=== 

若$f(x) = ln(e ^ (3 x) + 1) + a x$是偶函数，那么$a = "___________ ."$

#v(150pt)

=== 

证明：任意一个函数都可以写成一个奇函数与一个偶函数的和。

#v(150pt)

=== 

已知定义在$RR$上的函数$y = f(x) - 2$是奇函数，且$f(-1) = 1$，则$f(0) + f(1) = "__________ ."$

#v(150pt)
===

设函数$f(x) = x^2 dot (3 ^ x - 1) / (3 ^ x + 1)$，则不等式$f(3 log_2 x) + f(1 - log_2 x) < 0$的解集为 $"__________"$。#footnote[原题是选择题，2019江南十校]
#pagebreak()

== 周期性与对称性

*知识：*

#v(200pt)

=== 

证明：若函数$f(x)$是关于$(a , 0)$中心对称的函数，又是关于直线$x = b$对称的函数，则$f(x)$是周期函数。
#pagebreak()

===

(2021 全国甲卷)设函数$f(x) $的定义域是$RR$，$f(x + 1) $为奇函数，$f(x + 2)$是偶函数，当$x in [1, 2]$时，$f(x) = a x ^ 2 + b.$若$f(0) + f(3) = 6,$则$f(9/2) = "__________."$#footnote[原题为单项选择题]

#v(250pt)

===   

(2022新高考II)已知函数$f(x)$的定义域是$RR$，且$f(x + y) + f(x - y) = f(x) dot f(y), f(1) = 1$，则#footnote[原题为单项选择题] 
$
sum_(k = 1) ^ 22 f(k)=
 $
