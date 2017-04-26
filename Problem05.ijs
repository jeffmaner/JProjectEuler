NB. What is the smallest number divisible by each of the numbers 1 to 20?
NB. 
NB. 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
NB. 
NB. What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

((0=[:+/(1+i.20)&|)"0 i.1000000) # i.1000000
NB. Takes too long, and eventually runs out of memory.

NB. This returned immediately for i.10 with the correct answer. But it takes forever for i.20.
answer =: 3 : 0
n=.0
notFound =. 1
while. notFound do.
	n =. n+1
	if. 1=(0=[:+/(1+i.20)&|) n do.
		notFound =. 0
	end.
end.
n NB. 232792560.
)
NB. Got it! Just took 13 minutes! :(



NB. !!!
*./>:i.20



*/ ((>./"1@(+/@(E.&>)/) # [)~ ~.@;) <@q: 1+i.20



*/(p:i.8)^>./8 q:>:i.20x



NB. vim:ft=j
