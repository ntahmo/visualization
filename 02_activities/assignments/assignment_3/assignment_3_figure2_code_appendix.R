################################################################################
### Title:            DSI Visualization Module 
### Author:           Nancy Tahmo, PhD student
### Creation date:    February 02, 2026
### Dataset:          TTC LRT delay data: https://open.toronto.ca/dataset/ttc-lrt-delay-data/
### R script description: Figure
################################################################################

# ----------------- Load necessary packages -----------------------
library(tidyverse)
library(lubridate)
library(hms)
library(viridis)   # for colorblind-friendly palette

# Load data
LRT_delays <- read_csv("TTC LRT Delays.csv")

# Clean + features
LRT_delays <- LRT_delays %>%
  mutate(
    MinDelay = as.numeric(`Min Delay`),
    hour = hour(as_hms(Time)),
    day_type = if_else(Day %in% c("Saturday", "Sunday"), "Weekend", "Weekday"),
    time_of_day = if_else(hour < 12, "Morning", "Afternoon"),
    time_of_day = factor(time_of_day, levels = c("Morning", "Afternoon")),
    Bound = recode(Bound,
                   "E" = "Eastbound",
                   "W" = "Westbound",
                   "N" = "Northbound",
                   "S" = "Southbound")
  ) %>%
  drop_na(MinDelay, day_type, time_of_day, Bound) %>%
  filter(Bound != "None")   # Reduces clutter; comment out to keep "None"

# Summarize
summary <- LRT_delays %>%
  group_by(day_type, time_of_day, Bound) %>%
  summarise(mean_delay = mean(MinDelay), .groups = "drop")

# Plot
ggplot(summary, aes(x = time_of_day, y = mean_delay, fill = Bound)) +
  geom_col(position = position_dodge(width = 0.8), width = 0.7) +
  facet_wrap(~ day_type) +
  scale_fill_viridis_d(option = "D", end = 0.9) +
  labs(
    title = "Average TTC LRT delay by time of day and direction of commute",
    subtitle = "weekdays vs weekends",
    x = "Time of day",
    y = "Average delay (minutes)",
    fill = "Direction",
    caption = "Source: Toronto Transit Commission (TTC) LRT delay data"
  ) +
  theme_minimal() +
  theme(
    text = element_text(size = 14),
    panel.grid.minor = element_blank(),
    legend.position = "bottom"
  )

# Export
ggsave(
  filename = "ttc_lrt_delay_R_figure2.png",
  width = 8, height = 4, dpi = 300
)
