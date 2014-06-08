# add "magnification" for axis ticks, axis labels, title
par(cex.axis = 0.6, cex.lab = 0.6, cex.main = 0.6, mgp = c(1.2, 0.4, 0), tck = -0.02, mar = c(4, 1, 2, 2))
# plot the histogram
with(data, hist(Global_active_power, col="red", xlab="Global Active Power (kilowatts)",
main = "Global Active Power"))
