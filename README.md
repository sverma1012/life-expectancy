![Status Update](https://img.shields.io/badge/Status-Complete-brightgreen) ![GitHub top language](https://img.shields.io/github/languages/top/sverma1012/life-expectancy?label=R&logo=R&logoColor=%23276DC3) ![GitHub commit activity](https://img.shields.io/github/commit-activity/y/sverma1012/life-expectancy?style=flat-square)

# Life Expectancy Based on Health Factors

This is a project completed for an Appled Statistics course. It focusses on the predicting the average life expectancy within a nation based on various health features. My partner and I used R to clean, analyze, and visualize the data. We used regression and transformations to anaylze the data and predict the life expectancy from given health factors.
A detailed explanation of the steps taken in this project is provided below.

------------------------------------

**Collaborators:**<br />
* Jorania F. Alves :grey_exclamation:
* Sneha Verma :wave:

**Tools Used:**<br />
* R Studio
* R Markdown

**Dataset:**<br />
This dataset was obtained from [Kaggle](https://www.kaggle.com/kumarajarshi/life-expectancy-who). 

## About the project
This research focuses on predicting the life expectancy of a nation based on various health features. We started by conducting basic exploration and transformations of the features to account for skewness. Then, we conducted backward elimination and applied a first-order model to see which variables are significant and found out that hepatitis B is not a significant variable. To make a more reliable and a better predictive model, we conducted step-wise regression on centered interaction efects between all variables. We found out that many of the interaction efects of the variables are significant proving that certain health factors have an infuence on life expectancy of a nation dependent on another health factor. However, our data set has a few clusters for various variables that also have large residuals and/or leverage points (points that have a large infuence suggesting that we should consider diferent transformations for these variables. Hence, while we have used the AIC criterion to make our predictive model more reliable, we would suggest conducting a few more tests and transformations to account for high leverage and residual points.
