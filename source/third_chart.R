# Chart 3: Visualization for Research Question #3
# How does one’s level of education received relate to their employment status?

library(tidyverse)

# import data
data_unemploy <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-meganjchiang/main/data/unemployment.csv")
data_edu <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-meganjchiang/main/data/education.csv")


# combine 2 data sets
data_total <- data_unemploy %>%
  left_join(data_edu %>%
              mutate("Area_name" = paste0(Area.name, ", ", State)),
            by = "Area_name")

# select important variables for chart
data_2015 <- data_total %>%
  select(State.x, City.Suburb.Town.Rural, Unemployment_rate_2015, 
         Percent.of.adults.with.a.bachelor.s.degree.or.higher..2015.19)

# group and summarize
data_sum <- data_2015 %>%
  group_by(City.Suburb.Town.Rural) %>%
  summarize(
    Unemployment_Rate_2015 = mean(Unemployment_rate_2015, na.rm = TRUE),
    At_Least_Bachelors = mean(
      Percent.of.adults.with.a.bachelor.s.degree.or.higher..2015.19, 
      na.rm = TRUE)
  ) %>%
  rename(Area = City.Suburb.Town.Rural)
data_sum <- data_sum[-1, ]

# create scatter plot with
edu_unemp_chart <- ggplot(data_sum) +
  geom_point(
    mapping = aes(x = At_Least_Bachelors,
      y = Unemployment_Rate_2015,
      color = Area),
    size = 5
  ) +
  labs(title = "2015 Unemployment Rate vs % Education for All Living Areas",
       x = "% Adults with at Least a Bachelor's Degree",
       y = "Unemployment Rate"
  )

# plot
edu_unemp_chart
