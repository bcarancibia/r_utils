library(paletteer)
library(datasets)
library(tidyverse)

my_colors <- c("#4477AA", "#88CCEE", "#117733", 
               "#DDCC77", "#CC6677", "#AA4499",
               "#332288", "#999933", "#661100", 
               "#CC6677", "#AA4466", "#882255")

theme_ben <- function () {
  theme_minimal(base_size=12, base_family="SF Mono") %+replace% 
    theme(
      axis.ticks = element_blank(),
      panel.grid.minor = element_blank()
      )}



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
  scale_fill_manual(values = my_colors ) +
  theme_ben()
