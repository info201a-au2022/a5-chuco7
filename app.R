#A5 the app 

library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)
library(markdown)
source("app_server.R")
source("app_ui.R")

#Summary takeaway graphs
source('../assignments/a5-chuco7/source/co2-scatter')
source('../assignments/a5-chuco7/source/methane-scatter')
source('../assignments/a5-chuco7/source/nitrous-ox-scatter')

shinyApp(ui = ui, server = server)
