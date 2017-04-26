NB. What is the total of all the name scores in the file of first names?
NB. 
NB. Using names.txt, a 46K text file containing over five-thousand first names,
NB. begin by sorting it into alphabetical order. Then working out the alphabetical
NB. value for each name, multiply this value by its alphabetical position in the
NB. list to obtain a name score.
NB. 
NB. For example, when the list is sorted into alphabetical order, COLIN, which is
NB. worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN
NB. would obtain a score of 938 × 53 = 49714.
NB. 
NB. What is the total of all the name scores in the file?

load 'd:\programs\j602\system\main\strings.ijs'

readFile    =: 1!:1
fileName    =: < 'd:\programs\j602\j602-user\ProjectEuler\names.txt'
text        =: readFile fileName
list        =: '"' delstring text
names       =: ',' cut list
sortedNames =: /:~ names
position    =: '>: sortedNames i. < y'
letterScore =: 3 : '>: ''ABCDEFGHIJKLMNOPQRSTUVWXYZ'' i. y'
wordScore   =: 3 : '+/ letterScore"0 y'
nameScore   =: 3 : '(position y) * (wordScore y)'
+/ nameScore &> sortedNames NB. 871198282.





NB. Roger Hui:
t=: 1!:1 <'\junk\names.txt'                NB. Reads the file.
x=: <;._1 ',',t-.'"'                       NB. Cuts into words.
(>:@i.@# +/ .* +/@(_64&+)@(a.&i.)&>) /:~ x NB. Does the sort, encoding, sums.





NB. JavaManIssa:
nms =. <;._2 (,&',') -.&'"' 1!:1 <'c:/names.txt'
+/ (>:i.#nms) * (+/@:(-&64)@:(a.&i.))@>"0 /:~ nms




NB. Eratosthenes:
F=.'/projecteuler/names.txt'
data=.1!:1<F
load 'strings'
nms=.>sort ;:', ' charsub (data-.'"')
nms2=.nms rplc"1 'A';'1 ';'B';'2 ';'C';'3 ';'D';'4 ';'E';'5 ';'F';'6 ';'G';'7 ';'H';'8 ';'I';'9 ';'J';'10 ';'K';'11 ';'L';'12 ';'M';'13 ';'N';'14 ';'O';'15 ';'P';'16 ';'Q';'17 ';'R';'18 ';'S';'19 ';'T';'20 ';'U';'21 ';'V';'22 ';'W';'23 ';'X';'24 ';'Y';'25 ';'Z';'26 '
+/(>:i.5163)&* +/"1 "._5163{.nms2 

NB. vim:ft=j
