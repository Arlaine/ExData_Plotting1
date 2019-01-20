> setwd("./R/Coursera/Exploratory Data Analysis")
> power <- read.csv("household_power_consumption.txt", header=T, sep=";",
+ na.strings="?")
> subpower <- subset(power, Date %in% c("1/2/2007", "2/2/2007"))
> subpower$Date <- as.Date(subpower$Date, format="%d/%m/%Y")
> subpower$Time <- strptime(subpower$Time, format="%H:%M:%S")
> subpower[1:1440,"Time"] <- format(subpower[1:1440,"Time"],"2007-02-01 %H:%M:%S")
> subpower[1441:2880,"Time"] <- format(subpower[1441:2880,"Time"],"2007-02-02 %H:%M:%S")
> plot(subpower$Time,as.numeric(as.character(subpower$Global_active_power)),type="l",
+ xlab="", ylab="Global Active Power (kilowatts)")
> title(main="Global Active Power Vs Time")
> dev.copy(png, file="plot2.png", height=480, width=480)
> dev.off()
