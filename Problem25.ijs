NB. What is the first term in the Fibonacci sequence to contain 1000 digits?

digitCount =: dc =: # @: ":

fibs =: 1:`((],+/@(_2&{.))@$:@<:)@.*

+/ 1000=dc"0 fibs 3000 NB. stack error: fibs.





NB. olegyk:
1+#({: , +/)`]@.(1000"_ <: #@":@{:)^:(<_) 1 1x NB. 4782.

NB. vim:ft=j
