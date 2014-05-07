powerdata <- read.table("household_power_consumption.txt", sep =";", header = TRUE, na.strings = c("?"))
# Only the two dates 2007-02-01 and 2007-02-02
powerdata <- powerdata[powerdata$Date %in% c("1/2/2007", "2/2/2007"),]

png(file = "plot1.png") 
hist(powerdata$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()

