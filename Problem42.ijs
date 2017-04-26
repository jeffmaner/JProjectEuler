NB. How many triangle words does the list of common English words contain?
NB. 
NB. The nth term of the sequence of triangle numbers is given by, t[n] = ½n(n+1);
NB. so the first ten triangle numbers are:
NB. 
NB. 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
NB. 
NB. By converting each letter in a word to a number corresponding to its alphabetical
NB. position and adding these values we form a word value. For example, the word
NB. value for SKY is 19 + 11 + 25 = 55 = t[10]. If the word value is a triangle
NB. number then we shall call the word a triangle word.
NB. 
NB. Using Problem42.txt, a 16K text file containing nearly two-thousand common
NB. English words, how many are triangle words?

NB. Triangle Number.
T =: -: * >:
NB. T is half y times y's successor.

  (-: * >:) >: i.10
1 3 6 10 15 21 28 36 45 55

NB. Character value, A = 1, B = 2, etc.
cv =: 64 -~ a. i. ] NB. 64 = Asc('A') - 1.
NB. Character value is 64 from the index of the letter y.

NB. Word value.
wv =: +/ @: cv"0
NB. Word value is the sum over character values of the characters of y.
NB. Why does this ignore the +/?

t =: 1!:1 <'d:\programs\j602\j602-user\ProjectEuler\Problem42.txt' NB. Reads the file.
w =: <;._1 ',',t-.'"'                                              NB. Cuts into words on commas, eliminating quotes.

  +/"1 > ((64 -~ a. i. ])"0)"0 &.> w

  >./ +/"1 > ((64 -~ a. i. ])"0)"0 &.> w
192

  T i.21

+/ (+/"1 > ((64 -~ a. i. ])"0)"0 &.> w) e. (T i.21) NB. 162.






NB. olegyk:
load'files'
W=: <@([: }: }.);._2,&','fread'euler/words.txt'
V=: +/@(A&i.)&>W
T=: (-: * >:) 1+i.1000
+/V e. T





NB. Eratosthenes:
F=.'/.../euler42.txt'
data=.1!:1<F
x=.<;._1 ',',data-.'"'
tn=.+/+/\>:&i.
+/+/,/(tn"0 ]>:i.20)="0 1 ]+/"1]_32-.~"1](_64&+)@(a.&i.)>x


NB. vim:ft=j
