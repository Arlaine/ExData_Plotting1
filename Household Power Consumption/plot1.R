> setwd("./R/Coursera/Exploratory Data Analysis")
> power <- read.csv("household_power_consumption.txt", header=T, sep=";",
+ na.strings="?")
> subpower <- subset(power, Date %in% c("1/2/2007", "2/2/2007"))
> hist(subpower$Global_active_power, main="Global Active Power",
+ xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")
> png("plot1.png", width=480, height=480)
> dev.off()
