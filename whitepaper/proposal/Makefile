.PHONY: build simpleClean

build:
	@-make simpleClean
	make project.pdf
	@-make simpleClean
	cp project.pdf /output/proposal.pdf

project.pdf:
	pdflatex project
	bibtex project
	pdflatex project
	pdflatex project

	@echo "================================================"
	@echo "All done! PDF has been created."
	@echo "================================================"
	cp project.pdf /output/

simpleClean:
	rm -rf *.log *.blg *.bbl *.aux *.dvi *.lot *.lof *.toc *.ps *.out *.brf *~
