# Homework

Simple homework template based on LaTeX.

## Setup

### Ubuntu

``` sh
apt-get install texlive texlive-latex-extra
```

### Arch Linux

``` sh
pacman -S texlive-core texlive-latexextra
```

## Build

Following command will build `homework.tex` and generate `homework.pdf`.

``` sh
make
```

You can specify the TeX file that you want to build:

``` sh
MAIN=homework make
```
