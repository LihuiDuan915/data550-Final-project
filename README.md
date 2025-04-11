# Final Project

## Project Overview
This project analyzes trends in Respiratory Syncytial Virus (RSV) using a publicly available dataset from the CDC. The analysis includes an introductory section, a table summarizing weekly activity levels, and a figure illustrating temporal patterns in RSV cases.

## Project Structure

- `data/rsv_vax.csv`: the original dataset from the CDC.


- `code/make_table.R`: 
  This code creates the table used in the final report.
- `code/make_plot.R`: 
  This code creates the plot used in the final report.


- `report/Second_report.Rmd`: This R Markdown file can render the report into an html file named "Second_project.html".


- `Makefile`: Automates building the report from the `.Rmd` file.


- `archive/initial_report.Rmd`: Early version of the analysis submitted earlier in the semester.


## How to Build the Report

To generate the final report (Second_project.html), run the following in your terminal:

`make`
