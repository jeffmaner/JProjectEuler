NB. Calculate the sum of all the primes below two million.
NB. 
NB. The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
NB. 
NB. Find the sum of all the primes below two million.

x: +/ (#~ 2000000&>) (p: i.2000000)



2000000([:+/[:x:]#~>)p:i.1000000


NB. Roger Hui's solution!
+/ i.@x:&.(p:^:_1) 2e6
NB. p:^:_1 is the number of primes less than n.
pi=:p:^:_1
+/ p: i. x: pi 2e6


x: +/ i.&.(p:^:_1) 2000000

NB. vim:ft=j
