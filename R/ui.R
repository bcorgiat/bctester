#' @include checkbox_module.R
#' @include date_module.R
elrsurveillerUI <- shiny::fluidPage(
  shiny::titlePanel("Reagent Usage App"),
  shiny::sidebarLayout(
    shiny::sidebarPanel(
      checkboxUI("checkbox"),
      dateUI("dates"),
    ),
    shiny::mainPanel(
    )
  )
)
