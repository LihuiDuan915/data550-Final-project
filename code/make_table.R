# Function to create summary table for RSV vaccination data

create_table <- function(data) {
  library(gtsummary)
  library(labelled)
  
  data <- data |>
    mutate(
      race_ethnicity = as.factor(`Race and Ethnicity`),
      vaccination_percentage = Percent,
      estimated_population = Denominator * Percent / 100
    )
  
  var_label(data) <- list(
    race_ethnicity = "Race and Ethnicity",
    vaccination_percentage = "Percent",
    estimated_population = "Estimated Eligible Population"
  )
  
  data |>
    select(race_ethnicity, vaccination_percentage, estimated_population) |>
    tbl_summary(by = race_ethnicity) |>
    modify_spanning_header(all_stat_cols() ~ "**RSV Vaccination Coverage**") |>
    add_overall() |>
    add_p()
}
