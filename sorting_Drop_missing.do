*loading data 
use "C:\Users\DW.SABRINA.MEEM\Desktop\STATA_LEARN\Data20824.dta", clear

*Rearranging data  
order v024 v012 mH mW
*Rearranging data after a certain variable
order v024 v012 ,after (main_id)
*Rearranging data before a certain variable
order edu DV,before (bmiCAT)
*for deleting variables use drop
drop mH mW

*for keeping some variable deleting other variables
keep ChildAge v021 v025 stunting
*sorting ascending way
sort ChildAge

*sorting descending way(use gsort and minus before the variable
gsort - ChildAge

*sorting on the basis of one variable in a ascending way 
sort edu b4

*displaying number label along with data(all)
numlabel, add

/*merge into one(here in 4) replacing (here 3 is merged in 4, 
3 along with label is removed) */
replace v024=4 if v024==3

*identifying missing values of the variable bmiCAT
tab bmiCAT,m

*replacing missing values by 0 (MUST GIVE SINGLE EQUAL SIGN BEFORE IF AND DOUBLE AFTER)

replace bmiCAT = 0 if bmiCAT ==.

* (here converting into missing value of feature 5)
replace v190=. if v190==5

/*removing a partuclar feature or data from another table
(eg: here data of male gender (b4==1) is removed from v024(division data)*/

replace v024=. if b4==1

*checking if removed
tab v024 b4,m

*deleting datas if two conditions are given
drop if v190==1 & v025==2

*missing data if two conditions are given
replace v190 =. if v025==2 & v190==3





