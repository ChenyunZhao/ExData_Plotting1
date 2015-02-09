household_power_consumption<-read.csv("~/Desktop/coursera/dataanalysis/household_power_consumption.txt"
                                      , sep=";",na.strings="?")
data<-subset(household_power_consumption,Date=="1/2/2007"|Date=="2/2/2007")
png(filename="plot1.png")
hist(as.numeric(data$Global_active_power),col="red",main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()