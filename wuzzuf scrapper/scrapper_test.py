import requests
from bs4 import BeautifulSoup

import json
link="https://wuzzuf.net/search/jobs?q=it&a=hpb"
r=requests.get(link)
soup=BeautifulSoup(r.text, "html.parser")


s=soup.find("div", {"class": "result-wrp row"})
print(s.contents)
f = open("demo.html","w")
f.write(s.text)
f.close()