library(grDevices)

data<-read.table("household_power_consumption.txt",sep=";",header=T)
summary(house_data)
house_data<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

##use capital'Y' in %Y
house_data$Date<-as.Date(house_data$Date,"%d/%m/%Y")
house_data$Global_active_power<-as.numeric(house_data$Global_active_power)
house_data$Date_Time<-as.POSIXct(paste(house_data$Date,house_data$Time))
plot(as.numeric(house_data$Global_active_power) ~ house_data$Date_Time, type="l", xlab= "", ylab="Global Active power (kilowatts)")
getwd()

