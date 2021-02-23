
# Data
Z <- matrix(c(1:15), nrow = 5, ncol = 3)
r <- rnorm(5)  
g_bar <- matrix(1:3, ncol = 1)

# First observation
g <-  (Z[1,] * r[1]) - g_bar

# All other observations
for (i in 2:nrow(Z)) {  
  g_i <- (Z[i,] * r[i]) - g_bar
  g <- cbind(g, g_i)
}

g # A 3x5 matrix 
