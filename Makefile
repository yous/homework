MAIN ?= homework
CODEDIR := code
CODE := $(addsuffix .tex,$(filter-out %.tex,$(wildcard $(CODEDIR)/*)))
DEPS := $(CODEDIR)/fmt.tex $(CODE)
TEMP := $(addsuffix .aux,$(MAIN)) $(addsuffix .log,$(MAIN))

all: $(DEPS)
	pdflatex $(MAIN)
	rm -f $(TEMP)

$(CODEDIR)/%.tex: $(CODEDIR)/%
	pygmentize -P tabsize=4 -P mathescape -f latex $^ > $@

$(CODEDIR)/fmt.tex: | $(CODEDIR)
	pygmentize -f latex -S default > $@

$(CODEDIR):
	test -d $(CODEDIR) || mkdir $(CODEDIR)

clean:
	rm -f $(addsuffix .pdf,$(MAIN))
	rm -f $(TEMP)

distclean: clean
	rm -f $(CODEDIR)/*.tex

.PHONY: all clean distclean
