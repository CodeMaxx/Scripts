#! /bin/bash

mkdir lab$1;
mkdir lab$1/resources;
mkdir lab$1/outlab;
mkdir lab$1/inlab;
touch lab$1/inlab/readme.txt;
touch lab$1/outlab/readme.txt;
cd lab$1/resources;
wget -r -np -nH --cut-dirs=5 -R index.html* https://www.cse.iitb.ac.in/~sharat/current/cs251/Assign/Lab0$1/;
for i in `find . -type f -name *.tgz | sed -E 's/\.\/(a*)/\1/'`; do tar -xvf $i; done
for i in `find . -type f -name *.tar.gz | sed -E 's/\.\/(a*)/\1/'`; do tar -xvf $i; done
for i in `find . -type f -name *.zip | sed -E 's/\.\/(a*)/\1/'`; do unzip $i; done
rm robots.txt;
