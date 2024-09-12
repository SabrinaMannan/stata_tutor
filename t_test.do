use "C:\Users\DW.SABRINA.MEEM\Desktop\STATA_LEARN\analysis\dataForAnalysis.dta"
/*for checking normalyy distributed use histogram anad norm(normal distribution)
if normally distributed we can do mean or t test*/
hist mH,norm

*for checking outlier boxplot.Boxplot shows outlier. outlier may affect the result
graph box mH
*sum is used to see the mean and st deviation. if the diffe between mean and st deviuation is not much then t-test can be done
sum mH,d

*t-test equal variances
ttest mH, by(v025)

*t-test unequal variances
ttest mH, by(v025) uneq

*if the box plot of the group is similar it can be saif equal variance
graph box mH,by(v025)

