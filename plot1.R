#plot 1
df <- read.csv("C:\\Ashy\\Ashy\\cousera\\exploratory\\household_power_consumption.txt",sep = ";",na.strings = "?")
library(dplyr)
b <- df %>% filter(Date == '1/2/2007'|Date == '2/2/2007')
b$Global_active_power <- as.numeric(b$Global_active_power)
b$Date <- as.Date(b$Date,"%d/%m/%Y")
b<-cbind(b, "DateTime" = as.POSIXct(paste(b$Date, b$Time)))
#par(mfrow = c(1,1))

hist(as.numeric(b$Global_active_power), col="Red", main="Global Active Power", xlab="Global Active power (kilowatts)", ylab="Frequency")
dev.copy(png, file = "Plot1.png")
dev.off()
