#!/bin/bash

cd ..
result=$(find -name '00-definitionen.md')
for i in $result
do
	path=$(realpath $i)
        dirname=$path{%/*}
	python3 _scripte/definition-sort.py <<E0F
	$path
E0F
	python3 _scripte/definition-qa.py <<E0F
	$path
E0F
done
