
#               HOMEWORK 1 - Akash Persaud
#               Name of People in Study Group- Vanessa, Mishal 

# Create a vector with the trial 1 outcomes(If 6 appears then Yes, Else No)
outcomes_unaltered_dice <- c("No", "Yes", "No", "Yes", "No", "No", "No", "Yes", "No", "No",
              "Yes", "No", "No", "No", "No", "No", "No", "Yes", "No", "Yes")
# Create a dataframe with two columns: "Trial" and "Outcome"
Sample1_NormalDice <- data.frame(Trial = 1:20, Outcome = outcomes_unaltered_dice)
# Print the dataframe
print(Sample1_NormalDice)

# Create a vector with the trial outcomes after microwaving
outcomes_microwaved <- c("Yes", "No", "No", "No", "Yes", "No", "No", "No", "No", "Yes",
                         "No", "No", "No", "Yes", "Yes", "No", "No", "Yes", "No", "No")

# Create a dataframe with two columns: "Trial 2" and "Outcome"
sample2_microwaved <- data.frame("Trial 2" = 1:20, Outcome = outcomes_microwaved)

# Print the dataframe
print(sample2_microwaved)

# table(Sample1_NormalDice)
# table(sample2_microwaved)

# Those notes request that you find average ages for men and women. 
# Tell me something else interesting, that you learned from the data. 
# Are there surprises for you? We will use this same 
# data for a few exercises so it’s worth getting deeper into it.

x <- 1:50
w <- 1 + sqrt(x)/2
example1 <- data.frame(x=x, y= x + rnorm(x)*w)
attach(example1)

fm <- lm(y ~ x)
summary(fm)

lrf <- lowess(x, y)
plot(x, y)
lines(x, lrf$y)
abline(0, 1, lty=3)
abline(coef(fm))
detach()

load("Household_Pulse_data_w57.RData")
#glimpse(acs2017_ny) try this later
Household_Pulse_data[1:10,1:6]
attach(Household_Pulse_data)
summary(Household_Pulse_data)

summary(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
summary(TBIRTH_YEAR[GENID_DESCRIBE == "male"])
summary(TBIRTH_YEAR[GENID_DESCRIBE == "transgender"])
summary(TBIRTH_YEAR[GENID_DESCRIBE == "other"])
summary(TBIRTH_YEAR[GENID_DESCRIBE == "NA"])

# here i want to find average ages of men and women
mean(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
sd(TBIRTH_YEAR[GENID_DESCRIBE == "female"])

mean(TBIRTH_YEAR[GENID_DESCRIBE == "male" & EEDUC =="adv deg"])
sd(TBIRTH_YEAR[GENID_DESCRIBE == "male" & EEDUC =="adv deg"])

# Here we can see that the mean birth-date for Females is 1971.481 with Standard deviation of 15.61139
# The mean birth-date date for males is 1970.25 with a standard deviation of 16.17685
# The mean birth-date for those who are transgender is 1988.711 with a standard deviation of 13.65979
# The mean birth-date for males with advanced degrees is 1967.715 with a standard deviation of 15.59821



