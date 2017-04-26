NB. Evaluate the sum of all amicable pairs under 10000.
NB. 
NB. Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
NB. If d(a) = b and d(b) = a, where a != b, then a and b are an amicable pair and each of a and b are called
NB. amicable numbers.
NB. 
NB. For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284.
NB. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
NB. 
NB. Evaluate the sum of all the amicable numbers under 10000.

divs =: 3 : '(i.y)#~0=(i.y)|y' NB. Proper Divisors.

d=: +/ @: divs

isAmicable=: 3 : 0
a=.y
b=.d a
(a=d b) *. (b=d a) *. -.a=b
)

+/ (isAmicable"0 i.10000)#i.10000 NB. 31626. Whoo-hoo! :)






NB. hansfahlin:
dp=: <:@] %~ [: <: ] ^ >:@[ NB. Sum of factors of prime power.
div=:([: */ +/"1@= dp ~.)@q: NB. Divisor funtion.
rdiv=: div - ] NB. Restricted divisor function.
+/((a ~: b) *. a = rdiv b=:rdiv a)#a=: }. >: i. 10000




NB. olegyk
ds=: +/@:~.@(*/@#~ #:@i.@<:@(2&^)@#)@q:
+/ (#~ (~: ds"0)) (#~ (= ds@ds)) 2+i.10000

NB. vim:ft=j
