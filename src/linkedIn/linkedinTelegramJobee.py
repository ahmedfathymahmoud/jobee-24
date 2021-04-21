from lib.linkedIn.linkedInScrapper import LinkedinJobSearch
from lib.telegramBot.telegramJobee import tele_jobee
import json


with open('telegramBots.json') as jsonFile:
    botData = json.load(jsonFile)


for channel in botData:
    chid = channel['chid']
    teleBot = tele_jobee(chid)
    postedJobs = set()
    for param in channel['param']:
        searchString = param['search']
        location = param['location']
        linksFile = "links/" + searchString + location + ".txt"
        linkedIn = LinkedinJobSearch(linksFile, searchString, location)
        jobs = linkedIn.Scrape()
        for job in jobs:
            if not (job in postedJobs):
                print("posting new job")
                print(job)
                teleBot.post_message(job)
                postedJobs.add(job)



