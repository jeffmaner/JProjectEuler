NB. Find the first four consecutive integers to have four distinct primes factors.
NB.
NB. The first two consecutive numbers to have two distinct prime factors are:
NB.
NB. 14 = 2 × 7
NB. 15 = 3 × 5
NB.
NB. The first three consecutive numbers to have three distinct prime factors are:
NB.
NB. 644 = 2² × 7 × 23
NB. 645 = 3 × 5 × 43
NB. 646 = 2 × 17 × 19.
NB.
NB. Find the first four consecutive integers to have four distinct primes factors.
NB. What is the first of these numbers?

NB. Indicates whether y has x distinct prime factors.
DPFs =: 4 : 0 NB. Distinct Prime Factors.
  x = # ~. 3 p: y
)

problem47 =: 3 : 0
  r=.0
  c=.0
  for_i. >:i.1e6 do.
    if. 4 DPFs i do.
      c=.>:c
    else.
      c=.0
    end.

    if. c=4 do.
      r=.i-3 NB. We've just encountered the fourth one. Return the first one.
      break.
    end.
  end.
r NB. 134043.
)




NB. mhovm:
>:i.&1>.4*/\4=#@~.@q:1+i.10^6 




NB. olegyk:
d4=: (4: *./@:= #@~.@q:)"1
{.{.(#~ d4) 4]\3+i.1000000




NB. fluff:
1+{.I.4*/\4=#@~.@q:1+i.1e6

NB. vim:ft=j
