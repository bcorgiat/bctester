options(repos = c(CRAN = "https://cran.rstudio.com"))

if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}

# Install 'bctester' from GitHub if not already installed
if (!requireNamespace("bctester", quietly = TRUE)) {
  remotes::install_github("bcorgiat/bctester")
}

library(bctester)
bctester::run_app()
