NB. Find the sum of all numbers which are equal to the sum of the factorial of their digits.
NB. 
NB. 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
NB. 
NB. Find the sum of all numbers which are equal to the sum of the factorial of their digits.
NB. 
NB. Note: as 1! = 1 and 2! = 2 are not sums they are not included.

+/2}.(>:i.999999)#~(]= +/ @: (! @: "."0 ":@:]))"0>:i.999999

factSumEq =: (]= +/ @: (! @: "."0 ":@:]))"0
+/2}. (#~ factSumEq) >:i.1e5






NB. olegyk:
fd=: +/@:!@:("."0)@":"0
+/(#~ (= fd)) 3+i.1e5






NB. fluff:
_3++/I.(=+/@(!@"."0@":)"0)i.3e6




NB. Eratosthenes:
factsum=.verb def '+/!"0@:(10&#.^:_1) y'
match=.factsum=]
matchary=.verb def '(match"0 (3}.i.y))#(3}.i.y)'
+/matchary 1e5

NB. vim:ft=j
