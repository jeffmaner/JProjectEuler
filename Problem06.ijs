NB. What is the difference between the sum of the squares and the square of the sums?
NB. 
NB. The sum of the squares of the first ten natural numbers is,
NB. 1^2 + 2^2 + ... + 10^2 = 385
NB. 
NB. The square of the sum of the first ten natural numbers is,
NB. (1 + 2 + ... + 10)2^ = 55^2 = 3025
NB. 
NB. Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is
NB. 3025 - 385 = 2640.
NB. 
NB. Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the
NB. sum.

(([:*:+/) - +/&:*:) >:i.100 NB. 25164150


(([: *: +/)-([: +/ *:)) (i.101)


([:+/ [:+/ ~:/* */)~>:i.100


(*:@(+/) - +/@:*:) 1+i.100


+/,*`0:@.=/~ 1+i.100 NB. sum Ai*Aj, i neq j
NB. Sum over the enlisted signums, or zero, based on a 100x100 identity matrix. I just don't get how it works.

NB. vim:ft=j
