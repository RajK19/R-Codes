library('dplyr')
library('lubridate')
library('tidyverse')
library('tidyr')
#alternate is what we want to prove with statistical data
#null is what we have right now, without any assumption

#Keywords:--------------------
#P VALUE
#CONFIDENCE INTERVAL

#LEVEL OF SIGNIFICANCE(α)---------
# The significance level (α) is the probability of rejecting the null hypothesis when it is true. 


#######Caution -- traash information--read only in emergency
# Low P-Value (Usually ≤ 0.05): If the p-value is very small, typically less than or equal to a significance level (commonly 0.05), it suggests that the observed data is unlikely to have occurred by random chance alone under the assumption that the null hypothesis is true. This leads to the rejection of the null hypothesis.
# 
# High P-Value (Usually > 0.05): If the p-value is relatively large, it suggests that the observed data is reasonably likely to occur by random chance under the assumption that the null hypothesis is true. This leads to a failure to reject the null hypothesis.


######Start from here
#Common choices include 0.05, 0.01, and 0.10. <- p values
#The confidence with which we reject the null hypothesis
#or the confidence with which we accept the alternate hypothesis.

#confidence interval - 95%
#error acceptable uptill - 5%


#CRITERIA FOR VALIDATION HYPOTHESIS
#P < α Reject null, accept alternate
#P > α Fail to reject null, reject alternate

#1 sample T test

#2 sample T test ----
#to compare the means of 2 different samples

#>>Dependent and Independent
#>>Independent - Two different samples, comparing mean(S)
#>>Dependent - (also called paired sample T - test)

lungCapData <- read.table(file.choose(), header=T, sep="\t")
names(lungCapData)

View(lungCapData)

boxplot(lungCapData$LungCap) #to check the normality of your data, we use boxplot

#H0: mu(mean) = 8
#mu != 8
#mu < 8
#mu > 8

#Test = t.test(lungCapData$LungCap, mn=8, alternative="less", conf.level=0.95)
#Test

help("t.test")


#onesided
#we can use less or greater
Test_less = t.test(lungCapData$LungCap, mu=8, alternative="less", conf.level=0.95)
Test_less

#null H0 = 8
#alternate Ha = could be > 8 or < 8
#that's why we
#failed to reject the null hypothesis.


#two sided means less than or greater than (<,>)

#Test2 = t.test(lungCapData$LungCap, mn=8, alternative="two.sided", conf.level=0.95)
#Test2

Test_twosided = t.test(lungCapData$LungCap, mu=8, alternative="two.sided", conf.level=0.99)
Test_twosided



# This R code is performing a one-sample t-test with a one-sided alternative hypothesis ("less") on the lung capacity data. Let's break down the code:
# 
# 
# Test_less = t.test(lungCapData$LungCap, mu = 8, alternative = "less", conf.level = 0.95)
# 
#   
#   t.test():
#   
# This is the function in R used for performing t-tests. It can be used for one-sample, two-sample, or paired t-tests.
# 
#lungCapData$LungCap:
# This specifies the numeric vector of data (lung capacities) that you want to test.
# mu = 8:
#   
# This sets the null hypothesis mean (μ) to 8. The t-test is comparing whether the sample mean is significantly less than 8.
# 
# alternative = "less":
#   
# This specifies the alternative hypothesis. In this case, "less" indicates a one-sided test where you are testing if the mean is less than the specified value (8).
# conf.level = 0.95:
#   
# This sets the confidence level for the confidence interval that will be calculated. In this case, it's set to 95%.
# Test_less:
# 
# This assigns the result of the t-test to the variable Test_less.


#####################################################################
#File: 2-Sample T Test and ANOVA.txt


View(lungCapData)
levels(as.factor(lungCapData$Smoke))

#boxplot(lungCapData$LungCap~lungCapData$Smoke,xlab = 'Smoke',ylab = 'LungCap')
boxplot(lungCapData$LungCap~lungCapData$Smoke)#realtionship

#H0 : mu(sample = No) = mu(sample = Yes)
#Ha : mu(sample = No) = mu(sample = Yes)

t.test(lungCapData$LungCap~lungCapData$Smoke, mu=0, alt="less",paired=F,var.equal=F,conf.level=0.95)

t.test(lungCapData$LungCap~lungCapData$Smoke, mu=0, alt="two.sided",paired=F,var.equal=F,conf.level=0.95)

#independent data values hai toh F aayega
#dependent data values hai toh T aayega



#Dependent sample T test

bloodPressureData <- read.table(file.choose(), header = T, sep = '\t')
View(bloodPressureData)

# using boxplot
boxplot(bloodPressureData$Before,bloodPressureData$After)
#boxplot(bloodPressureData$Before~bloodPressureData$After)


#H0 : mean(before) = mean(after)
#Ha : mean(before) != mean(after)

#two sided - to find the difference between 2 means

#skenwness ya impact
#impact is on which side??
t.test(bloodPressureData$Before, bloodPressureData$After, mu=0, alt="two.sided",paired=T,conf.level=0.99)

#right wala pata karne ke liye 
t.test(bloodPressureData$Before, bloodPressureData$After, mu=0, alt="less",paired=T,conf.level=0.99)

#greater hoga toh greater wala
t.test(bloodPressureData$Before, bloodPressureData$After, mu=0, alt="greater",paired=T,conf.level=0.99)







# 1. t.test(): This function is used to perform t-tests in R.
# 
# 2. lungCapData$LungCap: This specifies the variable containing the lung capacity data.
# 
# 3. ~: This symbol is used to separate the dependent variable from the independent variable in a formula.
# 
# 4. lungCapData$Smoke: This specifies the variable containing the smoking status (smoker/non-smoker).
# 
# 5. mu = 0: This sets the null hypothesis value for the mean difference in lung capacity between smokers and non-smokers to 0.
# 
# 6. alt = "less": This specifies the alternative hypothesis, which is that the mean lung capacity of smokers is less than that of non-smokers.
# 
# 7. paired = F: This indicates that the t-test should be performed on independent samples, as opposed to paired samples.
# 
# 8. var.equal = F: This assumes that the variances of the lung capacity measurements are not equal for smokers and non-smokers. This option utilizes Welch's correction for unequal variances.
# 
# 9. conf.level = 0.95: This sets the confidence level for the confidence interval to 95%.
# 
# In summary, this code tests the hypothesis that the mean lung capacity of smokers is lower than that of non-smokers, considering independent samples and unequal variances.
# 
# Here are some additional notes:
# 
# The output of the t-test will provide information such as the p-value, the estimated mean difference in lung capacity between groups, and the confidence interval for this difference.
# The p-value will indicate the strength of evidence against the null hypothesis.
# The confidence interval will provide a range of plausible values for the true mean difference in lung capacity between groups.
# If you provide the lungCapData object or a sample of the data, I can execute the code and provide you with the complete results of the t-test.
