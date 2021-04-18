import requests
import os
from requests.structures import CaseInsensitiveDict


class tele_jobee:
    def __init__(self, chat_id):
        token = os.environ.get("Telegram_Token")
        if token == None:
            token = "1245931845:AAF1qNbxViUf-0eYEQkh8Kd2xh0xjEF4qJM"
        self.token = token
        self.chat_id = chat_id
        self.baseUrl = 'https://api.telegram.org/bot' + self.token
        self.headers = CaseInsensitiveDict()
        self.headers["Content-Type"] = "application/json"

    def post_message(self, text):
        url = self.baseUrl + '/sendMessage'
        data = '''
        {{ "chat_id":"{}",
           "text":"{}",
           "parse_mode":"HTML"}}
        '''.format(self.chat_id, text)
        requests.post(url, headers=self.headers, data=data.encode('utf-8'))

    def post_job(self, job):
        url = self.baseUrl + '/sendMessage'
        tags = ''
        for t in job.tags:
            tags = tags + '#' + t.replace('/', ' ').strip().replace(' ', '_') + '   '
        text = (
                "<b>[Title]</b>: " + job.title + '\n'
                                                 "<b>[Company]</b>: " + job.company + '\n'
                                                                                      "<b>[Location]</b>: " + job.location + '\n'
                                                                                                                             "<b>[Exp]</b>: " + job.exp + ' (' + job.expLevel + ')' + '\n'
                                                                                                                                                                                      "<b>[Type]</b>: " + job.jobType + '\n'
                                                                                                                                                                                                                        "<b>[Posted]</b>: " + job.postTime + '\n'
                                                                                                                                                                                                                                                             "<b>[Tags]</b>: " + '\n' + tags + '\n'
                                                                                                                                                                                                                                                                                               "<b>[Link]</b>: " + '\n' + job.jobLink + '\n')
        data = '''
       {{ "chat_id":"{}",
          "text":"{}",
          "parse_mode":"HTML"}}
       '''.format(self.chat_id, text)
        requests.post(url, headers=self.headers, data=data.encode('utf-8'))
