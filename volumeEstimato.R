# R Script 2 - volumeEstimato.R
# The following code shows a hypothetical dataset regarding limb measurments to calculate volume
# Step 1 - Download necessary tools (to mutate and add new 'Volume' column in step 3)
library(dplyr)
# Step 2 - Upload data set from data.Generato.R
measurments <- read.csv("measurments.csv")
# Step 3 - Estimating Limb Volume
# Addition of new column entitled 'Volume' using equation
measurments <- measurments %>% mutate(Volume = pi * (limb_width/2)^2 * limb_length)
# Step 4 - Override original file with uploaded data
write.csv(measurments, "measurments.csv", row.names = FALSE)
# Step 5 - Printing message to confirm success of saving file
cat("Volume successfully calculated and added to measurments.csv\n")
source("volumeEstimato.R")
