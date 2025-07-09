# DAY 4 HOMEWORK
#
# Name: Tatsuya Sekiguchi

# For this week's homework, the answer to each question should be a dataframe
# (tibble)

# 1. Load the "gapminder" dataset and save it to an object called gapminder
#
# HINT: This repo includes the gapminder.csv file in the data_raw folder
# HINT: I've written some of the code for you.


install.packages("tidyverse")
library(tidyverse)

gapminder <- read_csv("data_raw/gapminder.csv")

# 2. Sort the data so that the country with the highest per capita GDP
# (gdpPercap) is at the top. Save the result to answer_2

arrange(gapminder, gdpPercap)
arrange(gapminder, desc(gdpPercap))

answer_2 <-  "Kuwait, 113523"

# 3. Filter the gapminder data to the most recent year in the
# dataset, then select only the country and population columns. DO NOT use the
# pipe for this. Save the result to answer_3

select(gapminder, year, country, pop)

answer_3 <- select(gapminder, year, country, pop)

# 4. Answer question 3again, but this time USE the pipe (|>). Save the
# result to answer_4

gapminder %>%
  select(year, country, pop)%>%
  arrange(desc(year))

answer_4 <- gapminder %>%
  select(year, country, pop)%>%
  arrange(desc(year))

# 5. Calculate the mean life expectancy for each country in
# Asia only. Save the result to answer_5
#
# HINT: use the combination of `group_by()` and `summarize()` to calculate
# a mean value by group

gapminder %>%
  filter(continent == "Asia")%>%
  group_by(country) %>%
  summarize(mean_lifeExp = mean(lifeExp))

answer_5 <- gapminder %>%
  filter(continent == "Asia")%>%
  group_by(country) %>%
  summarize(mean_lifeExp = mean(lifeExp))






