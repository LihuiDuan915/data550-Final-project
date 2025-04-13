# Final Project

## Project Structure
- `data/rsv_vax.csv`: the original dataset from the CDC.

- `code/make_table.R`: 
  This code creates the table used in the final report.
- `code/make_plot.R`: 
  This code creates the plot used in the final report.

- `report/Second_report.Rmd`: This R Markdown file can render the report into an html file named "Second_project.html".

- `Makefile`: Automates environment setup and report building. It includes commands to restore the R environment using `renv`, and to render the final report from the `.Rmd` file.

- `renv/`: Project-specific R environment, used to isolate and manage package versions.

- `renv.lock`: Lockfile that records the exact package versions used; ensures reproducibility.

- `.Rprofile`: Startup file used to automatically activate the `renv` environment when the project is opened in R.

- `archive/initial_report.Rmd`: Early version of the analysis submitted earlier in the semester, which has limited relationship with the utilization of GitHub and Renv-package.



## How to Build the Report
1, Clone the repository to your local machine.


2. To reproduce the computational environment for this project:
-Set the project's directory as wd, install the required packages by running the following command in your terminal:
`make install`
(This will restore the required R packages listed in the `renv.lock` file using the `renv` package.)


3. To generate the final report (Second_project.html):
-Run following command in your terminal:
`make`
