setwd("C:/Users/Satya/Desktop/R Learning/Material - Data Science Specialization/4. Exploratory Data Analysis/exdata_data_household_power_consumption")
power <- read.csv("household_power_consumption.txt",
                  header = TRUE, sep = ";",colClasses = "character")
names(power)
par(mfrow=c(1,1))
str(power)
power$Date <- as.Date(power$Date,format="%d/%m/%Y")
head(power,3)
#power <- power$Date > '2007-02-01' & power$Date < '2007-02-02'
nrow(power)
power_1 <- subset(power, (Date >= as.Date("2007-02-01") 
                          & Date <= as.Date("2007-02-02")) )
#nrow(power_1)
#head(power_1)
#tail(power_1)
power_1$Global_active_power <- as.numeric(power_1$Global_active_power)
power_1$day_of_the_week <- weekdays(as.Date(power_1$Date))
#str(power_1)

#power_1$datetime<- paste(power_1$Date,power_1$Time)
#class(power_1$datetime)
#df$datetime<-as.POSIXct(df$datetime)

#plot(as.factor(power_1$day_of_the_week), power_1$Global_active_power)
with(power_1, 
     plot(as.POSIXct(paste(Date,Time)),
          Global_active_power,
          type="l",
          ylab="Global Active Power (kilowatts)",
          xlab="",
          mar = c(2,2,2,2)
          )
     )
