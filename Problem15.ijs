NB. Starting in the top left corner in a 20 by 20 grid, how many routes are there to the bottom right corner?
NB. 
NB. Starting in the top left corner of a 2×2 grid, there are 6 routes (without backtracking) to the bottom right corner.
NB. 
NB. How many routes are there through a 20×20 grid?

NB. The Combinatorics discussion at http://www.mathblog.dk/project-euler-15/ was helpful in figuring out the numbers
NB. to use.

20!40x NB. 137846528820.

NB. We need to know how many ways we can choose N out of 2N possible places (if the order does not matter).



NB. Central Binomial Coefficient in J:
(! +:) 20x




(!@+~ % *~@!) 20x NB. Nice symmetry.


NB. vim:ft=j
