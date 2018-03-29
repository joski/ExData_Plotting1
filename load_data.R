library(sqldf)
load_data<-function(){
  data<-read.csv.sql("household_power_consumption.txt",sep = ";",sql="select* from file where Date='1/2/2007' or Date='2/2/2007'")
  data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  return(data)
}