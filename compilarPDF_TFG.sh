#!/bin/bash

# TeX Live
SOURCEFILE=$1

rm $SOURCEFILE.aux $SOURCEFILE.log $SOURCEFILE.bbl $SOURCEFILE.bcf $SOURCEFILE.run.xml $SOURCEFILE.blg $SOURCEFILE.toc
pdflatex -shell-escape $SOURCEFILE
biber $SOURCEFILE
pdflatex -shell-escape $SOURCEFILE
pdflatex -shell-escape $SOURCEFILE
