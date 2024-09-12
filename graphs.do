use "C:\Users\DW.SABRINA.MEEM\Desktop\STATA_LEARN\analysis\MyData (5).dta"

*histogram
hist mH
*normal curve over histogram
hist mH,norm

*graph box can be given also from graphics>box plot>mention variable name

graph box mH

/*graph box can be given also from graphics>box plot>mention variable name 
with respect to another variable by graphics>box plot>
mention variable name>by>  variable name */

graph box mH, by(v025)

/*normal districution graph, to check whether follows normal distribution
if the output is a st. line then it follows normal distribution the more it moves 
away from the line its not normal*/

pnorm v024
pnorm mH

/*quantile plot. the points which are seperated, are the outliers 
*/

qnorm mH 
