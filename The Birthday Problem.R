#checking for duplicated bdays in one 50 person group 
n <- 50
bdays <- sample(1:365, n, replace = TRUE) #generate n random birthday
any(duplicated(bdays)) #check if any bdays are duplicated

#Monte Carlos simulation with B= 10,000 replicates
B <- 10000
results <- replicate(B, {
  bdays <- sample(1:365,n, replace = TRUE)
  any(duplicated(bdays))
})
mean(results) #calculates probability of groups with duplicated bdays


