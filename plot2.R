library(dplyr)

x <- mutate(x, Date_Time = paste(Date, Time))
x$Date_Time <- as.POSIXct(x$Date_Time)
x$Global_active_power <- as.numeric(x$Global_active_power)

png("plot2.png", width=480, height=480)
with(x, plot(Date_Time, Global_active_power, type = 'l', xlab = "", ylab = 'Global Active Power (kilowatts)'))
dev.off()