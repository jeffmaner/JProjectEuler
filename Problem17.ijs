NB. How many letters would be needed to write all the numbers in words from 1 to 1000?
NB. 
NB. If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there
NB. are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
NB. 
NB. If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how
NB. many letters would be used?
NB. 
NB. NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains
NB. 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when
NB. writing out numbers is in compliance with British usage.

nl =: 3 : 0
  select. y
    case. 0                 do. 0
    case. 1;2;6;10          do. 3
    case. 4;5;9             do. 4
    case. 3;7;8;40;50;60    do. 5
    case. 11;12;20;30;80;90 do. 6
    case. 15;16;70          do. 7
    case. 13;14;18;19       do. 8
    case. 17                do. 9
  end.
)

numberLength =: 3 : 0
if. y = 1000 do.
  11 NB. 11 = 3 + 8 -> Len("one") + Len("thousand").
elseif. y <: 20 do.
  nl y
elseif. y < 100 do.
  t=.10 * ". {. ": y NB. Tens digit.
  o=.     ". {: ": y NB. Ones digit.
  (nl t) + nl o
elseif. 1 do.
  h=.". {. ": y NB. Hundreds digit.
  if. 0=100|y do.
    7 + nl h NB. 7 -> Len("hundred").
  else.
    10 + (nl h) + numberLength ". }. ": y NB. 10 = 7 + 3 -> Len("hundred") + Len("and").
  end.
end.
)

+/ numberLength"0 >:i.1000 NB. 21124.




NB. Roger Hui:
ones =. ;:'one two three four five six seven eight nine'
teens=. ;:'eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen'
tens =. ;:'twenty thirty forty fifty sixty seventy eighty ninety'
w99 =. ones,(<'ten'),teens,,tens,&.>/'';' ',&.>ones
w=. w99,,(ones,&.><' hundred'),&.>/'';(<' and '),&.>w99
w=. w,<'one thousand'
# ' ' -.~ ; w




NB. vim:ft=j
