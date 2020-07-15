#####
# init
#####
# forcibly install and attach required packages
# source: https://stackoverflow.com/a/19870272
forceRequire <- function(desired_packages) {
  for(package in desired_packages) {
    if(!require(package, character.only = TRUE)) {
      install.packages(package, dependencies = TRUE)
      require(package, character.only = TRUE)
    }
  }
}
forceRequire(c("data.table", "ggplot2", "haven"))
read_dta()

remove.packages("haven")