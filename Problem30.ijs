NB. Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
NB. 
NB. Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
NB. 
NB.     1634 = 1^4 + 6^4 + 3^4 + 4^4
NB.     8208 = 8^4 + 2^4 + 0^4 + 8^4
NB.     9474 = 9^4 + 4^4 + 7^4 + 4^4
NB. 
NB. As 1 = 1^4 is not a sum it is not included.
NB. 
NB. The sum of these numbers is 1634 + 8208 + 9474 = 19316.
NB. 
NB. Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

+/ 2}.((]= +/ @: (5^~ ("."0 ":@:])))"0 i.1e6) # i.1e6 NB. 443839.





NB. olegyk:
s5=: +/@:(^&5)@:("."0)@":"0
+/(#~ (= s5))2+i.1e6





NB. Eratosthenes:
sum5=.+/@:(^&5@"."0@":)
match=.#~(=sum5)
+/match"0 ]2+i.1e6

NB. vim:ft=j
