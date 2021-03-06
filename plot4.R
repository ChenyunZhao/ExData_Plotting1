household_power_consumption<-read.csv("~/Desktop/coursera/dataanalysis/household_power_consumption.txt"
                                      , sep=";",na.strings="?")
data<-subset(household_power_consumption,Date=="1/2/2007"|Date=="2/2/2007")
dt <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
png(filename="plot4.png")
par(mfrow = c(2, 2))
# Plot 1 - global active power: upper left
plot(x=dt, y=data[,"Global_active_power"], type="l",ylab="Global Active Power", main="", xlab="")

# Plot 2 - voltage: upper right
plot(x=dt, y=data[,"Voltage"], type="l",ylab="Voltage", main="", xlab="datetime")

# Plot 3 - sub metering: lower left
plot(x=dt, y=data[,"Sub_metering_1"], type="l",ylab="Energy sub metering", main="", xlab="")
lines(x=dt, y=data[,"Sub_metering_2"], col="red")
lines(x=dt, y=data[,"Sub_metering_3"], col="blue")

legend("topright", lty=1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")

# Plot 4 - global reactive power: lower right

plot(x=dt, y=data[,"Global_reactive_power"], type="l",ylab="Global_reactive_power", main="", xlab="datetime")
dev.off()