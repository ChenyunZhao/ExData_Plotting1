household_power_consumption<-read.csv("~/Desktop/coursera/dataanalysis/household_power_consumption.txt"
                                      , sep=";",na.strings="?")
data<-subset(household_power_consumption,Date=="1/2/2007"|Date=="2/2/2007")
dt<-strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
png(filename="plot2.png")
plot(x=dt, y=data[,"Global_active_power"], type="l",ylab="Global Active Power (kilowatts)", main="", xlab="")
dev.off()