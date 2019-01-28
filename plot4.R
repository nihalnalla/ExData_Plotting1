library(grDevices)

data<-read.table("household_power_consumption.txt",sep=";",header=T,na.strings = "?")
summary(house_data)
house_data<-data[data$Date %in% c("1/2/2007","2/2/2007"),]


house_data$Date<-as.Date(house_data$Date,"%d/%m/%Y")
house_data$Date_Time<-as.POSIXct(paste(house_data$Date,house_data$Time))


png(file="plot4.png",width = 480,height = 480)

par(mar=c(2,4,0,1),mfrow=c(2,2))

plot(house_data$Global_active_power~house_data$Date_Time,type="l",
     ylab="Global active power")




plot(house_data$Voltage~house_data$Date_Time,type="l",ylab="Voltage")




plot((house_data$Sub_metering_1)~house_data$Date_Time,type="l",xlab="",ylab ="sub metering")
lines((house_data$Sub_metering_2)~house_data$Date_Time,col="red")
lines((house_data$Sub_metering_3)~house_data$Date_Time,col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n",lty=1,lwd=2,col = c("black","red","blue"))


plot(house_data$Global_reactive_power~house_data$Date_Time,type="l",ylab="Global Reactive Power")


dev.off()











?par
par(mar=c(2,4,0,1),mfrow=c(2,2))

plot(house_data$Global_active_power~house_data$Date_Time,type="l",
     ylab="Global active power")




plot(house_data$Voltage~house_data$Date_Time,type="l",ylab="Voltage")




plot((house_data$Sub_metering_1)~house_data$Date_Time,type="l",xlab="",ylab ="sub metering")
lines((house_data$Sub_metering_2)~house_data$Date_Time,col="red")
lines((house_data$Sub_metering_3)~house_data$Date_Time,col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n",lty=1,lwd=2,col = c("black","red","blue"))


plot(house_data$Global_reactive_power~house_data$Date_Time,type="l",ylab="Global Reactive Power")




