NB. Which prime, below one-million, can be written as the sum of the most
NB. consecutive primes?
NB. 
NB. The prime 41 can be written as the sum of six consecutive primes:
NB. 41 = 2 + 3 + 5 + 7 + 11 + 13
NB. 
NB. This is the longest sum of consecutive primes that adds to a prime below
NB. one-hundred.
NB. 
NB. The longest sum of consecutive primes below one-thousand that adds to a
NB. prime contains 21 terms, and is equal to 953.
NB. 
NB. Which prime, below one-million, can be written as the sum of the most
NB. consecutive primes?

primes =: p: i. _1 p: 1e6

+\ primes NB. Out of memory error.

(+\ primes) e. primes NB. Out of memory error.

primes =: p: i. _1 p: 1e5 NB. No memory problem!

((+/\ primes) e. primes)#primes
2 3 7 13 37 43 281 311 503 541 557 593 619 673 683 733 743 839 881 929 953 1061

primes =: p: i. _1 p: 1e6
((+/\ primes) e. primes)#primes NB. No memory problem!
2 3 7 13 37 43 281 311 503 541 557 593 619 673 683 733 743 839 881 929 953 1061 1163 1213 1249 1277 1283 1307 1321 1949 2029 2161 2203 2213 2237 2243 2297 2357 2393 2411 2957 3137 3251 3257 3301 3413 3461 3491 3671 3821 3863
NB. 41 is not included, so this is not the right algorithm. But 953 is included...

(primeSums e. primes)#primeSums=.+/\ primes
2 5 17 41 197 281 7699 8893 22039 24133 25237 28697 32353 37561 38921 43201 44683 55837 61027 66463 70241 86453 102001 109147 116533 119069 121631 129419 132059 263171 287137 325019 329401 333821 338279 342761 360979 379667 393961 398771 581921 642869 6812...
NB. 41 is included, but 953 is not--again, not the right algorithm.

+/3}.24{.primes NB. 953.

{:(primeSums e. primes)#primeSums=.,(>:i.21)+/\ primes NB. 998147, which is not the correct answer.
NB. That's the largest prime that is a sum of primes. It's not necessarily the sum of the most consecutive primes.
NB. Oh. It's also got 21 hard-coded. I need that to be 1e6.

{:(primeSums e. primes)#primeSums=.,(>:i.1e6)+/\ primes NB. Limit error.

{:(primeSums e. primes)#primeSums=.,(>:i.1e2)+/\ primes NB. 24133.
>./(primeSums e. primes)#primeSums=.,(>:i.1e2)+/\ primes=: p: i. _1 p: 1e6 NB. 999983.
NB. How do I count the summands?

(>:i.1e2)<\ primes NB. Out of memory.
(>:i.21) <\ primes NB. Out of memory!
<\ primes NB. Out of memory!

primes=. p: i. _1 p: 1e3
summands=.(>:i.21)<\ primes
+/"1>"0 {:summands
712 789 869 953 1043 1133 1223 1313 1403 1493 1591 1691 1791 1889 1995 2099 2203 2307 2413 2519 2627 2735 2847 2957 3065 3167 3277 3397 3517 3637 3757 3869 3979 4093 4211 4325 4443 4557 4671 4785 4895 5009 5135 5255 5375 5495 5627 5753 5877 5999 6123 6249 ...

>./(1000>sums)#sums=.+/"1>"0 {:summands NB. 953.

>./(1e6>sums)#sums=.+/"1>"0 {:summands=.(>:i.1e6)<\ primes=. p: i. _1 p: 1e6 NB. Out of memory on boxing.
(1e6>sums)#sums=.+/"1>"0 {:summands=.(>:i.1e2)<\ primes=. p: i. _1 p: 1e6 NB. Out of memory on boxing.

problem50 =: 3 : 0
  maxSummandsCount =. 0
  maxSummandsPrime =. 0
  primes =: p: i. _1 p: 1e6
  for_p. primes do.
    candidateSummands =. (p>primes)#primes
    candidateSummandsCount =. # candidateSummands
    for_i. >: i. candidateSummandsCount do.
      summands =. i<\candidateSummands
      summandsCells =. # summands
      for_c. i. summandsCells do.
        sum =. +/ > c { summands
        if. sum = p do.
          summandsCount =. # > c { summands
          if. summandsCount >: maxSummandsCount do.
            maxSummandsCount =. summandsCount
            maxSummandsPrime =. p
          end.
        end.
      end.
    end.
  end.
  maxSummandsPrime, maxSummandsCount
)




primes =: p: i. _1 p: 1e6
(primes>n)#primes


f =: 4 : 0
  sum =. {. x
  count =. {: x
  (sum+y), >: count
)


   (1,1) f 1
2 2
   (2,2) f 2
4 3
   (4,3) f 3
7 4
   (1,1) f\>:i.3
|domain error: f
|   (1,1)    f\>:i.3
   (1,1)&f\>:i.3
2 2 0 0
2 3 2 0
2 3 4 2

f =: 4 : 0
  sum =. >{. x
  count =. >{: x
  (sum+y); >: count
)

f =: 3 : 0
  sumCount =. >{. y
  sum =. {. sumCount
  count =. {: sumCount
  ns =. >{: y
  (sum+ns);>: count
)

f =: 3 : 0
  sumCount =. >{. y
  sum =. {. sumCount
  count =. {: sumCount
  ns =. >{: y
  (sum+ns);#(sum+ns)
)





NB. olegyk:
P=. p: i.&.(-&71274) 78498
t=. (+/\)"1 p:50(+/&i.)546
{:(#~ e.&P)({~([:(i. >./)(+./ * i:&1)@(e.&P)"1)) t

NB. This is hardly satisfactory. Where do the numbers come from? How do you know 546? Come on.

NB. vim:ft=j
