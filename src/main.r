# Read in the data 
dataset <- read.csv("/Users/cmhayden/interestingProjects/Visualizing-Inequalities-in-Life-Expectancy/Data/UN Data - Life expectancy at birth.txt", sep=";")

# Create a gender subset and display how many male and female data records are stored
subset_gender <- subset(dataset, select=c("Subgroup"))
summary(subset_gender)

