plot(b$Global_active_power ~ b$DateTime, type="l", xlab= "", ylab="Global Active power (kilowatts)")
dev.copy(png, file = "Plot2.png")
dev.off()