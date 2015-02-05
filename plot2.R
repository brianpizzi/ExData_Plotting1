## plot2 for Exploratory Data Course Project 1
## subset of data was created before reading into R using mysql

setwd("H:/data")
# read in data
data <- read.csv("household_power_consumption.csv")

# convert date and time variables to date/time classes
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

# create .png file with plot2
png(file="plot2.png", height=480, width=480)
plot(data$DateTime, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()