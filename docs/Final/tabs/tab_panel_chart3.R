# tab_panel_chart3

library(shiny)

chart3_sidebar_content <- sidebarPanel(
  
  radioButtons(
    "c3year",
    label = h4("Select Year"),
    choices = list(
      2000,
      2015),
    selected = 2000),
  
  radioButtons(
    "c3type",
    label = h4("Select Type"),
    choices = list(
      "Unemployment Rate",
      "Percent of Adults with At Least Bachelor's Degree"),
    selected = "Unemployment Rate")
)

chart3_main_content <- mainPanel(
  
  plotlyOutput("chart3")
  
  
  
)

tab_panel_chart3 <-tabPanel(
    "Chart 3",
    titlePanel(h1("American Unemployment Rate & College Graduates")),
    sidebarLayout(
      chart3_sidebar_content,
      chart3_main_content
    ),
    HTML("This is chart 3"),
    p("This is chart 3.")
)
