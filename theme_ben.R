library(paletteer)

theme_ben <- function () {
  theme_minimal(base_size=12, base_family="Microsoft Sans Serif") %+replace% 
    theme(
      panel.grid.minor = element_blank(),
      plot.background = element_rect(fill = #FFFFFF, color = #FFFFFF)
      ))
}


library(datasets)
library(tidyverse)
ggplot(chickwts) +
  geom_bar(aes(x = feed, y = weight, fill = feed), 
           position = "dodge", stat = "summary", fun.y = "mean") +
  labs(
    y = "Average Weight",
    x = "Feed",
    fill = NULL,
    title = "Average Chicken Weight by Feed Type",
    subtitle = "What's the unit of measure? Who knows!",
    caption = "From the chickwts dataset"
  ) +
  scale_fill_manual(values = c("#2B4162", "#C5CBD4", "#385F71", 
                               "#D7B377", "#F5F0F6", "#8F754F")) +
  theme_ben()
