setwd("C:/Users/Satya/Desktop/R Learning/Material - Data Science Specialization/4. Exploratory Data Analysis/exdata_data_household_power_consumption")
power <- read.csv("household_power_consumption.txt",header = TRUE, sep = ";",colClasses = "character")
names(power)
#str(power)
power$Date <- as.Date(power$Date,format="%d/%m/%Y")
#head(power,3)
#power <- power$Date > '2007-02-01' & power$Date < '2007-02-02'

power_1 <- subset(power, (Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02")) )
#nrow(power_1)
#nrow(power)
#head(power_1)
#tail(power_1)
power_1$Global_active_power <- as.numeric(power_1$Global_active_power)
hist(power_1$Global_active_power,
     col="Red",xlab="Global Active Power (kilowatts)",
     main="Global Active Power",
     cex.main=0.8,cex.lab=0.6, cex.axis=0.6)
