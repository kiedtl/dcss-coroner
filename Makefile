.PHONY: all
all: after.pdf

after.pdf: after.latex
	latexmk -pdf $<

after.png: after.pdf
	convert -density 150 -flatten $< $@

.PHONY: clean
clean: after.latex
	latexmk -CA $<

.PHONY: all clean
