# install.packages("lmtest")
library(lmtest)

data = read.csv("granger_data.csv")
grangertest(return_lag ~ fundingRate, order=1, data=data) # funding_rate predicts return_lag # ... y  ~  x... y predicted by x
grangertest(fundingRate ~ return_lag, order=1, data=data) # return_lag predicts funding_rate

