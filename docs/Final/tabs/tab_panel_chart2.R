# tab_panel_chart2

library(shiny)
library(tidyverse)
library(plotly)


chart2_sidebar_content <- sidebarPanel(
  selectInput(
    "c2y1",
    label = h4("Select Two Years"),
    choices = list(
      1995,
      2005,
      2015),
    selected = 2015
  ),
  
  selectInput(
    "c2y2",
    label = "",
    choices = list(
      1995,
      2005,
      2015),
    selected = 2015
  )
)

chart2_main_content <- mainPanel(
  plotlyOutput("chart2")
)


tab_panel_chart2 <-tabPanel(
    "Chart 2",
    titlePanel(h1("American Highest Level of Education by Year")),
    sidebarLayout(
      chart2_sidebar_content,
      chart2_main_content
    ),
    HTML("This is chart 2"),
    p("This is chart 2.")
)
