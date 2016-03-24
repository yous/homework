MAIN ?= homework
TEMP := $(addsuffix .aux,$(MAIN)) $(addsuffix .log,$(MAIN))

all: $(DEPS)
	pdflatex -shell-escape -interaction=nonstopmode $(MAIN)
	rm -f $(TEMP)

clean:
	rm -f $(addsuffix .pdf,$(MAIN))
	rm -f $(TEMP)

.PHONY: all clean
