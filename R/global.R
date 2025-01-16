#' @import shiny
#' @import readxl
#' @import rlang

utils::globalVariables(".data")

# df_price <- readxl::read_xlsx(system.file("extdata", "price_data.xlsx",
#                                           package = "elrsurveiller"))

# df_price <- readxl::read_xlsx(system.file("price_data.xlsx",
#                                           package = "elrsurveiller"))

df_price <- data.frame(table = "a", catalog_no = "b", vendor_price = "c",
                       company_price = "d", product_n = "e", product_unit = "f",
                       website = "e")

db_tbl <- list(
  lcm = c("lcm_session", "lcm_cap"),
  lysis = c("lysis_session", "ff_lysis_buffer", "ffpe_lysis_buffer"),
  wb = c("wb_session", "wb_gel_lane", "wb_reagent", "wb_secondary_ab"),
  rppa = c("rppa_session", "rppa_stainrun_slide", "rppa_reagent"),
  ab = c("rppa_session", "rppa_stainrun_slide", "ab_lot", "wb_session",
         "wb_primary_ab_validation")
)
