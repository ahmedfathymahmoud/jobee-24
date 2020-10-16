import psycopg2
class JobDB:

    def connect(self,db):
        self.connection = psycopg2.connect(user = "test",
                                          password = "test",
                                          host = "127.0.0.1",
                                          port = "5432",
                                          database = db)
        self.cursor = self.connection.cursor()
    def add(self,jobObj):
        sql_title='''
            INSERT INTO title( name ) values (%(title)s)
            EXCEPT
            SELECT name from title where name =%(title)s;
        
            INSERT INTO company( company_name,address ) values (%(company)s,%(address)s)
            EXCEPT
            SELECT company_name, address from company where (company_name =%(company)s and address=%(address)s) ;
        
            insert into search_it(title_id,company_id,job_level,exp_years,post_date,link) values (
            (SELECT title_id from title where name =%(title)s),
            (SELECT company_id from company where (company_name =%(company)s and address=%(address)s)),
            %(level)s,
            %(exp)s,
            %(date)s,
            %(link)s)
            returning job_id;
        '''
        self.cursor.execute(sql_title,{"title": jobObj.title,"company": jobObj.company,"address":jobObj.location,"level": jobObj.expLevel,"exp":jobObj.exp,"date":jobObj.postTime,'link':jobObj.jobLink})
        job_id = self.cursor.fetchone()[0]
        sql_tags='''
            INSERT INTO tags( tag ) values (%(tag)s)
            EXCEPT
            SELECT tag from tags where tag =%(tag)s;
            insert into job_tags(job_id,tag_id)values(
            %(job_id)s,
             (SELECT tag_id from tags where tag =%(tag)s)
            )
            '''
        for tag in jobObj.tags:
            self.cursor.execute(sql_tags, {"job_id":job_id,"tag":tag})
        sql_types='''
            insert into type_of_job(job_id,job_type_id)values(
            %(job_id)s,
             (SELECT job_type_id from job_types where type_name =%(type)s)
            )
            '''
        for t in jobObj.jobType:
            self.cursor.execute(sql_types, {"job_id":job_id,"type":t})

        self.connection.commit()
    def close(self):
        self.connection.close()