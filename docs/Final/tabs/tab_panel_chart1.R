# tab_panel_chart1

library(shiny)

tab_panel_chart1 <-tabPanel(
  "Chart 1",
  titlePanel(h1("Highest Level of Education by Gender")),
  sidebarPanel(
    checkboxGroupInput(
      inputId = "genders",
      label = h4("Select Gender(s)"),
      choices = list(" Male", " Female"),
      selected = list(" Male", " Female")
    )
  ),
  mainPanel(
    plotlyOutput(outputId = "firstchart")
  ),
  p("Do people's gender affect the level of education that they receive? This
    interactive chart shows the level of education received for males and
    females. Each color of the stacked bar graph represents a different level
    of education as described by the legend, with the higher levels towards
    the top.")
)
