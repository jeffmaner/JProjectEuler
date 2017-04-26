NB. Find the longest sequence using a starting number under one million.
NB. 
NB. The following iterative sequence is defined for the set of positive integers:
NB. 
NB. n -> n/2    (n is even)
NB. n -> 3n + 1 (n is odd)
NB. 
NB. Using the rule above and starting with 13, we generate the following sequence:
NB. 13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
NB. 
NB. It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although
NB. it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
NB. 
NB. Which starting number, under one million, produces the longest chain?
NB. 
NB. NOTE: Once the chain starts the terms are allowed to go above one million.

NB. The function described in the brief.
f =: (1+3&*)`-: @. (0=2|])

NB. The recursive function to generate the sequence.
g =: 1:`(],$:@f@:]) @. (1<])

NB. Matrix of sequences.
s =: g"0 >:i.1e6 NB. Limit error. :(
NB. g"0 i.10000 results in out of memory error.

NB. Boolean matrix of non-zero values.
m =: -. =&0"1 s

NB. Counts of values.
c =: +/"1 m

NB. Maximum of counts.
x =: >./ c NB. Result is .

NB. Index of maximum count.
i =: x i.~ c NB. Result is .

findMax=. 3 : 0
n=.1
maxCount=.0
maxN=.0
while. n<1e6 do.
  ns=.g n
  c=.#ns
  if. c>maxCount do.
    maxCount=.c
    maxN=.n
  end.
  n=.>:n
end.
maxN
)
NB. After five mintes, the correct answer: 837799.





collatz =: (%&2)`(>:@:*&3)@.(2&|)"0
iterations =: (>:@:$:@:collatz)`1:@.(=&1)"0
500001 + (i. (>./)) iterations >: 5e5 + i. 5e5
NB. Took about two minutes.


NB. vim:ft=j
