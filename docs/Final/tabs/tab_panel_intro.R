# tab_panel_intro

library(shiny)

intro_text <- fluidPage(
  strong(h3("Overview")),
    p("Our project is centered around the highest levels of education for adults in the United States. We wanted to investigate  the distribution of these levels depending on a certain demographic (e.g., gender), the change in the distribution over time, and the relationship between a person's highest level of education and their employment status."),
    img(src='intro-graphic.png', align = "right", style = "display: block; margin-left: auto; margin-right: auto; width: 400px"),
  br(),
  strong(h3("Research questions")),
  p("Using these objectives, we formed ", strong("three questions"), " that guided our research:"),
  tags$ol(
    tags$li("Do the differences in demographics affect the highest level of education that people receive in America?"),
    tags$li("Has the level of education for the American public changed over the last couple of decades?"),
    tags$li("How does a person’s highest level of education relate to their employment status?")
  ),
  br(),
  strong(h3("Datasets")),
  p("We used datasets with adults' highest levels of education as well as their personal information (e.g., age, gender, race, income) during different years so we could find meaningful trends and patterns. These datasets were taken from the United States Census Bureau and Kaggle.")
)

tab_panel_intro <-tabPanel(
  "Introduction",
  titlePanel(h1("Introduction")),
  intro_text
)