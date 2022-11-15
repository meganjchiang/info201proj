# Summary #
library(tidyverse)

# import data
data_1995_2015 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-meganjchiang/main/data/1995_2015.csv")


# summary_info.R 
# A source file that takes in a dataset and returns a list of info about it:
summary_info <- data_1995_2015 %>%
  filter(Age_Range == "18_64", Sex == "Both") %>% 
  select(Year, No_HS_Diploma:Advanced)

summary_info$num_observations <- nrow(data_1995_2015)
summary_info$advanced_max_value <- data_1995_2015 %>%
  filter(Advanced == max(Advanced, na.rm = T)) %>%

  #From the graphs and calculation we have, we conclude that the portion of the highest level
  #of education rises through years. Our target range of age is 18-64. The max occured in 2015.
  #Also, the unemployment rate has a direct relationship with education level excluding Suburb
  
