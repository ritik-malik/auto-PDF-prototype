#!/bin/bash

# This is the main script to be run
# It does the following task :
# * Clones the working-group repository (local branch for now)
# * Trims it down to only metrics.md & images directory
# * Copy scripts from scripts dir
# * Run them to generate the PDF from the metrics
#
# Make sure to set these 2 parameters properly in this file

repository_link='https://github.com/ritik-malik/wg-common'
repository_name='wg-common'

# clean test-env
rm -rf test-env/*

echo "Moving to test-env dir"
cd test-env

echo -e "\nCloning the repo\n"
git clone -b abs-to-rel ${repository_link} ${repository_name}

echo -e "\nTrimming metrics & images"
mv ${repository_name}/focus-areas/* .

rm -rf ${repository_name}
rm README.md

directories=$(ls)
mkdir images

for metric in ${directories}
do
    mv ${metric}/images/* images
    mv ${metric}/*.md .
    rm README.md
    rm -rf ${metric}
done

input_files=$(ls *.md)

echo -e "\nNow bring scripts from scripts folder"
cp ../scripts/images/* images
cp ../scripts/cover.tex ../scripts/generate_pdf.sh ../scripts/pygments.theme ../scripts/template.tex .

echo -e "\nGenerating the PDF"
./generate_pdf.sh ${input_files[@]}

mv output.pdf ../output

echo -e "\nDone!\nCheck output folder for PDF\n"


