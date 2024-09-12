use "C:\Users\DW.SABRINA.MEEM\Desktop\STATA_LEARN\analysis\MyData (5).dta"

*frequency
tab v024

*proportion
proportion v024

*for all tables use tab1 then variable name
tab1 v024 v025 v190 b4 bmiCAT

*for quantitive variable 
sum v012

*mean+confidence interval
mean v012 mH mW ChildAge

*all types of statitics will come if sumd is given

sum v012,d
