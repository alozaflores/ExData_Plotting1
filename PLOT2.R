
#PLOT ONE 
#WE READ THE FILE 
dataIn <- read.table("household_power_consumption.txt",  sep=";" , stringsAsFactors=FALSE, header=TRUE, dec=".")

subSet <- dataIn[dataIn$Date %in% c("1/2/2007","2/2/2007") ,]


dates <- strptime(paste(subSet$Date, subSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
as.numeric(subSet$Global_active_power)


plot(dates, as.numeric(subSet$Global_active_power),  xlab="Dates", ylab="Global Active Power Kilowatts", type="l")

#The plot is copied to the PNG file 
dev.copy(png, file="PLOT2.png", height=480, width=480)
#the device is closed 
dev.off()