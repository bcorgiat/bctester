#' date module
#'
#' This module allows the user to select the dates to filter table results.
#'
#' @param id A string that defines the namespace of this module. Make sure this
#' is the same when calling the UI and the Server function.
#'
#' @return Returns a reactive vector with the selected date inputs.
dateUI <- function(id) {
  ns <- shiny::NS(id)

  shiny::tagList(
    shiny::dateRangeInput(
      ns("dates"),
      label = shiny::h3("Date Range Selection"),
      start = Sys.Date() - 90,
      end = Sys.Date()
    )
  )
}


#' @describeIn dateUI Server function.
dateServer <- function(id) {
  moduleServer(id, function(input, output, session) {
    return(shiny::reactive(input$dates))
  })
}
