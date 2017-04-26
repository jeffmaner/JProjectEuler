NB. What is the largest n-digit pandigital prime that exists?
NB. 
NB. We shall say that an n-digit number is pandigital if it makes use of all the
NB. digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is
NB. also prime.
NB. 
NB. What is the largest n-digit pandigital prime that exists?

NB. Is y 1-n pandigital?
isPandigital =: (>: @: i. @: # @: ": @: ]) -: ([: /:~ "."0 @: ": @: ])
NB. Does the list 1 to n match the sorted list of digits of y?
NB. Out of Memory error? Yet when I run it explicitly, it works...

isPrime =: e. q: NB. Hook: memember of its factors.

NB.  I'll go ahead and take advantage of an optimization found at Math Blog.
NB. At http://www.mathblog.dk/project-euler-41-pandigital-prime/ he notes that all pandigital numbers except
NB. for the four-digit and seven-digit ones are divisible by three, and are therefore not prime. So he sets
NB. the maximum number to check at 7654321 instead of 987654321, which significantly speeds up the discovery
NB. process.

primes =: p:@i.(p:^:_1) 8000000 NB. 8000000 is rounding up from 7654321.

>./ (#~ ((>: @: i. @: # @: ": @: ]) -: ([: /:~ "."0 @: ": @: ]))"0) primes NB. 7652413.





NB. mhovm:
>./{."1 q:"."1(i.5040)A.'7654321' NB. Gasp!





NB. RogerHui:
>./ {.@q: ". (i.!7) A. '1234567'

NB. vim:ft=j
