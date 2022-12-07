# tab_panel_chart1

library(shiny)

tab_panel_chart1 <-tabPanel(
  "Chart 1",
  titlePanel("Highest Level of Education by Gender"),
  sidebarPanel(
    checkboxGroupInput(
      inputId = "genders",
      label = h3("Select Gender(s)"),
      choices = list(" Male", " Female"),
      selected = list(" Male", " Female")
    )
    # checkboxGroupInput(
    #   "c1levels",
    #   label = h4("Choose Level of Education"),
    #   choices = list(
    #     " Associate",
    #     " Bachelors",
    #     " Doctorate",
    #     " HS-grad",
    #     " Masters",
    #     " No HS",
    #     " Prof-School",
    #     " Some-college",
    #     " Some HS"
    #   ),
    #   selected = list(
    #     " Associate",
    #     " Bachelors",
    #     " Doctorate",
    #     " HS-grad",
    #     " Masters",
    #     " No HS",
    #     " Prof-School",
    #     " Some-college",
    #     " Some HS"
    #   )
    # )
  ),
  mainPanel(
    plotlyOutput(outputId = "firstchart")
  )
)

