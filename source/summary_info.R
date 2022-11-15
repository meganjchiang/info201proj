# Summary Information
library(tidyverse)
 
# import data
data_1995_2015 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-meganjchiang/main/data/1995_2015.csv")
 
df_1995_2015_all_advanced <- data_1995_2015 %>%
  filter(Age_Range == "18_64", Sex == "Both") %>%
  mutate(Bach_Plus = Associate + Bachelor + Advanced)


summary_info <- list()
summary_info$unique_years <- length(unique(data_1995_2015$Year))
summary_info$unique_age_range <- length(unique(data_1995_2015$Age_Range))
summary_info$unique_sex <- length(unique(data_1995_2015$Sex)) 


summary_info$num_observations <- nrow(data_1995_2015)
summary_info$col_max_year <- df_1995_2015_all_advanced %>%
  filter(Bach_Plus == max(Bach_Plus, na.rm = T)) %>%
  pull(Year)

  #From the graphs and calculation we have, we conclude that the portion of the highest level
  #of education rises through years. Our target range of age is 18-64. The max occured in 2015.
  #Also, the unemployment rate has a direct relationship with education level excluding Suburb





summary_info$all_adv_1995 <- df_1995_2015_all_advanced %>%
  filter(Year == "1995") %>%
  mutate(Percent_Adv = round(Advanced / Total * 100, digits = 2)) %>%
  pull(Percent_Adv)


summary_info$all_adv_2005 <- df_1995_2015_all_advanced %>%
  filter(Year == "2005") %>%
  mutate(Percent_Adv = round(Advanced / Total * 100, digits = 2)) %>%
  pull(Percent_Adv)


summary_info$all_adv_2015 <- df_1995_2015_all_advanced %>%
  filter(Year == "2015") %>%
  mutate(Percent_Adv = round(Advanced / Total * 100, digits = 2)) %>%
  pull(Percent_Adv)


