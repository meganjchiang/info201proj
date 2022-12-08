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
    plotlyOutput(outputId = "chart1"),
    br()
  ),
  p("Do people's gender affect the level of education that they receive? This
    interactive proportional stacked bar chart shows the level of education 
    received for males and females. Each color of the stacked bar graph 
    represents a different level of education as described by the legend, with 
    the higher levels towards the top. One key finding is that a larger 
    proportion of men have the relatively higher levels (like doctorate and 
    professional school) as their highest level of education compared to women. 
    For the relatively lower levels (completion of high school and below), 
    the male and female proportions are similar."),
  p("It should be noted that this bar chart is not completely inclusive; 
    the dataset did not provide any data for people with other gender identities.")
)

