# Load necessary library
library(readr)

# Define file paths
zip_file <- "C:/Users/USER/Documents/Employee Profile.zip"
unzip_dir <- "Employee_Profile"

# Create directory for unzipped files
if (!dir.exists(unzip_dir)) {
  dir.create(unzip_dir)
}

# Unzip the file
unzip(zip_file, exdir = unzip_dir)

# List unzipped files
files <- list.files(unzip_dir, full.names = TRUE)
print(files)

# Load and display the CSV data
for (file in files) {
  data <- read_csv(file)
  print(data)
}
