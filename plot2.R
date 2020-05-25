data<- read.csv("C:/Users/USER/Desktop/household_power_consumption.txt",header=T, sep=";", na.strings="?")
fdata<- subset(data, Date %in% c("1/2/2007","2/2/2007"))

fdata$Date <- as.Date(fdata$Date, format="%d/%m/%Y")
plot(fdata$Global_active_power, ylab="Global Active Power(kilowatts)", type="l")
png("plot2.png")
dev.off() 
