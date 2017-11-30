#!/usr/bin/python
# -*- coding: utf-8 -*-

# t = term, d = definition
# td = term - definition - pair (tuple)

import random
from feedgen.feed import FeedGenerator

def get_rn_td(file_path):
    # parse a markdown-file and returns one random element of each list as a tuple
    t_list = []  # terms
    d_list = []  # definitions of terms
    d = ""
    with open(file_path) as d_md:
        for line in d_md:
            if line.startswith("**"):
                line = line.replace("**", "")
                t_list.append(line)
                d_list.append(d)
                d = ""
            else:
                d += line
                d += "<br>"
        d_list.pop(0)
    rn = random.randint(0, len(t_list)-1)
    return (t_list[rn], d_list[rn])

def add(td):
    fg = FeedGenerator()
    fg.id("10")
    fg.title('Kollektive Geographie Heidelberg')
    fg.author( {'name':'Kollektive Geographie Heidelberg','email':'kollektive-geographie-heidelberg@posteo.de'} )
    fg.link( href='http://kollektive-geographie-heidelberg.de', rel='alternate' )
    fg.logo('http://kollektive-geographie-heidelberg.de/favicon-earth.svg')
    fg.subtitle('Definitionen')
    fg.language('de')

    fe = fg.add_entry()
    fe.id("10")
    fe.title(td[0])
    fe.link(href="http://kollektive-geographie-heidelberg.de/test.html")
    fe.description(td[1])

    atomfeed = fg.atom_str(pretty=True) # Get the ATOM feed as string
    rssfeed  = fg.rss_str(pretty=True) # Get the RSS feed as string
    fg.atom_file('atom.xml') # Write the ATOM feed to a file
    fg.rss_file('rss.xml') # Write the RSS feed to a file

file_path = input()
file_path = file_path[1:]  # to eliminate weird start of path when getting it from shell script -> "\t\t/home/"
td = get_rn_td(file_path)
add(td)
