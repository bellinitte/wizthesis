.PHONY: all clean

all:
	pdflatex -shell-escape example
	bibtex example
	pdflatex -shell-escape example
	pdflatex -shell-escape example

clean:
	rm -r *.aux *.bbl *.blg *.lof *.log *.lol *.lot *.out *.toc _minted*
