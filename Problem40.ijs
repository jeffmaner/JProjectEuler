NB. Finding the nth digit of the fractional part of the irrational number.
NB. 
NB. An irrational decimal fraction is created by concatenating the positive
NB. integers:
NB. 
NB. 0.12345678910[1]112131415161718192021...
NB. 
NB. It can be seen that the 12th digit of the fractional part is 1.
NB. 
NB. If dn represents the nth digit of the fractional part, find the value of the
NB. following expression.
NB. 
NB. d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

fraction =: (-.&' ') ,":"0 >: i. 1e6
d =: ". fraction {~ <:

*/ (d"0) 10 ^ i. 7 NB. 210.





NB. hansfahlin:
*/".,.0 9 99 999 9999 99999 999999{(-.' '=x)#x=:":>:i.200000






NB. u56:
*/"."0(<:10^i.7){}.(' '&~: # ])":i.1000001





NB. RogerHui:
*/ "."0 (10^i.7) { ' ' -.~ ": i.2e5





NB. olegyk:
*/"."0(<:10^i.6){;<@":"0] 1+i.1e6





NB. Eratosthenes:
str=.-.&' '@:":"1 ]i.1e6
*/"."0@":(10^i.7){str

NB. vim:ft=j
