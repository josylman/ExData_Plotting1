load(file = "datause.RData")

png(filename = "plot3.png")
plot(dataToUse$date,dataToUse$Sub_metering_1,type="l", ylab = "Energy Sub metering", xlab = "")
lines(dataToUse$date,dataToUse$Sub_metering_2,type="l",col="red")
lines(dataToUse$date,dataToUse$Sub_metering_3,type="l",col="blue")
legend("topright", pch = "-", col = c("black","blue", "red"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off() # close file device