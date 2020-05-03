setwd("C:/Users/Satya/Desktop/R Learning/Material - Data Science Specialization/4. Exploratory Data Analysis/exdata_data_household_power_consumption")
power <- read.csv("household_power_consumption.txt",
                  header = TRUE, sep = ";",colClasses = "character")
power$Date <- as.Date(power$Date,format="%d/%m/%Y")
power_1 <- subset(power, (Date >= as.Date("2007-02-01") 
                          & Date <= as.Date("2007-02-02")) )
						  
x <- as.POSIXct(paste(power_1$Date,power_1$Time))
y1 <- power_1$Sub_metering_1
y2 <- power_1$Sub_metering_2
y3 <- power_1$Sub_metering_3

plot(x, y1, type="l", ylab="Energy sub metering", xlab="")
lines(x, y2, type="l", col = "red")
lines(x, y3, type="l", col = "blue")
legend("topright", lty=1,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black","red","blue"),
       cex=0.5)
