source("load_data.R")
data <- load_data()

png(filename = "plot4.png")
par(mfrow=c(2,2))
plot(data$Time, as.numeric(data$Global_active_power), type = "l",
     xlab = " ", ylab="Global Active Power (kilowatts)")
plot(data$Time, data$Voltage, type = "l", xlab = "datetime", ylab="Voltage")
plot(time, data$Sub_metering_1, type = "l", xlab = " ", ylab= "Energy sub metering")
lines(time, data$Sub_metering_2, col = "red")
lines(time, data$Sub_metering_3, col = "blue")
legend("topright", col=c("black", "blue", "red"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)
plot(time, data$Global_reactive_power, 
     type = "l", xlab = "datetime", ylab="Global_reactive_power")
dev.off()