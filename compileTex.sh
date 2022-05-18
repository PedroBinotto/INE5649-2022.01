#!/bin/bash

rm -rf ./latex/*
xelatex -output-directory=./latex -output-format=pdf TRABALHO_1.tex

