setwd("~/Documents/courseera/ExData_Plotting1-master")

library(dplyr)
library(lubridate)

dat <- read.table(file = "household_power_consumption.txt", sep = ';', header = TRUE, na.strings = '?')
dat$Date <- as.Date(dat$Date, format = '%d/%m/%Y')
x <- filter(dat, Date >= "2007-02-01" & Date <="2007-02-02")