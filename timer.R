library(tictoc)

# List of script files to be sourced, in this case our methods
script_files <- c("method1.r", "method2.r", "method3.r")

# Create a function to source a script and time its execution
source_and_time_script <- function(script_file) {
  cat("Sourcing script:", script_file, "\n")
  tic()  # Start the timer
  source(paste0("scripts/", script_file))  # Source the script from the "scripts" folder
  toc()  # Stop the timer and print elapsed time
}

# Loop through the script files and source each one while timing execution
for (script_file in script_files) {
  source_and_time_script(script_file)
}

#Method 2 (rewrite lines 29-35) is the fastest one, method 3 the second fastest and method 1 is slowest




