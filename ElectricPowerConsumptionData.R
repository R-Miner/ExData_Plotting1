# Downloading  electric power consumption data 

fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if(!file.exists("exdata%2Fdata%2Fhousehold_power_consumption.zip")){
  
  download.file(fileurl, destfile = "exdata%2Fdata%2Fhousehold_power_consumption.zip")
  unzip("exdata%2Fdata%2Fhousehold_power_consumption.zip")
}

OriginalData<- read.table("household_power_consumption.txt", header = TRUE, sep =";",
                          na.strings ="?")
# Altering Time variable to date-time format
OriginalData$Time <- strptime(paste(OriginalData$Date, OriginalData$Time), "%d/%m/%Y %H:%M:%S")

#Reformating Date variable
OriginalData$Date <- as.Date(OriginalData$Date, format="%d/%m/%Y")

#Extracting required data
ReqData<- OriginalData[(OriginalData$Date=="2007-02-01") | (OriginalData$Date=="2007-02-02"),]
