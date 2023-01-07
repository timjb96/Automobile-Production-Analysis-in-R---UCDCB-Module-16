# Module_16_Challenge
For this module, we used production data regarding a prototype vehicle, the MechaCar, from AutosRUs, to analyze issues with the prototypes, and investigate what improvements need to be made. 

## Linear Regression to Predict MPG
Our first step was to produce a Linear Regression with some of the data, to predict MPG of the different production lots. This yielded the following:

![Screen Shot 2023-01-06 at 4 40 44 PM](https://user-images.githubusercontent.com/112847821/211122640-f672fd51-83b3-4909-a364-661cde0c3d61.png)

> Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Our analysis shows that Vehicle Weight, Spoiler Angle, and use of All Wheel Drive provide a non random amount of variance.

> Is the slope of the linear model considered to be zero? Why or why not?
In this case, we cannot say that the slope is considered to be zero. Since the p-value is 5.35e-11, well below the standard significance level of .05%, we have sufficient evidence to state the the slope is not zero, as we would reject a null hypothesis in this case (which would state the slope is zero). 

> Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Our R-Squared value is .7149, or 72% - this means that it is 72% effective at accurately predicting MPG, as it will predict MPG accurately 72% of the time. 

## Summary Statistics on Suspension Coils
>The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

As we can see from the below summary tables, overall, the manufacturing data does meet this design specification to limit suspension coil variance to under 100 PSI in total. However, this is not the case for each lot. 
Total Summary Below

![Screen Shot 2023-01-06 at 6 12 35 PM](https://user-images.githubusercontent.com/112847821/211126922-0b36fb09-925a-4fbc-9ce9-485f28c62a80.png)

Lot Summary Below
![Screen Shot 2023-01-06 at 6 13 03 PM](https://user-images.githubusercontent.com/112847821/211126956-c8757f17-46f6-43be-9206-86f93e2a4ab1.png)

As we can see, Lot 3 significantly exceeds this variance. In fact, the total variance would be significantly lower as well were Lot 3's variance addressed.


## T-Tests on Suspension Coils
The results of our T-tests can be found below:
One Sample T-Test for Coils Table:
![Screen Shot 2023-01-06 at 6 16 38 PM](https://user-images.githubusercontent.com/112847821/211127096-089acad2-b636-477a-b61b-97bbc11a3fab.png)

Lot 1
![Screen Shot 2023-01-06 at 6 17 15 PM](https://user-images.githubusercontent.com/112847821/211127112-14ab52ad-4ab0-492c-a141-8ca1993f6053.png)

Lot 2
![Screen Shot 2023-01-06 at 6 17 42 PM](https://user-images.githubusercontent.com/112847821/211127135-1e14ede4-639b-4d4b-9cc7-798af3b8c602.png)

Lot 3
![Screen Shot 2023-01-06 at 6 17 59 PM](https://user-images.githubusercontent.com/112847821/211127154-bcb93071-ac39-47a7-a058-675316e6a6e0.png)

