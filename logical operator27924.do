 use "C:\Users\DW.SABRINA.MEEM\Downloads\MyData 27424.dta"

tab v024
tab v025
*table division(v024) including data of only urban region(denoted by 1) of table v025
 tab v024 if v025 ==1
*table division(v024) including data of only rural region(denoted by 2) of table v025 
 tab v024 if v025 ==2 / tab v024 if v025 !=1
 
  of v190(wealth index except data of middle(denoted by 3))
 tab v190 if v190 != 3
 
 *tab showing data of bmicat tab whose age(v012) is less than 30
tab bmiCAT if v012<30
*dropping data whose age is less than 20 
drop if v012<20
*to check the prev and next operation

sum v012

*keeping data whose age is >= 40 
keep if v012>=40

*browse data of sex 1(male)
 br if b4==1

*browse data of id,all region, division and wealth index
br main_id v025 v024 v190

/*browse data of id, region, division and wealth index 
if wealth index is poorest(1) and division is barishal(1) */

br  main_id v025 v024 v190 if v190==1 & v024==1

/*browse data of id, region, age and wealth index
if we is poorest and age is greater than 40*/
 
 br  main_id v025 v012 v190 if v012 >40 & v190==1

 *multiple & can be used
/*browse data of id, region, age and wealth index
if we is poorest and age is greater than 40 living in barishal*/

br  main_id v025 v012 v190 v024 if v012 >40 & v190==1 & v024==1
*tab showing data of bmicat tab who lives in urban region and weight is under 50
tab bmiCAT if v025==1 & mW<50
*browse data who is either poorest OR richest
 br main_id v190 if v190==1 | v190==5
 
 *tab showing amount of people either poorest OR richest 
  
  tab v190 if v190==1 | v190==5
 