# Downloads newly added course pdf files from Ajit sir's CS 215 coursepage.

import mechanize
import os

br = mechanize.Browser()
br.open("https://www.cse.iitb.ac.in/~ajitvr/CS215_Fall2016/")
for link in br.links():
    if link.url.endswith('.pdf'):
        filename = link.url.split('/')[-1]
        if not os.path.exists(filename):
            if not link.url.startswith('http'):
                os.system('wget https://www.cse.iitb.ac.in/~ajitvr/CS215_Fall2016/' + link.url)
