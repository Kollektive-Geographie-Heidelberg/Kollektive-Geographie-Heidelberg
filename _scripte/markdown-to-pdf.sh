#!/bin/bash

cd ..

result=$(find -name "*.md" -not -path "./about/*" -not -path "./gemeinsames-studieren/*" -not -path "./geographie-ressourcen/*" -not -path "./altklausuren/*" -not -path "./_*" -not -name "SUMMARY.md" -not -name "README.md")

#Generate .pdf for every .md
for i in $result
do
	filename=${i%\.*} # path of file without extension
	pandoc -f markdown_github $i -o $filename.pdf --latex-engine=xelatex
done

#Unite every .pdf in each folder to one .pdf with name of parent folder
directories=$(find . -type d -not -path "./about/*" -not -path "./gemeinsames-studieren/*" -not -path "./geographie-ressourcen/*" -not -path "./altklausuren/*" -not -path "./_*")
for i in $directories
do
	folderpath=$(realpath $i)
	foldername=${folderpath##*/} #strips of all except of parent
	(cd $folderpath ; rm -f $foldername'.pdf' ; pdfunite $(ls -v *.pdf) $foldername'.pdf')
done

