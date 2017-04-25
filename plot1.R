library(dplyr)

x$Date <- as.Date(x$Date, format = '%d/%m/%Y')

x$Global_active_power <- as.numeric(x$Global_active_power)

png("plot1.png", width=480, height=480)
hist(x$Global_active_power, col = 'red', xlab = 'Global Active Power (kilowatts)', 
     main = 'Global Active Power', breaks = 13, xlim = c(0,6))
dev.off()