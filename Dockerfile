#####################################################################
# Dockerfile for data550-Final-project
# Builds an image that can render the report reproducibly.
#####################################################################

# 1) Base image: R 4.4.1 + tidyverse + Pandoc
FROM rocker/tidyverse:4.4.1

# 2) Tell renv to ignore OS_type filters in the lockfile
ENV RENV_CONFIG_REQUIREMENTS_IGNORE_OS_TYPE="true"

# 3) Install system libraries frequently required by R packages
RUN apt-get update && apt-get install -y \
        libcurl4-openssl-dev \
        libssl-dev \
        pandoc

# 4) Work in /project
WORKDIR /project

# 5) Copy the entire project *except* the compiled renv libraries
#    (.dockerignore excludes renv/library/ and renv/staging/)
COPY . /project

# 6) Restore packages recorded in renv.lock
RUN R -e "install.packages('renv', repos = 'https://cran.rstudio.com'); \
          renv::restore(prompt = FALSE)"

# 7) Ensure rmarkdown + knitr live in the renv private library,
#    then record them in the lockfile inside the image
RUN R -e "renv::activate('/project'); \
          renv::install(c('rmarkdown','knitr')); \
          renv::snapshot()"

# 8) Default command: run Make to build the final HTML report
CMD [ "bash", "-c", "make" ]
