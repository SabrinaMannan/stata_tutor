*how to convert string into date

use "C:\Users\DW.SABRINA.MEEM\Desktop\STATA_LEARN\DateData.dta"

*step1:generate a new variable dob new which is the date form of dob
gen dob_new= date( dob,"YMD",2050 )
*step 2:edit file on top>ok>properties> format>date 
format %td dob_new



gen endt_new= date( endt ,"DMY",2050 )
format %td endt_new

br dob dob_new endt endt_new

*converting string to categorical value(encoding)
/*data>create data..>other variable trans..>encode..>  */
encode village, generate(village_1)




