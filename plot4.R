source("load_data.R")
data<-load_data()

png("plot4.png", width=400, height=400)

par(mfrow=c(2,2))

#TL
with(data,plot(Time,Global_active_power,type="l",xlab = "",ylab = "Global Active Power"))
#TR
with(data,plot(Time, Voltage, type = "l",col='black',xlab = "datetime"))
#BL
with(data, plot(Time, Sub_metering_1, type = "l",col='black',ylab = "Energy sub metering"))
with(data,points(Time, Sub_metering_2,col='red',type='l'))
with(data,points(Time, Sub_metering_3,col='blue',type='l'))
legend("topright", lty=1, col = c("black", "red","blue"), legend = c("sub_metering_1", "sub_metering_2","sub_metering_3"))

#BR
with(data,plot(Time,Global_reactive_power,type="l",xlab = "datetime"))

dev.off()

