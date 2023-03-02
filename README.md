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
 
## T-Tests on Suspension Coils
 * The mean PSI across all manufacturing lots compared to the population mean of 1500 is 1498.78 lbs/inch^2. This mean is NOT statistically different from the pop'n mean of 1500 since the p-value of 0.4533 is not lower than the common significance level of 0.05. Please see below

![Deliverable_3_AllPSI_vs_1500.png](https://github.com/tylerwe19/Mod_16_R_Challenge/blob/main/Deliverable_3_AllPSI_vs_1500.PNG)

 * Lot1 PSI mean is exactly the same as the pop'n mean (1500 lbs/inch^2). Lot2 PSI mean is NOT statistically different from the pop'n mean as the pvalue is much higher than the 0.05 significance threshhold. Lot 3 mean PSI is statistically different (lower) from the pop'n mean since the pvalue is below 0.05 (0.04168).

 Lot1 vs Population Mean:
![Deliverable_3_Lot1_v_1500.png](https://github.com/tylerwe19/Mod_16_R_Challenge/blob/main/Deliverable_3_Lot1_v_1500.PNG)


 Lot2 vs Population Mean:
![Deliverable_3_Lot2_v_1500.png](https://github.com/tylerwe19/Mod_16_R_Challenge/blob/main/Deliverable_3_Lot2_v_1500.PNG)


 Lot3 vs Population Mean:
![Deliverable_3_Lot3_v_1500.png](https://github.com/tylerwe19/Mod_16_R_Challenge/blob/main/Deliverable_3_Lot3_v_1500.PNG)

 --- 

 ## Study Design: MechaCar vs Competition

 In this study I would first create a multi-linear regression observing various variables (cost, mpg, horse power, maintenance cost, safety rating) impact on profits. This linear model would be based on data across the industry not just between a couple brands of cars because the purpose of this 1st analysis is to determine which variables significantly impact profits. We'll do this by seeing which variables' pvalues are below the 0.05 significance threshhold.
 
 After using a multi-linear regression to see which variables significantly impact profits, I would collect data on the variables from Mechacar and their competitor(s). For example, if the multi-linear regression told me mpg and horsepower significantly impact profits, I would then run two two-sample t-tests for mpg and horsepower. My hypothesis would be MechaCar's mean mpg is higher than their competitors mean mpg and Mechar's mean horsepower is higher than their competitor's mean hp. 
 
 The null hypothesis would MechaCar's mean mpg is not statistically different from their competitor's mpg and the alternative hypothesis would be MechaCar's mean mpg is statistically different from their competitor's mpg. I would have the same hypotheses for other variables the multi-linear regression showed as having a significant impact on profits.
 
 In summary I would collect data across the industry and run a multi-linear regression comparing multiple variables' effect on profits. I would identify the variables that significantly impact profits and collect more data from MechaCar and their competitor(s) on these variables. I would then conduct a two-sample test for each variable comparing MechaCar's mean variable (ex. mpg) to their competitor's mean. I hope this analysis would help MechaCar determine what variables to focus on to improve profits and identify variables where their competitors are outperforming them.
 
 --- 
