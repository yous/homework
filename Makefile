MAIN ?= homework
TEMP := $(addsuffix .aux,$(MAIN)) $(addsuffix .log,$(MAIN))

all:
	pdflatex $(MAIN)
	rm -f $(TEMP)

clean:
	rm -f $(addsuffix .pdf,$(MAIN))
	rm -f $(TEMP)

.PHONY: all clean
