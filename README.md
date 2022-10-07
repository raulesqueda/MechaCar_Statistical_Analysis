# MechaCar_Statistical_Analysis


For this challenge, we help Jeremy for a special project: AutosRU’s newest prototype, the MechaCar. This car is suffering from production troubles that are blocking the manufacturing team’s progress. The AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team, for this we develop a code with linear regression to analyze and give insights about the manufacturing process of the new car model.

## Linear Regression to Predict MPG

For the linear regression we use the database called “MechaCar_mpg”, which we estimate a model where the miles per gallon (mpg) depends on the rest of the variables of the database, the estimates results are:

![Grafica1](https://github.com/raulesqueda/MechaCar_Statistical_Analysis/blob/main/Images/grafica1.PNG)

For this analysis we need to answer the follow questions:

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?** 

According to the results, there are three variables that provide a non-random amount of variance: the intercept, the vehicle length and ground clearance, this variable has smaller a p-value in other words is statistically significant. The rest of the variables are not statistically significant, if there is more data, we can change or skip these variables to help the efficiency of the model.

**Is the slope of the linear model considered to be zero? Why or why not?**

The results of the p-value of our linear regression analysis are 5.35e-11, which is smaller the significance level of 0.05%. Therefore, we can state that there is evidence to reject the null hypothesis, which means that the slope of our linear model is not zero.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

From our multiple linear regression model, the r-squared value is 0.7149, which means that 71% of the variability of the miles per galon (mpg) are explained using this linear model. Although the multiple linear regression model is good to predicting our current dataset, the lack of significant variables is evidence of overfitting, which means that the performance of a model performs well with a current dataset but fails to generalize and predict future data correctly.

## Summary Statistics on Suspension Coils

For the Suspension Coils we use the MechaCar Suspension_Coil dataset, which contains the results from multiple production lots, focusing on the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. For this analysis we need to answer this question:

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

The information for the design specifications of the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. The summary data from the total for all the lots, show us that the variance is 62.3 pounds per inch which is below the specified value.

 ![Grafica2](https://github.com/raulesqueda/MechaCar_Statistical_Analysis/blob/main/Images/grafica2.PNG)
 
About the lots, the variance of lot 1 and lot 2 are within the expected design specifications of staying under 100 PSI, with variances of 0.98 and 7.47 respectively. However, the variance for lot 3 is 170.3 which is above the design specifications and therefore do not meet the design specifications.

 ![Grafica3](https://github.com/raulesqueda/MechaCar_Statistical_Analysis/blob/main/Images/grafica3.PNG)
 
## T-Tests on Suspension Coils

Now we going to perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. For this purpose, we perform the Student's t-test to use a t-test to compare the mean of one dataset to another.

Assuming our significance level was 0.05 percent, for all data, our p-value (0.06028) is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

 ![Grafica4](https://github.com/raulesqueda/MechaCar_Statistical_Analysis/blob/main/Images/grafica4.PNG)
 
In our first lot, assuming the same level of significance (0.05 percent), our p-value (1) is clearly above our significance level. Meaning that we do not have sufficient evidence to reject the null hypothesis, and we would state that the Lot 1 mean and the population mean are statistically similar.

 ![Grafica5](https://github.com/raulesqueda/MechaCar_Statistical_Analysis/blob/main/Images/grafica5.PNG)
 
With the second lot, assuming the same level of significance (0.05 percent), our p-value (0.6072) is above our significance level. Meaning that can’t reject the null hypothesis, in other words Lot 2 mean and the population mean are statistically similar.

 ![Grafica6](https://github.com/raulesqueda/MechaCar_Statistical_Analysis/blob/main/Images/grafica6.PNG)
 
Finally, for the lot 3 assuming the significance level of 0.05 percent, the p-value (0.04168) is below our significance level. Meaning that we reject the null hypothesis and accept the alternative hypothesis, we would state that the two means are statistically different.

 ![Grafica7](https://github.com/raulesqueda/MechaCar_Statistical_Analysis/blob/main/Images/grafica7.PNG)
 
## Study Design: MechaCar vs Competition

We were asked by AutosRU’s to design a study of the competition of the MechaCar. Using the knowledge of R, we plan to compare the performance of the MechaCar vehicles against other vehicles from other manufacturers. In terms of available data, we think we need at least data for the past 2 years and at least two similar models of other manufacturers to starting the analysis and the data exploration. 

Also, we need other type of data that we address by the following questions:

**What metric or metrics are you going to test?**

For determine the possible demand (quantity of sales) for the new model, we could considerate certain characteristics such as:
1.	The cost
2.	The color
3.	Equipment versions
4.	The fuel efficiency
5.	Type of motor (diesel, gas, hybrid, electric)
6.	Engine size
7.	Size of the vehicule

**What is the null hypothesis or alternative hypothesis?**

To know which variables contributes to the possible demand of the new model, we propose the test:

Null Hypothesis (H0): The slope of the multiple linear model is zero, or m = 0.

Alternative Hypothesis (Ha): The slope of the multiple linear model is not zero, or m ≠ 0.

**What statistical test would you use to test the hypothesis? And why?**

We need to estimate a linear regression with two or more independent variables. Which allows us to review each independent variable to determine if there is a significant relationship with the dependent variable.

**What data is needed to run the statistical test?**

In terms of statistical significance, we need a random sample of at least 30 individual data for MechaCar and their competitor, if we do not have this sample, the model would lack of significance for the study.
