options(shiny.usecairo = TRUE)

#' Main function to launch the app
#'
#' \code{elrsurveiller} is the main function that launches the app.
#'
#' @param ... Pass through parameters for shiny.
#'
#' @export
run_app <- function(...) {
  ui <- elrsurveillerUI()
  server <- function(input, output, session, ...) {
    elrsurveillerServer(input, output, session, ...)
  }

  shiny::shinyApp(ui = ui, server = server)
}
