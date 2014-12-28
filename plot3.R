source("load_data.R")
data <- load_data()

png(filename = "plot3.png")
time <- data$Time
plot(time, data$Sub_metering_1, type = "l", xlab = " ", ylab= "Energy sub metering")
lines(time, data$Sub_metering_2, col = "red")
lines(time, data$Sub_metering_3, col = "blue")
legend("topright", col=c("black", "blue", "red"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)
dev.off()
