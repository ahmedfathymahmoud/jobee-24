from apscheduler.schedulers.blocking import BlockingScheduler
import os

sched = BlockingScheduler()


@sched.scheduled_job('interval', minutes=30)
def timed_job():
    os.system("python3 './src/wuzzuf/wuzzufTelegramJobee'")
    os.system("python3 './src/linkedIn/linkedinTelegramJobee'")


@sched.scheduled_job('cron', day_of_week='fri', hour=17)
def scheduled_job():
    os.system("python3 './src/wuzzuf/weekly_backup.py'")


sched.start()
