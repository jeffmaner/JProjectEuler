NB. Find the sum of all eleven primes that are both truncatable from left to
NB. right and right to left.
NB. 
NB. The number 3797 has an interesting property. Being prime itself, it is
NB. possible to continuously remove digits from left to right, and remain prime
NB. at each stage: 3797, 797, 97, and 7. Similarly we can work from right to
NB. left: 3797, 379, 37, and 3.
NB. 
NB. Find the sum of the only eleven primes that are both truncatable from left
NB. to right and right to left.
NB. 
NB. NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

isPrime =: p =: e. q: NB. Hook: memember of its factors.

(p }.&.":)^:_ (3797) NB. Converge...

((}.&.":)^:p)^:_ (3797) NB. DoWhile...

truncatable =: 1 : 0
  b =. 1
  n =. y
  while. (-. 0 = $ n) do.
    if. n>0 do.
      b =. b *. isPrime n
    end.
    n =. u &. ": n
  end.
  b
)

leftTruncatable  =: lt =: }. truncatable
rightTruncatable =: rt =: }: truncatable

+/ (#~ (lt *. rt)"0) (10+i. 1e6) NB. 748317.





NB. olegyk:
P=: p:i.100000
digits=: #:~ 10&(>:@<.@^.#[)
trunc=: 10&#.\ , 10&#.\.
+/(#~ *./@:(e.&P)@trunc@digits"0) 4}.P





NB. Pigeon:
primes =: p:@i.(p:^:_1) 1e6
trunc =: ~.@(".\. , ".\)@(":)
isPrime =: 1: = #@q:
d =: *./ @ isPrime @ trunc

  (#~ d"0) primes
2 3 5 7 23 37 53 73 313 317 373 797 3137 3797 739397
  +/ 23 37 53 73 313 317 373 797 3137 3797 739397
748317

NB. vim:ft=j
