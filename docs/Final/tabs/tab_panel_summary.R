# tab_panel_summary

library(shiny)

tab_panel_summary <-tabPanel(
    "Summary",
    titlePanel(h1("Summary")),
    p("The data presented in our project highlight some of the key components that play into each level of educational attainment. This data is hugely significant because it shows how even the most minor trends can lead to enormous generational differences."),
    p("In each of our visualizations we identify variables that have different scopes of effect relating to educational attainment. In chart 1 we identify a specific variable that directly effects levels of education. Chart 2 widens the scope and identifies the trends of different levels of education. Finally, chart 3 looks at unemployment issues which may originate from educational attainment. Each of these charts approaches this issue from different levels of perspective."),
    p("In chart 1, we can see that for the highest levels of education, proportionally less females have Bachelors Degree. And an extremely small proportion of female ave a professional or doctorate degree compared to male. However, in chart 2, the data shows that American level of education has definately increased recently. In chart 3 , we can see that more people in cities have a college degree, which could be due to more jobs in cities require higher level education."),
    p("Although, this report only covers a fraction of the variables that relate to educational attainment. This is because an individual may experience years of discrimination or other forms of oppression with compounding effects. This idea closely parallels", em("Intersectionality"), "as defined in", em("Data Feminism.")),
    tags$a(
      href="https://data-feminism.mitpress.mit.edu/",
      tags$img(src="dataFeminism.png",
               title="Data Feminism",
               width="550",
               height="619")
    ),
    br(),
    p("This isn't to say that we should feel overwhelmed by enormous number of elements at play. Rather, we should continue to use data to our advantage. Relating to ideas presented in", em("Data Feminism"), "we should actively try to take steps that solve this issue. This means using data to isolate and identify where these issues are coming from. To actually incorporate change, we need to confront these issues and actively try to solve them or shift the perspectives of those that have jurisdiction over these issues. By choosing to take functional steps to solve these issues, we are shifting our impact from the digital world to reality.")
)

