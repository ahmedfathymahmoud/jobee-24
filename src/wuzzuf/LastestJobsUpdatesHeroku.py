import requests
from bs4 import BeautifulSoup
import datetime
from jobExtractor import Job
from SearchLinkGenerator import wuzzufSearchLink
from wuzzuf_scrapper.db_handler.dbHandlerRemote import JobDB
from telegram_jobee import tele_jobee

jobCount = 20
startCount = 0
tableName = 'it_software_development'
search = 'IT Software Development'
job = Job()
db = JobDB()
jobee = tele_jobee("@jobee24")
db.connect("d9kearbfv95d1f", tableName)
# limitDate=db.executeQuery('select max(post_date)from it_software_development ')[0][0]
# limitDate = 'Nov 2 2020 4:40PM'
# limitDate = datetime.datetime.strptime(limitDate, '%b %d %Y %I:%M%p')
# db.clean()
while (startCount < jobCount):

    # link = wuzzufSearchLink(country="", start=str(startCount), category=search, level="", jobType='',
    #                         post_date="within 24 hours")
    link = "https://wuzzuf.net/a/IT-Software-Development-Jobs-in-Egypt?filters%5Broles%5D%5B0%5D=IT%2FSoftware%20Development&filters%5Broles%5D%5B1%5D=Engineering%20-%20Telecom%2FTechnology&filters%5Bpost_date%5D%5B0%5D=Past%2024%20Hours&start=" + \
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
