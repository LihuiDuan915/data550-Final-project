# Function to create trend plot for RSV vaccination data

create_plot <- function(data) {
  library(ggplot2)
  
  data <- data |> mutate(race_ethnicity = as.factor(`Race and Ethnicity`))
  
  ggplot(data, aes(x = as.Date(Week_Ending_Date), y = Percent, color = race_ethnicity)) +
    geom_line(linewidth = 1) +
    labs(title = "RSV Vaccination Coverage Over Time",
         x = "Week Ending Date",
         y = "Vaccination Percentage",
         color = "Race/Ethnicity") +
    theme_minimal()
}
