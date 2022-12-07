library(shiny)
library(plotly)
library(ggplot2)
library(dplyr)

# chart 1 code
# import two adult datasets
adult_test <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-meganjchiang/main/data/adult-test.csv")
adult_training <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-meganjchiang/main/data/adult-training.csv")

# select desired columns (for both datasets)
adult_test <- adult_test %>%
  select(age, education, occupation, gender, income)
adult_training <- adult_training %>%
  select(age, education, occupation, gender, income)


server <- function(input, output) {
  # chart 1
  output$firstchart <- renderPlot({  
    # combine two datasets
    adult_data <- rbind(adult_test, adult_training)
    
    # combine some groups
    adult_data$education[adult_data$education == " 1st-4th" | 
                           adult_data$education == " 5th-6th" | 
                           adult_data$education == " 7th-8th" |
                           adult_data$education == " Preschool"] <- " No HS"
    adult_data$education[adult_data$education == " 9th" | 
                           adult_data$education == " 10th" | 
                           adult_data$education == " 11th" |
                           adult_data$education == " 12th"] <- " Some HS"
    adult_data$education[adult_data$education == " Assoc-acdm" | 
                           adult_data$education == " Assoc-voc"] <- " Associate"
    
     adult_data <- adult_data %>%
      rename(Education = education)
    
    # adult_data <- adult_data %>%
   #  filter(gender %in% input$gender)
    
    # education_by_gender_plot <- plot_ly(adult_data, x = ~gender, color = ~education,
    #                                    type = 'bar') 
     
     
    education_by_gender_plot <- adult_data %>%
      ggplot(aes(x = gender, fill = Education)) +
      geom_bar(position="fill") +
      labs(title = "Highest Level of Education By Gender",
           x = "Gender",
           y = "Proportion")
    
   # education_by_gender_plot <- ggplotly(education_by_gender_plot)
   
    # plot
    return(education_by_gender_plot)

    
  })    
  
}


