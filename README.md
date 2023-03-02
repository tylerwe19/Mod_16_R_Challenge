# Mod_16_R_Challenge

## Linear Regression to Predict MPG
Here are the results of the multi-linear regression that predicts mpg:

![Deliverable_1_Linear_Reg.png](https://github.com/tylerwe19/Mod_16_R_Challenge/blob/main/Deliverable_1_Linear_Reg.PNG)


 1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    * The vehicle length and ground clearance (along with the Intercept) have a significant impact on mpg. These variables/coefficients provided a non random amount of variance. This is indicated by the *** next to their p-value which means it's smaller than 0.001 and much smaller than 0.05, which means these variables are statistically significant. 
 2. Is the slope of the linear model considered to be zero? Why or why not?
    * The p-value for the linear regression is 5.35 * 10^-11, which is much smaller than the significance level of 0.05% indicating that the slope of our linear model is not zero.
 3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    * The R-squared value of our linear regression is 0.715 meaning that all mpg predictions generated from this model will be correct. When the absolute value of the r-squared value is greater than 0.7, it indicates that the model is able to produce strong correlations between the variables and the mpg. The combination of a strong r-squared value and that the p-value is statiscally significant indicates this linear model will predict mpg effectively.
 --- 
 
 ## Summary Statistics on Suspension Coils
 Below are tables showing summary stats of the PSI in the Suspension_Coil.csv
 
 Overall:
 
![Deliverable_2_total_summary.png](https://github.com/tylerwe19/Mod_16_R_Challenge/blob/main/Deliverable_2_total_summary.PNG)
 
 Broken by each Manufacturing Lot:
 
![Deliverable_2_lot_summary.png](https://github.com/tylerwe19/Mod_16_R_Challenge/blob/main/Deliverable_2_lot_summary.PNG)

 * Design specs for MechaCar suspension coils says variance of suspension coils must not exceed 100 pounds per square inch. Overall the variance of suspension coil PSI is 62 lbs per sq inch, which is under the 100 lbs/inch^2 threshhold. However, we have broken the data to show summary stats for each Manufacturing lot. The variance of coils' PSI in lots 1 & 2 are comfortably under the threshhold, but the variance of coil PSI in lot 3 is 170 which is exceeds the 100 lbs/inches^2 threshhold. 
 --- 
 
 
