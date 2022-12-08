library(shiny)
library(tidyverse)
library(plotly)


# chart 1 code
# import two adult datasets
adult_test <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-meganjchiang/main/data/adult-test.csv")
adult_training <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-meganjchiang/main/data/adult-training.csv")

# select desired columns (for both datasets)
adult_test <- adult_test %>%
  select(age, education, occupation, gender, income)
adult_training <- adult_training %>%
  select(age, education, occupation, gender, income)
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
  filter(education == " Doctorate" |
           education == " Prof-school" |
           education == " Bachelors" |
           education == " Associate" |
           education == " Some-college" |
           education == " HS-grad" |
           education == " Some HS" |
           education == " No HS") %>%
  rename(Education = education)

adult_data$Education <- factor(adult_data$Education, levels = c(
   " Doctorate",
   " Prof-school",
   " Bachelors",
   " Associate",
   " Some-college",
   " HS-grad",
   " Some HS",
   " No HS"
)) 

build_chart1 <- function(genders) {
  
  
  education_by_gender_plot <- adult_data %>%
    filter(gender == c(genders)) %>%
    ggplot(aes(x = gender, fill = Education)) +
    geom_bar(position="fill", width = 0.3) +
    labs(title = "Highest Level of Education By Gender",
         x = "Gender",
         y = "Proportion")
  
  return(ggplotly(education_by_gender_plot))
}

###############################################################################

# Chart 2: Visualization for Research Question #2
# How has the level of education for the American public changed over the last
# couple of decades?

# import 1995-2015 data
data_1995_2015 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-meganjchiang/main/data/1995_2015.csv")

# filter the rows with all ages and sexes and select columns with education info 
education_data <- data_1995_2015 %>%
  filter(Age_Range == "18_64", Sex == "Both") %>% 
  select(Year, No_HS_Diploma:Advanced)

# transpose rows and columns
education_data <- as.data.frame(t(education_data))  

# delete row with years
education_data <- education_data[-1, ]

# add column with levels of education
education_levels <- rownames(education_data)
education_levels <- str_replace_all(education_levels, "_", " ")
education_data <- education_data %>% 
  mutate(
    "Highest Level of Education" = education_levels
  )

# make education levels the first column
education_data <- education_data %>%
  select("Highest Level of Education", everything())

# make column names the years 1995, 2005, 2015 
colnames(education_data) <- c("Highest Level of Education", "1995", "2005", 
                              "2015")

# delete row names
rownames(education_data) <- NULL

# reorder levels of education (so not alphabetical in legend)
education_data$`Highest Level of Education` <- factor(
  education_data$`Highest Level of Education`, levels = rev(education_levels)
)


# "lengthen" the data so it's easier to graph & add proportion of population
education_data <- education_data %>% 
  pivot_longer("1995":"2015", names_to = "Year", 
               values_to = "Number of Adults") %>%
  group_by(Year) %>%
  mutate("Proportion of Adults" = round(
    `Number of Adults` / sum(`Number of Adults`), 3)) %>%
  arrange(`Highest Level of Education`)

# function to build chart 2
build_chart2 <- function(year) {
  
  education_data_for_plot <- education_data %>%
    filter(Year == year) 
  
  education_pie <- plot_ly(
    education_data_for_plot,
    labels = ~ `Highest Level of Education`,
    values = ~ `Proportion of Adults`,
    type = "pie",
    sort = FALSE,
    direction = "clockwise",
    textinfo = "label+percent",
    textposition = "inside",
    insidetextorientation = "radial"
  ) %>%
    layout(
      title = paste0("American Highest Level of Education in ", year)
    )
  
  return(education_pie)
}

###############################################################################

# Chart 3: Visualization for Research Question #3
# How does one’s level of education received relate to their employment status?


# import data
data_unemploy <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-meganjchiang/main/data/unemployment.csv")
data_edu <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-meganjchiang/main/data/education.csv")


# combine 2 data sets
data_total <- data_unemploy %>%
  left_join(data_edu %>%
              mutate("Area_name" = paste0(Area.name, ", ", State)),
            by = "Area_name")

# select important variables for chart
data_2000_2015 <- data_total %>%
  select(State.x,
         City.Suburb.Town.Rural,
         Unemployment_rate_2000,
         Percent.of.adults.with.a.bachelor.s.degree.or.higher..2000,
         Unemployment_rate_2015, 
         Percent.of.adults.with.a.bachelor.s.degree.or.higher..2015.19)

# group and summarize
data_sum <- data_2000_2015 %>%
  group_by(City.Suburb.Town.Rural) %>%
  summarize(
    Unemployment_Rate_2000 = mean(Unemployment_rate_2000, na.rm = TRUE),
    At_Least_Bachelors_2000 = mean(
      Percent.of.adults.with.a.bachelor.s.degree.or.higher..2000, 
      na.rm = TRUE),
    Unemployment_Rate_2015 = mean(Unemployment_rate_2015, na.rm = TRUE),
    At_Least_Bachelors_2015 = mean(
      Percent.of.adults.with.a.bachelor.s.degree.or.higher..2015.19, 
      na.rm = TRUE)
  ) %>%
  rename(Area = City.Suburb.Town.Rural)
data_sum <- data_sum[-1, ]


build_chart3 <- function(year, type) {
  data_sum_for_plot <- data_sum
  if (year == 2000){
    data_sum_for_plot <- data_sum %>%
      select("Area", "Unemployment_Rate_2000", "At_Least_Bachelors_2000") %>%
      rename(`Unemployment Percentage` = Unemployment_Rate_2000) %>%
      rename(`Percent of Adults with At Least Bachelor's Degree` = At_Least_Bachelors_2000)
  }
  if (year == 2015){
    data_sum_for_plot <- data_sum %>%
      select("Area", "Unemployment_Rate_2015", "At_Least_Bachelors_2015") %>%
      rename(`Unemployment Percentage` = Unemployment_Rate_2015) %>%
      rename(`Percent of Adults with At Least Bachelor's Degree` = At_Least_Bachelors_2015)
  }
  
  chart3_group_bar <- ggplot(data = data_sum_for_plot) +
    geom_bar(
      mapping = aes(
        x = `Area`,
        if (type == "Unemployment Percentage") {
          y = `Unemployment Percentage`
        } else {
          y = `Percent of Adults with At Least Bachelor's Degree`
        }
      ),
      position = "dodge",
      stat = "identity",
      color = "black",
      fill = "white",
      width = 0.3
    ) +
    labs(
      title = paste0(type, " in America in ", year, " for Different Areas"),
      x = "Area",
      y = type
    ) +
    scale_y_continuous(limits = c(0, 30))
  return(ggplotly(chart3_group_bar))
}

###############################################################################

server <- function(input, output) {
  
  # chart 1
  output$firstchart <- renderPlotly({  
    return(build_chart1(input$genders))
  })
  
  # chart 2
  output$chart2 <- renderPlotly(
    return(build_chart2(input$c2year))
  )
  
  # chart 3
  output$chart3 <- renderPlotly({
    return(build_chart3(input$c3year, input$c3type))
  })
}


