#!/bin/bash

cd ..

result=$(find -name '*.md')
for i in $result
do
	nvim $i
done
