source("~/Desktop/MRF_R/MRF.R")
library(pracma)
options("max.print" = 1000000)

data.input = read.csv("/Users/ryanlucas/Desktop/COVID-modelling/Combined_Dataset.csv")
print(head(data.input))
data.input = data.input[200:nrow(data.input), 4:ncol(data.input)]
print(head(data.input))
mrf.output=MRF(data=data.input,y.pos=1,x.pos=2:3,S.pos=2:ncol(data.input),oos.pos=nrow(data.input), VI = TRUE, fast.rw = TRUE, resampling.opt = 2, mtry.frac = 0.25, trend.push=1,quantile.rate=0.3, B = 100)

col_names = colnames(data.input[, 2:ncol(data.input)])
df = as.data.frame(mrf.output$VI_oob)
mrf.output$VI_oos
df$column_names = col_names
write.csv(df, "/Users/ryanlucas/Desktop/VI_oob.csv")
