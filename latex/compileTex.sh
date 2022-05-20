#!/bin/bash

rm -rf *.pdf *.log *.aux *.bbl
xelatex TRABALHO_1.tex
bibtex TRABALHO_1
xelatex TRABALHO_1.tex
xelatex TRABALHO_1.tex

