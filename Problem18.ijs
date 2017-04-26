NB. Find the maximum sum travelling from the top of the triangle to the base.
NB. 
NB. By starting at the top of the triangle below and moving to adjacent numbers on the row below,
NB. the maximum total from top to bottom is 23.
NB. 
NB.    3
NB.   7 4
NB.  2 4 6
NB. 8 5 9 3
NB. 
NB. That is, 3 + 7 + 4 + 9 = 23.
NB. 
NB. Find the maximum total from top to bottom of the triangle below:
NB. 
NB. 75
NB. 95 64
NB. 17 47 82
NB. 18 35 87 10
NB. 20 04 82 47 65
NB. 19 01 23 75 03 34
NB. 88 02 77 73 07 63 67
NB. 99 65 04 28 06 16 70 92
NB. 41 41 26 56 83 40 80 70 33
NB. 41 48 72 33 47 32 37 16 94 29
NB. 53 71 44 65 25 43 91 52 97 51 14
NB. 70 11 33 28 77 73 17 78 39 68 17 57
NB. 91 71 52 38 17 14 91 43 58 50 27 29 48
NB. 63 66 04 68 89 53 67 30 73 16 69 87 40 31
NB. 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
NB. 
NB. NOTE: As there are only 16384 routes, it is possible to solve this problem by trying every route.
NB. However, Problem 67, is the same challenge with a triangle containing one-hundred rows; it cannot
NB. be solved by brute force, and requires a clever method! ;o)

t =: ". ;._2 (0 : 0)
75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
)





prob18=: 3 : 0
max=.0
for_ix. i. 2^<:#y. do.
max=.max>.+/{.|: (0,+/\((<:#y.)#2)#:ix)|."0 1 y.
end.
max
)




NB. Roger Hui, improving upon previous answer:
>./ +/"1 (+/\"1 ]0,.15+#:i.2^14){,t





NB. olegyk:
A=: ".;._2 fread'euler/p18.txt'
{.(+/@:,: 2&(>./\))/A







NB. nspies:
NB. My problem was how to represent the triangle; a matrix with a bunch of 0s didn't appeal. Instead,
NB. put each line into an array of 15 boxes.
NB.
NB. The trick is to realize that the maximum of the sums of the 'right' and 'left' paths can be substituted
NB. for the next to last line, while the last line can be lopped off as redundant once this calculation is made.
NB. So, by working 'backwards' we turn an exponentially growing problem into an implosion to the solution.

tot =: 3 : 0                       NB. array of boxes, from 75 to bottom line.
y =. y.                            NB. assign to local.
len =. # y                         NB. get length.
whilst. len > 1 do.                NB. while len > 1.
  for_j. i.- (len-1) do.           NB. count backwards.
    a =. > (j&{ y)                 NB. get next to last row.
    L =. }: > ((>:j)&{ y)          NB. lop off end of last row.
    R =. }. > ((>:j)&{ y)          NB. behead last row.
    max =. <((+/a,:L) >. (+/a,:R)) NB. calc max scores.
    y =. }: (}: y)                 NB. cut off last two rows.
    y =. y , max                   NB. append row of totals in their place.
    len =. # y                     NB. update length.
  end.
end.
y                                  NB. return value of maximal path.
)

NB. vim:ft=j
