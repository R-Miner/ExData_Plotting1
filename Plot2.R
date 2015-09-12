# Plot to examine how household energy usage varies over a 2-day period in February, 2007

source("ElectricConsumptionData.R")

png("Plot2.png", width = 480, height = 480, units = "px")
plot(ReqData$Time, ReqData$Global_active_power, type = "l",
     xlab="",ylab="Global Active Power(kilowatts)")
dev.off()