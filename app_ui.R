#A5 App ui
library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)

#widgets and tabs
intro_panel <- tabPanel(
  "Introduction",
  titlePanel("Study of Greenhouse Gases in Countries Over the Years"),
  mainPanel(
    includeMarkdown("../a5-chuco7/Introduction_Markdown.md")
  )
)

#interactive panel
graph_input <- selectInput("var",
  label = "Select a Greenhouse Gas",
  choices = c("CO2", 
              "Methane", 
              "Nitrous Oxide"),
# to do
selected = "CO2")

#slider input
slider <- sliderInput("range",
            label = "Choose a start and end year:",
            min = min(combined_data$year), max = max(combined_data$year), 
            value = c(1800, 2021), sep = "")

first_int_sidebar_content <- sidebarPanel(
  graph_input,
  slider, 
  print("Here we can observe 3 different types of greenhouse gases where it can be filtered by the year.
        We're trying to understand why there is so much greenhouse gas and what countries have a higher
        amount of greenhouse gases as a whole.")
)

first_int_main_content <- mainPanel(
  plotlyOutput("scatter")
)

first_int_panel <- tabPanel(
  "Greenhouse Gases",
  titlePanel("Greenhouse gases and What Country has the Most?"),
  sidebarLayout(
    first_int_sidebar_content,
    first_int_main_content
  )
)


#ui
ui <- navbarPage(
  "Greenhouse Gas Study",
  intro_panel,
  first_int_panel,
)