import psycopg2
from psycopg2.extensions import AsIs
# https://zetcode.com/python/psycopg2/

class JobDB:

    def connect(self, db, searchString):
        self.connection = psycopg2.connect(user="fscjjarkblijha",
                                               password="e645f1bd44dae55d6dd3329ba92f33f56dbdd00da85706b7d2a39a2e3c6e42bb",
                                           host="ec2-34-233-226-84.compute-1.amazonaws.com",
                                           port="5432",
                                           database=db)
        self.cursor = self.connection.cursor()
        self.serachString = searchString.replace('-', '_').replace(' ', '_')
        self.createSearchTable()

    def createSearchTable(self):
        sql_create = '''
            CREATE SEQUENCE IF NOT EXISTS %(search_name)s_job_id_seq;
            CREATE SEQUENCE IF NOT EXISTS %(search_name)s_job_tags_id_seq;
            CREATE TABLE IF NOT EXISTS public.%(search_name)s
            (
                job_id integer NOT NULL DEFAULT nextval('%(search_name)s_job_id_seq'::regclass),
                title_id integer,
                company_id integer,
                job_level exp_level,
                exp_years character varying(255) COLLATE pg_catalog."default",
                job_type character varying(50) COLLATE pg_catalog."default",
                post_date timestamp without time zone,
                link text COLLATE pg_catalog."default",
                
                CONSTRAINT %(search_name)s_pkey PRIMARY KEY (job_id),
                CONSTRAINT fk_company FOREIGN KEY (company_id)
                    REFERENCES public.company (company_id) MATCH SIMPLE,
                CONSTRAINT fk_title FOREIGN KEY (title_id)
                    REFERENCES public.title (title_id) MATCH SIMPLE
            );
            CREATE TABLE IF NOT EXISTS public.%(search_name)s_job_tags
            (
                job_tags_id integer NOT NULL DEFAULT nextval('%(search_name)s_job_tags_id_seq'::regclass),
                job_id integer NOT NULL,
                tag_id integer,
                CONSTRAINT %(search_name)s_job_tags_pkey PRIMARY KEY (job_tags_id),
                CONSTRAINT fk_job FOREIGN KEY (job_id)
                    REFERENCES public.%(search_name)s (job_id) MATCH SIMPLE,
                CONSTRAINT fk_tag FOREIGN KEY (tag_id)
                    REFERENCES public.tags (tag_id) MATCH SIMPLE      
            );
            '''
        self.cursor.execute(sql_create, {"search_name": AsIs(self.serachString)})
        self.connection.commit()

    def add(self, jobObj):
        sql_title = '''
            INSERT INTO title( name ) values (%(title)s)
            EXCEPT
            SELECT name from title where name =%(title)s;
        
            INSERT INTO company( company_name,address ) values (%(company)s,%(address)s)
            EXCEPT
            SELECT company_name, address from company where (company_name =%(company)s and address=%(address)s) ;
        
            insert into %(search_name)s(title_id,company_id,job_level,exp_years,post_date,link,job_type) values (
            (SELECT title_id from title where name =%(title)s),
            (SELECT company_id from company where (company_name =%(company)s and address=%(address)s)),
            %(level)s,
            %(exp)s,
            %(date)s,
            %(link)s,
            %(job_type)s)
            returning job_id;
        '''
        self.cursor.execute(sql_title, {"title": jobObj.title, "company": jobObj.company, "address": jobObj.location,
                                        "level": jobObj.expLevel, "exp": jobObj.exp, "date": jobObj.postTime,
                                        'link': jobObj.jobLink, "job_type": jobObj.jobType,
                                        "search_name": AsIs(self.serachString)})
        job_id = self.cursor.fetchone()[0]
        sql_tags = '''
            INSERT INTO tags( tag ) values (%(tag)s)
            EXCEPT
            SELECT tag from tags where tag =%(tag)s;
            insert into %(search_name)s_job_tags(job_id,tag_id)values(
            %(job_id)s,
             (SELECT tag_id from tags where tag =%(tag)s)
            )
            '''
        for tag in jobObj.tags:
            self.cursor.execute(sql_tags, {"job_id": job_id, "tag": tag, "search_name": AsIs(self.serachString)})
        self.connection.commit()

    def clean(self):
        sql_clean = '''
        delete from %(search_name)s_job_tags;
        ALTER SEQUENCE %(search_name)s_job_tags_id_seq RESTART WITH 1;
        delete from %(search_name)s;
        ALTER SEQUENCE %(search_name)s_job_id_seq RESTART WITH 1;
        '''
        self.cursor.execute(sql_clean, {"search_name": AsIs(self.serachString)})
        self.connection.commit()

    def executeQuery(self, sqlQueru, param={}):
        self.cursor.execute(sqlQueru, param)
        return self.cursor.fetchall()

    def executeCmd(self, cmd, param={}):
        self.cursor.execute(cmd, param)
        self.connection.commit()

    def copyTo(self,out,table):
        self.cursor.copy_to(out, table, sep=",")

    def exportJson(self,out,table):
        self.cursor.copy_expert("copy (select row_to_json({0}.*,true) from {0} )to stdout".format(table), out)

    def close(self):
        self.connection.close()
