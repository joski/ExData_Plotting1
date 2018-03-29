source("load_data.R")
data<-load_data()

png("plot3.png", width=400, height=400)

with(data, plot(Time, Sub_metering_1, type = "l",col='black',ylab = "Energy sub metering"))
with(data,points(Time, Sub_metering_2,col='red',type='l'))
with(data,points(Time, Sub_metering_3,col='blue',type='l'))
legend("topright", lty=1, col = c("black", "red","blue"), legend = c("sub_metering_1", "sub_metering_2","sub_metering_3"))

dev.off()
