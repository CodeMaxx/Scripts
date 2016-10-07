
#! /usr/local/bin/python
import os
import sys

link = sys.argv[1]
id = link.split("/")[-2]
download_link = 'https://docs.google.com/document/export?format=pdf&id=' + id
os.system("curl -O '" + download_link + "'")
