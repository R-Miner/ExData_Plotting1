# Plot to examine how household energy usage varies over a 2-day period in February, 2007


# Reading data
source("ElectricConsumptionData.R")


png("Plot1.png",width = 480, height = 480)
hist(ReqData$Global_active_power,col = "red",main ="Global Active Power",
     xlab ="Global Active Power(kilowatts)", ylab ="Frequency")
dev.off()