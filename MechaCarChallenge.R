# Deliberable 1: Linear Regression

library(dplyr)

car_df <- read.csv('MechaCar_mpg.csv', header = TRUE, sep = ',')
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_df)
summary (lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_df))

# Deliverable 2: Trip Analysis Visualizations

suspension_df <- read.csv('Suspension_Coil.csv', header=TRUE, sep = ',')
total_summary <- suspension_df %>% summarize(Mean=mean(PSI), Median=median(PSI), 
                                             Variance=var(PSI), SD=sd(PSI))
lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), 
                                           Variance=var(PSI), SD=sd(PSI))

# Deliverable 3: T-Tests
t.test(suspension_df$PSI, mu=1500)
#p-value close to but greater than .05, so cannot reject null hypothesis

t.test(subset(suspension_df, Manufacturing_Lot=='Lot1')$PSI, mu=1500)
#cannot reject null hypothesis; these are from same population

t.test(subset(suspension_df, Manufacturing_Lot=='Lot2')$PSI, mu=1500)
# same population

t.test(subset(suspension_df, Manufacturing_Lot=='Lot3')$PSI, mu=1500)
#p-value < .05, so null hypothesis rejected; this is from a different population


