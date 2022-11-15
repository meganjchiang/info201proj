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

# print the two plots side-by-side
race_and_gender_plot <- grid.arrange(education_by_race_plot, 
                                     education_by_gender_plot, ncol=2)

# combined plot
race_and_gender_plot
