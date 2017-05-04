data=read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
data$Date=as.Date(data$Date,format="%d/%m/%Y")
data1<-subset(data,subset=(Date>="2007-02-01" & Date<="2007-02-02"))

datetime <- paste(as.Date(data1$Date), data1$Time, sep=" ")
datetime.convert<-strptime(datetime, "%Y-%m-%d %H:%M:%S")

#plot 2:
png("plot2.png", width=480, height=480)
plot(datetime.convert,data1$Global_active_power,type="l" ,
     ylab="Global Active Power(kilowatts)",xlab=" ")
dev.off()