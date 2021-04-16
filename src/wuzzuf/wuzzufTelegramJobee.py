import requests
from bs4 import BeautifulSoup
from lib.wuzzuf.jobExtractor import Job
from lib.wuzzuf.db_handler.dbHandlerRemote import JobDB
from lib.telegramBot.telegramJobee import tele_jobee
import json

with open("./wuzzufTeleBots.json") as jsonFile:
    botData = json.load(jsonFile)

for channel in botData:
    chid = channel['chid']
    jobee = tele_jobee(chid)
    for param in channel['param']:

        tableName = param['table']
        searchLink = param['searchLink']
        db = JobDB()
        db.connect("d9kearbfv95d1f", tableName)
        job = Job()
        jobCount = 20
        startCount = 0
        while startCount < jobCount:

            link = searchLink+str(startCount)
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
