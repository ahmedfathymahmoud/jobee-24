import requests
from bs4 import BeautifulSoup

from jobExtractor import Job
link = "https://wuzzuf.net/search/jobs?q=it&a=hpb"
filteredLink = "https://wuzzuf.net/a/IT-Software-Development-Jobs-in-Egypt"
r = requests.get(filteredLink)
soup = BeautifulSoup(r.text, "html.parser")

ss = soup.find_all("div", {"class": "result-wrp row"})
jobCount = soup.find("span", {"class": "search-jobs-count"}).text
print("Job Count:", jobCount, "\n")

job=Job()

for s in ss:
    job.getJobDynamic(s)
    print("title: ",job.title)
    print("company: ", job.company)
    print("location: ", job.location)
    print("exp: ", job.exp)
    print("expLevel: ", job.expLevel)
    print("tags: ", job.tags)
    print("job Type: ", job.jobType)
    print("post time: ", job.postTime)

    print("\n\n\n")