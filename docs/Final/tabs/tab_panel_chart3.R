# tab_panel_chart3

library(shiny)

# 2 buttons
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
      "Unemployment Percentage",
      "Percent of Adults with At Least Bachelor's Degree"),
    selected = "Unemployment Percentage")
)

# chart
chart3_main_content <- mainPanel(
  plotlyOutput("chart3")
)

# tab panel
tab_panel_chart3 <-tabPanel(
    "Chart 3",
    titlePanel(h1("American Unemployment Rate & College Graduates")),
    sidebarLayout(
      chart3_sidebar_content,
      chart3_main_content
    ),
    p("Does people's employment status of people affect their employment status?
      This interactive chart shows the percentage of people who are unemployed
      as well as those who have at least a Bachelor's degree in the American
      population in the years 2000 and 2015 respectively. There seems to be a
      correlation between the two variables, as both increased from 2000 to 2015.
      Furthermore, the chart is divided into four different areas: city, rural,
      suburb, and town to help better understand the status of different
      demographics.")
)
