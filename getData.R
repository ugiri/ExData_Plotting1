# set working directory
setwd("~/DataScience/Exploratory Data Analysis/Project1")
# get datafile URL
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
# create data directory if it doesn't exist  
if(!file.exists("./data")){
  dir.create("./data")
}
# download the file if it doesn't exist
if(!file.exists("./data/hpcdata.zip")){
  download.file(fileUrl,destfile="./data/hpcdata.zip",method="curl")
}
# unzip the file if it doesn't exist
if(!file.exists("./data/household_power_consumption.txt")){
  unzip("./data/hpcdata.zip", exdir = "./data")
}
# read data
hpcdata <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";", na = "?")
# create subset of data for specified dates
subsetData <- hpcdata[hpcdata$Date %in% c("1/2/2007", "2/2/2007"), ]
# add lubridate package
library(lubridate)
# create datetime column by merging date and time fields
subsetData$datetime <- dmy_hms(paste(subsetData$Date, subsetData$Time))
