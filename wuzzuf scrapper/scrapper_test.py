import requests
from bs4 import BeautifulSoup
from jobExtractor import Job
from SearchLinkGenerator import wuzzufSearchLink
from dbHandler import JobDB

link=wuzzufSearchLink(city="Alexandria",start="0",searchString="it",level="",jobType='',post_date="")
r = requests.get(link.generate())


soup = BeautifulSoup(r.text, "html.parser")
ss = soup.find_all("div", {"class": "result-wrp row"})

jobCount = soup.find("span", {"class": "search-jobs-count"}).text
print("Job Count:", jobCount, "\n")

job=Job()
db=JobDB()
db.connect("wuzzuf")
for s in ss:
    job.getJobDynamic(s)
    db.add(job)
    job.display()
db.close();

