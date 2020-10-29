
library(dplyr)
library(dslabs)
data(murders)

# Use the function mutate to add a column rank containing the rank, from highest to lowest murder rate. Make sure you redefine murders.
x <- c(88, 100, 83, 92, 94)
rank(-x)

# Defining rate
rate <-  murders$total/ murders$population * 100000

# Redefine murders to include a column named rank
# with the ranks of rate from highest to lowest
murders<-mutate(murders, rank(-rate))