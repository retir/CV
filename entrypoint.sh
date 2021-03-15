#!/bin/bash
cd CV && xelatex main.tex -interaction=nonstopmode
mv main.pdf ../CV.pdf
rm main.aux main.log main.out
