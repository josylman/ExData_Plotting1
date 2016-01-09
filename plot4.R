load(file = "datause.RData")

png(filename = "plot4.png")
par(mfrow=c(2,2))
plot(dataToUse$date, dataToUse$Global_active_power, type = "l", ylab = "Global active power (kilowatts)", xlab = "")
plot(dataToUse$date, dataToUse$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
plot(dataToUse$date,dataToUse$Sub_metering_1,type="l", ylab = "Energy Sub metering", xlab = "")
lines(dataToUse$date,dataToUse$Sub_metering_2,type="l",col="red")
lines(dataToUse$date,dataToUse$Sub_metering_3,type="l",col="blue")
legend("topright", pch = "-", col = c("black","blue", "red"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(dataToUse$date, dataToUse$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
dev.off() # close file device