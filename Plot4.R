# Plot to examine how household energy usage varies over a 2-day period in February, 2007

source("ElectricConsumptionData.R")

png("Plot4.png",width = 480, height = 480,  units = "px")

par(mfrow = c(2,2))
#1
plot(ReqData$Time, ReqData$Global_active_power, type = "l",
     xlab="",ylab="Global Active Power")
#1
plot(ReqData$Time, ReqData$Voltage, type = "l",
     xlab="datetime",ylab="Voltage")
#3
plot(ReqData$Time, ReqData$Sub_metering_1, type = "l",
     xlab ="", ylab="Energy sub metering")
lines(ReqData$Time, ReqData$Sub_metering_2,col ="red")
lines(ReqData$Time, ReqData$Sub_metering_3,col ="blue")
legend("topright",col = c("black","red","blue"),
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty =1)
#4
plot(ReqData$Time, ReqData$Global_reactive_power, type = "l",
     xlab="datetime",ylab="Global_reactive_power")

dev.off()
