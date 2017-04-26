NB. How many Sundays fell on the first of the month during the twentieth century?
NB. 
NB. You are given the following information, but you may prefer to do some research for yourself.
NB. 
NB.     1 Jan 1900 was a Monday.
NB.     Thirty days has September,
NB.     April, June and November.
NB.     All the rest have thirty-one,
NB.     Saving February alone,
NB.     Which has twenty-eight, rain or shine.
NB.     And on leap years, twenty-nine.
NB.     A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
NB. 
NB. How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

load'd:\programs\j602\system\main\dates.ijs'

s=.todayno 1901  1  1 NB. 36889.
e=.todayno 2000 12 31 NB. 73413.
73413 - 36889      NB. 36524.

+/ 1= {:"1 todate (36889+i.36524)#~0=7|3+36889+i.36524
+/ 1= {:"1 todate (s+i.e-s)#~0=7|3+s+i.e-s




NB. Wow:
1200%7 NB. 171.429
NB. Why would one just compute 1200/7 to find the number of first days of the month that fell on a Sunday
NB. in 100 years? There are 1200 first days of the month in 100 years, as there are 1200 months. One in every
NB. 7 days is a Sunday. There is enough regularity to make things essentially nonrandom. Of course this argument
NB. gets one an approximate answer only.

NB. vim:ft=j
