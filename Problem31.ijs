NB. Investigating combinations of English currency denominations.
NB. 
NB. In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:
NB. 
NB.     1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
NB. 
NB. It is possible to make £2 in the following way:
NB. 
NB.     1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
NB. 
NB. How many different ways can £2 be made using any number of coins?

coins =: 1 2 5 10 20 50 100 200

count =: 4 : 0
  if. x=0 do. 1
  elseif. x<0 do. 0
  elseif. y<:0 *. x>:1 do. 0
  elseif. 1 do. (x count <:y) + ((x-({: (<:y) {. coins)) count y) NB. Stack error.
  end.
)

200 count # coins





NB. olegyk:
range=: 4 : 'i.@>:@<.&.(%&y.) x.'
test=: [: +./ 2: > (, #)
make=: ([: +/ ([ - (range {:)) make }:@])`1:@.test"0 1
200 make 1 2 5 10 20 50 100 200

NB. vim:ft=j
