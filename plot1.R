data<- read.csv("C:/Users/USER/Desktop/household_power_consumption.txt",header=T, sep=";", na.strings="?")
fdata<- subset(data, Date %in% c("1/2/2007","2/2/2007"))

fdata$Date <- as.Date(fdata$Date, format="%d/%m/%Y")

hist(fdata$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)",ylab="Frequency" ,col="red")
png("plot1.png")
dev.off()
