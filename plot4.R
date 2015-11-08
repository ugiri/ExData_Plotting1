# load data
source("getData.R")
# set png file name and image size 
png("plot4.png", width=480, height=480)
# setting 4 plots (2 rows x 2 columns) in a page
par(mfrow = c(2, 2))
## top-left plot ##
with(subsetData, plot(datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power"))
## top-right plot ##
with(subsetData, plot(datetime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))
## bottom-left plot ##
plot(subsetData$datetime, subsetData$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering") 
lines(subsetData$datetime, subsetData$Sub_metering_2, type = "l", col = "red")
lines(subsetData$datetime, subsetData$Sub_metering_3, type = "l", xlab = "", ylab = "", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
## bottom-right plot ##
with(subsetData, plot(datetime, Global_reactive_power, type = "l"))
# close png device
dev.off()
