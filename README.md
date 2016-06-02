# Homework

Simple homework template based on LaTeX.

## Setup

### Ubuntu

``` sh
apt-get install texlive texlive-latex-extra
pip install Pygments
```

### Arch Linux

``` sh
pacman -S texlive-core texlive-latexextra
pip install Pygments
```

## Commands

Following command will build `homework.tex` and generate `homework.pdf`.

``` sh
latexmk
```

Run a file previewer with:

``` sh
latexmk -pv
```

Run a file previewer and automatically update the output files:

``` sh
latexmk -pvc
```

Clean up regeneratable files:

``` sh
latexmk -c
```

Clean up regeneratable files with the addition of output files:

``` sh
latexmk -C
```
