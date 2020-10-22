from apscheduler.schedulers.blocking import BlockingScheduler
import os

sched = BlockingScheduler()

@sched.scheduled_job('interval', minutes=15)
def timed_job():
    os.system("python3 './wuzzuf scrapper/LastestJobsUpdatesHeroku.py'")
    os.system("python3 './wuzzuf scrapper/Accounting_Finance.py'")

# @sched.scheduled_job('cron', day_of_week='mon-fri', hour=17)
# def scheduled_job():
#     print('This job is run every weekday at 5pm.')

sched.start()
