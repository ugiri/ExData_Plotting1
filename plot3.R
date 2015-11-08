# load data
source("getData.R")
# set png file name and image size
png("plot3.png", width=480, height=480)
plot(subsetData$datetime, subsetData$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering") 
lines(subsetData$datetime, subsetData$Sub_metering_2, type = "l", col = "red")
lines(subsetData$datetime, subsetData$Sub_metering_3, type = "l", xlab = "", ylab = "", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()
