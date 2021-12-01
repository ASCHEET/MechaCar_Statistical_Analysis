# MechaCar_Statistical_Analysis

## Background
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.
In this challenge, the data analytics team will do the following:

 - Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
 - Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
 - Run t-tests to determine if the manufacturing lots are statistically different from the mean population
 - Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, a short summary interpretation of the findings is provided.

## Deliverable One: Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using your knowledge of R, you’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. 

![Fig 1 - Linear Regression](https://github.com/ASCHEET/MechaCar_Statistical_Analysis/blob/main/Resources/D-1_linear_regression.png?raw=true)

The p-value is 5.35e-11; based on p-value criteria of 0.05 shows that there is sufficient data to reject the null hypothesis.  The linear regression model above shows an R-value of 0.7149 or 71% demonstrating that the regression is accurate 71% of the time for predicting MPG based on: vehicle length, weight, spoiler angle, ground clearance and drivetrain (AWD).

## Deliverable Two: Summary Statistics on Suspension Coils
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using R, a summary statistics table was created.

Performing analysis on all three manufactured lots of coils shows a variance of 62.29; which is less than the 100 psi limit.

![Fig D-2_1](https://github.com/ASCHEET/MechaCar_Statistical_Analysis/blob/main/Resources/D-2_variance.png?raw=true)

Expanding the analysis to determine the Mean, Median, Variance and Standard Deviation for each lot showed that Lots 1 and 2 were within the design specifications and below the 100 psi variance limit, and the means and medians are statistically similar.  
Lot 3 however showed a Variance of 170.3; much higher than the 100 psi limit and outside of approved design specification.

![Fig D-2_2](https://github.com/ASCHEET/MechaCar_Statistical_Analysis/blob/main/Resources/D-2_variance_per_lot.png?raw=true)

## Deliverable Three: T-tests on Suspension Coils
There are a number of metrics produced from the t.test()function, but for now we will only concern ourselves with the calculated p-value. Assuming our significance level was the common 0.05 percent, our p-value of 0.06 is above our significance level. 
Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar. The mean of the data set was 1498.78 over all coils which is very close to 1500.

![Fig D-3_ttest1](https://github.com/ASCHEET/MechaCar_Statistical_Analysis/blob/main/Resources/D-3_ttest1.png?raw=true)

Below the p-value is 1 showing not enough evidence to reject the null hypothesis and the means are statistically similar.

![Fig D-3_ttest2](https://github.com/ASCHEET/MechaCar_Statistical_Analysis/blob/main/Resources/D-3_ttest2.png?raw=true)

Below the p-value is .6072; showing not enough evident to reject the null hypothesis and the means are statistically similar.

![Fig D-3_ttest3](https://github.com/ASCHEET/MechaCar_Statistical_Analysis/blob/main/Resources/D-3_ttest3.png?raw=true)

Below the p-value is 0.04168; showing there is evidence to reject the null hypothesis and the means are similar but at 1496.14, Lot 3 is much further from the mean of 1500; more so than any other lot.

![Fig D-3_ttest4](https://github.com/ASCHEET/MechaCar_Statistical_Analysis/blob/main/Resources/D-3_ttest4.png?raw=true)


## Deliverable Four-Study Design: MechaCar vs Competition.

### Study Proposed
The cost of ownership of a vehicle varies greatly over the lifespan of a vehicle.  AutosRU would like to evaluate cost of ownership of their vehicles compared to other, similar vehicles on market.  This analysis includes cost of fuel and routine maintenance, but includes statistical data that shows the cost and frequency of car parts that are purchased during the lifespan of ownership.

### Hypothesis

 - Null Hypothesis: Cost of ownership of AutosRU is less than competition

### Statistical Test
Linear regression and T-tests on various components and pricing would be beneficial in certain design criteria.

### Information needed
Data of routine maintenance, frequency, most often repaired parts and cots of parts would have to be collected.  Cost of parts can be a difficult metric to show, but it can be broken down statistically to show that each part has X.X% chance of failure and the associated cost of parts and labor is $Y.YY.  This information can be factored into the analysis of purchase criteria for potential buyers.






















