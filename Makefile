# Makefile

TEXCC=pdflatex
TEXFLAGS=-file-line-error

.PHONY: all clean

all: vcs_presentation.pdf

%.pdf: %.tex
	$(TEXCC) $(TEXFLAGS) $<

clean: 
	rm -f \
	  vcs_presentation.{aux,log,nav,out,pdf,snm,toc}

