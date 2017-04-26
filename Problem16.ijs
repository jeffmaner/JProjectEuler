NB. What is the sum of the digits of the number 2^1000?
NB. 
NB. 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
NB. 
NB. What is the sum of the digits of the number 2^1000?

NB. Sum over the digits of two to the thousandth converted to a string.
+/ "."0 ": 2^1000x NB. 1366.
+/"."0":4^500x NB. Shorter by one character, exploiting the fact that 2^n is (2^2)^n%2.

NB. vim:ft=j
