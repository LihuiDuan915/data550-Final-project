# Final Project

## Project Overview
This project analyzes trends in Respiratory Syncytial Virus (RSV) using a publicly available dataset from the CDC. The analysis includes an introductory section, a table summarizing weekly activity levels, and a figure illustrating temporal patterns in RSV cases.

## Project Structure

- `data/rsv_vax.csv`: Public dataset from the CDC.
- `code/analysis.R`: Script to generate the table and figure used in the final report.
- `report/Second_report.Rmd`: Main R Markdown file for the Second report (20250404-version).
- `Makefile`: Automates building the final report from the `.Rmd` file.
- `archive/initial_report.Rmd`: Early version of the analysis submitted earlier in the semester.

## How to Build the Report

To generate the final report (HTML or PDF), run the following in your terminal:

```bash
make
