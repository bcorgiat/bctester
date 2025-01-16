options(shiny.usecairo = TRUE)

#' Main function to launch the app
#'
#' \code{elrsurveiller} is the main function that launches the app.
#'
#' @param ... Pass through parameters for shiny.
#'
#' @export elrsurveiller
elrsurveiller <- function(...) {
  ui <- function(req) {
    elrsurveillerUI
  }

  server <- elrsurveillerServer

  shiny::shinyApp(ui = ui, server = server)
}
