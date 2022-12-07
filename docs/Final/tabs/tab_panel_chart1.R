# tab_panel_chart1

library(shiny)

tab_panel_chart1 <-tabPanel(
  "Chart 1",
  titlePanel(h1("Highest Level of Education by Gender")),
  sidebarPanel(
    checkboxGroupInput(
      inputId = "genders",
      label = h3("Select Gender(s)"),
      choices = list(" Male", " Female"),
      selected = list(" Male", " Female")
    )
  ),
  mainPanel(
    plotlyOutput(outputId = "firstchart")
  )

)
