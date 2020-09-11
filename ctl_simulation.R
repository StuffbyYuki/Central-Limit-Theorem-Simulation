# Central limit theorem simulation 
set.seed(0) 

# Create an empty vector
clt <- NULL 

# Sample size for each sample
n <- 10

# Population - Uniform distribution
p <- runif(50)

# Number of sample means to take
n_means <- 1000

# Calculate 
for (i in 1:n_means) {
  clt = c(clt, mean(sample(p, n, replace = T)))
}

# Visualize the simulation result
par(mfrow=c(1,2))
hist(clt, breaks = 50, main = 'Histogram of Means', col = 'beige')
plot(density(clt), main = 'Density Plot', col = 'red')