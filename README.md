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

The p-value is 5.35e-11; based on p-value criteria of 0.05 shows that there is sufficient data to reject the null hypothesis.  The linear regression model above shows an R-value of 0.7149 or 71% demonstrating that the regression is accurate 71% of the time for prediting MPG based on: vehicle length, weight, spoiler angle, ground clearance and drivetrain (AWD).

## Deliverable Two: Summary Statistics on Suspension Coils
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using R, create a summary statistics table to show:
Performing analysis on all three manufactured lots of coils shows a variance of 62.29; which is less than the 100 psi limit.

![Fig D-2_1](https://github.com/ASCHEET/MechaCar_Statistical_Analysis/blob/main/Resources/D-2_variance.png?raw=true)

Expanding the analysis to determine the Mean, Median, Variance and Standard Deviation for each lot showed that Lots 1 and 2 were within the design speciifications and below the 100 psi variance limit.  
Lot 3 however showed a Variance of 170.3; much hihger than the 100 psi limit and outside of approved design specification.

![Fig D-2_2](https://github.com/ASCHEET/MechaCar_Statistical_Analysis/blob/main/Resources/D-2_variance_per_lot.png?raw=true)

## Deliverable Three: T-tests on Suspension Coils
There are a number of metrics produced from the t.test()function, but for now we will only concern ourselves with the calculated p-value. Assuming our significance level was the common 0.05 percent, our p-value of 0.06 is above our significance level. 
Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar. The mean of the data set was 1498.78 over all coils which is very close to 1500, so the data is similar.

![Fig D-3_ttest1](https://github.com/ASCHEET/MechaCar_Statistical_Analysis/blob/main/Resources/D-3_ttest1.png?raw=true)

Below the p-value is 1 showing not enought evidence to reject the null hypothesis and the means are statistially similar.

![Fig D-3_ttest2](https://github.com/ASCHEET/MechaCar_Statistical_Analysis/blob/main/Resources/D-3_ttest2.png?raw=true)

Below the p-value is .6072; showing not enough evident to reject the null hypotheis and the means are statistially similar.

![Fig D-3_ttest3](https://github.com/ASCHEET/MechaCar_Statistical_Analysis/blob/main/Resources/D-3_ttest3.png?raw=true)

Below the p-value is 0.04168; showing there is evidence to reject the null hypothesis and the meas are similar but at 1492.4 Lot 3 is much further from the mean of 1500 than any other lot.

![Fig D-3_ttest4](https://github.com/ASCHEET/MechaCar_Statistical_Analysis/blob/main/Resources/D-3_ttest4.png?raw=true)


## Deliverable Four-Study Design: MechaCar vs Competition.

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?















