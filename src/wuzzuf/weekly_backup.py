import datetime
import os
from io import StringIO
from lib.wuzzuf.weeklyBackup.gDriveApi import googleDrive
from lib.wuzzuf.db_handler.dbHandlerRemote import JobDB

# init drive and names
Date = datetime.date.today()

# use monthnum as parent name
monthNum = Date.strftime("%m")
dayDate = Date.strftime("%d-%m-%Y")
# ini and auth gdrive
gdrive = googleDrive()
yearDriveParentFolderId = '1qTGwldpBp4O_CEmyrak30sRNQ5n0Ntjd'

# search if folder with the same title exists before creating new one
monthParentId = gdrive.searchFolder(monthNum, yearDriveParentFolderId)
if not monthParentId:
    monthParentId = gdrive.createFolder(monthNum, yearDriveParentFolderId)

weekParentId = gdrive.createFolder(dayDate, monthParentId)

# connect to database
db = JobDB()
tableName = 'accounting_finance'  # dummy table name, because of bad design i had to choose any table at first
db.connect("d9kearbfv95d1f", tableName)
# get all table file list
list = db.executeQuery("select table_name from  information_schema.tables where table_schema = 'public';")

# # backup json
for table in list:
    file = StringIO()
    table = table[0]
    db.exportJson(file, table)
    gdrive.uploadString(table+'.json',file.getvalue(), weekParentId)
    file.close()

# clean databse cause Heroku small limit :(
for table in list:
    db.executeCmd("TRUNCATE {} RESTART IDENTITY CASCADE;".format(table[0]))

db.close()