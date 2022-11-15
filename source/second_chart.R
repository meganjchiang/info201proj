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


# "lengthen" the data so it's easier to graph
education_data <- education_data %>% 
  pivot_longer("1995":"2015", names_to = "Year", values_to = "Number of Adults")

# create plot (line graph)
education_change_plot <- education_data %>% 
  ggplot(aes(x = Year, y = `Number of Adults`, 
             group = `Highest Level of Education`, 
             color =`Highest Level of Education`)) +
  geom_line() + 
  geom_point() +
  scale_color_brewer(palette = "Set2") +
  theme_minimal() +
  labs(title = "Highest Level of Education in 1995, 2005, and 2015")

# plot
education_change_plot
