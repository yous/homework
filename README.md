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

## Build

Following command will build `homework.tex` and generate `homework.pdf`.

``` sh
make
```

You can specify the TeX file that you want to build:

``` sh
MAIN=homework make
```

You can automatically trigger `make` with
[watchdog](https://pypi.python.org/pypi/watchdog):

``` sh
pip install watchdog
python watchdog.py
```
