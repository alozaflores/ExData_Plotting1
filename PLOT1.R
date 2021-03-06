#PLOT ONE 
#WE READ THE FILE 
dataIn <- read.table("household_power_consumption.txt",  sep=";" , stringsAsFactors=FALSE, header=TRUE, dec=".")

subSet <- dataIn[dataIn$Date %in% c("1/2/2007","2/2/2007") ,]

#The histogram is generated with only the active power variable from the subset
hist(as.numeric(subSet$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power Kilowatts")

#The histogram is copied to the PNG file 
dev.copy(png, file="plot1.png", height=480, width=480)
#the device is closed 
dev.off()