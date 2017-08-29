#!/bin/bash
# This script comiples the cv_xxu.tex file
# A version number need to be input

current_version=4.5  # 2017.08.27

echo "Type the version of current CV followed by [ENTER]:"
read version

if [[ $version = "" ]]; then
  version=$current_version
fi

echo "Generate version:" $version

# Compile the tex file
pdflatex cv_xxu
pdflatex cv_xxu

# Rename the file
mv cv_xxu.pdf ./pdfs/cv_xxu_v$version.pdf
