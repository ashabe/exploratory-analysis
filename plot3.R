with(b, {plot(Sub_metering_1 ~ DateTime, type="l", xlab= "", ylab="Energy Sub Metering")})

lines(b$Sub_metering_2 ~ b$DateTime, col = 'Red')
lines(b$Sub_metering_3 ~ b$DateTime, col = 'Blue')
legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png, file = "Plot3.png")
dev.off()
