NB. Find the last ten digits of 1^1 + 2^2 + ... + 1000^1000.
NB. 
NB. The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.
NB. 
NB. Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

_10{.":+/s^s=.>:i.1000x NB. 9110846700.
_10{.":+/^~>:i.1000x    NB. 9110846700.




NB. mhovm:
(10^10x)|+/^~1+i.1000x




NB. u56:
_10{.":+/^~>:i.999x




NB. nspies:
10 #. ( #~ 10) #: +/ ^~ (>: i. 1000x)




NB. bill_lam:
NB. In J, it can be optimized using m&|@^.
  ts '_10{.":+/^~>:i.999x'
8.33578569 2285696
  ts '(10^10x)&|@+/ (10^10x)&|@^~ >:@i.999'
0.245719498 420032





NB. BayesianPride:
modselfpow =: [: (10000000000x | *)/ $~
+/ modselfpow f. "0 >: i. 1000

NB. vim:ft=j
