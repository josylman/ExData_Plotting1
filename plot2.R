load(file = "datause.RData")

png(filename = "plot2.png")
plot(dataToUse$date, dataToUse$Global_active_power, type = "l", ylab = "Global active power (kilowatts)", xlab = "")
dev.off() # close file device