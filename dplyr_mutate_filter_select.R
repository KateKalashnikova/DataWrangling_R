
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

# Add the necessary columns
murders <- mutate(murders, rate = total/population * 100000, rank = rank(-rate))

# Filter to show the top 5 states with the highest murder rates
filter(murders,rank<=5)

# Use filter to create a new data frame no_south
no_south <- filter(murders, region !='South')
# Use nrow() to calculate the number of rows
nrow(no_south)

# Create a new data frame called murders_nw with only the states from the northeast and the west
murders_nw <- filter(murders, region %in% c('Northeast', 'West'))
# Number of states (rows) in this category 
nrow(murders_nw)

# Create a table, call it my_states, that satisfies both the conditions 
my_states <- filter(murders, region %in% c('Northeast', 'West') & rate <1)
# Use select to show only the state name, the murder rate and the rank
select(my_states, state, rate, rank)


