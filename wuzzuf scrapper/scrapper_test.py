import requests
from bs4 import BeautifulSoup

import json
link="https://wuzzuf.net/search/jobs?q=it&a=hpb"
r=requests.get(link)
soup=BeautifulSoup(r.text, "html.parser")

f = open("demo.html","w")
f.write(r.text)
f.close()
s=soup.find("div", {"class": "result-wrp row"})
print(s.contents)