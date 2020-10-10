import requests
from bs4 import BeautifulSoup

import json

link="https://wuzzuf.net/search/jobs?q=it&a=hpb"
r=requests.get(link)
soup=BeautifulSoup(r.text, "html.parser")

ss=soup.find_all("div", {"class": "result-wrp row"})
jobCount=soup.find("span", {"class": "search-jobs-count"}).text
print("Job Count:",jobCount,"\n")
for s in ss:
    title=s.div.contents[5].h2.text
    title=title.replace("\n", "")
    print("title: ",title)

    company=s.div.contents[7].contents[1].text
    company=company.replace("\n", "").replace("  ", "")
    print("company: ", company)

    location=s.div.contents[7].contents[5].text
    location=location.replace("\n", "").replace("  ", "")
    print("location: ",location)

    exp=s.div.contents[9].contents[3].text
    exp=exp.replace("\n","").replace("  ","")
    print("exp: ",exp)

    tags=s.div.contents[9].contents[5].text
    tags=tags.replace("\n", "").replace("  ", "")
    print("tags: ",tags)

    jobType=s.div.contents[9].contents[1].text
    jobType=jobType.replace("\n", "").replace("  ", "")
    print("job Type: ",jobType)

    time=s.div.find("time").attrs['title']
    time=time.replace("\n", "").replace("  ", "")
    print("time: ",time)

    print("\n\n\n")

