NB. What is the smallest odd composite that cannot be written as the sum of a
NB. prime and twice a square?
NB. 
NB. It was proposed by Christian Goldbach that every odd composite number can be
NB. written as the sum of a prime and twice a square.
NB. 
NB.  9 =  7 + 2×1^2
NB. 15 =  7 + 2×2^2
NB. 21 =  3 + 2×3^2
NB. 25 =  7 + 2×3^2
NB. 27 = 19 + 2×2^2
NB. 33 = 31 + 2×1^2
NB. 
NB. It turns out that the conjecture was false.
NB. 
NB. What is the smallest odd composite that cannot be written as the sum of a
NB. prime and twice a square?

isSum =: 3 : 0
  primes =. p: i. _1 p: y
  +./ 0=1| %: (%2)* y-primes NB. y is of the form x+2*y^2.
)

odds =: 9+2*i.3000          NB. The answer is less the 6e3, so we've got a good limit.
ocns =: (-. 1 p: odds)#odds NB. Odd Composite Numbers.
{.(-.isSum"0 ocns)#ocns     NB. 5777.




NB. olegyk:
goldb=: e. (i.&.(p:^:_1) ,@:(+/) (>:@i.@<.)&.(%:@-:)@<:)
(#~ -.@goldb"0) (>:@+: -. p:)2+i.10000
5777 5993





NB. Edushka:
is=.+./@:(=<.)@:%:@:-:@:(- p:@:i.@(_1&p:))
{. (#~ -.@is"0) (#~ -.@(1&p:)) >: +: >:i.3000
5777




NB. fluff:
3+2*{.I.-.>./@(-:@(-p:@i.)e.*:@i.)"0]3+2*i.3e3
NB. or, smaller but slower:
3+2*{.I.-.>./@(1&p:)@(-+:@*:@i.)"0]3+2*i.3e3

NB. vim:ft=j
