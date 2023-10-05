#step 1 
df<- read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")
View(df)
install.packages("tidyverse")

#step 2
library(tidyverse)
str(df)

#step 3
summary(df)
library(ggplot2)
#scatter graph
ggplot(df, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))
#bar graph
ggplot(df, aes(x=Year)) + geom_bar()

#step 4
colSums(is.na(df))
df1 <- df %>% drop_na()
colSums(is.na(df1))

#step 5
write.csv(df1, "~/R Studio/sessions/clean_df.csv")
