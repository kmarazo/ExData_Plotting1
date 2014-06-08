
# plot without points
with(data, plot(dateTimes, Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)", main = ""))

# add the lines
with(data, lines(dateTimes, Global_active_power))