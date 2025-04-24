# Final Project

## Project Structure
- `data/rsv_vax.csv`: the original dataset from the CDC.

- `code/make_table.R`: 
  This code creates the table used in the final report.
- `code/make_plot.R`: 
  This code creates the plot used in the final report.

- `report/Second_report.Rmd`: This R Markdown file can render the report into an html file named "Second_project.html".

- `report_docker/`: **\*originally empty in repo\***; when you run the Docker image, the freshly-knit HTML (Second_project.html) will appear here.

- `Makefile`: Automates environment setup and report building. 

- `renv/`: Project-specific R environment, used to isolate and manage package versions.

- `renv.lock`: Lockfile that records the exact package versions used; ensures reproducibility.

- `Dockerfile`: Builds a Linux image that recreates the report end-to-end.

- `.dockerignore`: Excludes `renv/library/` & `renv/staging/` to avoid Windows binaries |

- `.Rprofile`: Startup file used to automatically activate the `renv` environment when the project is opened in R.

- `archive/initial_report.Rmd`: Early version of the analysis submitted earlier in the semester, which has limited relationship with the utilization of GitHub and Renv-package.



## How to Create the Report

### Method 1 — GitHub + renv  
*(local R installation required)*

1. Clone the repository to your local machine.
                
2. Set the project's directory as the work-directory.
 
3.Reproduce the exact R environment for this project   by running the following command in your terminal:
   ```
   make install
   
   ```
4. Render the report (Second_project.html) by   running following command in your terminal:
   `make`



### Method 2 - fully containerised
*(No local R installation required – Docker handles everything.)*   
  
1. Clone the repository to your local machine.
 
2. Pull the image by running the following command in your terminal:
     ```
     docker pull lihuiduan/data550-final-project:latest
     
     ```
3. Generate the report by running the following command in your docker:
    ```
    make docker-run
    
    ```
The container writes the HTML to /project/report_docker, which is mapped to your local report_docker/ folder, so report_docker/Second_report.html will appear on your machine.
