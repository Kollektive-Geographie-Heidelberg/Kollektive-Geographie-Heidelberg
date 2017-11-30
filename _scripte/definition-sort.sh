#!/bin/bash

cd ..
result=$(find -name '00-definitionen.md')
for i in $result
do
	path=$(realpath $i)
	python3 _scripte/definition-sort.py <<E0F
	$path
E0F
done
