powerdata <- read.table("household_power_consumption.txt", sep =";", header = TRUE, na.strings = c("?"))
# Only the two dates 2007-02-01 and 2007-02-02
powerdata <- powerdata[powerdata$Date %in% c("1/2/2007", "2/2/2007"),]

# Make Date an R-date
powerdata$Datetime <- paste(powerdata$Date, powerdata$Time)
powerdata$Datetime <- strptime(powerdata$Datetime, "%d/%m/%Y %H:%M:%S")

png(file = "plot3.png") 
with(powerdata, plot(Datetime, Sub_metering_1, ylab ="Energy sub metering", xlab = " ", type = "l"))
with(powerdata, points(Datetime, Sub_metering_2, col = "red", type = "l" ))
with(powerdata, points(Datetime, Sub_metering_3, col = "blue", type = "l" ))
legend("topright", pch = "_____", col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3" ))

dev.off()


