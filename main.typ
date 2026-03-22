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
  ],
  numbering: "1"
)
#outline(
  title: [目录],
  depth: 2,
  indent: auto,
)
#pagebreak()

#include("Lesson1/Lesson1.typ")
#include("Lesson2/Lesson2.typ")