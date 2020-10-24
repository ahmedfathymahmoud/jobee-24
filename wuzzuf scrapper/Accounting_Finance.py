import requests
from bs4 import BeautifulSoup
import datetime
from jobExtractor import Job
from SearchLinkGenerator import wuzzufSearchLink
from dbHandlerRemote import JobDB
from telegram_jobee import tele_jobee



tableName = 'accounting_finance'
searchArr = ['Accounting-Finance-Jobs-in-Egypt', 'Banking-Jobs-in-Egypt', 'Logistics-Supply-Chain-in-Egypt']
job = Job()
db = JobDB()
jobee = tele_jobee("@jobee25")
db.connect("d9kearbfv95d1f", tableName)
limitDate=db.executeQuery('select max(post_date)from it_software_development ')[0][0]
# limitDate = 'Oct 21 2020 1:00AM'
# limitDate = datetime.datetime.strptime(limitDate, '%b %d %Y %I:%M%p')
# db.clean()
for searchStr in searchArr:
    jobCount = 20
    startCount = 0
    while startCount < jobCount:

        link = wuzzufSearchLink(country="", start=str(startCount), category=searchStr, level="", jobType='',
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
            if db.executeQuery("select job_id from {} where link='{}'".format(tableName, job.jobLink)) == []:
                db.add(job)
                jobee.post_job(job)
                job.display()
        startCount += 20

db.close()
