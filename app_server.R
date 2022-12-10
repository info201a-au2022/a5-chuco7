#A5 server

library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)
library(data.table)

#data frame
owid_co2_data <- read.csv("../a5-chuco7/co2-data/owid-co2-data.csv")
owid_co2_codebook <- read.csv("../a5-chuco7/co2-data/owid-co2-codebook.csv")

owid_co2_data_clean <- owid_co2_data %>%
  replace(is.na(.), 0)

#co2 data frame
co2_data <- owid_co2_data_clean[,c(1,2,8)]

#methane data frame 
methane_data <- owid_co2_data_clean[,c(1,2,44)]

#nitrous oxide data frame
nitrous_ox_data <- owid_co2_data_clean[,c(1,2,46)]

#merge data
merged_data <- merge(co2_data, methane_data)
combined_data <- merge(merged_data, nitrous_ox_data)

#server
server <- function(input, output) {
  
  output$scatter <- renderPlotly({
    scatter <- if (input$var == "CO2") {
      return(co2_scatter)
    } else if (input$var == "Methane") {
      return(methane_scatter)
    } else if (input$var == "Nitrous Oxide") {
      return(nitrous_ox_scatter)
    }
  })
}