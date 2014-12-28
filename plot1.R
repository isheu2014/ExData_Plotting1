## Plots histogram of household active power consumption
source("load_data.R")
data <- load_data()

png(filename = "plot1.png")
hist(data$Global_active_power, col = "red", 
     main = "Global Active Power", xlab = "Global active power (kilowatts)")
dev.off()