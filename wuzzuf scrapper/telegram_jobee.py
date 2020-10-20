import requests
from requests.structures import CaseInsensitiveDict


class tele_jobee:
    def __init__(self):
        self.token="1245931845:AAEIXKeAYFjQ9qV9DPMReQ4ENC-2j5j1rc0"
        self.chat_id="@jobee24"
        self.baseUrl='https://api.telegram.org/bot'+self.token
        self.headers=CaseInsensitiveDict()
        self.headers["Content-Type"] = "application/json"

    def post_message(self,text ):
        url=self.baseUrl+'/sendMessage'
        data = """
        { "chat_id":{},
           "text":{}}
        """.format(self.chat_id,text)
        resp = requests.post(url, headers=self.headers, data=data)
        print(resp.status_code)
    def post_job(self,job):
        url=self.baseUrl+'/sendMessage'
        text=(
        "Title: " +job.title+'\n'
        "Company: " +job.company+'\n'
        "Location: " +job.location+'\n'
        "Exp: " +job.exp+' - '+job.expLevel+'\n'
        "Tags: "+'\n' + str(job.tags)+'\n'
        "Job Type: "+job.jobType+'\n'
        "Post Time: "+job.postTime+'\n'
        "Link: "+'\n'+job.jobLink+'\n')
        data ="""
       {{ "chat_id":"{}",
          "text":"{}"}}
       """.format(self.chat_id,text)
        resp = requests.post(url, headers=self.headers, data=data.encode('utf-8'))
        print(resp.status_code)


