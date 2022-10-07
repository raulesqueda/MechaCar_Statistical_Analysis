## Deliverable 1: Linear Regression to Predict MPG

# Activate library
library(dplyr)

# Import and read file
mecha <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(mecha)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha)

# Summary of the model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha))

# Deliverable 2: Create Visualizations for the Trip Analysis

# Import and read file
coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(coil)

# Use the summarize() function to get the mean, median, variance, and standard deviation
total_summary <- coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
total_summary

# Use the group_by() and  summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary

# Deliverable 3: T-Tests on Suspension Coils

# PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(coil$PSI,mu=1500)

# Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(coil$PSI,coil$Manufacturing_Lot == "Lot1"),mu=1500)
t.test(subset(coil$PSI,coil$Manufacturing_Lot == "Lot2"),mu=1500)
t.test(subset(coil$PSI,coil$Manufacturing_Lot == "Lot3"),mu=1500)
