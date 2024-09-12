use "C:\Users\DW.SABRINA.MEEM\Downloads\MyData 27424.dta"

*WEALTH INDEX
/*converting two variable into one here Poorest(1) and Poorer(2) into 1 etc
 */

gen wi= 1 if v190==1 | v190==2
replace wi= 2 if v190==3 
replace wi= 3 if v190==4 | v190==5

*defining values
 la var wi "New Wealth index"
 la de wi 1 "poor" 2 "middle" 3 "rich", replace
 la val wi wi
 
 