REPORT=lecture_note
LATEX=pdflatex
BIBTEX=bibtex

SRCS=$(wildcard *.tex)
REFS=$(wildcard *.bib)

all: $(REPORT).pdf

$(REPORT).pdf: $(SRCS) $(REFS) ./figures/*
	$(LATEX) $(REPORT)
	$(BIBTEX) $(REPORT)
	$(LATEX) $(REPORT)
	$(LATEX) $(REPORT)

clean:
	rm -f *.dvi *.out *.aux *.log *.blg *.bbl $(REPORT).ps $(REPORT).pdf
