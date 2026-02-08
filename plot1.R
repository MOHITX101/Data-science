# 1. Load data
data_full <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)

# 2. Filter data for the two dates
data <- subset(data_full, Date %in% c("1/2/2007", "2/2/2007"))

# 3. Open PNG device (This "starts" the image file)
png("plot1.png", width=480, height=480)

# 4. Create the plot
hist(data$Global_active_power, col="red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")

# 5. Close the device (This "saves" and "finishes" the image file)
dev.off()
