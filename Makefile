all:
	Rscript -e "rmarkdown::render('report/Second_report.Rmd', knit_root_dir = '.')"

install:
	Rscript -e 'renv::restore()'
