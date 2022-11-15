# Chart 1: Visualization for Research Question #1 
# Do the differences in demographics affect the highest level of 
# education that people receive in America?

# import two adult datasets
adult_test <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-meganjchiang/main/data/adult-test.csv")
adult_training <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-meganjchiang/main/data/adult-training.csv")

# select desired columns (for both datasets)
adult_test <- adult_test %>%
  select(age, education, occupation, race, gender, income)
adult_training <- adult_training %>%
  select(age, education, occupation, race, gender, income)

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

# create plot (bar chart of education by race)
education_by_race_plot <- adult_data %>% 
  ggplot(aes(x = race, fill = education)) +
  geom_bar(position="fill") +
  labs(title = "Highest Level of Education By Race",
       x = "Race",
       y = "Proportion")

# create plot (bar chart of education by gender)
education_by_gender_plot <- adult_data %>%
  ggplot(aes(x = gender, fill = education)) +
  geom_bar(position="fill") +
  labs(title = "Highest Level of Education By Gender",
       x = "Gender",
       y = "Proportion")

# plot
education_by_gender_plot

# install.packages("gridExtra")
#library("gridExtra")

# print the two plots side-by-side
#race_and_gender_plot <- grid.arrange(education_by_race_plot, 
#                                     education_by_gender_plot, ncol=2)

# combined plot
# race_and_gender_plot
