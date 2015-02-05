## plot4 for Exploratory Data Course Project 1
## subset of data was created before reading into R using mysql

setwd("H:/data")
# read in data
data <- read.csv("household_power_consumption.csv")

# convert date and time variables to date/time classes
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

# create one .png file with four plots
png(file="plot4.png", height=480, width=480)
par(mfcol=c(2,2))
plot(data$DateTime, data$Global_active_power, type="l", ylab="Global Active Power", xlab="")
plot(data$DateTime, data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="",lty=1)
lines(data$DateTime, data$Sub_metering_2,col="red", lty=1)
lines(data$DateTime, data$Sub_metering_3,col="blue",lty=1)
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c(1,2,4), lty=1, bty="n")
plot(data$DateTime, data$Voltage, type="l", ylab="Voltage", xlab="datetime",lty=1)
plot(data$DateTime, data$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime",lty=1)
dev.off()