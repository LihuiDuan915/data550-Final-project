all:
	Rscript -e "rmarkdown::render('report/second_report.Rmd', knit_root_dir = '..')"
