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

View(owid_co2_data_clean)

#co2 data frame
co2_data <- owid_co2_data_clean[,c(1,2,8)]
View(co2_data)

#methane data frame 
methane_data <- owid_co2_data_clean[,c(1,2,44)]
View(methane_data)

#nitrous oxide data frame
nitrous_ox_data <- owid_co2_data_clean[,c(1,2,46)]
View(nitrous_ox_data)