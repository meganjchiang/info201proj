# tab_panel_chart1

library(shiny)

tab_panel_chart1 <-tabPanel(
    "Chart 1",
    titlePanel("Highest Level of Education by Gender"),
    sidebarPanel(
      checkboxGroupInput(
        inputId = "gender", 
        label = h3("Select Gender(s)"),
        choices = list("Male", "Female"),
        selected = list("Male", "Female")
      )
    ),
    mainPanel(
      plotOutput(outputId = "firstchart")
    )
)
