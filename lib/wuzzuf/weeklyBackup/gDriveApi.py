from pydrive.auth import GoogleAuth
from pydrive.drive import GoogleDrive


class googleDrive:
    def __init__(self):
        gauth = GoogleAuth()
        self.drive = GoogleDrive(gauth)

    def uploadFile(self, file, p_id):
        gFile = self.drive.CreateFile({'parents': [{'id': p_id}]})
        # Read file and set it as the content of this instance.
        gFile.SetContentFile(file)
        gFile.Upload()  # Upload the file.

    def uploadString(self,fileName ,string, p_id):
        gFile = self.drive.CreateFile({'parents': [{'id': p_id}],'title':fileName })
        # Read file and set it as the content of this instance.
        gFile.SetContentString(string)
        gFile.Upload()

    def createFolder(self, folderName, id):
        gFolder = self.drive.CreateFile({'title': folderName,
                                         "parents": [{"id": id}],
                                         "mimeType": "application/vnd.google-apps.folder"})
        gFolder.Upload()
        return gFolder['id']

    def searchFolder(self,title,p_id):
        flist= self.drive.ListFile({'q': "'"+p_id+"' in parents and trashed=false"}).GetList()
        for f in flist:
            if(f['title']==title):
                return f['id']
        return None



