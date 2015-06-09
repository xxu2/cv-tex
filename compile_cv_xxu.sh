#!/bin/bash
# This script comiples the cv_xxu.tex file
# A version number need to be input

echo "Type the version of current CV followed by [ENTER]:"
read version
echo $version

# Compile the tex file
pdflatex cv_xxu
pdflatex cv_xxu

# Rename the file
mv cv_xxu.pdf cv_xxu_v$version.pdf
