NB. Find the value of d < 1000 for which 1/d contains the longest recurring cycle.
NB. 
NB. A unit fraction contains 1 in the numerator. The decimal representation of
NB. the unit fractions with denominators 2 to 10 are given:
NB. 
NB.     1/2	= 	0.5
NB.     1/3	= 	0.(3)
NB.     1/4	= 	0.25
NB.     1/5	= 	0.2
NB.     1/6	= 	0.1(6)
NB.     1/7	= 	0.(142857)
NB.     1/8	= 	0.125
NB.     1/9	= 	0.(1)
NB.     1/10	= 	0.1
NB. 
NB. Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be
NB. seen that 1/7 has a 6-digit recurring cycle.
NB. 
NB. Find the value of d < 1000 for which 1/d contains the longest recurring cycle
NB. in its decimal fraction part.





NB. olegyk:
max=: 3 : 0
  d=. 12}.10002j10000":%x:y
  for_n. 3+i.900 do.
    if. 3<+/i=.(n{.d) E.d do.>./2-~/\I.i return. end.
  end.
  0
)

(i. >./)max"0 i.999





NB. rminhas:
rn =. 2 5 -.~ p: i.(_1 p: 1000) NB. primes under 1000 except 2 and 5.
mlc =. 3 : 0 NB. cycle length is smallest i s.t. 10^i-1 = 0 (mod y)
  i =. >. 10^.y
  while. y | (_1+10x^i) do. i=.i+1 end.
)

(] {~ (] i. >./)@:(mlc"0)) rn

NB. vim:ft=j
