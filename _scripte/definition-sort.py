#!/usr/bin/python
# -*- coding: utf-8 -*-

file_path = input()
file_path = file_path[1:] # to eliminate weird start of path when getting it from shell script -> "\t\t/home/"

d = ""
d_list = []

with open(file_path) as d_md:
    for line in d_md:
        if line.startswith("**"):
            d_list.append(d)
            d = ""
        d += line

d_list.append(d)
header = d_list.pop(0)
d_list = sorted(d_list, key=str.lower)
definitionen = "".join(d_list)

with open(file_path, 'w') as f:
    f.write(header)
    f.write(definitionen)
