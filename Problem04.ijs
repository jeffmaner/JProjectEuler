NB. Find the largest palindrome made from the product of two 3-digit numbers.
NB. 
NB. A palindromic number reads the same both ways. The largest palindrome made from the product of
NB. two 2-digit numbers is 9009 = 91 × 99.
NB. 
NB. Find the largest palindrome made from the product of two 3-digit numbers.

NB. isPalindrome =: 3 : 'y =  |. &. ": y'"0
isPalindrome =: = |. &. ": "0
products =. ~. ,(100+i.899) */ 100+i.899

(isPalindrome products) # products

>./ (isPalindrome products) # products NB. 906609.



>([:{: ]#~ (=|.&.>)) <@":"0 /:~(0:-.~[:,>:/**/)~(i.100)-.~i.1000



n=:100+i.900 NB. 3 digit numbers.
prod=:~.,n*/n NB. unique products.
pal=:((-:|.)@:":)"0 NB. test for palindrome.
answer=:>./(pal#])prod



>./(#~ (-: |.)@":"0) ,/*/~i.1000

NB. vim:ft=j
