data=read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
data$Date=as.Date(data$Date,format="%d/%m/%Y")
data1<-subset(data,subset=(Date>="2007-02-01" & Date<="2007-02-02"))

datetime <- paste(as.Date(data1$Date), data1$Time, sep=" ")
datetime.convert<-strptime(datetime, "%Y-%m-%d %H:%M:%S")

png("plot3.png", width=480, height=480)
plot(datetime.convert, data1$Sub_metering_1,type="l",
     xlab="",ylab="Energy sub metering")
lines(datetime.convert, data1$Sub_metering_2,type="l",col="red")
lines(datetime.convert, data1$Sub_metering_3,type="l",col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()