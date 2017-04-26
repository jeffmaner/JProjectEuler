NB. How many circular primes are there below one million?
NB. 
NB. The number, 197, is called a circular prime because all rotations of the
NB. digits: 197, 971, and 719, are themselves prime.
NB. 
NB. There are thirteen such primes below 100:
NB. 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
NB. 
NB. How many circular primes are there below one million?

isPrime =: pr =: e. q: NB. Hook: member of its factors.
NB. From http://www.jsoftware.com/help/learning/21.htm.

isCircularPrime =: icp =: 3 : 0
  f =. 0    NB. Flag indicating whether number(s) are prime.
  ds=.": y  NB. Digits of y.
  n =.<:#ds NB. Number of rotations we'll need to perform.
  if. isPrime y do.
    f =. 1
    for. i. n do.
      ds =. 1 |. ds
      f =. f *. isPrime ". ds
    end.
  end.
  f
)

# (#~ icp"0) >:i.1e6 NB. 55.






NB. Roger Hui:
rot=: 1&|.&.":"0
p=: i.&.(p:^:_1) 1e6
2 + +/ *./ p e.~ rot^:(1+i.5) p #~ *./@(e.&'1379')@":"0 p




NB. olegyk:
circ=: *./@(1: = #@q:"0)@(".@|."0 _~ i.@#)@:":
+/circ"0] 2+i.999998




NB. R.E. Boss:
+/*./T e."1~ >,.&.>/([:,/(>:i.6)|."1"0 _&.(10&#.^:_1)])&.> ((10<.@^.])</.])T=: p: i. p:^:_1 [1e6




NB. joey:
#(#~(*/&((i.6)&((1 p:".)@|."0 1)))@:":"0) >:i.1e6

NB. vim:ft=j
