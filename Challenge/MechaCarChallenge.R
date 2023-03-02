#Load dplyr
library(dplyr)
#Import MechaCar_mpg.csv
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#Multi Linear regression model using lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)
#Generate Summary Stats to determine pvalues and r-squared values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table))


#Technical Analysis
#Import Suspension_Coil.csv
SusCoil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
#Create Summary Table
total_summary <- SusCoil_table %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI), .groups='keep')
lot_summary <- SusCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI), .groups='keep') 


#T-Tests on Suspension Coils
?t.test()
#Determine if PSI across all manufacturing lots is statistically different from pop'n mean of 1500
t.test(lot_summary$Mean_PSI,mu=1500)
#Write 3 more scripts to determine if PSI for each manufacturing lot is different from pop'n mean of 1500
Lot1_sub <- subset(lot_summary, Manufacturing_Lot == "Lot1")
#Lot1 t.test
t.test(subset(SusCoil_table,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
#Lot2 t.test
t.test(subset(SusCoil_table, Manufacturing_Lot=="Lot2")$PSI,mu=1500)
#Lot3 t.test
t.test(subset(SusCoil_table,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
