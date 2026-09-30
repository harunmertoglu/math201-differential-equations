#set page(paper: "a4", margin: (left: 21mm, right: 21mm, top: 18mm, bottom: 18mm), numbering: "1")
#set text(font: "New Computer Modern", size: 9.5pt)
#set par(justify: true, leading: 0.45em)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  v(0.9em)
  text(size: 15pt, weight: "bold", it.body)
  v(0.25em)
}
#show heading.where(level: 2): it => {
  v(0.6em)
  text(size: 11.5pt, weight: "bold", it.body)
  v(0.15em)
}
#let answer(body) = block(inset: (x: 8pt, y: 5pt), stroke: (left: 2pt + rgb("294f70")), fill: rgb("f4f8fb"), radius: 2pt, body)

#align(center)[
  #text(size: 18pt, weight: "bold")[MATH201 · Differential Equations]
  #v(0.2em)
  #text(size: 10pt, fill: rgb("555555"))[Week 2 lecture notes]
]
#v(0.3em)

= Families of curves (continued)

#block(breakable: false)[
== Example 1.1.10 — $y=C_1 x+C_2 e^(-x)$

$y'=C_1-C_2 e^(-x)$ and $y''=C_2 e^(-x)$, so $C_1=y'+y''$ and
#answer[$ y=x(y'+y'')+y''. $]
]

== Example 1.1.11 — $y=x^2+C_1 e^x+C_2 e^(-x)$

Since $y''=2+C_1 e^x+C_2 e^(-x)$, subtraction eliminates both constants:
#answer[$ y=x^2+y''-2, quad "equivalently" quad y''-y=2-x^2. $]

= First-order differential equations

== Separable differential equations

A first-order equation can be written as $d y/d x=f(x,y)$, or in differential form as $M(x,y) d x+N(x,y) d y=0$ (with $f=-M/N$ where $N!=0$). It is *separable* if it can be rearranged into $P(x) d x+Q(y) d y=0$: collect the $y$ terms with $d y$ and the $x$ terms with $d x$. Direct integration gives
$ integral P(x) d x+integral Q(y) d y=C. $
When dividing by a factor involving $x$ or $y$, check the excluded values against the equation.

== Example 1.2.1

Solve $x(y^2-1) d x-y(x^2-1) d y=0$ with $y(2)=2$. On the region $x>1$, $y>1$ containing the initial point, separate:
$ (x d x)/(x^2-1)-(y d y)/(y^2-1)=0,
  quad integral (x d x)/(x^2-1)=integral (y d y)/(y^2-1). $
For the left integral, set $u=x^2-1$, so $d u=2x d x$:
$ integral (x d x)/(x^2-1)=frac(1,2) integral (d u)/u=frac(1,2)ln(x^2-1). $
Similarly, set $v=y^2-1$, $d v=2y d y$ on the right. Thus
$ ln(x^2-1)-ln(y^2-1)=C,
  quad (x^2-1)/(y^2-1)=e^C=K. $
Since $e^C$ is also a constant, it may be renamed $C$; here we use $K$ to distinguish it, with $K>0$ on this region. The initial condition gives $K=1$, so $x^2=y^2$. Since $x,y>1$,
#answer[$ y=x. $]
The differential equation also has the constant solutions $y(x)=1$ and $y(x)=-1$, excluded by division by $y^2-1$. Neither satisfies $y(2)=2$.

#block(breakable: false)[
== Example 1.2.2

Solve $(1+x^2+y^2+x^2 y^2) d y=y^2 d x$ with $y(0)=-1$. Group and factor:
$ 1+x^2+y^2+x^2 y^2=x^2(1+y^2)+(1+y^2)=(1+x^2)(1+y^2). $
For $y!=0$, separate:
$ ((1+y^2) d y)/(y^2)=(d x)/(1+x^2). $
Integration yields $y-1/y=arctan x+C$. From $y(0)=-1$, $C=0$; therefore
#answer[$ y-1/y=arctan x, quad y(0)=-1. $]
The constant solution $y(x)=0$ satisfies the equation but is lost when dividing by $y^2$. It does not satisfy $y(0)=-1$.
]

#block(breakable: false)[
== Example 1.2.3

Solve $(x^2-2x+1) d y-(y^2+2y+1) d x=0$ with $y(2)=1$. The factors are $(x-1)^2$ and $(y+1)^2$. For $x!=1$ and $y!=-1$, division and integration give
$ integral (d y)/(y+1)^2-integral (d x)/(x-1)^2=0. $
Thus $-1/(y+1)+1/(x-1)=C$. The initial condition gives $C=1/2$, so
#answer[$ -1/(y+1)+1/(x-1)=1/2. $]
The constant solution $y(x)=-1$ also satisfies the differential equation and is excluded by this division. It does not satisfy $y(2)=1$.
]

== Example 1.2.5

Solve $tan^2 y d y=sin^3 x d x$ with $y(0)=0$. The equation requires $cos y!=0$. Using $tan^2 y=sec^2 y-1$,
$ integral tan^2 y d y=tan y-y. $
For the right integral, write $sin^3 x=sin x(1-cos^2 x)$ and set $u=cos x$, $d u=-sin x d x$:
$ integral sin^3 x d x=-integral (1-u^2) d u=-u+u^3/3=-cos x+(cos^3 x)/3. $
Hence $tan y-y=-cos x+(cos^3 x)/3+C$. At $(0,0)$, $C=2/3$, so
#answer[$ tan y-y=-cos x+(cos^3 x)/3+2/3. $]

#block(breakable: false)[
== Example 1.2.6

Solve $x y^2(1+x) d y+(1+y^3) d x=0$ with $y(1)=1$. Division by $x(1+x)(1+y^3)$ requires $x!=0$, $x!=-1$, and $y!=-1$:
$ (y^2 d y)/(1+y^3)+(d x)/(x(1+x))=0. $
Set $u=1+y^3$, so $d u=3y^2 d y$; for the other integral use partial fractions:
$ integral (y^2 d y)/(1+y^3)=frac(1,3)integral (d u)/u=frac(1,3)ln|1+y^3|,
  quad 1/(x(1+x))=1/x-1/(1+x). $
$ integral (d x)/(x(1+x))=ln|x|-ln|1+x|=ln|x/(x+1)|. $
Hence $frac(1,3)ln|1+y^3|+ln|x/(x+1)|=ln K$, or $x(1+y^3)^(1/3)/(x+1)=K$ on the branch of the initial point. The condition gives $K=2^(-2/3)$. Cubing yields
#answer[$ (x^3(1+y^3))/((x+1)^3)=1/4. $]
The differential equation also admits $y(x)=-1$, lost when dividing by $1+y^3$. It does not satisfy $y(1)=1$.
]

== Example 1.2.9

Solve $y'=x sin x/tan y$ with $y(0)=pi$. The equation requires both $sin y!=0$ and $cos y!=0$, so that $tan y$ is defined and nonzero. Separation gives $tan y d y=x sin x d x$.
For the left integral, set $t=cos y$, $d t=-sin y d y$:
$ integral tan y d y=integral (sin y)/(cos y) d y=-integral (d t)/t=-ln|cos y|. $
For the right integral, integration by parts with $u=x$, $d v=sin x d x$, $d u=d x$, and $v=-cos x$ gives
$ integral x sin x d x=-x cos x+integral cos x d x=-x cos x+sin x. $
Therefore
$ -ln|cos y|=-x cos x+sin x+C. $
At $y=pi$, $tan y=0$, so the differential equation is undefined at the initial point. For a solution with $lim_(x arrow 0^+) y(x)=pi$, taking the limit in the integrated relation gives $C=0$. Define $A(x)=sin x-x cos x$; then
$ |cos y|=e^(-A(x)). $
Near $y=pi$, $cos y<0$, so $cos y=-e^(-A(x))$. Since $A(0)=0$ and $A'(x)=x sin x>0$ for $0<x<pi$, we have $A(x)>0$ there. There are two branches approaching $pi$ from opposite sides:
#answer[$ y_-(x)=pi-arccos(e^(-A(x))), quad y_+(x)=pi+arccos(e^(-A(x))), quad 0<x<pi. $]
Both satisfy the equation on this open interval and tend to $pi$ as $x arrow 0^+$. For $-pi<x<0$, $A(x)<0$, so $e^(-A(x))>1$: no real solution of the $C=0$ relation exists there. Hence there is no real solution on $-pi<x<0$ that tends to $pi$ as $x arrow 0^-$.

Both branches extend continuously to $y(0)=pi$. The initial value problem has no classical solution at $x=0$, because the right-hand side of the differential equation is undefined there.
