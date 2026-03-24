required_packages <- c("ggplot2", "dplyr")

install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg, dependencies = TRUE)
  }
}

invisible(lapply(required_packages, install_if_missing))

library(ggplot2)
library(dplyr)

cat("Packages loaded.\n")