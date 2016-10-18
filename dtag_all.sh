#! /bin/bash

#Apply dtags on all subdirectories

# dtags -> https://github.com/joowani/dtags

for i in `ls -d */`; do t ./`echo $i | sed -E 's/(a*)\/\//\1/'` tag; done
