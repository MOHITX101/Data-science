# Load and filter data
data_full <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)
data <- subset(data_full, Date %in% c("1/2/2007", "2/2/2007"))

# Convert Date and Time to a single Datetime object
data$Datetime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

# Open PNG device
png("plot2.png", width=480, height=480)

# Create Plot 2: Use ~ (tilde), not - (minus)
plot(data$Global_active_power ~ data$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

# Close device
dev.off()

