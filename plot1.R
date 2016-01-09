data <- read.table("./household_power_consumption.txt", header=TRUE,  sep=";")
dataToUse <- data[data$Date == "1/2/2007"| data$Date == "2/2/2007", ]
dataToUse$Date <- as.Date(dataToUse$Date, format="%d/%m/%Y")

dataToUse$date <- as.POSIXct(paste(dataToUse$Date, dataToUse$Time), format="%Y-%m-%d %H:%M:%S")
dataToUse$Global_active_power <- as.numeric(dataToUse$Global_active_power)

png(filename = "plot1.png")
hist(dataToUse$Global_active_power, col="red", main = "Global Active Power", xlab = "Global active power (kilowatts)")
dev.off() # close the pdf file device
