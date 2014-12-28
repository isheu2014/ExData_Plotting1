source("load_data.R")

data <- load_data()
png(filename = "plot2.png")
plot(data$Time, as.numeric(data$Global_active_power), type = "l",
     xlab = " ", ylab= "Global Active Power (kilowatts)")
dev.off()