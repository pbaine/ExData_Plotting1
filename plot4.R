library(dplyr)

x <- mutate(x, Date_Time = paste(Date, Time))
x$Date_Time <- as.POSIXct(x$Date_Time)
x$Global_active_power <- as.numeric(x$Global_active_power)

png("plot4.png", width=480, height=480)

par(mfrow = c(2,2))
with(x, plot(Date_Time, Global_active_power, type = 'l', xlab = "", ylab = 'Global Active Power'))

with(x, plot(Date_Time, Voltage, type = 'l', xlab = 'datetime', ylab = 'Voltage'))

with(x, plot(Date_Time, Sub_metering_1, type = 'l', xlab = "", ylab = "Energy sub metering"))
with(x, lines(Date_Time, Sub_metering_2, type = 'l', col = 'red'))
with(x, lines(Date_Time, Sub_metering_3, type = 'l', col = 'blue'))
legend("topright", legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black','red','blue'), lty = 1, bty = 'n')

with(x, plot(Date_Time, Global_reactive_power, type = 'l', xlab = 'datetime', ylab = "Global_reactive_power"))

dev.off()