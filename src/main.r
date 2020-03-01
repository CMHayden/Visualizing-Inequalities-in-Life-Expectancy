# Read in the data 
dataset <- read.csv("/Users/cmhayden/interestingProjects/Visualizing-Inequalities-in-Life-Expectancy/Data/UN Data - Life expectancy at birth.txt", sep=";")

# Create a gender subset and display how many male and female data records are stored
subset_gender <- subset(dataset, select=c("Subgroup"))
summary(subset_gender)

# Create a life expectancy subset and calculate the min, median, mean and max life expectancy age.
subset_lifeExpectancy <- subset(dataset, select=c("Value"))
summary(subset_lifeExpectancy)


