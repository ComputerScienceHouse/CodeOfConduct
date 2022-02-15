# Source files
TEXFILES=constitution.tex

# Binaries
PDFLATEX=pdflatex

# Generated files
PDFFILES=$(TEXFILES:.tex=.pdf)

.PHONY: all clean

all:
	$(PDFLATEX) `git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{Revision %h on %ad}'` '\input{csh-coc.tex}'
	$(PDFLATEX) `git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{Revision %h on %ad}'` '\input{csh-coc.tex}'

clean:
	$(RM) $(PDFFILES)

