all:
	Rscript -e "rmarkdown::render('report/Second_report.Rmd', \
                                knit_root_dir='.', \
                                output_dir='report_docker')"

install:
	Rscript -e 'renv::restore()'

docker-run:
	mkdir -p report_docker
	docker run --rm \
		-v "/$$(PWD)/report_docker:/project/report_docker" \
		lihuiduan/data550-final-project:latest
