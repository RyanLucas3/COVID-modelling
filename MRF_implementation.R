# Packages
install.packages("remotes")
remotes::install_github("cykbennie/fbi")
library(fbi)
library(tidyverse)
library(lubridate)
library(vars)
library(pracma)
source("~/Desktop/MRF_R/MRF.R")
data = 
model <- MRF(mat, x.pos = x_pos[-c(4:6)],               #x_pos[-c(4:6)],  :::::  just adjust x_pos beforehand
             oos.pos = nrow(mat),
             ridge.lambda = .001, rw.regul = .9,
             trend.push = 6,
             B = 2,
             # ERT = TRUE,
             quantile.rate = 0.3,
             fast.rw = FALSE,
             VI = 1)
