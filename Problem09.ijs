NB. Find the only Pythagorean triplet, {a, b, c}, for which a + b + c = 1000.
NB. 
NB. A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
NB. a^2 + b^2 = c^2
NB. 
NB. For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
NB. 
NB. There exists exactly one Pythagorean triplet for which a + b + c = 1000.
NB. Find the product abc.

NB. From the Pythagorean Triplets lab:
NB. Hypotenuse function c (for sides a,b,c).
c=: %: @: (+/) @: *:
NB. c 3 4
NB. 5
NB. c 5 12
NB. 13

NB. Pythagorean triple.
pt=: ],c
NB. pt 3 4
NB. 3 4 5



NB. The *only* J solution on the forum! :(
x:*/{.(#~ 1000"_=+/"1)(, +&.*:/)"1,/,"0/~1+i.1000
NB. I don't think the 1000 needs the "_.

NB. vim:ft=j
