# R Script 1 - dataGenerato.R
# The following code shows a hypothetical dataset regarding limb measurments
# Step 1 - Identifying species names by creating a vector 
species <- c("Species A", "Species B", "Species C", "Species D", "Species E")
# Step 2 - Creating a vector of 100 randomly selected species names 
species_100 <- sample(species, 100, replace = TRUE)
# Step 3 - Creating a vector of 100 limb widths (no negative/zero values) and normal distribution 
limb_width <- abs(rnorm(100, mean = 4, sd = 0.25))
# Step 4 - Creating a vector of 100 limb lengths (no negative/zero values) and normal distribution
limb_length <- abs(rnorm(100, mean = 25, sd = 4))
# Step 5 - Identifying observer names using a vector 
observers <- c("O1", "O2", "O3")
# Step 6 - Creating a vector of 100 randomly selected observer names
observers <- sample(observers, 100, replace = TRUE)
# Step 7 - Creating a data frame from vectors 
measurments <- data.frame(organism = species_100, limb_width = limb_width, limb_length = limb_length, observers = observers)
#Step 8 - Export into CSV file
 write.csv(measurments, "measurments.csv", row.names = FALSE)
#Step 9 - Printing message to confirm success of saviing file
cat("measurments.csv successfully generated and saved to measurments.csv\n")

            