NB. If p is the perimeter of a right angle triangle, {a, b, c}, which value, for
NB. p <= 1000, has the most solutions?
NB. 
NB. If p is the perimeter of a right angle triangle with integral length sides,
NB. {a,b,c}, there are exactly three solutions for p = 120.
NB. 
NB. {20,48,52}, {24,45,51}, {30,40,50}
NB. 
NB. For which value of p <= 1000, is the number of solutions maximised?

isRightTriangle =: rt =: 3 : 0
  a=.{. y
  b=.{. }. y
  c=.{: y
  (*: c) = (*: a) + *: b 
)

NB. x is the perimeter, y is the length of side a.
bIsIntegral =: 4 : 0
  0 = (2 * (y - x)) | (x * (x - 2 * y))
)

findPythagoreanTriples =: fpts =: 3 : 0
  r =. 0 NB. Result.
  s =. 0 NB. Result solutions.

  for_p. i. 1000 do.
    c =. 0 NB. Solutions count.

    for_a. i. <. p % 3 do.
      if. p bIsIntegral a do.
        c =. >: c
      end.
    end.

    if. c > s do.
      s =. c
      r =. p
    end.
  end.

  r
) NB. 840.






NB. olegyk:
P=: ,(+/@, +/&.:*:)@,"0/~ 1+i.1000
P1=: (#~ 1000&>) (#~ (0: = 1&|))P
(I.@(] = >./)@:(+/"1)@= { ~.) P1





NB. fabikw:
B=: 3 : 0
A=: 0 0
nats =: (y+2) $ 0
test=: (2&|@-)*.(1&=@+.)
for_a. (1+ i. (>.@%: y)) do.
  for_b. (1+ i. a) do.
    if. (a test b) do.
      pos =: a (+:@[*+) b
      if. (pos<:y) do.
        r=: pos { nats
        nats=: (r +1) (pos}) nats
      end.
    end.
  end.
end.
for_i. (2+ (i. (y - 1))) do.
  if. (2|i) do.
    A =: A, 0
  else.
    others =: +/ {&nats(}:(divisors i))
    A =: A , (others + i{nats)
  end.
end.
A
)

\. B 1000






NB. Eratosthenes:
imax=.(]e.>./)#i.@#
nubfr=.#/.~
mode=.imax@nubfr{~.
mode (+/)"1 ~./:~"1 (#~ +/"1=<.@+/"1) (,+/&.*:/)"1,/,"0/~>:i.500
NB. Used the code for mode from the J Tutorial and Statistical Package by Keith Smillie.

NB. vim:ft=j
