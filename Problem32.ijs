NB. Find the sum of all numbers that can be written as pandigital products.
NB. 
NB. We shall say that an n-digit number is pandigital if it makes use of all the digits
NB. 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.
NB. 
NB. The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand,
NB. multiplier, and product is 1 through 9 pandigital.
NB. 
NB. Find the sum of all products whose multiplicand/multiplier/product identity can
NB. be written as a 1 through 9 pandigital.
NB. 
NB. HINT: Some products can be obtained in more than one way so be sure to only include
NB. it once in your sum.

NB. Is y 1-9 pandigital?
p =: (>: i.9) -: (/:~ "."0 @: ": @: ])
NB. Does the list 1 to 9 match the sorted list of digits of y?

NB. Returns divisors of y.
divs =: (>:@:i.@:])#~0=(>:@:i.@:])|]
NB. Those integers that evenly divide y.

NB. Does y have the identity described in the brief?
hasIdentity =: 3 : 0
  f  =. 0 NB. Flag indicating possession of identity.
  ds =. divs y
  whilst. a<b do. NB. whilst. skips test first time through.
    a  =. {. ds NB. First divisor of y.
    b  =. {: ds NB. Last  divisor of y.
    ds =. }. }: ds NB. Divisors beheaded and curtailed.
    f  =. p (":a) , (":b) , ":y NB. Stringify a, b, and y, and concatenate them, passing that to p.
    if. f do. break. end.
  end.
  f
)

NB. 1 -: hasIdentity 7254
NB. 0 -: hasIdentity 7253

NB.   (1000+i.8999) #~ hasIdentity"0 (1000+i.8999)
NB. 4396 5346 5796 6952 7254 7632 7852
NB.    +/ (1000+i.8999) #~ hasIdentity"0 (1000+i.8999)
NB. 45228





NB. Roger Hui:
p=:   (10+i.90) (*/ ,&.>&,,&.>/)  100+i. 900
p=: p,( 1+i. 9) (*/ ,&.>&,,&.>/) 1000+i.9000
p=:   p #~ 1e4 > {.&>p
p=: > p #~ '   123456789' -:"1 /:~"1 ":>p
+/~.{."1 p
NB. A 1-9 pandigital product is a 2-digit number
NB. times a 3-digit number, or a 1-digit number
NB. times a 4-digit number, with a product less
NB. than 1e4. (3 2 and 4 1 also works, but don't
NB. give any extra products.)





NB. olegyk:
pd=. ((-:&'123456789')@(/:~)@(9&":))"0
p =. pd ,(,&.": ,&.": *)"0/~2+i.1999
+/ ~.p# ,*"0/~2+i.1999






NB. rminhas:
f =. (4#10)&#.@((5 6 7 8)&{) = (2#10)&#.@((0 1)&{) * (3#10)&#.@((2 3 4)&{)
g =. (4#10)&#.@((5 6 7 8)&{) = (10)&#.@{. * (4#10)&#.@((1 2 3 4)&{)
+/(4#10)#.~.((5 6 7 8)&{)"1 (] #~ f"1 +. g"1) 10&#.^:_1 ". (i.!9) A. '123456789'

NB. vim:ft=j
