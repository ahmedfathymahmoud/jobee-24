import requests
from bs4 import BeautifulSoup
from jobExtractor import Job
from SearchLinkGenerator import wuzzufSearchLink
from dbHandler import JobDB

jobCount = 20
startCount = 0

search = 'python'
job = Job()
db = JobDB()
db.connect("wuzzuf",search)
db.clean()
while (startCount < jobCount):

    link = wuzzufSearchLink(country="Egypt", start=str(startCount), searchString=search, level="", jobType='',
                            post_date="")
    r = requests.get(link.generate())

    soup = BeautifulSoup(r.text, "html.parser")
    ss = soup.find_all("div", {"class": "result-wrp row"})
    if startCount == 0:
        jobCount = int(soup.find("span", {"class": "search-jobs-count"}).text)
        print(link.generate())
        print("Job Count:", jobCount, "\n")

    for s in ss:
        job.getJobDynamic(s)
        db.add(job)
        job.display()

    startCount += 20

db.close()
