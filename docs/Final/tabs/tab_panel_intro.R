# tab_panel_intro

library(shiny)

tab_panel_intro <-tabPanel(
  "Introduction",
  titlePanel(h1("Introduction")),
  splitLayout(
    textOutput(outputId = 'intro'),  
    img(src='intro-graphic.png')
  )
)

# An introductory page.  This page should provide a brief overview of your project: What major questions are you seeking to answer and what data will you use to answer those questions? You should include some "additional flare" on this landing page, such as an image. The key goal: Invite your audience to consider your project.

# * Provides an introduction and summary of the project
# - What is the problem domain?
# - What are the research questions?
# - What data was analyzed?
# - What are the key findings?
  
# * Information design
# - A strong, clean, and inviting format