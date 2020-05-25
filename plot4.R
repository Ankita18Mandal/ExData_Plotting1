data<- read.csv("C:/Users/USER/Desktop/household_power_consumption.txt",header=T, sep=";", na.strings="?")
fdata<- subset(data, Date %in% c("1/2/2007","2/2/2007"))

fdata$Date <- as.Date(fdata$Date, format="%d/%m/%Y")
datetime<- paste(as.Date(fdata$Date), fdata$Time)
fdata$DateTime <- as.POSIXct(datetime)
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

with(fdata,{
  plot(Global_active_power~DateTime,  type="l", ylab="Global Active Power(kilowatts)")
  plot(Voltage~DateTime,  type="l", ylab="Voltage", xlab="datetime")
  
    plot(Sub_metering_1~DateTime,  type="l", ylab="Global Active Power(kilowatts)")
  lines(Sub_metering_2~DateTime, col="red")
  lines(Sub_metering_3~DateTime, col="black")
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3" ))
plot(Global_reactive_power~DateTime,  type="l", ylab="Global_reactive_power", xlab="datetime")})

