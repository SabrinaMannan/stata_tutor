
use "C:\Users\DW.SABRINA.MEEM\Desktop\STATA_LEARN\Data20824.dta"

/*Assinging to categorical values
The code generates a new variable maternalAge and assigns it the value 1 if v012 is 
between 15 and 25 (inclusive of 15 but not 25). */

gen maternalAge= 1 if v012 >= 15 &v012 <25 
replace maternalAge=2 if v012 >=25 &v012<35 
replace maternalAge=3 if v012>=35 &v012<51 
replace maternalAge=. if v012==.
*defining values
la var maternalAge "Maternal Age group"

la de maternalAge 1 "15-25y" 2 "25-35y" 3 "35-50y" , replace

la val maternalAge maternalAge


/*This code creates a new variable wel as a wealth index based on the values of v190, 
classifies the data into three categories (Poor, Middle, Rich), 
labels the variable and its values accordingly, and then applies those labels. */

gen wel=1 if v190==1| v190==2
replace wel=2 if v190==3
replace wel=3 if v190==4|v190==5
la var wel "New wealth index"
la de wel 1 "Poor" 2 "Middle" 3 "Rich", replace
la val wel wel

*BMI
/*This code calculates the BMI from weight and height, categorizes it into three BMI groups, labels the variables, 
and then applies value labels to the BMI categories. There seems to be a potential mistake in the labeling,
 where the label for 1 should be "BMI<18.5" and the label for 3 should more accurately reflect "BMI>=25"*/
 
 
br mH mW

gen bmi= mW/( mH /100)^2

la var bmi "Body Mass index"

gen bmi3 =1 if bmi<18.5 
replace bmi3=2 if bmi>18.5 & bmi<24.99
replace bmi3=3 if bmi>=25 & bmi<.
replace bmi3=. if bmi==.

la var bmi3 "BMI CATEGORY"
la de bmi3 1 "BMI>18.5" 2 "BMI:18.5-24.99" 3 "BMI<=25" , replace
la val bmi3 bmi3





