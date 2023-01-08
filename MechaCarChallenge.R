#load dplyr package
library(dplyr)

#import and read the data file as a dataframe
car_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#lnear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_table))

#Create Visualizations
coils_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- coils_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), SD=sd(PSI)) 
lot_summary <- coils_table %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI), .groups = 'keep') 

#t-tests
t.test(coils_table$PSI, mu=1500)
t.test(subset(coils_table, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(coils_table, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(coils_table, Manufacturing_Lot == "Lot3")$PSI, mu=1500)