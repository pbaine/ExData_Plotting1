library(dplyr)

x <- mutate(x, Date_Time = paste(Date, Time))
x$Date_Time <- as.POSIXct(x$Date_Time)

png("plot3.png", width=480, height=480)
with(x, plot(Date_Time, Sub_metering_1, type = 'l', xlab = "", ylab = "Energy Submetering"))
with(x, lines(Date_Time, Sub_metering_2, type = 'l', col = 'red'))
with(x, lines(Date_Time, Sub_metering_3, type = 'l', col = 'blue'))
legend("topright", legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black','red','blue'), lty = 1)
dev.off()