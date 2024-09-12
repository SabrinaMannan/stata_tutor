*how to catergorize variable

use "C:\Users\DW.SABRINA.MEEM\Downloads\MyData 27424.dta"

/*gen creates a new variable called mage
and assigns it a value of 1 for age 15-25 
in the same for 2 for 25-35 and 3 for 35-50
 */ 
gen mage=1 if v012>=15 & v012<25
replace  mage=2 if v012>=25 & v012<35
replace  mage=3 if v012>=35 & v012<51
replace  mage=. if v012==. 
/*This line assigns a missing value (.) to the variable mage 
for all observations where v012 is missing. */

*declaring variables
la var mage "Maternal age group"
*defining values
la de mage 1 "15-25y" 2 "25-35y" 3 "35-50y", replace
*for showing
la val mage mage
