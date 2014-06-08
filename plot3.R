# plot without points
with(data, plot(dateTimes, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering", main = ""))

# add the lines
with(data, lines(dateTimes, Sub_metering_1))
with(data, lines(dateTimes, Sub_metering_2, col="red"))
with(data, lines(dateTimes, Sub_metering_3, col="blue"))

legend("topright",
       col = c("black", "blue", "red"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd=2, cex=0.5)