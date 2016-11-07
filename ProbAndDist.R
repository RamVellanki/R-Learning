#sample
sample(1:40, 5) #random sample of 5 elements from 1 to 40

sample(c('H','T'),10, replace = T) #without replace this won't work as there are only two elements in space

sample(c('female','male'), 10, replace = T, prob=c(0.9, 0.1)) #sample with prob

prod(1:5) #prod of 1x2x3x4x5

choose(40,5) #40c5 = 40!/(5! 35!)

#Discrete Distributions
#Four fundamental items can be calculatd for a statistical distribution:
# * Density or point probability
# * Cumulated probability, distribution function
# * Quantiles
# * Pseudo-random numbers

# dnorm (density), pnorm(probability), qnorm(quantile) and rnorm(random)

x<-seq(-4,4,0.1) #-4 to 4 with steps 0.1
plot(x,dnorm(x),type="l")
curve(dnorm(x), from=-4, to=4)
