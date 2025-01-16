#' checkbox module
#'
#' This module allows the user to select which reagent tables to view
#'
#' @param id A string that defines the namespace of this module. Make sure this
#' is the same when calling the UI and the Server function.
#'
#' @return Returns a reactive with the selected reagent tables.
checkboxUI <- function(id) {
  ns <- shiny::NS(id)

  shiny::tagList(
    shiny::checkboxGroupInput(
      ns("checkbox"),
      label = shiny::h3("ELR Selection"),
      choices = list(
        "LCM Records" = "lcm",
        "Lysis Records" = "lysis",
        "Western Blot Records" = "wb",
        "RPPA Reagent Records" = "rppa",
        "Primary Ab Records" = "ab"
      )
    )
  )
}


#' @describeIn checkboxUI Server function.
checkboxServer <- function(id) {
  moduleServer(id, function(input, output, session) {
    return(shiny::reactive(input$checkbox))
  })
}
