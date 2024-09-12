use "C:\Users\DW.SABRINA.MEEM\Desktop\STATA_LEARN\analysis\MyData (5).dta"

tab v024

*display percentages along row in the next line
tab v024 v025,row
*display percentages along column in the next line
tab v024 v025,column

*display percentages along with chi square
tab v024 v025,chi

*expected frequency

tab v024 v025,exp

/*if expected frequency is less than 5, fisher exact test is executed */

tab v024 v025,exp exa

*if want to see all categorical variable with respect to v025
for var v024 v190 b4 bmiCAT toilet2 edu DV anc2 stunting : tab X v025,col chi


 