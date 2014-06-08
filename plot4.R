par(mfrow = c(2, 2), mar = c(3, 3, 1, 1), oma = c(0, 0, 1, 0)) 

with(data, {
  # insert first plot
  plot(dateTimes, Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)", main = "")
  lines(dateTimes, Global_active_power)
  
  # insert second plot
  plot(dateTimes, Voltage, type="n", xlab="datetime", ylab="Voltage", main = "")
  lines(dateTimes, Voltage)
  
  # insert third plot
  plot(dateTimes, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering", main = "")
  lines(dateTimes, Sub_metering_1)
  lines(dateTimes, Sub_metering_2, col="red")
  lines(dateTimes, Sub_metering_3, col="blue")
  
  legend("topright",
         col = c("black", "blue", "red"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lwd=2, cex=0.75, bty="n")
  
  # insert fourth plot
  plot(dateTimes, Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power", main = "")
  lines(dateTimes, Global_reactive_power)
  
})