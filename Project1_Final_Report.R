## ----setup, include=FALSE-----------------------------------------------
knitr::opts_chunk$set(echo = TRUE)


## -----------------------------------------------------------------------
lifeExpectancy = read.csv('/Users/sneha_verma/Documents/MATH 327/Project1/Data/Life Expectancy Data.csv') 

# Remove any unnecessary variables:
life_expectancy0 = subset(lifeExpectancy, select = -c(Country, Year, Status, percentage.expenditure, under.five.deaths, Total.expenditure, HIV.AIDS, GDP, Population, Income.composition.of.resources, Schooling))

# make dataset of complete observations for all columns.
life_expectancy = life_expectancy0[complete.cases(life_expectancy0), ]

# Rename columns for convenience:
colnames(life_expectancy) = c("lifeExpectancy", "adult_mortality", "infant_deaths", "alcohol", "hepatitisB", "measles", "bmi", "polio", "diphtheria", "thin10to19", "thin5to9")


## -----------------------------------------------------------------------
summary(life_expectancy$adult_mortality)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(life_expectancy$adult_mortality, xlab = 'Adult Mortality')
boxplot(life_expectancy$adult_mortality, xlab = 'Adult Mortality')


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(log(life_expectancy$adult_mortality), xlab = 'Log of Adult Mortality')
boxplot(log(life_expectancy$adult_mortality), xlab = 'Log of Adult Mortality')


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(sqrt(life_expectancy$adult_mortality), xlab = 'Square root of Adult Mortality')
boxplot(sqrt(life_expectancy$adult_mortality), xlab = 'Square root of Adult Mortality')


## -----------------------------------------------------------------------
summary(life_expectancy$infant_deaths)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(life_expectancy$infant_deaths, xlab = 'Number of infant deaths per 1000')
boxplot(life_expectancy$infant_deaths, xlab = 'Number of infant deaths per 1000')


## -----------------------------------------------------------------------
# Create a new variable where all values are "Q1.zero"
life_expectancy$infant_deaths_cat = "Q1.zero"

# Change the new variable to "Q2" for the rows not in category 1
life_expectancy$infant_deaths_cat[life_expectancy$infant_deaths > 0] = "Q2"

# Change the new variable to "Q3" for the rows not in category 1 or 2
life_expectancy$infant_deaths_cat[life_expectancy$infant_deaths > 3.0] = "Q3"

# Change the new variable to "Q4" for the rows not in category 1, 2, or 3
life_expectancy$infant_deaths_cat[life_expectancy$infant_deaths > 22.0] = "Q4"

# visualize the results
boxplot(life_expectancy$infant_deaths ~ life_expectancy$infant_deaths_cat)

# Count number of cases in each category
table(life_expectancy$infant_deaths_cat)


## -----------------------------------------------------------------------
summary(life_expectancy$alcohol)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(life_expectancy$alcohol, xlab = 'Alcohol consumption')
boxplot(life_expectancy$alcohol, xlab = 'Alcohol consumption')



## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(log(life_expectancy$alcohol), xlab = 'Log of alcohol consumption')
boxplot(log(life_expectancy$alcohol), xlab = 'Log of alcohol consumption')


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(sqrt(life_expectancy$alcohol), xlab = 'Log of alcohol consumption')
boxplot(sqrt(life_expectancy$alcohol), xlab = 'Log of alcohol consumption')


## -----------------------------------------------------------------------
summary(life_expectancy$hepatitisB)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(life_expectancy$hepatitisB, xlab = 'Hepatitis B immunization coverage among one-year olds in percent')
boxplot(life_expectancy$hepatitisB, xlab = 'Hepatitis B immunization coverage among one-year olds in percent')


## -----------------------------------------------------------------------
summary(life_expectancy$measles)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(life_expectancy$measles, xlab = 'Number of reported cases per 1000')
boxplot(life_expectancy$measles, xlab = 'Number of reported cases per 1000')



## -----------------------------------------------------------------------
# Create a new variable where all values are "Q1.zero"
life_expectancy$measles_cat = "Q1.zero"

# Change the new variable to "Q2" for the rows not in category 1
life_expectancy$measles_cat[life_expectancy$measles > 0] = "Q2"

# Change the new variable to "Q3" for the rows not in category 1 or 2
life_expectancy$measles_cat[life_expectancy$measles > 17.0] = "Q3"

# Change the new variable to "Q4" for the rows not in category 1, 2, or 3
life_expectancy$measles_cat[life_expectancy$measles > 360.2] = "Q4"

# visualize the results
boxplot(life_expectancy$measles ~ life_expectancy$measles_cat)

# Count number of cases in each category
table(life_expectancy$measles_cat)


## -----------------------------------------------------------------------
summary(life_expectancy$bmi)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(life_expectancy$bmi, xlab = 'Average body mass index of population')
boxplot(life_expectancy$bmi, xlab = 'Average body mass index of population')



## -----------------------------------------------------------------------
summary(life_expectancy$polio)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(life_expectancy$polio, xlab = 'Polio immunization coverage among 1-year olds in percentage')
boxplot(life_expectancy$polio, xlab = 'Polio immunization coverage among 1-year olds in percentage')



## -----------------------------------------------------------------------
summary(life_expectancy$diphtheria)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(life_expectancy$diphtheria, xlab = 'Diphtheria tetanus toxoid and pertussis immunization coverage among 1-year olds  in percentage')
boxplot(life_expectancy$diphtheria, xlab = 'Diphtheria tetanus toxoid and pertussis immunization coverage among 1-year olds in percentage')



## -----------------------------------------------------------------------
summary(life_expectancy$thin10to19)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(life_expectancy$thin10to19, xlab = 'Prevalence of thinness among 10 to 19 year olds')
boxplot(life_expectancy$thin10to19, xlab = 'Prevalence of thinness among 10 to 19 year olds')


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(log(life_expectancy$thin10to19), xlab = 'Log of prevalence of thinness among 10 to 19 year olds')
boxplot(log(life_expectancy$thin10to19), xlab = 'Log of prevalence of thinness among 10 to 19 year olds')


## -----------------------------------------------------------------------
summary(life_expectancy$thin5to9)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(life_expectancy$thin5to9, xlab = 'Prevalence of thinness among 5 to 9 year olds')
boxplot(life_expectancy$thin5to9, xlab = 'Prevalence of thinness among 5 to 9 year olds')



## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(log(life_expectancy$thin5to9), xlab = 'Log of prevalence of thinness among 5 to 9 year olds')
boxplot(log(life_expectancy$thin5to9), xlab = 'Log of prevalence of thinness among 5 to 9 year olds')


## ----fig.height=7.5, fig.width=7.5--------------------------------------
pairs(life_expectancy[, 1:11])


## -----------------------------------------------------------------------
corr = cor(life_expectancy[, 1:11], use = 'complete.obs')
round(corr, 2)


## -----------------------------------------------------------------------
thin = c('thin5to9', 'thin10to19')
life_expectancy$thin_avg = rowMeans(life_expectancy[thin])


## -----------------------------------------------------------------------
lst = c(1, 2, 4, 5, 7, 8, 9, 14)
pairs(life_expectancy[, lst])


## ----fig.height=5, fig.width=8.5----------------------------------------
plot(data = life_expectancy, lifeExpectancy ~ adult_mortality)
simpleFit = lm(data = life_expectancy, lifeExpectancy ~ adult_mortality)
summary(simpleFit)


## -----------------------------------------------------------------------
# # create cluster 1
# life_expectancy$cluster1 = with(life_expectancy, ifelse((lifeExpectancy < 70 & adult_mortality < 100) | (lifeExpectancy >= 70 & adult_mortality < 45), 1, 2))
# plot(lifeExpectancy ~ adult_mortality, data = life_expectancy, col = cluster1)
# life_expectancy$adult_mort2 = ifelse(life_expectancy$cluster1 == 1, 10, 1) * life_expectancy$adult_mortality
# plot(lifeExpectancy ~ adult_mort2, data = life_expectancy, col = cluster1)
# 
# # crate cluster 2
# life_expectancy$cluster2 = with(life_expectancy, ifelse((lifeExpectancy < 90 - 0.3 * adult_mort2), 3, 4))
# plot(lifeExpectancy ~ adult_mort2, data = life_expectancy, col = cluster2)
# abline(90, -0.3)
# life_expectancy$adult_mort3 = ifelse(life_expectancy$cluster2 == 3, 10, 1) * life_expectancy$adult_mort2
# plot(lifeExpectancy ~ adult_mort3, data = life_expectancy, col = cluster2)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow=c(1,2))
hist(life_expectancy$adult_mortality)
boxplot(life_expectancy$adult_mortality)


## ----fig.height=5, fig.width=8.5----------------------------------------
plot(data = life_expectancy, lifeExpectancy ~ sqrt(adult_mortality))
hist(sqrt(life_expectancy$adult_mortality))
boxplot(sqrt(life_expectancy$adult_mortality))


## -----------------------------------------------------------------------
simpleFit_sqrt = lm(data = life_expectancy, lifeExpectancy ~ sqrt(adult_mortality))
summary(simpleFit_sqrt)


## -----------------------------------------------------------------------
confint(simpleFit_sqrt)


## ----fig.height=3.5, fig.width=7----------------------------------------
par (mfrow = c(1,2))
plot (simpleFit_sqrt, which=1:2)


## -----------------------------------------------------------------------
fit1 = lm(data = life_expectancy, lifeExpectancy ~ sqrt(adult_mortality) + infant_deaths_cat + hepatitisB + sqrt(alcohol) + measles_cat + bmi + polio + diphtheria + thin_avg)
summary(fit1)


## -----------------------------------------------------------------------
anova(fit1)


## -----------------------------------------------------------------------
library(car)
vif(fit1)


## ----fig.height=3.5, fig.width=7----------------------------------------
par (mfrow = c(1,2))
plot (fit1, which=1:2)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow = c(1,2))
boxplot(fit1$residuals, ylab = 'Fit1 Residuals')
plot(lifeExpectancy~fit1$fitted, main = "Actual v/s Fitted", ylab = "Life Expectancy", data = life_expectancy)
abline(0,1, col = "red")


## -----------------------------------------------------------------------
library(MASS)
boxcox(fit1)


## -----------------------------------------------------------------------
fit2 = lm(data = life_expectancy, lifeExpectancy^2 ~ sqrt(adult_mortality) + infant_deaths_cat + hepatitisB + sqrt(alcohol) + measles_cat + bmi + polio + diphtheria + thin_avg)
summary(fit2)


## -----------------------------------------------------------------------
anova(fit2)


## -----------------------------------------------------------------------
library(car)
vif(fit2)


## ----fig.height=3.5, fig.width=7----------------------------------------
par (mfrow = c(1,2))
plot (fit2, which=1:2)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow = c(1,2))
boxplot(fit2$residuals, ylab = 'Fit2 Residuals')
plot(lifeExpectancy^2~fit2$fitted, main = "Actual v/s Fitted", ylab = "Life Expectancy", data = life_expectancy)
abline(0,1, col = "red")


## -----------------------------------------------------------------------
fit3 = lm(data = life_expectancy, lifeExpectancy^2 ~ sqrt(adult_mortality) + infant_deaths_cat + sqrt(alcohol) + measles_cat + bmi + polio + diphtheria + thin_avg)
summary(fit3)


## -----------------------------------------------------------------------
anova(fit3)


## -----------------------------------------------------------------------
library(car)
vif(fit3)


## ----fig.height=3.5, fig.width=7----------------------------------------
par (mfrow = c(1,2))
plot(fit3)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow = c(1,2))
boxplot(fit3$residuals, ylab = 'Fit3 Residuals')
plot(lifeExpectancy^2~fit3$fitted, main = "Actual v/s Fitted", ylab = "Life Expectancy", data = life_expectancy)
abline(0,1, col = "red")


## -----------------------------------------------------------------------
library(car)
avPlots(fit3)


## -----------------------------------------------------------------------
fit3aic = step(fit3, direction = 'both')
summary(fit3aic)


## -----------------------------------------------------------------------
fit3bic = step(fit3, direction = "both", k = log(fit3$rank + fit3$df.residual))

summary(fit3bic)


## -----------------------------------------------------------------------
life_expectancy$sqrt.ad.mort = sqrt(life_expectancy$adult_mortality)

life_expectancy$sqrt.ad.mort.c = life_expectancy$sqrt.ad.mort - mean(life_expectancy$sqrt.ad.mort)

life_expectancy$sqrt.alc = sqrt(life_expectancy$alcohol)

life_expectancy$sqrt.alc.c = life_expectancy$sqrt.alc - mean(life_expectancy$sqrt.alc)

life_expectancy$bmi.c = life_expectancy$bmi - mean(life_expectancy$bmi)

life_expectancy$polio.c = life_expectancy$polio - mean(life_expectancy$polio)

life_expectancy$diphtheria.c = life_expectancy$diphtheria - mean(life_expectancy$diphtheria)

life_expectancy$thin.c = life_expectancy$thin_avg - mean(life_expectancy$thin_avg)


## -----------------------------------------------------------------------
centered_fit = lm(data = life_expectancy, lifeExpectancy^2 ~ (sqrt.ad.mort.c + infant_deaths_cat + sqrt.alc.c + measles_cat + bmi.c + polio.c + diphtheria.c + thin.c)^2)
summary(centered_fit)


## -----------------------------------------------------------------------
aic_cent = step(centered_fit, direction = 'both')
summary(aic_cent)


## -----------------------------------------------------------------------
bic_cent = step(centered_fit, direction = "both", k = log(centered_fit$rank + centered_fit$df.residual))

summary(bic_cent)


## ----fig.height=3.5, fig.width=7----------------------------------------
par (mfrow = c(1,2))
plot(aic_cent)


## ----fig.height=5, fig.width=8.5----------------------------------------
par(mfrow = c(1,2))
boxplot(aic_cent$residuals, ylab = 'Centered_fit Residuals')
plot(lifeExpectancy^2~aic_cent$fitted, main = "Actual v/s Fitted", ylab = "Life Expectancy", data = life_expectancy)
abline(0,1, col = "red")


## ----fig.height=5, fig.width=8.5----------------------------------------
vif(aic_cent)


## ----fig.height=5, fig.width=8.5----------------------------------------
names(life_expectancy)
nrows = dim (life_expectancy) [1]

shapes = rep (1, nrows)
shapes [c(740, 1867, 1869)] = 2:4
sizes = rep (1, nrows)
sizes [c(740, 1867, 1869)] = 2

plot (life_expectancy [,c(1:3,19,21)], pch=shapes, cex=sizes)

##Identify High Points Leverage

life_expectancy$leverage = hatvalues (aic_cent)
(lev.cut = 3 * aic_cent$rank / (aic_cent$rank + aic_cent$df.residual))
plot (life_expectancy [,c(1:3,19,21)], pch=ifelse (life_expectancy$leverage > lev.cut, 2, 1))


## ----fig.height=5, fig.width=8.5----------------------------------------
influencePlot(aic_cent)
plot_aic=plot(aic_cent, which=5)


## -----------------------------------------------------------------------
library(ggplot2)
library(dplyr)
categorize = function (x) {
  quartiles = summary (x) [c(2, 3, 5)]
  result = rep ("Q1", length (x))
  result [which ((quartiles[1] < x) & (x <= quartiles [2]))] = "Q2"
  result [which ((quartiles[2] < x) & (x <= quartiles [3]))] = "Q3"
  result [which (quartiles[3] < x)] = "Q4"
  return (result)
}
with(life_expectancy,
     qplot(x = sqrt.ad.mort.c, y = lifeExpectancy ^ 2, color = measles_cat) +
       geom_smooth(method = 'lm'))


## -----------------------------------------------------------------------
with(life_expectancy,
     qplot(x = sqrt.ad.mort.c, y = lifeExpectancy ^ 2, color = infant_deaths_cat) +
       geom_smooth(method = 'lm'))


## -----------------------------------------------------------------------
with(life_expectancy,
     qplot(x = sqrt.ad.mort.c, y = lifeExpectancy ^ 2, color = categorize(diphtheria.c)) +
       geom_smooth(method = 'lm'))


## -----------------------------------------------------------------------
with(life_expectancy,
     qplot(x = bmi.c, y = lifeExpectancy ^ 2, color = measles_cat) +
       geom_smooth(method = 'lm'))


## -----------------------------------------------------------------------
with(life_expectancy,
     qplot(x = sqrt.ad.mort.c, y = lifeExpectancy ^ 2, color = categorize(thin.c)) +
       geom_smooth(method = 'lm'))


## -----------------------------------------------------------------------
pc_aic = predict (aic_cent,interval = "confidence")
pc_aic2 = as.data.frame(pc_aic)
sort_aic = order(as.data.frame(pc_aic)$fit)
sqrt(as.data.frame(pc_aic)[sort_aic,][c(40,100,500,1000, 1500,2100),])

