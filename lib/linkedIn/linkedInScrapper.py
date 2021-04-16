import requests
import time
from bs4 import BeautifulSoup


class LinkedinJobSearch:
    def __init__(self, linksFile, searchString="", location="", n=5):
        self.searchString = searchString.replace(' ', '%20')   # add quotes for more accurate search
        self.location = location
        self.linksFile = linksFile  # file to store links
        self.n = n  # number of links to store

    # get links starting link number it can be only *25
    def getLinks(self, start=0):
        l = "https://eg.linkedin.com/jobs-guest/jobs/api/seeMoreJobPostings/search?" \
            "keywords=%22" + self.searchString + "%22" + \
            "&location=" + self.location + \
            "&pageNum=0" \
            "&position=1" \
            "&sortBy=DD" \
            "&start=" + str(start)
        r = requests.get(l)
        soup = BeautifulSoup(r.text, "html.parser")
        ss = soup.find_all("a", {"class": "result-card__full-card-link"})
        return ss

    # this method open stored links in text file
    # if the file empty takes the first n jobs
    def getStoredJobs(self):
        exJobs = []
        with open(self.linksFile, "a+") as f:
            f.seek(0)
            if f.read() == "":
                ss = self.getLinks()
                for i in range(0, self.n):
                    exJobs.append(ss[i].attrs['href'].split('?')[0])
            else:
                f.seek(0)
                for line in f:
                    exJobs.append(line.strip())
        return exJobs

    # compare new links against stored on
    def compareLinks(self, exJobs, trail=3, checkNum=2):
        newJobs = []
        start = 0
        check = 0
        while check < checkNum and trail > 0:
            ss = self.getLinks()
            if ss.__len__() == 0:
                start = start - 25
                trial = trail - 1
                time.sleep(10)
                continue

            print("start:", start, "count:", ss.__len__())
            i = 0
            while check < checkNum and i < ss.__len__():
                jobLink = ss[i].attrs['href'].split('?')[0]
                if jobLink in exJobs:
                    check += 1
                    i += 1
                    continue
                else:
                    newJobs.append(jobLink)
                    exJobs.insert(0, jobLink)
                    i += 1
            start = start + 25
            return newJobs

    # write new links to file and complete the n links with old links
    def saveRecentJobs(self, newJobs, exJobs):
        with open(self.linksFile, "w") as f:
            i = 0
            j = 0
            while i < self.n and i < len(newJobs):
                f.write(newJobs[i] + "\n")
                i += 1
            while j < self.n - i and j < len(exJobs):
                f.write(exJobs[j] + "\n")
                j += 1

    def Scrape(self):
        print("searching:", self.searchString, " ", self.location)
        exJobs = self.getStoredJobs()
        newJobs = self.compareLinks(exJobs)
        self.saveRecentJobs(newJobs, exJobs)
        return newJobs
