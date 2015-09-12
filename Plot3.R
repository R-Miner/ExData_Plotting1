# Plot to examine how household energy usage varies over a 2-day period in February, 2007

source("ElectricConsumptionData.R")

png("Plot3.png",width = 480, height = 480,  units = "px")
plot(ReqData$Time, ReqData$Sub_metering_1, type = "l",
     xlab ="", ylab="Energy sub metering")
lines(ReqData$Time, ReqData$Sub_metering_2,col ="red")
lines(ReqData$Time, ReqData$Sub_metering_3,col ="blue")
legend("topright",col = c("black","red","blue"),
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty =1)
dev.off()
