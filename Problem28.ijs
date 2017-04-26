NB. What is the sum of both diagonals in a 1001 by 1001 spiral?
NB. 
NB. Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:
NB. 
NB. 21 22 23 24 25
NB. 20  7  8  9 10
NB. 19  6  1  2 11
NB. 18  5  4  3 12
NB. 17 16 15 14 13
NB. 
NB. It can be verified that the sum of the numbers on the diagonals is 101.
NB. 
NB. What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

NB. Discussion at http://www.mathblog.dk/project-euler-28-sum-diagonals-spiral/

(1 26r3 10 16r3) p. 500 NB. 669171001.




NB. u56:
+/+/\1,4#2*>:i.500



NB. nspies' translation of u56's code:
+/ diags =: +/\ prepend =: 1,copy4 =: 4 # even =: 2*>:i.500


NB. olegyk:
load '~system\packages\misc\evolute.ijs'
<:+/((i.1001)}A), (i._1001)}A=.|."1]1+evolute 1001






NB. BayesianPride:
3 -~ +/ 4 4 16 p. i. 501x
NB. the contribution of the four numbers of a given distance away from the center
NB. is given by a quadratic polynomial. However, since there is one number in the
NB. center not four, this method overestimates the count by 3.

NB. vim:ft=j
