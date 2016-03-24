MAIN ?= homework
TEMP := $(addsuffix .aux,$(MAIN)) $(addsuffix .log,$(MAIN))

all: $(DEPS)
	pdflatex -shell-escape $(MAIN)
	rm -f $(TEMP)

clean:
	rm -f $(addsuffix .pdf,$(MAIN))
	rm -f $(TEMP)

.PHONY: all clean
