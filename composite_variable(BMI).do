
use "C:\Users\DW.SABRINA.MEEM\Downloads\MyData 27424.dta"

*bmi= wt(kg)/ ht(m)^2

gen bmi=mW/(mH/100)^2

la var bmi "Body Mass index"

gen bmiGrp=1 if bmi<18.5
replace bmiGrp=2 if bmi>=18.5 & bmi<24.99
replace bmiGrp=3 if bmi>=25 & bmi<.
replace bmiGrp=. if bmi==.

la var bmiGrp "BMI category"
*defining value label
la def bmiGrp 1 "bmi <18.5" 2 "bmi: 18.5-24.99" 3 "bmi>25" , replace
la val bmiGrp bmiGrp



