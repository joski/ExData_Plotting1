source("load_data.R")
data<-load_data()

png("plot1.png", width=400, height=400)

with(data,hist(Global_active_power,
               main="Global Active Power",
               xlab="Global Active Power (kilowatts)",
               ylab="Frequency",
               col="red"))

dev.off()
