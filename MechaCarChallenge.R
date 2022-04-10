# Deliberable 1: Linear Regression

library(dplyr)

car_df <- read.csv('MechaCar_mpg.csv', header = TRUE, sep = ',')
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_df)
summary (lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_df))

# Deliverable 2: Trip Analysis Visualizations

suspension_df <- read.csv('Suspension_Coil.csv', header=TRUE, sep = ',')
total_summary <- suspension_df %>% 
  # I don't understand what I'm supposed to be grouping by
  
# Deliverable 3:
