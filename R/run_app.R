options(shiny.usecairo = TRUE)

#' Main function to launch the app
#'
#' \code{elrsurveiller} is the main function that launches the app.
#'
#' @param ... Pass through parameters for shiny.
#'
#' @export
run_app <- function(...) {

  shiny::shinyApp(
    ui = elrsurveillerUI(),
    server = elrsurveillerServer(input, output, session)
  )
}
