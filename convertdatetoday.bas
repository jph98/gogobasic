16 REM convert date to day 
20 DIM d$(7,6): REM days of week 
30 FOR n=l TO 7: READ d$(n): NEXT n 
46 DIM m(12): REM lengths of months 
50 FOR n=l TO 12: READ m(n): NEXT n 
100 REM input date 
118 INPUT “day?“;day 
120 INPUT “month7”;month 
130 INPUT “year (26th century only)?“;year 
148 IF year<1961 THEN PRINT “28th century starts at 1901”: 
GO TO 100 
156 IF year>2606 THEN PRINT “28th century ends at 2666”: 
GO TO 186 
160 IF month<1 THEN GO TO 210 
176 IF month>12 THEN GO TO 216 
188 IF year/4-INT(year/4)=8 THEN LET m(2)=29: REM leap year 
196 IF day>m(month) THEN PRINT “This month has only “; 
m(month);” days.“: GO TO 566 
266 IF day>0 THEN GO TO 366 
210 PRINT “Stuff and nonsense. Give me a real date.” 
220 GO TO 560 
366 REM convert date to number of days since start of century 
310 LET y=year-1861 
326 LET b=365*y+lNT (y/4): REM number of days to start of year 
330 FOR n=l TO month-l: REM add on previous months 
340 LET b=b+m(n): NEXT n 
356 LET b=b+day 
460 REM convert to day of week 
416 LET b=b-7* INT (b/7)+1 
426 PRINT day;“/“;month;“/“;year 
430 FOR n=6 TO 3 STEP -1: REM remove trailing spaces 
446 IF d$(b,n) <> ” “ THEN GO TO 466 
450 NEXT n 
466 LET e$=d$(b, TO n) ’ 
470 PRINT” is a “; e$; “day’ 
560 LET m(2)=28: REM restore February 
510 INPUT “again)“, a$ 
520 IF a$=“,” THEN GO TO 546 
