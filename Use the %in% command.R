library(dslabs)
data(murders)


# Store the 5 abbreviations in `abbs`. 
abbs<-c('MA', 'ME', 'MI', 'MO', 'MU')

# Use the %in% command to check if the entries of abbs are abbreviations in the the murders data frame
c('MA', 'ME', 'MI', 'MO', 'MU') %in% murders$abb
