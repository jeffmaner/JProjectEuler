NB. What is the largest 1 to 9 pandigital that can be formed by multiplying a
NB. fixed number by 1, 2, 3, ... ?
NB.
NB. Take the number 192 and multiply it by each of 1, 2, and 3:
NB. 
NB.     192 × 1 = 192
NB.     192 × 2 = 384
NB.     192 × 3 = 576
NB. 
NB. By concatenating each product we get the 1 to 9 pandigital, 192384576. We
NB. will call 192384576 the concatenated product of 192 and (1,2,3).
NB. 
NB. The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4,
NB. and 5, giving the pandigital, 918273645, which is the concatenated product
NB. of 9 and (1,2,3,4,5).
NB. 
NB. What is the largest 1 to 9 pandigital 9-digit number that can be formed as
NB. the concatenated product of an integer with (1,2, ... , n) where n > 1?

NB. Is y 1-9 pandigital?
p =: (>: i.9) -: (/:~ "."0)
NB. Does the list 1 to 9 match the sorted list of digits of y?

  192 * 1 2 3
192 384 576

  (":"0) 192 * 1 2 3
192
384
576

  ,(":"0) 192 * 1 2 3
192384576

NB. See Math Blog's discussion for limitation of solution space.
getAnswer =: 3 : 0
  n =. 9387
  r =. 0
  while. n >: 9234 do.
    r =. ((":"0) n), (":"0) (n*2)
    if. p r do. break. end.
    n =. <: n
  end.
  r
) NB. 932718654.





NB. olegyk:
d=: >:i.8
p=: '123456789'"_ -: /:~
n=: (#~ ' '&~:)@":@:*
m=: p@n
f=: 3 : '".y. n(1>.(+./ * >:@i:&1)@:(y.&m\) d){.d'"0
{:/:~f i.10000





NB. carl:
t=: 3 : 0
  z=:>:0*i=:y.
  while.0=9&<:@#@": i do.i=:".(":i),":y.*z=:>:z end.
  i
)
showall=:t"0@>:@I.@(('123456789'&-:@/:~@":)@t"0@>:@i.)
NB. showall [n] gives all possible pandigitals made from the initial numbers up
NB. to n. To find the highest pandigital for initial value under 10000 (all
NB. that's necessary here), this is the code:
>./showall 10000

NB. vim:ft=j
