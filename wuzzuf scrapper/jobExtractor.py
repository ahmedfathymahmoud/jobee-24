from bs4 import BeautifulSoup
import re

class Job:
    def __init__(self):  # S is a soup object
        self.title = ""
        self.company = ""
        self.location = ""
        self.exp = ""
        self.tags = ""
        self.jobType = ""
        self.postTime = ""


    def getJobDynamic(self,s):
        def prep(s):
            return s.replace("\n", "").strip()
        self.title = prep(s.div.find('h2',{"class":"job-title"}).text)
        self.company = prep(s.div.find('span',{"class":"company-name"}).text)
        self.location = prep(s.div.find('span',{"class":"location-mobile"}).text)
        self.details=prep(s.div.find('div', {"class": "job-details"}).text)
        self.tags ,self.jobType ,self.expLevel,self.exp=self.getTagsTime(self.details)
        self.jobLink=s.div.find('a',{"class":"mobile-job-link"}).attrs['href']
        self.postTime = s.div.find("time").attrs['title']
    def getJobStatic(self,s):
        self.title = s.div.contents[5].h2.text
        self.company = s.div.contents[7].contents[1].text
        self.location = s.div.contents[7].contents[5].text
        self.exp = s.div.contents[9].contents[3].text
        self.tags = s.div.contents[9].contents[5].text
        self.jobType = s.div.contents[9].contents[1].text
        self.postTime = s.div.find("time").attrs['title']

    def getTagsTime(self,detailsElement):
        detailsElement = detailsElement.replace("\n", "").replace("  ", "").split('·')
        detailsElement=list(map(str.strip, detailsElement))
        p = detailsElement.pop().split('-')
        time=p.pop()
        detailsElement.extend(p)
        detailsElement=set(filter(None,detailsElement))
        jobTypeWordList={'Internship','Full Time','Part Time','Work From Home','Freelance / Project'}
        ExpWordList={'Entry Level','Manager','Experienced','Senior Management','Student'}
        jobType = jobTypeWordList & detailsElement
        if (jobType) == set():
            jobType={'Freelance / Project'}

        (ExpLevel,) =detailsElement & ExpWordList
        exp = list(filter(lambda x: 'Yrs of Exp' in x, detailsElement))
        if exp == []:
            exp = ""
        else:
            exp = exp[0]
        detailsElement=detailsElement-(jobType|{ExpLevel}|{exp})
        jobType=" ,".join(jobType)
        return detailsElement,jobType,ExpLevel,exp

    def display(self):
        print('-' * 20,'\n')
        print("title: ", self.title)
        print("company: ", self.company)
        print("location: ", self.location)
        print("exp: ", self.exp)
        print("expLevel: ", self.expLevel)
        print("tags: ", self.tags)
        print("job Type: ", self.jobType)
        print("post time: ", self.postTime)
        print("link: ",self.jobLink)
        print('\n','-' * 20)
        print("\n\n\n")
