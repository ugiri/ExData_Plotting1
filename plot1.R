# load data
source("getData.R")
# plotting histogram
hist(subsetData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", freq = TRUE)
# copy histogram and save as png file
dev.copy(png, file ="plot1.png", height = 480, width = 480)
dev.off()
