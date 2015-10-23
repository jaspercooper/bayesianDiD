
# ADD YOUR PACKAGES HERE! -------------------------------------------------

# Add to this list any packages the class should install
CRAN_packages <-
  c("plyr","dplyr","ggplot2","repmis","rstan","devtools","bsts","rstan")

# Install / Update packages available on CRAN -----------------------------

# List all of the packages you have installed
your_packages <- installed.packages()[,1]

# Check if you have the packages
check_packages <- CRAN_packages %in% your_packages

# Install packages you don't have
not_installed <- CRAN_packages[!check_packages]
if (length(not_installed > 0)) {
  sapply(not_installed,install.packages)
}

# Update any packages that need an update
old_packages <- old.packages()[,1]
if (length(old_packages > 0)) {
  sapply(old_packages,install.packages)
}

# GitHub Packages ---------------------------------------------------------

# Add code here for any packages we need to install from GitHub
library(devtools)
devtools::install_github("google/CausalImpact")











