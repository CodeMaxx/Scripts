#! /usr/local/bin/python

# Downloads newly added pdf course files from Akshay sir's CS 207 coursepage.

import mechanize
import os

br = mechanize.Browser()
br.open("https://www.cse.iitb.ac.in/~akshayss/courses/cs207-2016.html")
for link in br.links():
    if link.url.endswith('.pdf'):
        filename = link.url.split('/')[-1]
        if not os.path.exists(filename):
            if not link.url.startswith('http'):
                os.system('wget https://www.cse.iitb.ac.in/~akshayss/courses/' + link.url)
