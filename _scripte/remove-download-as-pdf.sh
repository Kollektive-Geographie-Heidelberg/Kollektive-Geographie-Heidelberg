#!/bin/bash

cd ..
horizontal_line='------'
base='http://kollektive-geographie-heidelberg.de/'

results=$(find -name "*.md" -not -path "./about/*" -not -path "./gemeinsames-studieren/*" -not -path "./geographie-ressourcen/*" -not -path "./altklausuren/*" -not -path "./_*" -not -name "SUMMARY.md" -not -name "README.md" -not -name "00-allgemeines.md")

for i in $results
do
	absolute_filepath=$(realpath $i)

	file_tail=$(tail -n 1 $absolute_filepath)
	
	if [ "$file_tail" == "$horizontal_line" ]
	then
		sed -i '$d' $absolute_filepath #deletes last line of file. need to delete 10 lines
		sed -i '$d' $absolute_filepath 
		sed -i '$d' $absolute_filepath 
		sed -i '$d' $absolute_filepath 
		sed -i '$d' $absolute_filepath 
		sed -i '$d' $absolute_filepath 
		sed -i '$d' $absolute_filepath 
		sed -i '$d' $absolute_filepath 
		sed -i '$d' $absolute_filepath 
		sed -i '$d' $absolute_filepath 
	fi
done
