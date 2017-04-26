NB. Discover all the fractions with an unorthodox cancelling method.
NB. 
NB. The fraction 49/98 is a curious fraction, as an inexperienced mathematician
NB. in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which
NB. is correct, is obtained by cancelling the 9s.
NB. 
NB. We shall consider fractions like, 30/50 = 3/5, to be trivial examples.
NB. 
NB. There are exactly four non-trivial examples of this type of fraction, less
NB. than one in value, and containing two digits in the numerator and denominator.
NB. 
NB. If the product of these four fractions is given in its lowest common terms,
NB. find the value of the denominator.

r =: ". @: ((":@:[),'r',":@:])
NB. 1r2 -: 1 r 2

%/~ 10+i.89r1




NB. olegyk:
x1=: <.@(%&10)@[
x2=: 10&|@[
y1=: <.@(%&10)@]
y2=: 10&|@]

t1=: (% = x1 % y2)*.(x2 = y1)
t2=: (% = x2 % y1)*.(x1 = y2)

{:2 x:*/%/"1 (#~ (t1 +. t2)/"1) (</ #&(,/) ,"0/)~ 10+i.90

NB. vim:ft=j
