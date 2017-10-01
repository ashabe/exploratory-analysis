par(mfrow=c(2,2))
plot(b$Global_active_power ~ b$DateTime, type="l")
plot(b$Voltage ~ b$DateTime, type="l")

with(b, {plot(Sub_metering_1 ~ DateTime, type="l")})
lines(b$Sub_metering_2 ~ b$DateTime, col = 'Red')
lines(b$Sub_metering_3 ~ b$DateTime, col = 'Blue')

plot(b$Global_reactive_power ~ b$DateTime, type="l")

dev.copy(png, file = "Plot4.png")
dev.off()