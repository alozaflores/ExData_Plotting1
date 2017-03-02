
#PLOT THREE
#WE READ THE FILE 
dataIn <- read.table("household_power_consumption.txt",  sep=";" , stringsAsFactors=FALSE, header=TRUE, dec=".")

subSet <- dataIn[dataIn$Date %in% c("1/2/2007","2/2/2007") ,]


dates <- strptime(paste(subSet$Date, subSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


plot(dates, as.numeric(subSet$Sub_metering_1), type="l", ylab="Energy Submetering")
lines(dates, as.numeric(subSet$Sub_metering_2), type="l", col="red")
lines(dates, as.numeric(subSet$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))


#The plot is copied to the PNG file 
dev.copy(png, file="PLOT3.png", height=480, width=480)
#the device is closed 
dev.off()
