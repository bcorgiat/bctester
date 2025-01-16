options(repos = c(CRAN = "https://cran.rstudio.com"), timeout = 400)

if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}

# Install 'bctester' from GitHub if not already installed
if (!requireNamespace("bctester", quietly = TRUE)) {
  remotes::install_github("bcorgiat/bctester", auth_token = NULL)
}

library(bctester)
bctester::run_app()
