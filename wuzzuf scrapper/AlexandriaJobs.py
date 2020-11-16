import requests
from bs4 import BeautifulSoup
import datetime
from jobExtractor import Job
from SearchLinkGenerator import wuzzufSearchLink
from dbHandlerRemote import JobDB
from telegram_jobee import tele_jobee

jobCount = 20
startCount = 0
tableName = 'Alexandria_Jobs'
search = 'Alexandria_Jobs'
job = Job()
db = JobDB()
jobee = tele_jobee("@jobee26")
db.connect("d9kearbfv95d1f", tableName)
# limitDate=db.executeQuery('select max(post_date)from it_software_development ')[0][0]
# limitDate = 'Nov 2 2020 4:40PM'
# limitDate = datetime.datetime.strptime(limitDate, '%b %d %Y %I:%M%p')
# db.clean()
while (startCount < jobCount):

    link = "https://wuzzuf.net/a/Jobs-in-alexandria?filters%5Bpost_date%5D%5B0%5D=Past%2024%20Hours&filters%5Bcity%5D%5B0%5D=Alexandria&start=" + \
        str(startCount)
    r = requests.get(link)

    soup = BeautifulSoup(r.text, "html.parser")
    ss = soup.find_all("div", {"class": "result-wrp row"})
    if startCount == 0:
        jobCount = int(soup.find("span", {"class": "search-jobs-count"}).text)
        print(link)
        print("Job Count:", jobCount, "\n")

    for s in ss:
        job.getJobDynamic(s)
        # if datetime.datetime.strptime(job.postTime,'%A, %B %d, %Y at  %I:%M%p')>limitDate :
        if db.executeQuery("select job_id from {} where post_date='{}'".format(tableName, job.postTime)) == []:
            db.add(job)
            jobee.post_job(job)
            job.display()

    startCount += 20

db.close()
