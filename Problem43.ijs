NB. Find the sum of all pandigital numbers with an unusual sub-string divisibility
NB. property.
NB. 
NB. The number, 1406357289, is a 0 to 9 pandigital number because it is made up
NB. of each of the digits 0 to 9 in some order, but it also has a rather
NB. interesting sub-string divisibility property.
NB. 
NB. Let d1 be the 1st digit, d2 be the 2nd digit, and so on. In this way, we note
NB. the following:
NB. 
NB.     d2d3d4=406 is divisible by 2
NB.     d3d4d5=063 is divisible by 3
NB.     d4d5d6=635 is divisible by 5
NB.     d5d6d7=357 is divisible by 7
NB.     d6d7d8=572 is divisible by 11
NB.     d7d8d9=728 is divisible by 13
NB.     d8d9d10=289 is divisible by 17
NB. 
NB. Find the sum of all 0 to 9 pandigital numbers with this property.

pandigitals =: ,"2 ":"0 (i.@! A. i.) 10

predicate =: p =: 3 : 0
  a =. 0 =  2 | ". 1 2 3 { y
  b =. 0 =  3 | ". 2 3 4 { y
  c =. 0 =  5 | ". 3 4 5 { y
  d =. 0 =  7 | ". 4 5 6 { y
  e =. 0 = 11 | ". 5 6 7 { y
  f =. 0 = 13 | ". 6 7 8 { y
  g =. 0 = 17 | ". 7 8 9 { y

  *./ a,b,c,d,e,f,g
)

  p"1 pandigitals

  +/ p"1 pandigitals NB. 6.

  (#~ p"1) pandigitals

  x: +/ ". (#~ p"1) pandigitals NB. 16695334890.





NB. u56:
prob43=: 3 : 0
r=.10 10 10#:(0{y.)*>:i.<.1000%0{y.
while. 0<#y.=.}.y. do.
  r=. ((10*#r)$i.10),.10#r
  r=. (0=({.y.)|10#.|:0 1 2{|:r)#r
end.
+/10x#.((i.10)-."1 r),.r=.((] -: ~.)"1 r)#r
)

prob43 17 13 11 7 5 3 2





NB. RogerHui:
udp=: (#~ 3=#@~."1) @ (10 10 10&#:) @ ( * i.@>:@<.@(1000&%))

ext=: 4 : 0
  (0=x.|10#.3{."1 y)#y=. ,/((i.10) -."1 y.) ,"0 1"1 y.
)

t=. 2 ext 3 ext 5 ext 7 ext 11 ext 13 ext udp 17
+/ 10x #. t ,.~ (i.10) -."1 t

NB. udp is unique digits products. Start with udp of 17,
NB. and extend by products of 13, 11, etc., retaining
NB. only numbers with unique digits. At the end preface
NB. by the "missing" digit, then sum.





NB. olegyk:
N=: (i.!10) A. /:~'1406357289'
pd=: (0&=)@(+/)@(}.@(3&(".\)) 1&|@% (p:i.7)"_)
20":+/".(#~ pd"1)N

NB. vim:ft=j
