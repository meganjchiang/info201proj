# tab_panel_chart2

library(shiny)

# choose year
chart2_sidebar_content <- sidebarPanel(
  selectInput(
    "c2year",
    label = h4("Select Year"),
    choices = list(
      1995,
      2005,
      2015),
    selected = 2015
  )
)

# chart
chart2_main_content <- mainPanel(
  plotlyOutput("chart2")
)

# tab panel
tab_panel_chart2 <-tabPanel(
    "Chart 2",
    titlePanel(h1("American Highest Level of Education by Year")),
    sidebarLayout(
      chart2_sidebar_content,
      chart2_main_content
    ),
    p("How has American's level of education changed over the last couple of
      decades? This interactive chart shows the percentages of highest level
      of education of the American population for the years 1995, 2005, and 2015.
      ")
)
