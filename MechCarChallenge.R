#Deliverable 1: Linear Regression to Predict MPG

library(dplyr)

MechaCar_mpg <- read.csv('Resources/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(MechaCar_mpg)

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar_mpg) 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar_mpg))

# Deliverable 2: Create Visualizations for the Trip Analysis
Suspension_coil <- read.csv('Resources/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(Suspension_coil)

# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- Suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), StdDev=sd(PSI), .groups = 'keep')
total_summary

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column
lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), StdDev=sd(PSI), .groups = 'keep')

lot_summary

# Deliverable 3: T-Tests on Suspension Coils
# write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_coil$PSI, mu = 1500)


# Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
t.test(subset(Suspension_coil, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)

t.test(subset(Suspension_coil, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)

t.test(subset(Suspension_coil, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)
