
#PLOT THREE
#WE READ THE FILE 
dataIn <- read.table("household_power_consumption.txt",  sep=";" , stringsAsFactors=FALSE, header=TRUE, dec=".")

subSet <- dataIn[dataIn$Date %in% c("1/2/2007","2/2/2007") ,]
dates <- strptime(paste(subSet$Date, subSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


#we set the correct layout for the grpahs
par(mfrow = c(2, 2))

#the plots are constructed

plot(dates, as.numeric(subSet$Global_active_power), type="l", xlab="", ylab="Global Active power", cex=0.2)

plot(dates, as.numeric(subSet$Voltage), type="l", xlab="date time", ylab="Voltage")

plot(dates, as.numeric(subSet$Sub_metering_1), type="l", ylab="Energy sub metering", xlab="")
lines(dates, as.numeric(subSet$Sub_metering_2), type="l", col="red")
lines(dates, as.numeric(subSet$Sub_metering_3), type="l", col="blue")
#we annotate the plots with the legends
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(dates, as.numeric(subSet$Global_active_power), type="l", xlab="date time", ylab="Global_reactive_power")


#The plot is copied to the PNG file 
dev.copy(png, file="plot4.png", height=480, width=480)
#the device is closed 
dev.off()

