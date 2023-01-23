#install.packages('forecast')
#install.packages('tseries')

data(lynx)

time(lynx)

mean(lynx);median(lynx)

plot(lynx) # short, cyclical peaks , high mean 

sort(lynx)

length(lynx)

quantile(lynx)

quantile(lynx,probs = seq(0,1,length=11),type=5)

head(lynx)

# random uniform data between 10 and 45
mydata = runif(n=50,min=10,max=45)

# packing it into quarterly time series
mytimeseries = ts(data=mydata, start=c(1956,3), frequency = 4)

mytimeseries

plot(mytimeseries)

time(mytimeseries)

class(mytimeseries)

plot(nottem)

# decompose to single component : trend , observed, seasonality,random noice
plot(decompose(nottem))

plot.ts(cumsum(rnorm(500)))

# install.packages('forecast')
library(forecast)
ggseasonplot(nottem)


test = ts(c(rnorm(100,2,1),rnorm(100,50,1)),start=1)
plot(test)
plot(diff(test)) # differencing Yt -Yt-1


# unit root test

x = rnorm(1000)
library(tseries)
adf.test(x)

plot(nottem) # seasonal data 
