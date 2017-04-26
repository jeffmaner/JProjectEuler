NB. Find the sum of all the positive integers which cannot be written as the sum
NB. of two abundant numbers.
NB. 
NB. A perfect number is a number for which the sum of its proper divisors is
NB. exactly equal to the number. For example, the sum of the proper divisors of
NB. 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
NB. 
NB. A number n is called deficient if the sum of its proper divisors is less than
NB. n and it is called abundant if this sum exceeds n.
NB. 
NB. As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest
NB. number that can be written as the sum of two abundant numbers is 24. By
NB. mathematical analysis, it can be shown that all integers greater than 28123
NB. can be written as the sum of two abundant numbers. However, this upper limit
NB. cannot be reduced any further by analysis even though it is known that the
NB. greatest number that cannot be expressed as the sum of two abundant numbers
NB. is less than this limit.
NB. 
NB. Find the sum of all the positive integers which cannot be written as the sum
NB. of two abundant numbers.

divs =: 3 : '(i.y)#~0=(i.y)|y' NB. Proper Divisors.
divs =: (i.@:])#~0=(i.@:])|] NB. Proper Divisors.
NB. (0=(i.y)|y) # i.y

isAbundant =: ]@< +/ @: divs

abundants =: (isAbundant"0 i.28123) # i.28123

+/~ (isAbundant"0 i.28123) # i.28123 NB. Out of memory.
NB. But look. It's done below. Apparently Out of memory refers to an attempt
NB. to output the data, and not the attempt to process the data?
NB. # , +/~ abundants
NB. 48511225

((]@< +/ @: ((i.@:])#~0=(i.@:])|]))"0 i.28123) # i.28123 NB. -: abudants.






NB. olegyk:
ds=: +/@:~.@(*/@#~ #:@i.@<:@(2&^)@#)@q:
+/(1+i.28123)-.~.,+/~(#~(<ds))12+i.28120





NB. nspies:
pdv=: i.([#~0:=|)] NB. proper divisors.
abup =: 3 : 'y. < +/ pdv y.' NB. abundant number?
an =: n#~a =. abup"0 n=. i. 30000 NB. 7427 of them.
ansum =: ~. , +/~an NB. all unique sums of an.
nums =. >:i. 28125 NB. 1 to 28125..more than enough.
notan =: (-.(nums e. ansum))#nums NB. not sum of two an.
+/notan NB. sum list (ends with 20161)






NB. rminhas:
NB. ab is the set of all abundant numbers below 28123.
ab =. (] #~ +/@:~.@(*/@#~ #:@:i.@<:@(2&^)@#)@q: > ]) 2+i.28122
+/ (1+i.28123) -. ,/+/~ ab





NB. lanidrak:
dp =: <:@] %~ [: <: ] ^ >:@[ NB. Sum of factors of prime power.
div =: ([: */ +/"1@= dp ~.)@q: NB. Divisor funtion.
rdiv =: div - ] NB. Restricted divisor function.
abundants =: ( ( rdiv > ] ) # ] ) >:i.28123 NB. Abundant numbers.
abu2 =: /:~ (<:&28123 # ] ) ~. , +/~ abundants NB. integer that are sum of two abundant numbers.
( +/ >:i.28123 ) - ( +/ abu2 )





NB. Eratosthenes:
divary=.verb def '(((i.>:>.-:y)|y)=0)#i.>:>.-:y'
abundant=.verb def '((+/"1 divary"0 ]1+i.y)>(1+i.y))#(1+i.y)'
abundant_sums=.verb def '~.(,(abundant y)+/,.(abundant y))'
euler23=.verb def '+/(-.+./(,.abundant_sums y) E."1 i.y)#i.y'
euler23 28124

NB. vim:ft=j
