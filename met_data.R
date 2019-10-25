# # # # # # # # # # # # # # # # # # # # # # # # # #
# Script to fetch meteorological data from INMET  #
# # # # # # # # # # # # # # # # # # # # # # # # # #

# See https://github.com/lhmet/inmetr
#   for install instructions
library(inmetr)

# Set YOUR working dir
setwd("C:/Users/vitor/OneDrive/Desktop")

# Create folder to store data
if (!dir.exists("./data")) {
  mkdir("./data")
}

# Int vec ranging all station rows
stations_rows <- pmatch(bdmep_meta$name, bdmep_meta$name)

# Set date range
start_date <- "01/08/2019"
end_date <- "31/08/2019"


# # If it fails (it will), note down which idxs failed
# #   and redo the `for` iterating only through missing vals
# missing_vals <- c(1,2,3)
# # If idxs [1, 2, 3] failed, for example
# for (i in missing_vals) {
# # Remember to comment out the original for!!


# Iter over all stations
for (i in stations_rows) {
  # Placeholder for curr id to be downloaded
  dl_id = bdmep_meta[i, "id"]
  
  # Test if file already exists (if running multiple times)
  if (!file.exists(paste("./data/", dl_id, ".csv", sep = "", collapse = NULL))) {
    # Print working idx
    cat("\n", "i =", i)
    tryCatch({
      # Import func
      met_data <- bdmep_import(id = dl_id,
                               sdate = start_date,
                               edate = end_date,
                               email = "EMAIL",
                               passwd = "PASSWD",
                               destdir = "./data",
                               verbose = TRUE
      )
    },
    error = function(cond) {
      message(cond)
    },
    warning = function(cond) {
      message(cond)
    })
  }
}
