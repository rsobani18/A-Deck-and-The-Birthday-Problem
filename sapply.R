#Using sapply to appply functions element wise to vectors
#Function for birthday problem MonteCarlo Simulation
#function to calculate probability of shared bdays across n people
compute_prob <- function(n, B = 10000) {
  same_day <- replicate(B, {
    bdays <- sample(1:365, n, replace = TRUE)
    any(duplicated(bdays))
  })
  mean(same_day)
}

n <- seq(1,60)

#Element wise operation over vectors and sapply
x <- 1:10
sqrt(x) # sqrt operates on each element of the vector

y <- 1:10
x *y #* Operates element wise on both vectors

compute_prob(n) #does not iterate over the vector n without sapply

x <- 1:10
sapply(x, sqrt) #this is equivalent to sqrt (x)
prob  <- sapply(n, compute_prob) #element wise application of compute_prob to n
plot(n, prob)

