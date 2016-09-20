mkdir lab$1;
mkdir lab$1/resources;
cd lab$1/resources;
wget https://www.cse.iitb.ac.in/~sharat/current/cs251/Assign/Lab0$1/inlab.pdf;
wget https://www.cse.iitb.ac.in/~sharat/current/cs251/Assign/Lab0$1/outlab.pdf;
wget -r -np -nH --cut-dirs=5 -R index.html* https://www.cse.iitb.ac.in/~sharat/current/cs251/Assign/Lab0$1/support/;
rm robots.txt;
