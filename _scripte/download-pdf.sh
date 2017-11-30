#!/bin/bash

cd ..
horizontal_line='------'
base='http://kollektive-geographie-heidelberg.de/'

results=$(find -name "*.md" -not -path "./about/*" -not -path "./gemeinsames-studieren/*" -not -path "./geographie-ressourcen/*" -not -path "./altklausuren/*" -not -path "./_*" -not -name "SUMMARY.md" -not -name "README.md" -not -name "00-allgemeines.md")

for i in $results
do
	#string manipulation -> https://stackoverflow.com/questions/19482123/extract-part-of-a-string-using-bash-cut-split#19482947
	absolute_filepath=$(realpath $i)
	filepath=${absolute_filepath##*/}
	folderpath_1=${absolute_filepath%/*} #cuts filename
	foldername=${folderpath_1##*/}
	relative_filepath=$foldername"/"$filepath #concatenate
	relative_filepath=${relative_filepath%.*} #removes .md
	link_site=$base$relative_filepath".pdf"
	link_rubric=$base$foldername"/"$foldername".pdf"
	text_1="Lade dieses Kapitel als [PDF]($link_site) herunter"
	text_2="Lade die ganze Rubrik *$foldername* als [PDF]($link_rubric) herunter"

	printf %s "$(< $absolute_filepath)" > $absolute_filepath # removes trailing new line at EOF

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
	#add lines between "EOF" to end of file
	cat <<EOF >>$absolute_filepath

<br/>

$horizontal_line

$text_1

$text_2

$horizontal_line
EOF

done
