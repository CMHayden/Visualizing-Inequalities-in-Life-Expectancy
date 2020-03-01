# Read in the data 
dataset <- read.csv("/Users/cmhayden/interestingProjects/Visualizing-Inequalities-in-Life-Expectancy/Data/UN Data - Life expectancy at birth.txt", sep=";")

# Create a gender subset and display how many male and female data records are stored
subset_gender <- subset(dataset, select=c("Subgroup"))
summary(subset_gender)

# Create a life expectancy subset and calculate the min, median, mean and max life expectancy age.
subset_lifeExpectancy <- subset(dataset, select=c("Value"))
summary(subset_lifeExpectancy)

# Create a male only subset and calculate the mean life expectancy of a man at any given time.
subset_male <- subset(dataset, Subgroup=="Male")
mean(subset_male$Value)

# Create a subset for the years 1990-1995 in Spain and display the gender and life expectancy
subset_90to95_spain <- subset(dataset, Year=="1990-1995" & Country.or.Area=="Spain", select=c("Subgroup", "Value"))
print(subset_90to95_spain)

# Create a visualization of the previous subset
barplot(subset_90to95_spain$Value)

















