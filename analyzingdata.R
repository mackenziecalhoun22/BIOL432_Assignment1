# R Script 3 - Analyzing Data
library(dplyr)
data <- read.csv("measurments.csv")
sorted_data <- data %>% arrange(organism, observers, Volume)
head(sorted_data)
# Table illustrates average limb volume for Species A-E
average_volume <- data %>% group_by(organism) %>% summarize(average_volume = mean (Volume))
average_volume
# Table illustrates number of observations for all possible species and observer combinations
observations <- data %>% group_by(organism, observers) %>% summarize(Count = n ())
observations
# Graph in boxplot form to illustrate distribution of limb volumes by each species
library(ggplot2)
ggplot(data, aes(x = organism, y = Volume)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Species Limb Volume", x = "Species", y = "Volume")
# Graph in histogram form illustrating distribution of limb volumes by species
ggplot(data, aes(x = Volume)) +
  geom_histogram(binwidth = 10, fill = "red", colour = "blue") +
  facet_wrap(~ organism, scales = "free") +
  theme_minimal() +
  labs (title = "Distribution of Spcies Limb Volume",
        x = "Volume",
        y = "Frequency")
