# load data
source("getData.R")
# plotting 
with(subsetData, plot(datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
# copy plot and save as png file
dev.copy(png, file ="plot2.png", height = 480, width = 480)
dev.off()
