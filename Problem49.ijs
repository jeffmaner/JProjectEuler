NB. Find arithmetic sequences, made of prime terms, whose four digits are
NB. permutations of each other.
NB.
NB. The arithmetic sequence, 1487, 4817, 8147, in which each of the terms
NB. increases by 3330, is unusual in two ways: (i) each of the three terms are
NB. prime, and, (ii) each of the 4-digit numbers are permutations of one another.
NB. 
NB. There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes,
NB. exhibiting this property, but there is one other 4-digit increasing sequence.
NB. 
NB. What 12-digit number do you form by concatenating the three terms in this
NB. sequence?

isPermutationOf =: 4 : 0
  NB. 'a b' =. ":"0 (x y) NB. This line is a syntax error, even though it works find in the ijx.
  a =. ": x [ b =. ": y
  (a/:a) -: b/:b
)

problem49 =: 3 : 0
  primes4 =. (1 p: n)#n=.1488+i.8511 NB. Start just beyond what we already know.
  for_a. primes4 do.
    for_b. (primes4>a)#primes4 do.
      if. a isPermutationOf b do.
        c=.(2*b)-a
        if. c e. primes4 do.
          if. a isPermutationOf c do.
            a, b, c NB. 2969 6299 9629.
            return.
          end.
        end.
      end.
    end.
  end.
)




NB. I found only one solution on the Project Euler website, olegyk's; but it
NB. didn't seem to actually, really, answer the question. :(

NB. vim:ft=j
