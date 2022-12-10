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
    includeMarkdown('../assignments/a5-chuco7/Introduction_Markdown.md')
  )
)
