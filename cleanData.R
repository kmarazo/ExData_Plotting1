# read in data
data <- read.table("household_power_consumption.txt", sep=";", header=T)

# create new column for a string date+time
dateTimes <- paste(data$Date, data$Time)
# convert to time
dateTimes <- strptime(dateTimes, format = "%d/%m/%Y %H:%M:%S")
# add it to the data frame
data <- cbind(data, dateTimes)

# convert columns to appropriate types
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data$Global_active_power <- as.numeric(as.character(data$Global_active_power))
data$Global_reactive_power <- as.numeric(as.character(data$Global_reactive_power))
data$Voltage <- as.numeric(as.character(data$Voltage))
data$Sub_metering_1 <- as.numeric(as.character(data$Sub_metering_1))
data$Sub_metering_2 <- as.numeric(as.character(data$Sub_metering_2))
data$Sub_metering_3 <- as.numeric(as.character(data$Sub_metering_3))

# subset data for dates between 2007-02-01 and 2007-02-02
date1 <- as.Date("2007-02-01")
date2 <- as.Date("2007-02-02")
data <- subset(data, data$Date<=date2 & data$Date>=date1)

