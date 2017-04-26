NB. Find the sum of all numbers less than one million, which are palindromic in
NB. base 10 and base 2.
NB. 
NB. The decimal number, 585 = 1001001001 (binary), is palindromic in both bases.
NB. 
NB. Find the sum of all numbers, less than one million, which are palindromic in
NB. base 10 and base 2.
NB. 
NB. (Please note that the palindromic number, in either base, may not include
NB. leading zeros.)

isPalindrome =: p =: = |. &. ": "0
isPalindrome2 =: p2 =: -: |.

+/ (#~ (p *. (p2 @: #:)"0)) >: i. 1e6 NB. 872187.




NB. Roger Hui:
+/ I. ((-:|.)@#: *. (-:|.)@":)"0 i.1e6

NB. vim:ft=j
