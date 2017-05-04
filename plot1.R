data=read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
data$Date=as.Date(data$Date,format="%d/%m/%Y")
data1<-subset(data,subset=(Date>="2007-02-01" & Date<="2007-02-02"))

#plot 1:
png("plot1.png", width=480, height=480)
hist(data1$Global_active_power,
     xlab="Global Active Power(kilowatts)",ylab="Frequency",
     main="Global Active Power",
     col="red")
dev.off()

