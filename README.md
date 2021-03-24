# life-expectancy
This project focusses on the predicting the life expectancy of a nation based on various health features. 

------------------------------------

## Members
* Sneha Verma
* Jorania F. Alves

## Tools Useed
* R Studio
* R Markdown

## About the Dataset
This dataset was obtained from Kaggle. 

## About the project
This research focuses on predicting the life expectancy of a nation based on various health features. We started by conducting basic exploration and transformations of the features to account for skewness. Then, we conducted backward elimination and applied a first-order model to see which variables are significant and found out that hepatitis B is not a significant variable. To make a more reliable and a better predictive model, we conducted step-wise regression on centered interaction efects between all variables. We found out that many of the interaction efects of the variables are significant proving that certain health factors have an infuence on life expectancy of a nation dependent on another health factor. However, our data set has a few clusters for various variables that also have large residuals and/or leverage points (points that have a large infuence suggesting that we should consider diferent transformations for these variables. Hence, while we have used the AIC criterion to make our predictive model more reliable, we would suggest conducting a few more tests and transformations to account for high leverage and residual points.
