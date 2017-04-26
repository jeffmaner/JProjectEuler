NB. Find a quadratic formula that produces the maximum number of primes for consecutive values of n.
NB.
NB. Euler published the remarkable quadratic formula:
NB. 
NB. n² + n + 41
NB. 
NB. It turns out that the formula will produce 40 primes for the consecutive values
NB. n = 0 to 39. However, when n = 40, 40² + 40 + 41 = 40(40 + 1) + 41 is divisible
NB. by 41, and certainly when n = 41, 41² + 41 + 41 is clearly divisible by 41.
NB. 
NB. Using computers, the incredible formula  n² - 79n + 1601 was discovered, which
NB. produces 80 primes for the consecutive values n = 0 to 79. The product of the
NB. coefficients, -79 and 1601, is -126479.
NB. 
NB. Considering quadratics of the form:
NB. 
NB.     n² + an + b, where |a| < 1000 and |b| < 1000
NB. 
NB.     where |n| is the modulus/absolute value of n
NB.     e.g. |11| = 11 and |-4| = 4
NB. 
NB. Find the product of the coefficients, a and b, for the quadratic expression
NB. that produces the maximum number of primes for consecutive values of n,
NB. starting with n = 0.

f =: p.

isPrime =: pr =: e. q: NB. Hook: member of its factors.
NB. From http://www.jsoftware.com/help/learning/21.htm.

tuple =: [,]
NB. 2 tuple 3
NB. 2 3

tuple"0/~i:10

(tuple"0/~i:1000),."2 (1) NB. To get the coefficients to test.

NB. Thanks to http://fsharp-euler.wikispaces.com/euler+027, I know the coefficients:
1 _61 971 p. i.10

1000=# pr"0 (971 _61 1) p. i.1000 NB. 1.

qe=:((tuple"0/~i:10),."2 (1)) & p. NB. Quadratic expression.

qe"0 i.10
NB. I give up.





NB. olegyk:
  pr=: 1: = #@q:"0
  pc=: 4 : '(>:^:((pr@((x.,y.,1)&p.)) :: 0:))^:_] 1'
  ($ #: (i. >./)@,)(p:i.168)pc"0/i:999
163 938
  (p:163)*938{i:999
_59231
NB. Huh?





NB. Eratosthenes
abs=.+`-@.(<&0)
zero=.]`1:@.(=&0)
pr=.1:=#&q:
filter=.pr@:zero@:abs

foo=.verb define
bnd=.(,/,"0/~i:y),"1 ]1
fbnd=.(filter@:{."1 bnd)#bnd
maxz=.0 for_c. fbnd do.
  g=:filter@:(c p. ])
  z=.(>:^:g^:_) 0
  if. z>maxz do.
    maxz=.z
    ans=.*/c
  end.
end.
ans
)
NB. (6!:2) 'foo 1e3'
NB. 26.48

NB. vim:ft=j
