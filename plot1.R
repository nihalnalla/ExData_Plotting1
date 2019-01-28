library(grDevices)

data<-read.csv("household_power_consumption.txt",sep=";")
summary(house_data)
house_data<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

png(file="plot1.png",width = 480,height = 480)
with(house_data,
     hist(as.numeric(as.character(house_data$Global_active_power)),
          breaks = 13,col = 'red',xlab = "Global Active Power(kilowatts)"
          ,main = "Global Active Power")
)


title(main="Global Active Power")
dev.off()




