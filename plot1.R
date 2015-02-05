## plot1 for Exploratory Data Course Project 1
## subset of data was created before reading into R using mysql

setwd("H:/data")
# read in data
data <- read.csv("household_power_consumption.csv")

# convert date and time variables to date/time classes
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

# create .png file with plot1
png(file="plot1.png", height=480, width=480)
hist(data$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.off()