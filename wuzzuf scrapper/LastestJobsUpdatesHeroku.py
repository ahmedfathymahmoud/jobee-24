import requests
from bs4 import BeautifulSoup
import datetime
from jobExtractor import Job
from SearchLinkGenerator import wuzzufSearchLink
from dbHandlerRemote import JobDB

jobCount = 20
startCount = 0

search = 'IT Software Development'
job = Job()
db = JobDB()
db.connect("d9kearbfv95d1f",search)
limitDate=db.executeQuery('select max(post_date)from it_software_development ')[0][0]
#limitDate = 'Oct 18 2020 6:40PM'
#limitDate = datetime.datetime.strptime(limitDate, '%b %d %Y %I:%M%p')
#db.clean()
while (startCount < jobCount):

    link = wuzzufSearchLink(country="Egypt", start=str(startCount), category=search, level="", jobType='',
                            post_date="within 24 hours")
    r = requests.get(link.generate())

    soup = BeautifulSoup(r.text, "html.parser")
    ss = soup.find_all("div", {"class": "result-wrp row"})
    if startCount == 0:
        jobCount = int(soup.find("span", {"class": "search-jobs-count"}).text)
        print(link.generate())
        print("Job Count:", jobCount, "\n")

    for s in ss:
        job.getJobDynamic(s)
        if datetime.datetime.strptime(job.postTime,'%A, %B %d, %Y at  %I:%M%p')>limitDate :
            db.add(job)
            job.display()

    startCount += 20

db.close()
