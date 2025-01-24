% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/checkbox_module.R
\name{checkboxUI}
\alias{checkboxUI}
\alias{checkboxServer}
\title{checkbox module}
\usage{
checkboxUI(id)

checkboxServer(id)
}
\arguments{
\item{id}{A string that defines the namespace of this module. Make sure this
is the same when calling the UI and the Server function.}
}
\value{
Returns a reactive with the selected reagent tables.
}
\description{
This module allows the user to select which reagent tables to view
}
\section{Functions}{
\itemize{
\item \code{checkboxServer()}: Server function.

}}
