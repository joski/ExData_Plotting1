source("load_data.R")
data<-load_data()

png("plot2.png", width=400, height=400)

with(data,plot(Time,Global_active_power,
               type="l",
               xlab = "",
               ylab = "Global Active Power (kilowatts)"))

dev.off()
