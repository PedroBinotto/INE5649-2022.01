#!/bin/bash

rm -rf ./latex/*
pdflatex -output-directory=./latex -output-format=pdf TRABALHO_1.tex

