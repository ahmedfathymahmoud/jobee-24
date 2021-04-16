--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-1.pgdg16.04+1)
-- Dumped by pg_dump version 12.4 (Ubuntu 12.4-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: exp_level; Type: TYPE; Schema: public; Owner: fscjjarkblijha
--

CREATE TYPE public.exp_level AS ENUM (
    'Entry Level',
    'Manager',
    'Experienced',
    'Senior Management',
    'Student'
);


ALTER TYPE public.exp_level OWNER TO fscjjarkblijha;

--
-- Name: job_type; Type: TYPE; Schema: public; Owner: fscjjarkblijha
--

CREATE TYPE public.job_type AS ENUM (
    'Internship',
    'Full Time',
    'Part Time',
    'Work From Home',
    'Freelance / Project'
);


ALTER TYPE public.job_type OWNER TO fscjjarkblijha;

--
-- Name: accounting_finance_job_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.accounting_finance_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounting_finance_job_id_seq OWNER TO fscjjarkblijha;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accounting_finance; Type: TABLE; Schema: public; Owner: fscjjarkblijha
--

CREATE TABLE public.accounting_finance (
    job_id integer DEFAULT nextval('public.accounting_finance_job_id_seq'::regclass) NOT NULL,
    title_id integer,
    company_id integer,
    job_level public.exp_level,
    exp_years character varying(255),
    job_type character varying(50),
    post_date timestamp without time zone,
    link text
);


ALTER TABLE public.accounting_finance OWNER TO fscjjarkblijha;

--
-- Name: accounting_finance_job_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.accounting_finance_job_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounting_finance_job_tags_id_seq OWNER TO fscjjarkblijha;

--
-- Name: accounting_finance_job_tags; Type: TABLE; Schema: public; Owner: fscjjarkblijha
--

CREATE TABLE public.accounting_finance_job_tags (
    job_tags_id integer DEFAULT nextval('public.accounting_finance_job_tags_id_seq'::regclass) NOT NULL,
    job_id integer NOT NULL,
    tag_id integer
);


ALTER TABLE public.accounting_finance_job_tags OWNER TO fscjjarkblijha;

--
-- Name: alexandria_jobs_job_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.alexandria_jobs_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alexandria_jobs_job_id_seq OWNER TO fscjjarkblijha;

--
-- Name: alexandria_jobs; Type: TABLE; Schema: public; Owner: fscjjarkblijha
--

CREATE TABLE public.alexandria_jobs (
    job_id integer DEFAULT nextval('public.alexandria_jobs_job_id_seq'::regclass) NOT NULL,
    title_id integer,
    company_id integer,
    job_level public.exp_level,
    exp_years character varying(255),
    job_type character varying(50),
    post_date timestamp without time zone,
    link text
);


ALTER TABLE public.alexandria_jobs OWNER TO fscjjarkblijha;

--
-- Name: alexandria_jobs_job_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.alexandria_jobs_job_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alexandria_jobs_job_tags_id_seq OWNER TO fscjjarkblijha;

--
-- Name: alexandria_jobs_job_tags; Type: TABLE; Schema: public; Owner: fscjjarkblijha
--

CREATE TABLE public.alexandria_jobs_job_tags (
    job_tags_id integer DEFAULT nextval('public.alexandria_jobs_job_tags_id_seq'::regclass) NOT NULL,
    job_id integer NOT NULL,
    tag_id integer
);


ALTER TABLE public.alexandria_jobs_job_tags OWNER TO fscjjarkblijha;

--
-- Name: company; Type: TABLE; Schema: public; Owner: fscjjarkblijha
--

CREATE TABLE public.company (
    company_id integer NOT NULL,
    company_name text,
    address text
);


ALTER TABLE public.company OWNER TO fscjjarkblijha;

--
-- Name: company_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_id_seq OWNER TO fscjjarkblijha;

--
-- Name: company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fscjjarkblijha
--

ALTER SEQUENCE public.company_id_seq OWNED BY public.company.company_id;


--
-- Name: it_job_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.it_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.it_job_id_seq OWNER TO fscjjarkblijha;

--
-- Name: it_job_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.it_job_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.it_job_tags_id_seq OWNER TO fscjjarkblijha;

--
-- Name: it_software_development_job_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.it_software_development_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.it_software_development_job_id_seq OWNER TO fscjjarkblijha;

--
-- Name: it_software_development; Type: TABLE; Schema: public; Owner: fscjjarkblijha
--

CREATE TABLE public.it_software_development (
    job_id integer DEFAULT nextval('public.it_software_development_job_id_seq'::regclass) NOT NULL,
    title_id integer,
    company_id integer,
    job_level public.exp_level,
    exp_years character varying(255),
    job_type character varying(50),
    post_date timestamp without time zone,
    link text
);


ALTER TABLE public.it_software_development OWNER TO fscjjarkblijha;

--
-- Name: it_software_development_job_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.it_software_development_job_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.it_software_development_job_tags_id_seq OWNER TO fscjjarkblijha;

--
-- Name: it_software_development_job_tags; Type: TABLE; Schema: public; Owner: fscjjarkblijha
--

CREATE TABLE public.it_software_development_job_tags (
    job_tags_id integer DEFAULT nextval('public.it_software_development_job_tags_id_seq'::regclass) NOT NULL,
    job_id integer NOT NULL,
    tag_id integer
);


ALTER TABLE public.it_software_development_job_tags OWNER TO fscjjarkblijha;

--
-- Name: it_software_development_jobs_in_egypt_job_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.it_software_development_jobs_in_egypt_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.it_software_development_jobs_in_egypt_job_id_seq OWNER TO fscjjarkblijha;

--
-- Name: it_software_development_jobs_in_egypt; Type: TABLE; Schema: public; Owner: fscjjarkblijha
--

CREATE TABLE public.it_software_development_jobs_in_egypt (
    job_id integer DEFAULT nextval('public.it_software_development_jobs_in_egypt_job_id_seq'::regclass) NOT NULL,
    title_id integer,
    company_id integer,
    job_level public.exp_level,
    exp_years character varying(255),
    job_type character varying(50),
    post_date timestamp without time zone,
    link text
);


ALTER TABLE public.it_software_development_jobs_in_egypt OWNER TO fscjjarkblijha;

--
-- Name: it_software_development_jobs_in_egypt_job_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.it_software_development_jobs_in_egypt_job_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.it_software_development_jobs_in_egypt_job_tags_id_seq OWNER TO fscjjarkblijha;

--
-- Name: job_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_id_seq OWNER TO fscjjarkblijha;

--
-- Name: job_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.job_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_tags_id_seq OWNER TO fscjjarkblijha;

--
-- Name: klf; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.klf
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.klf OWNER TO fscjjarkblijha;

--
-- Name: python_job_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.python_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.python_job_id_seq OWNER TO fscjjarkblijha;

--
-- Name: python_job_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.python_job_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.python_job_tags_id_seq OWNER TO fscjjarkblijha;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: fscjjarkblijha
--

CREATE TABLE public.tags (
    tag_id integer NOT NULL,
    tag text NOT NULL
);


ALTER TABLE public.tags OWNER TO fscjjarkblijha;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO fscjjarkblijha;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fscjjarkblijha
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.tag_id;


--
-- Name: title_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.title_id_seq OWNER TO fscjjarkblijha;

--
-- Name: title; Type: TABLE; Schema: public; Owner: fscjjarkblijha
--

CREATE TABLE public.title (
    title_id integer DEFAULT nextval('public.title_id_seq'::regclass) NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.title OWNER TO fscjjarkblijha;

--
-- Name: type_of_job_id_seq; Type: SEQUENCE; Schema: public; Owner: fscjjarkblijha
--

CREATE SEQUENCE public.type_of_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_of_job_id_seq OWNER TO fscjjarkblijha;

--
-- Name: company company_id; Type: DEFAULT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.company ALTER COLUMN company_id SET DEFAULT nextval('public.company_id_seq'::regclass);


--
-- Name: tags tag_id; Type: DEFAULT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.tags ALTER COLUMN tag_id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Data for Name: accounting_finance; Type: TABLE DATA; Schema: public; Owner: fscjjarkblijha
--

COPY public.accounting_finance (job_id, title_id, company_id, job_level, exp_years, job_type, post_date, link) FROM stdin;
1	1773	1383	Experienced	5-7 Yrs of Exp	Full Time	2020-11-02 21:45:00	https://wuzzuf.net/jobs/p/d3beef37-83b6-404e-aab8-42139789d8f7-Finance-Manager-Builderia-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=1
2	2015	1123	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 17:34:00	https://wuzzuf.net/jobs/p/3b5f768d-ecfa-4f84-b8ff-121cf955994d-Order-Handling-Specialist-Johnson-Controls-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=16
3	2013	60	Experienced	7+ Yrs of Exp	Full Time	2020-11-02 18:30:00	https://wuzzuf.net/jobs/p/13f5cdab-6fe6-4ecc-b2f7-ac4ce702bdf0-Executive-Secretary-to-Chairman---Alexandria-Paradise-Inn-Hotels-Resorts-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=18
4	1110	297	Experienced	5+ Yrs of Exp	Full Time	2020-11-02 18:15:00	https://wuzzuf.net/jobs/p/d6ee0e85-e32e-4fb0-8a46-50b1810f5c3f-Senior-Account-Manager-MWG-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=23
5	1773	1383	Experienced	5-7 Yrs of Exp	Full Time	2020-11-02 21:45:00	https://wuzzuf.net/jobs/p/d3beef37-83b6-404e-aab8-42139789d8f7-Finance-Manager-Builderia-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=2
6	2015	1123	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 17:34:00	https://wuzzuf.net/jobs/p/3b5f768d-ecfa-4f84-b8ff-121cf955994d-Order-Handling-Specialist-Johnson-Controls-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=10
7	2016	1384	Senior Management	3-6 Yrs of Exp	Full Time	2020-11-02 19:59:00	https://wuzzuf.net/jobs/p/788fc0f0-cefb-4248-9f9a-92b8e2f147c6-Dental-Clinic-Manager-Reflect-Clinics-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=18
8	1954	141	Experienced	3+ Yrs of Exp	Full Time	2020-11-02 16:43:00	https://wuzzuf.net/jobs/p/4c8454ec-75e8-4c7a-a4f6-fc13c75e4338-Storekeeper-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=24
9	2017	1385	Experienced	3-7 Yrs of Exp	Full Time	2020-11-02 22:54:00	https://wuzzuf.net/jobs/p/63ed69f4-0089-4f8a-84ad-29033c87b2f9-مشرف-توزيع-ذو-خبرة-في-المواد-الغذائية-Werefresh-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=25
10	2061	1409	Manager	5+ Yrs of Exp	Full Time	2020-11-02 15:10:00	https://wuzzuf.net/jobs/p/95cdc61f-bb78-4480-9ae6-a0ddc462a1eb-Accounting-Manager---Alexandria-Club-Shoes-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=2
11	1129	1410	Manager	5+ Yrs of Exp	Full Time	2020-11-02 14:49:00	https://wuzzuf.net/jobs/p/e1feee5f-b715-405d-ac7d-501c111c80c6-Accounting-Manager-wnpro-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
12	2062	137	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-02 09:37:00	https://wuzzuf.net/jobs/p/115dc39d-029c-48ec-b117-f16c8426a862-Accounts-Payable-Accountant-Flairstech-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=4
13	2063	919	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 11:50:00	https://wuzzuf.net/jobs/p/c2fc297c-3b3a-4a29-91c1-1508a3df93aa-Cost-Accountant-Chema-Foam-Sharqia-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=5
14	1033	1411	Experienced	2-5 Yrs of Exp	Full Time	2020-11-02 15:33:00	https://wuzzuf.net/jobs/p/93cc865d-6640-4c88-996d-2d32642ba947-Accountant-Unimix-Egypt-for-Readymix-concrete-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=6
15	1033	919	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 11:09:00	https://wuzzuf.net/jobs/p/c3ee6903-005d-45b8-a0d6-407850808dbe-Accountant-Chema-Foam-Sharqia-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=7
16	1959	125	Experienced	2-4 Yrs of Exp	Full Time	2020-11-02 12:15:00	https://wuzzuf.net/jobs/p/32ba62a4-712a-4eea-b308-fa2a12d5b975-Warehouse-Accountant-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=8
17	85	333	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 11:38:00	https://wuzzuf.net/jobs/p/a52646d3-730f-4d85-8bdd-ff9b59e27c24-Internal-Auditor-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=9
18	1520	1412	Manager	3-5 Yrs of Exp	Full Time	2020-11-02 11:21:00	https://wuzzuf.net/jobs/p/16c77114-b805-4373-904f-2480ceb8972a-Risk-Manager-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=10
19	2064	154	Manager	6-7 Yrs of Exp	Full Time	2020-11-02 10:13:00	https://wuzzuf.net/jobs/p/8c272b94-97ff-4e9e-ac52-b30d6916e74e-Internal-Audit-Section-Head-PICO-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=11
20	2052	322	Experienced	2-6 Yrs of Exp	Full Time	2020-11-02 12:43:00	https://wuzzuf.net/jobs/p/7ac34bea-053e-409e-bc21-98c86886afe8-T24-Senior-Technical-Consultant-Ultimate-Solutions-Egypt-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=12
21	2065	1413	Experienced	4-5 Yrs of Exp	Full Time	2020-11-02 12:55:00	https://wuzzuf.net/jobs/p/4835f330-059b-4ed4-8a1a-98dfe3271c9a-Facility-Engineer-Matruh-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=13
22	2066	623	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 10:05:00	https://wuzzuf.net/jobs/p/7c8328fd-79cc-43ad-b051-39e6e6e7963a-Senior-Credit-Data-Analyst-Z2-Data-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=14
23	2067	1412	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 11:07:00	https://wuzzuf.net/jobs/p/8898d2b4-7f33-4390-958a-71c1033aff21-Feasibility-Analyst-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=15
24	1793	1414	Manager	5+ Yrs of Exp	Full Time	2020-11-02 15:03:00	https://wuzzuf.net/jobs/p/39352944-3e75-4e89-af48-0f90e5892363-Logistics-Supervisor-wnpro-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=17
25	2043	1073	Manager	10-15 Yrs of Exp	Full Time ,Part Time	2020-11-02 13:55:00	https://wuzzuf.net/jobs/p/a3a5feb2-f8d5-4991-b7a2-52f8e158ff04-Odoo-ERP-Senior-Application-Manager-Bingo-Global-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=19
26	913	984	Experienced	2-3 Yrs of Exp	Full Time	2020-11-02 12:00:00	https://wuzzuf.net/jobs/p/e605d70b-4e45-4a5b-a91a-76049ca0658b-Sales-Engineer-GlassRock-Insulation-Co-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=20
27	2068	1415	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 10:47:00	https://wuzzuf.net/jobs/p/5770c8b8-101a-48a4-827d-be02518b5493-Logistics---Customer-Service-Specialist-Domestic-Sphinx-Glass-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=21
28	2	1386	Manager	10-15 Yrs of Exp	Full Time	2020-11-02 08:15:00	https://wuzzuf.net/jobs/p/e9457272-083a-441e-99ed-ea9d131f8c23-IT-Manager-Al-Andalous-Medical-Company-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=22
29	2069	623	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 11:31:00	https://wuzzuf.net/jobs/p/e6ba098a-18de-493f-bd9d-f567a87fb551-Senior-Financial-Data-Quality-Specialist-Z2-Data-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=24
30	2040	94	Experienced	5-8 Yrs of Exp	Full Time	2020-11-02 09:08:00	https://wuzzuf.net/jobs/p/54357298-7001-4638-a51d-c3030c25b3db-Senior-Integration-Engineer-Path-Solutions-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=3
31	2070	204	Experienced	2+ Yrs of Exp	Full Time	2020-11-02 09:58:00	https://wuzzuf.net/jobs/p/ebbf3899-ae59-4181-90c1-327cf2374a41-Fleet-Sourcing-Specialist-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=4
32	2024	232	Experienced	4-6 Yrs of Exp	Full Time	2020-11-02 15:05:00	https://wuzzuf.net/jobs/p/9c60bcfc-f4e7-47c7-a148-dc3d13ac679c-Pre-Sales-Executive---IT-Field-Integrated-Technology-Group-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=5
33	2071	822	Experienced	1-5 Yrs of Exp	Full Time	2020-11-02 15:47:00	https://wuzzuf.net/jobs/p/91e71c35-4f73-49fd-8dce-a97548d298b5-Supply-Chain-Specialist-kazary-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=1
34	2072	204	Manager	5-7 Yrs of Exp	Full Time	2020-11-02 13:22:00	https://wuzzuf.net/jobs/p/4bd491d0-2d3e-4908-84bc-2fd4dbd8a9d2-Supply-Chain-Operation-Manager-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=2
35	2073	770	Manager	15-20 Yrs of Exp	Full Time	2020-11-02 16:23:00	https://wuzzuf.net/jobs/p/3ac82802-6759-4cdc-bdba-1bb8eb4c2593-FMC-Manager---Retail-Business-up-to-40-Branches-Across-Egypt-Raneen-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=3
36	2074	1416	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-02 15:00:00	https://wuzzuf.net/jobs/p/11392e04-2919-4452-9076-7eda9037f4db-Junior-Logistics-Specialist-Acrylicon-Egypt-for-flooring-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=4
37	1382	1417	Entry Level	0-2 Yrs of Exp	Full Time	2020-11-02 12:05:00	https://wuzzuf.net/jobs/p/a93c5784-96dc-46bc-a667-78d79e206ccc-Logistics-Specialist-PANTS-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=6
38	1975	815	Manager	10-12 Yrs of Exp	Full Time	2020-11-02 11:28:00	https://wuzzuf.net/jobs/p/d0d65557-f805-4ff3-8088-9f78966d8a44-Procurement-Manager-Construction-Design-Co-SAE-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=8
39	2075	1418	Experienced	7+ Yrs of Exp	Full Time	2020-11-02 10:51:00	https://wuzzuf.net/jobs/p/7dac66e6-ef73-4662-aa70-cf8e0424a551-Purchasing-Officer-Detco--Add-me-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=9
40	2076	217	Manager	3+ Yrs of Exp	Full Time	2020-11-02 14:27:00	https://wuzzuf.net/jobs/p/f76ed31c-d9bc-4247-96f5-f99fbaebd574-Warehouse-Keeping-Supervisor-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=11
41	1356	1419	Manager	3+ Yrs of Exp	Full Time	2020-11-02 12:27:00	https://wuzzuf.net/jobs/p/2d852d18-3f1d-4637-b547-4ba856588fa4-Warehouse-Manager-Unival-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=12
42	1975	1420	Manager	7-15 Yrs of Exp	Full Time	2020-11-02 12:02:00	https://wuzzuf.net/jobs/p/086a9961-4805-4996-bdb6-1066ec784132-Procurement-Manager-KidZania-Cairo-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=13
43	2053	1170	Manager	8-10 Yrs of Exp	Full Time	2020-11-02 09:38:00	https://wuzzuf.net/jobs/p/7ef77d24-f1ae-4c8e-94ff-8b55bf833736-Purchasing-Manager-Groupe--Atlantic-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=15
44	2054	1170	Experienced	5+ Yrs of Exp	Full Time	2020-11-02 08:37:00	https://wuzzuf.net/jobs/p/b396e477-c7c7-44ef-9536-8646173671a9-Senior-Purchasing-Specialist-Groupe--Atlantic-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=16
45	2077	141	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 16:37:00	https://wuzzuf.net/jobs/p/93fcb575-49b2-4c31-9f0e-e2f65268fa7f-Stores-Supervisor-Inventory-Controller-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=17
46	2078	5	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-02 12:53:00	https://wuzzuf.net/jobs/p/4ccafda2-1e6a-49ca-b219-9e73b8d32f49-Local-Purchasing-Specialist---Alexandria-Pharaonia-Pharma-Alexandria-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=19
47	2079	1418	Experienced	5-7 Yrs of Exp	Full Time	2020-11-02 10:54:00	https://wuzzuf.net/jobs/p/0061cd2f-739e-4c2b-a6da-6525ffb54fe9-Production-Planner-Detco--Add-me-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=21
48	1267	1421	Manager	3+ Yrs of Exp	Full Time	2020-11-02 10:36:00	https://wuzzuf.net/jobs/p/bf6d6050-67ed-41f7-883d-d3a752ddd6d0-Sales-Manager-Digitec-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=22
49	2080	1413	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 12:52:00	https://wuzzuf.net/jobs/p/44577841-1aec-4053-8199-21e28bf49f92-Fleet---Administration-Specialist-Matruh-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=23
50	2082	538	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 00:49:00	https://wuzzuf.net/jobs/p/738cd8c9-50ad-40ce-92c7-3bde7747f9b8-Hub-Lead---Maadi--Nasr-city--Hadayek-Ahram-Ain-shams-Dreevo-app-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=8
51	923	513	Experienced	2-6 Yrs of Exp	Full Time	2020-11-03 00:10:00	https://wuzzuf.net/jobs/p/8edeec3a-c0e7-430a-9ca7-b2e1260afa35-Senior-Accountant-Odiggo-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=9
52	2083	778	Experienced	4-7 Yrs of Exp	Full Time	2020-11-03 05:58:00	https://wuzzuf.net/jobs/p/8296a682-d354-40e3-8a0d-aa2f211ac67f-Expenses-Accountant---محاسب-مصروفات-Mishkat-Nour-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=8
53	2086	1423	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-03 08:17:00	https://wuzzuf.net/jobs/p/29033f66-d6ed-4b3f-bb7d-5dda822410e6-Accounting-Specialist-LSMAN-Co-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
54	2085	1422	Entry Level	1-4 Yrs of Exp	Full Time	2020-11-03 08:22:00	https://wuzzuf.net/jobs/p/05e53b65-248d-462b-a225-5f5e865f0dea-ADF-Developer---Alexandria-Ascon-Advanced-Solutions-Consultant-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=21
55	2088	1426	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 08:51:00	https://wuzzuf.net/jobs/p/f7ef1440-035d-466d-b0dd-f47d3805dd9b-Unit-Support-Officer-John-Snow-InC-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=26
56	2089	1141	Manager	10-15 Yrs of Exp	Full Time	2020-11-03 09:53:00	https://wuzzuf.net/jobs/p/18174186-83ec-4015-aa79-6c168b31fc62-Manufacturing-Production-Manager---Pipes-Sharqia-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=23
57	1962	281	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 11:20:00	https://wuzzuf.net/jobs/p/4bde2843-2c7c-4527-bc50-e450b8b17463-Payroll-And-Personnel-Specialist-Selah-ElTelmeez-For-publishing-printing-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=18
58	812	1434	Entry Level	2-3 Yrs of Exp	Full Time	2020-11-03 11:50:00	https://wuzzuf.net/jobs/p/41c7f4d6-b77f-4b56-b5c1-187b7c28dae4-Admin-Assistant-Just-HR-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=20
59	1295	1435	Experienced	2-5 Yrs of Exp	Full Time	2020-11-03 11:49:00	https://wuzzuf.net/jobs/p/62c371df-51ff-409d-b428-240b5c05322e-Supply-Chain-Manager-alrowad-tannery-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=1
60	2098	1436	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 11:04:00	https://wuzzuf.net/jobs/p/81face1e-285d-42c5-ac92-5421ceb8580d-Customer-Order-Specialist-Signify-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=12
61	1147	380	Senior Management	15+ Yrs of Exp	Full Time	2020-11-03 12:50:00	https://wuzzuf.net/jobs/p/b00e5b73-48df-47c1-8e2c-a6dc27adec5c-Chief-Financial-Officer-Alkan-CIT-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=7
62	2100	1441	Experienced	5-7 Yrs of Exp	Full Time	2020-11-03 12:18:00	https://wuzzuf.net/jobs/p/9096fbcf-77c1-4562-b905-a90ed94aa6bc-Senior-Treasury---Budgeting-Accountant---Suez-City-Suez-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=9
63	2101	135	Senior Management	8-10 Yrs of Exp	Full Time	2020-11-03 12:43:00	https://wuzzuf.net/jobs/p/fac7f6c9-710a-457e-802d-1f1fc297346d-Construction-Chief-Accountant-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=10
64	2102	2	Manager	5-7 Yrs of Exp	Full Time	2020-11-03 12:12:00	https://wuzzuf.net/jobs/p/358a7463-d346-43ca-829a-94b7e0950be2-Supply-Chain-Manager-Medical-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=16
65	1295	1435	Experienced	2-5 Yrs of Exp	Full Time	2020-11-02 13:46:00	https://wuzzuf.net/jobs/p/62c371df-51ff-409d-b428-240b5c05322e-Supply-Chain-Manager-alrowad-tannery-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=1
66	1382	1442	Experienced	2-4 Yrs of Exp	Full Time	2020-11-03 12:34:00	https://wuzzuf.net/jobs/p/f8ed0a1d-195b-4ec2-9c44-5be5f553802a-Logistics-Specialist-Massoud-Steel-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=8
67	2103	333	Experienced	1+ Yrs of Exp	Full Time	2020-11-03 12:53:00	https://wuzzuf.net/jobs/p/c5487f53-24e6-422c-846e-2c723c45fd62-Supermarket-Purchase-Manager-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=12
68	1043	801	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-03 13:11:00	https://wuzzuf.net/jobs/p/1642cbc3-2765-4889-a7a2-314c20757a68-Treasury-Accountant-Talaat-Moustafa-Group-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=5
69	1642	1443	Manager	10+ Yrs of Exp	Full Time	2020-11-03 13:52:00	https://wuzzuf.net/jobs/p/b4177c3a-5e6f-4ab9-8d4f-cb9ff6d8666f-Financial-Manager-P-ZONE-Trading-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=8
70	2105	81	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-03 13:23:00	https://wuzzuf.net/jobs/p/6d2607c5-4389-4d26-8c4e-461e76a758a8-Corporate-Life-Operations-Specialist-Allianz-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=14
71	2106	1444	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 13:56:00	https://wuzzuf.net/jobs/p/268ee6f6-7707-43b5-b814-e46c776de209-Logistics-Sales-Specialist-Nacita-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=7
72	2108	1401	Experienced	2-6 Yrs of Exp	Full Time	2020-11-03 14:54:00	https://wuzzuf.net/jobs/p/46bb813b-9477-4013-b1d3-67470438ae38-Application-Consultant-Microsoft-Dynamics-AX-BI-Technologies-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=15
73	1797	1447	Experienced	2+ Yrs of Exp	Full Time	2020-11-02 17:23:00	https://wuzzuf.net/jobs/p/f9148beb-a72f-4d0c-abdd-c236c18ef0d2-Procurement-Specialist-ZDS-Architects-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=13
74	2109	1448	Manager	5-10 Yrs of Exp	Full Time	2020-11-03 15:23:00	https://wuzzuf.net/jobs/p/177aa7da-b761-442f-b13b-effc2764177e-HR-Supervisor-Sinoma-cdi-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=18
75	1779	1451	Experienced	2+ Yrs of Exp	Full Time	2020-11-03 15:46:00	https://wuzzuf.net/jobs/p/467e2fba-0855-4e9b-99d8-f955cacda89d-Junior-Accountant-Statements-for-Consulting-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=11
76	2111	125	Experienced	6-8 Yrs of Exp	Full Time	2020-11-03 15:49:00	https://wuzzuf.net/jobs/p/6ee7d423-3585-4e5f-98e1-753257fd8d52-Senior-Procurement-Engineer-Construction-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=14
77	1042	239	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 15:53:00	https://wuzzuf.net/jobs/p/2a76e733-3016-4d2f-ba49-468c6841ac88-ERP-Functional-Consultant-E3mel-Business-for-Financial-Managerial-Consultancy-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=24
78	2115	1291	Manager	5+ Yrs of Exp	Full Time	2020-11-03 16:17:00	https://wuzzuf.net/jobs/p/c5b582a3-06b2-4b1f-baf1-8fe87264ce17-Senior-Site-Technical-Office-Asass-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=23
79	2116	1456	Experienced	2-4 Yrs of Exp	Full Time	2020-11-03 16:11:00	https://wuzzuf.net/jobs/p/fa3ec296-9c85-46d4-977a-0c466dc7efdd-Supply---Demand-Planning-Senior-Executive-ariika-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=3
80	1451	1456	Entry Level	1-4 Yrs of Exp	Full Time	2020-11-03 16:05:00	https://wuzzuf.net/jobs/p/517bdfad-ccd3-4953-8ef1-86290f9ecf18-Warehouse-Specialist-ariika-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=7
81	2117	474	Experienced	3+ Yrs of Exp	Full Time ,Work From Home	2020-11-03 16:45:00	https://wuzzuf.net/jobs/p/97e2272a-07c6-4fad-bbd1-fd6278d734be-Production-Coordinator---Fashion-MatsMall-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=10
82	2118	1457	Experienced	2-5 Yrs of Exp	Full Time	2020-11-03 16:35:00	https://wuzzuf.net/jobs/p/48f2b7bc-ab07-45b6-ade0-1d2ae326c208-Operation-Specialist---Trucking-TruKKer-Misr-Suez-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=15
83	2122	268	Manager	15+ Yrs of Exp	Full Time	2020-11-03 15:03:00	https://wuzzuf.net/jobs/p/da6edb14-0d6a-4a32-b963-73657d2175d7-Financial-Analysis-Manager-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
84	1786	60	Manager	10+ Yrs of Exp	Full Time	2020-11-03 18:52:00	https://wuzzuf.net/jobs/p/f51c8614-2e54-4a5b-9d31-9d45043cdfb2-Food-And-Beverage-Manager---Alexandria-Paradise-Inn-Hotels-Resorts-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=18
85	1797	1461	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-03 21:56:00	https://wuzzuf.net/jobs/p/0b714c91-91d2-467c-a598-012dfc071cc1-Procurement-Specialist-SAPTelecom-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=5
86	2131	317	Entry Level	0-2 Yrs of Exp	Full Time ,Part Time	2020-11-04 06:14:00	https://wuzzuf.net/jobs/p/bc4e4887-6757-4d17-875c-752c62fd7ce7-Procurement-and-Operations-Management-Staff-THE-PLATFORM-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=5
87	2132	1412	Experienced	5-8 Yrs of Exp	Full Time	2020-11-04 09:33:00	https://wuzzuf.net/jobs/p/8ce53d1d-b77f-4146-b663-a9a9cacfaa78-Personal-Assistant-TO-CEO-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=10
88	2135	333	Entry Level	0-3 Yrs of Exp	Full Time	2020-11-04 09:40:00	https://wuzzuf.net/jobs/p/e4d7d1d3-555c-451b-8f5e-8deeedf520aa-Store-Secretary--in-Sabtia-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=17
89	923	1467	Experienced	5-7 Yrs of Exp	Full Time	2020-11-04 10:36:00	https://wuzzuf.net/jobs/p/1a2976fe-c1d6-4ebe-b640-6813711e25cb-Senior-Accountant-Tiger-Marine-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=9
90	2136	85	Experienced	3-5 Yrs of Exp	Freelance / Project	2020-11-04 10:55:00	https://wuzzuf.net/jobs/p/641bc351-9139-4536-b983-0f1b5d9482a0-Technical-Analyst----Applications-Support--Interact-Technology-Solutions-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=2
91	1779	1467	Entry Level	2-4 Yrs of Exp	Full Time	2020-11-04 10:54:00	https://wuzzuf.net/jobs/p/fb46d9a9-bfc4-41d0-8124-0ba73a247ee2-Junior-Accountant-Tiger-Marine-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=9
92	2138	141	Experienced	3-4 Yrs of Exp	Full Time	2020-11-04 10:14:00	https://wuzzuf.net/jobs/p/7e45c0d2-ff05-489e-973d-2283dcca2e7a-Local-Purchasing-Specialist-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=7
93	2139	734	Experienced	6-10 Yrs of Exp	Full Time	2020-11-04 11:51:00	https://wuzzuf.net/jobs/p/4dabecb0-efed-4d1f-af0f-530021ee02d7-Executive-Administrative-Assistant-Heliopolis-University-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=18
94	1267	1468	Manager	5-7 Yrs of Exp	Full Time	2020-11-04 11:55:00	https://wuzzuf.net/jobs/p/aa9a6864-6843-4370-acd4-cbc6e111edce-Sales-Manager-INGAZ-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=15
95	1033	1470	Experienced	2-3 Yrs of Exp	Full Time	2020-11-04 12:51:00	https://wuzzuf.net/jobs/p/ace833b7-e0bb-4567-bd67-7701a0ee3748-Accountant-Kira-Trade-International-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=2
96	27	1469	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-04 11:48:00	https://wuzzuf.net/jobs/p/bbed811e-6a60-4af7-a02c-14a48c13e90e-Odoo-Implementer-YDS-yasar-digital-services-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=12
97	2140	1459	Experienced	2-4 Yrs of Exp	Full Time	2020-11-04 12:37:00	https://wuzzuf.net/jobs/p/a10933c2-39b5-45fc-83ea-19a85b73b7ec-ERP-Consultant---Sadat-City-Sphinx-Glass-Monufya-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=14
98	1138	1472	Experienced	5-10 Yrs of Exp	Full Time	2020-11-04 13:13:00	https://wuzzuf.net/jobs/p/1a3b3018-94ba-45a2-a671-9312bf3998d1-Account-Manager-Mirage-Group---Egypt-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
99	2143	1471	Senior Management	7-10 Yrs of Exp	Full Time	2020-11-04 13:10:00	https://wuzzuf.net/jobs/p/5d54e4a6-1ecd-482c-a3de-55828f406ac5-Head-of-Business-Development-CASHU-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=4
100	2147	1475	Experienced	1-2 Yrs of Exp	Full Time	2020-11-04 13:58:00	https://wuzzuf.net/jobs/p/a27140a0-e8e2-4d09-8feb-929aa68de32b-Site-Accountant---Port-Fouad-INTECH-Port-Said-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
101	1033	1476	Experienced	5+ Yrs of Exp	Full Time	2020-11-04 13:50:00	https://wuzzuf.net/jobs/p/ef5ddb1c-aeff-40a9-8a1b-5934f3ed8b5c-Accountant-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=4
102	2145	1473	Manager	7-15 Yrs of Exp	Full Time	2020-11-04 13:00:00	https://wuzzuf.net/jobs/p/e9386dc9-8481-405a-93d5-84f1f1892593-IT-Manager-Acting---Multinational---DubaiSAP-B1-background-Pillars-Dubai-United-Arab-Emirates?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=8
103	2148	1477	Experienced	7-9 Yrs of Exp	Full Time	2020-11-04 13:20:00	https://wuzzuf.net/jobs/p/995afe11-b3c0-4341-a2e0-462f92bfebd4-Senior-HR-Generalist-Arabian-Company-for-Trading-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=17
104	2149	1478	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-04 13:18:00	https://wuzzuf.net/jobs/p/b8b432c7-952e-497e-b093-fc5e19e0fd0e-Warehouse-Agent-Noon-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=9
105	2152	1480	Experienced	6+ Yrs of Exp	Full Time	2020-11-04 14:24:00	https://wuzzuf.net/jobs/p/4f4901ad-3aac-4025-9948-989b6cd88553-Senior-Risk-Officer-SAMA-FINANCE-SAE-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=7
106	2153	1480	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-04 14:12:00	https://wuzzuf.net/jobs/p/65c50dcb-484c-4639-9aef-b2984d60a43c-Credit---Marketing-Officer-Head-Office---Cairo-SAMA-FINANCE-SAE-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=11
107	2154	1481	Manager	5-10 Yrs of Exp	Full Time	2020-11-04 14:47:00	https://wuzzuf.net/jobs/p/58ed0d49-047d-41c5-85a5-785aa9537459-Operations-Manager---Wellness-Center-Health-Club---Spa-Defy-Egypt-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=13
108	1450	1482	Experienced	3-5 Yrs of Exp	Full Time	2020-11-04 14:25:00	https://wuzzuf.net/jobs/p/38b13a37-2335-4d59-837a-28a2099194c2-Foreign-Purchasing-Specialist-Life-Chemicals-Group-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=14
109	1129	1484	Manager	7-10 Yrs of Exp	Full Time	2020-11-04 14:02:00	https://wuzzuf.net/jobs/p/ed4c50f6-8b39-4cc3-a3c5-c7ae5d25f783-Accounting-Manager-Royal-House-Language-School-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=2
110	1033	1469	Experienced	5-10 Yrs of Exp	Full Time	2020-11-04 14:34:00	https://wuzzuf.net/jobs/p/cb6065f5-dc40-4be5-a190-de65c74c08d6-Accountant-YDS-yasar-digital-services-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=7
111	2155	670	Entry Level	0-1 Yrs of Exp	Internship	2020-11-04 14:11:00	https://wuzzuf.net/internship/a4d98232-6103-46f6-a93b-c777b3e5f335-Application-Consultant---Internship-Rednet-It-Services-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=15
112	2156	1045	Experienced	5-7 Yrs of Exp	Full Time	2020-11-04 14:19:00	https://wuzzuf.net/jobs/p/8a2007b2-20f3-4467-b75b-e64a535b89ac-Purchasing-Supervisor-Packaging-Material-EVA-Cosmetics-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=12
113	1650	586	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-04 15:34:00	https://wuzzuf.net/jobs/p/29e7356c-877d-4309-ad41-dcb832025ce4-Pre-Sales-Engineer-Smart-Lighting-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=17
114	2160	1117	Manager	8-10 Yrs of Exp	Full Time	2020-11-04 15:19:00	https://wuzzuf.net/jobs/p/8036ed39-2265-41df-8800-0b1d3aed2e40-Purchasing-Manager---Hospitality---Restaurant-Capital-One-holding-for-investment-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=15
115	2161	268	Experienced	2-4 Yrs of Exp	Full Time	2020-11-04 15:35:00	https://wuzzuf.net/jobs/p/d7a39233-390f-41a9-993a-4048b0ec287a-Purchasing-Specialist---Textiles-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=23
116	2164	1489	Manager	5-7 Yrs of Exp	Full Time	2020-11-04 16:47:00	https://wuzzuf.net/jobs/p/0eeb050e-e5d1-454b-878e-0eb89a318007-Senior-Treasury-Manager-Majorel-Egypt-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=8
117	2166	649	Manager	10+ Yrs of Exp	Full Time	2020-11-04 16:17:00	https://wuzzuf.net/jobs/p/be833765-ec27-47c1-bbad-d4a2237383bf-Treasury-Manager-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=11
118	1637	268	Manager	7-10 Yrs of Exp	Full Time	2020-11-04 15:05:00	https://wuzzuf.net/jobs/p/f8703f2d-8c4f-4088-bc54-0f9f64b4a85b-Administration-Manager-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=16
119	1033	776	Experienced	3-5 Yrs of Exp	Full Time	2020-11-04 17:16:00	https://wuzzuf.net/jobs/p/7e99c002-7f4e-4627-9948-1c140e2a4f08-Accountant-OPPO-Egypt-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=4
120	2168	1334	Experienced	3+ Yrs of Exp	Full Time	2020-11-04 17:05:00	https://wuzzuf.net/jobs/p/4a3d248c-6232-4545-b6d8-9ea40ec28b18-Valuation-Analyst-Riyadh-Saudi-Arabia?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=13
121	2171	1494	Experienced	1-3 Yrs of Exp	Full Time	2020-11-04 17:11:00	https://wuzzuf.net/jobs/p/e44acbb8-30aa-42a3-8659-ed9245fe94a3-Cost-Controller-Accountant-Eat-Heal-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=7
122	2172	1104	Entry Level		Full Time	2020-11-04 18:51:00	https://wuzzuf.net/jobs/p/0c1e1ec5-1d87-4f87-9a40-14b7775da75f-Banking-Call-Center-Representative-Raya-Contact-Center-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=32
123	100	1495	Manager	6-8 Yrs of Exp	Full Time	2020-11-04 18:46:00	https://wuzzuf.net/jobs/p/e27ed7bd-5756-4323-b6c9-8fc40ae970f8-Chief-Accountant-TAQA-Arabia-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=6
124	2174	1495	Experienced	3-5 Yrs of Exp	Full Time	2020-11-04 18:49:00	https://wuzzuf.net/jobs/p/bfb92d67-f140-443c-be26-f3cc9c8a274a-Senior-Material-Planner-TAQA-Arabia-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=7
125	124	1496	Experienced	3-20 Yrs of Exp	Full Time ,Work From Home	2020-11-04 21:01:00	https://wuzzuf.net/jobs/p/7cd77403-5b8d-4029-83a6-7c7031756ab4-Senior-Graphic-Designer-The-Swiss-Quality-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=6
158	2209	951	Manager	6+ Yrs of Exp	Full Time	2020-11-05 00:47:00	https://wuzzuf.net/jobs/p/699ef36a-b715-4e3a-b41c-0c706a6d24e4-Internal-Audit-Manager-Large-Retail-Pillars-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=19
159	1781	1531	Experienced	4-6 Yrs of Exp	Full Time	2020-11-05 09:53:00	https://wuzzuf.net/jobs/p/2c820b9b-7124-4278-a2f4-e27adb3734cd-Tax-Accountant-INDEVCO-Monufya-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=11
160	2216	163	Manager	5-7 Yrs of Exp	Full Time	2020-11-05 10:12:00	https://wuzzuf.net/jobs/p/9b09cf9b-ed82-4f7e-9ac1-175cf32a7952-Stock-Control-Supervisor-Andalusia-Group-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=9
161	2213	88	Experienced	3-5 Yrs of Exp	Work From Home ,Full Time	2020-11-05 10:05:00	https://wuzzuf.net/jobs/p/978de634-6268-4745-b9ef-38652f71cdbf-Sales-Operations-specialist-IT-iHorizons-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=24
162	937	721	Experienced	4-7 Yrs of Exp	Full Time	2020-11-05 10:46:00	https://wuzzuf.net/jobs/p/85c8b3b9-62e0-4005-938f-e81d8626c87d-Senior-Business-Analyst-Paynas-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=6
163	2215	96	Experienced	5-8 Yrs of Exp	Full Time	2020-11-05 10:56:00	https://wuzzuf.net/jobs/p/c7154330-f001-47de-93fa-6ccf6c0f737c-Back-end-Systems-Solution-Analyst-Programmer-Ejada-Cairo-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=9
164	1091	1480	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-05 11:18:00	https://wuzzuf.net/jobs/p/0200cae5-0e35-4ac6-b74b-fe5ed02b27b3-Internal-Audit-Officer-SAMA-FINANCE-SAE-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=12
165	117	471	Manager	10-15 Yrs of Exp	Full Time	2020-11-05 11:57:00	https://wuzzuf.net/jobs/p/119c4fc3-d780-4c36-89eb-d4648ddca55e-Marketing-Manager-Egyptian-For-Cosmetics-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=32
166	2220	1480	Experienced	1-3 Yrs of Exp	Full Time	2020-11-05 11:52:00	https://wuzzuf.net/jobs/p/a1c1bcd6-4946-45d6-8f0f-f82f560323d6-Finance---Accounts-Officer-SAMA-FINANCE-SAE-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=1
167	2221	1480	Experienced	5+ Yrs of Exp	Full Time	2020-11-05 11:29:00	https://wuzzuf.net/jobs/p/bf146d24-6392-4259-98be-a14fb424cdce-Senior-Internal-Audit-Officer-SAMA-FINANCE-SAE-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=16
168	2222	1533	Experienced	5+ Yrs of Exp	Full Time	2020-11-05 11:37:00	https://wuzzuf.net/jobs/p/785755cf-ef71-4097-a037-c93772b3d1f5-Quantity-Surveyor-NADIM-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=26
169	2223	81	Manager	7-10 Yrs of Exp	Full Time	2020-11-05 10:44:00	https://wuzzuf.net/jobs/p/af9d3bf4-1f21-4ece-8b0e-05e82edb881b-Big-Data-Manager-Allianz-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=37
170	1382	1487	Experienced	2-5 Yrs of Exp	Full Time	2020-11-05 11:35:00	https://wuzzuf.net/jobs/p/9c7fde5a-0af8-4f1b-9f64-af471af48059-Logistics-Specialist-TMA-For-Industrial-Supplies-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=2
171	2224	996	Experienced	3-7 Yrs of Exp	Full Time	2020-11-05 09:32:00	https://wuzzuf.net/jobs/p/94ef494a-f0fe-487d-9263-509e2ffa938c-Procurement-Engineer-MH-Group-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=10
172	1043	1536	Experienced	4-5 Yrs of Exp	Full Time	2020-11-05 12:21:00	https://wuzzuf.net/jobs/p/2cb44a8f-39d8-4509-b012-37e0342a3acf-Treasury-Accountant-Contact-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=10
173	2227	1537	Experienced	2-6 Yrs of Exp	Full Time	2020-11-05 12:26:00	https://wuzzuf.net/jobs/p/5643311b-5f9c-4d37-aeef-a660003ff0e2-Trucks-Sales-Officer-Contact-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=31
174	2232	95	Experienced	2-5 Yrs of Exp	Part Time ,Full Time	2020-11-05 12:11:00	https://wuzzuf.net/jobs/p/f0e0b2a4-332a-483f-9244-8f12d3a82c8b-Junior-Accountant---Cairo-ConZonia-Consulting-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=5
175	2233	951	Senior Management	15+ Yrs of Exp	Full Time	2020-11-05 12:06:00	https://wuzzuf.net/jobs/p/b8335eb5-5cda-4b7d-a368-bd2cc92fa771-Facilities-Director---Multinational--Regional-Pillars-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=26
176	1360	1539	Experienced	3-5 Yrs of Exp	Full Time	2020-11-05 12:10:00	https://wuzzuf.net/jobs/p/f344136b-2cc0-4fe9-86b8-97711219cd13-Secretary-ConZonia-Consulting-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=29
177	2234	1540	Experienced	2-3 Yrs of Exp	Full Time	2020-11-05 12:04:00	https://wuzzuf.net/jobs/p/a4a50bc6-050e-4fb8-912e-d0c0894fb7ee-Office-Administrator-United-Trading-Engineering-Company-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=30
178	2235	1541	Experienced	2-6 Yrs of Exp	Full Time	2020-11-05 12:28:00	https://wuzzuf.net/jobs/p/dc24ffae-c0a3-42a6-b419-50bb5df39833-Trucks-Sales-Officer---Dakahlia-Contact-Dakahlia-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=34
179	2230	96	Experienced	5-8 Yrs of Exp	Full Time	2020-11-05 12:08:00	https://wuzzuf.net/jobs/p/9721d429-46f3-4e81-bbea-6a46c55904a0-Analyst---Programmer-Ejada-Cairo-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=11
180	2240	1363	Experienced	2-4 Yrs of Exp	Full Time	2020-11-05 14:50:00	https://wuzzuf.net/jobs/p/1a038497-b115-4ebc-873e-faeedb19f049-Cost-Accountant--Industrial-Sector-Madar-plus-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=8
181	2241	333	Experienced	5-8 Yrs of Exp	Full Time	2020-11-05 14:28:00	https://wuzzuf.net/jobs/p/2885b741-d38d-4b6d-b85a-cdf1a1607021-Senior-Payable-Accountant-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=11
182	2166	333	Experienced	8-15 Yrs of Exp	Full Time	2020-11-05 14:21:00	https://wuzzuf.net/jobs/p/b786e10b-1782-4cf6-98b1-ae9b003189ba-Treasury-Manager-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=10
183	2244	1545	Experienced	4-6 Yrs of Exp	Full Time	2020-11-05 14:49:00	https://wuzzuf.net/jobs/p/e3e30ec2-60a3-45f2-8d86-21596271ab63-Costing---Budgeting-Senior-Accountant-Next-Home-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=17
184	2245	786	Experienced	1-2 Yrs of Exp	Full Time	2020-11-05 14:23:00	https://wuzzuf.net/jobs/p/9e5d66e1-622a-4de0-86b2-0b4984078614-Property-Advisor-global-building-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=25
185	1127	729	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-05 13:47:00	https://wuzzuf.net/jobs/p/cd0f7feb-6fe7-4100-93c1-50e225743f1c-Purchasing-Specialist-Delta-Textile-Egypt-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=3
186	2249	1547	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-05 15:32:00	https://wuzzuf.net/jobs/p/198c8074-b05c-4f00-9023-8d064fac9cc7-Sales-Representative---Logistics-Alroshd-company-Alexandria-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=3
187	1033	1409	Experienced	1-3 Yrs of Exp	Full Time	2020-11-05 15:23:00	https://wuzzuf.net/jobs/p/e9bdb933-eef5-4bef-a808-6a795fc58fce-Accountant-Club-Shoes-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=8
188	2254	1551	Experienced	2+ Yrs of Exp	Full Time	2020-11-05 15:25:00	https://wuzzuf.net/jobs/p/84cf3a8e-66f1-4672-a548-18abc7a22108-Credit-Analyst---Underwriter-Fawry-Microfinance-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=16
189	2255	1552	Entry Level	0-2 Yrs of Exp	Full Time	2020-11-05 15:26:00	https://wuzzuf.net/jobs/p/831218a2-ac7c-4868-bf6c-bb51547ccb7c-Junior-Purchasing-Specialist-International-Trade-Office-Alexandria-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=8
190	2106	1553	Experienced	2-5 Yrs of Exp	Full Time	2020-11-05 15:52:00	https://wuzzuf.net/jobs/p/c6981ad9-da0e-4da4-b98f-d7cc53875c1a-Logistics-Sales-Specialist-General-for-Shipping-Agencies-Marine-Services-and-Investment-Group-S-A-E-Alexandria-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=2
191	2256	1547	Experienced	2-3 Yrs of Exp	Full Time	2020-11-05 15:45:00	https://wuzzuf.net/jobs/p/abe70092-92d1-4997-bcc1-63e377002529-Logistics-Operations-Specialist-Alroshd-company-Alexandria-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=3
231	2311	333	Experienced	4-5 Yrs of Exp	Full Time	2020-11-08 12:42:00	https://wuzzuf.net/jobs/p/319b01f8-f256-4081-ba4a-54e54d0ffa1c-Accountant-FMCG-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=5
192	2260	856	Entry Level	1-4 Yrs of Exp	Full Time	2020-11-05 16:19:00	https://wuzzuf.net/jobs/p/5e3b6a27-0774-4de1-83a2-72de701b979b-Account-Manager-Sales--Stand-zone-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=21
193	2262	1556	Experienced	3-5 Yrs of Exp	Full Time	2020-11-05 17:20:00	https://wuzzuf.net/jobs/p/f865fc3e-0935-4897-8c32-a86d1986d5bd-Accountant---Alexandria-Global-For-Elevators-and-Esclators-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=7
194	2013	60	Experienced	7+ Yrs of Exp	Full Time	2020-11-05 17:14:00	https://wuzzuf.net/jobs/p/b30b7067-2f8b-46ea-80e2-fc58645f3e6d-Executive-Secretary-to-Chairman---Alexandria-Paradise-Inn-Hotels-Resorts-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=19
195	2263	333	Manager	5-7 Yrs of Exp	Full Time	2020-11-05 17:02:00	https://wuzzuf.net/jobs/p/723b9582-109b-4771-a2dc-4f9a476e3c67-Export-section-Head-cosmetics--Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=9
196	911	721	Experienced	1-3 Yrs of Exp	Full Time	2020-11-06 01:20:00	https://wuzzuf.net/jobs/p/a2ba0242-009a-4ff3-97ea-a9cf8738feaa-Business-Analyst-Paynas-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=5
197	2015	1563	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-06 10:52:00	https://wuzzuf.net/jobs/p/df0c3184-68d7-4b80-89cc-4093061f5fd8-Order-Handling-Specialist-Ble-Foods-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=12
198	2268	505	Experienced	4-8 Yrs of Exp	Full Time	2020-11-06 11:12:00	https://wuzzuf.net/jobs/p/1369ec69-66f9-42f9-bc41-d4cd969b196a-Senior-Finance-Fluent-in-German-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=1
199	2269	1563	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-06 11:19:00	https://wuzzuf.net/jobs/p/34359a77-bc15-4994-a2b5-6f936ba510ec-Sous-Chef-Ble-Foods-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=8
200	1333	964	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-06 13:38:00	https://wuzzuf.net/jobs/p/078e872c-6af1-4372-bac8-37cfc9e2a735-Industrialization-Engineer-Production---Sheet-Metal-Power-Solutions-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=8
201	2273	951	Manager	8-15 Yrs of Exp	Full Time	2020-11-07 00:14:00	https://wuzzuf.net/jobs/p/e7a11b40-1830-4f21-a3a1-8ed2aee982d3-Reporting-and-Budget--Financial-analysis-Manager-Pillars-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=2
202	2274	2	Manager	5-7 Yrs of Exp	Full Time	2020-11-07 09:55:00	https://wuzzuf.net/jobs/p/2f8b6c6c-e17c-413d-8772-a7f35c47f60c-Purchasing-Section-Head-Alexandria-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=1
203	2277	951	Manager	10-20 Yrs of Exp	Full Time	2020-11-07 10:20:00	https://wuzzuf.net/jobs/p/32edd1e0-e104-48e7-b21e-1e00e5bd1f5e-Costing-Manager-Large-Retail-Cairo-Egypt-Pillars-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=1
204	2279	1569	Experienced	1-3 Yrs of Exp	Full Time	2020-11-07 13:47:00	https://wuzzuf.net/jobs/p/976eae43-204c-4924-b380-e0ae464bcfd3-Import-Accountant-realme-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=2
205	2281	1571	Experienced	1-5 Yrs of Exp	Full Time	2020-11-07 14:02:00	https://wuzzuf.net/jobs/p/68ffc904-5cf5-489b-abd3-8b55fce8f9eb-Accountant-–-محاسب-Micronics-S-A-E-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
206	2282	71	Experienced	5-7 Yrs of Exp	Full Time	2020-11-07 15:56:00	https://wuzzuf.net/jobs/p/37aac877-ad7b-47de-9e8e-f475e146e0e2-Cost-accounting-Section-Head---Borg-El-Arab-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=2
207	1781	1572	Experienced	3-10 Yrs of Exp	Full Time	2020-11-07 17:00:00	https://wuzzuf.net/jobs/p/e6840f75-933e-4b61-91e1-14b7c8f3d027-Tax-Accountant-Essam-Abdalmoniem-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
208	2285	1573	Experienced	8-10 Yrs of Exp	Full Time	2020-11-07 18:30:00	https://wuzzuf.net/jobs/p/557991bb-e046-4b5a-9ae0-07a214ab3589-Admin-Supervisor-Infinity-Clinic-Pharma-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=7
209	2287	1574	Manager	3+ Yrs of Exp	Full Time	2020-11-07 18:02:00	https://wuzzuf.net/jobs/p/b06456b6-4fff-4961-8380-402c3a0eafce-Store-manager-OPPO-Egypt-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=8
210	2288	1575	Experienced	3-5 Yrs of Exp	Full Time	2020-11-07 18:35:00	https://wuzzuf.net/jobs/p/af46fa71-6860-4cb5-859f-1b9f95d5adfd-Warehouse-Keeper-Rotografia-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=1
211	2289	1576	Manager	5+ Yrs of Exp	Full Time	2020-11-07 21:26:00	https://wuzzuf.net/jobs/p/d241ac92-4f70-439d-a38c-c1a313ef21fc-Customer-Care-and-Collection-Manager-El-Khalifa-group-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=9
212	2292	1578	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 08:57:00	https://wuzzuf.net/jobs/p/0b711cda-da4a-4be6-8465-a469f98a0b23-Associate-Business-Research-French-Account-CRIF-EGYPT-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=6
213	1117	339	Manager	10-15 Yrs of Exp	Full Time	2020-11-08 09:38:00	https://wuzzuf.net/jobs/p/44957f3b-f261-4826-8784-5c2345e31aae-Financial-Controller-Keys-Group-Services-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
214	1033	1579	Experienced	2-5 Yrs of Exp	Full Time	2020-11-08 09:56:00	https://wuzzuf.net/jobs/p/0fc143fb-80b6-4a66-8304-7f8760b1289a-Accountant-El-Massria-Integrated-Schools-Sharqia-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=4
215	2293	94	Experienced	5-8 Yrs of Exp	Full Time	2020-11-08 09:18:00	https://wuzzuf.net/jobs/p/339c236a-90c5-4168-a43c-ef72f513f98f-Software-QC-Tester-Path-Solutions-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=3
216	2296	45	Experienced	1-2 Yrs of Exp	Full Time	2020-11-08 09:45:00	https://wuzzuf.net/jobs/p/ff5c0247-b525-4344-b75f-2a56ece95c0e-Cashier-Egytrans-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=5
217	2295	339	Senior Management	10-15 Yrs of Exp	Full Time	2020-11-08 09:33:00	https://wuzzuf.net/jobs/p/8d4c1ab2-5921-4a1e-9324-c90fd7b35b65-Country-Manager---GM-Keys-Group-Services-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=11
218	2301	1583	Entry Level	1-4 Yrs of Exp	Full Time	2020-11-08 10:43:00	https://wuzzuf.net/jobs/p/014b14db-425b-4809-8a99-e972ca0b371e-Accountant---Secretary-Trademan-For-Engineering-Trading-Projects-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
219	2302	1578	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 10:15:00	https://wuzzuf.net/jobs/p/42a05ac6-70ac-4de4-a717-ab4dea28c099-Associate-Business-Research-CRIF-EGYPT-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=9
220	2303	1584	Experienced	2+ Yrs of Exp	Full Time	2020-11-08 10:42:00	https://wuzzuf.net/jobs/p/38d2c1e7-1afa-4e25-8465-74579162f94e-Pricing-Executive---Sales-Support-Alexandria-Trading-and-Engineering-Bureau-Alexandria-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=2
221	1033	45	Experienced	1-2 Yrs of Exp	Full Time	2020-11-08 10:38:00	https://wuzzuf.net/jobs/p/8c4af14f-5af0-44a1-a558-9a1ee3f3ce00-Accountant-Egytrans-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=8
222	2138	840	Entry Level	3-5 Yrs of Exp	Full Time	2020-11-08 10:14:00	https://wuzzuf.net/jobs/p/c4f0d9d6-bc46-4580-8490-c912f0a06dc1-Local-Purchasing-Specialist-Greater-Cairo-Foundries-Co-S-A-E-Sharqia-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=13
223	2288	1585	Experienced	2+ Yrs of Exp	Full Time	2020-11-08 10:07:00	https://wuzzuf.net/jobs/p/ecd79946-446e-4bd4-9891-cfdccf8c3a56-Warehouse-Keeper-Splendid-Pharma-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=1
224	923	1587	Experienced	7+ Yrs of Exp	Full Time	2020-11-08 11:12:00	https://wuzzuf.net/jobs/p/3e0f3e76-513e-41c6-9fa0-ac945835cf17-Senior-Accountant-Borg-EL-Arab-Co-Bait-Food-Sharqia-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=5
225	1127	184	Experienced	3+ Yrs of Exp	Full Time	2020-11-08 11:24:00	https://wuzzuf.net/jobs/p/2fc20b60-d954-4b56-aca2-3e0320a5668e-Purchasing-Specialist-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=1
226	1778	1589	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 11:37:00	https://wuzzuf.net/jobs/p/d92bdd06-5e35-4fdc-8f73-3b00a040d874-General-Accountant-Prado-Rugs-Monufya-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=5
227	2308	1590	Manager	4-7 Yrs of Exp	Full Time	2020-11-08 11:22:00	https://wuzzuf.net/jobs/p/79188d2e-d943-4e2f-86d8-4b0a1ad7138f-Treasury-Supervisor-Vitas-Egypt-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=12
228	2309	184	Experienced	3-7 Yrs of Exp	Full Time	2020-11-08 11:03:00	https://wuzzuf.net/jobs/p/821e8d6a-24c6-4336-b721-6cbde6192f97-Senior-Sales-Executive-Petroleum-Services-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=17
229	2310	1591	Experienced	4-6 Yrs of Exp	Full Time	2020-11-08 11:57:00	https://wuzzuf.net/jobs/p/f56ba429-57d6-4c7e-8b0b-e74d070a10ca-Mechanical-Technical-Sales-Engineer-Arak-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=19
230	1127	1450	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 11:53:00	https://wuzzuf.net/jobs/p/fa97f7d0-ddcb-4b16-9c75-d1d0f29f1016-Purchasing-Specialist-Pyramid-Glass-Company-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=21
232	1428	1592	Entry Level	1+ Yrs of Exp	Full Time	2020-11-08 12:40:00	https://wuzzuf.net/jobs/p/e7ab9752-b632-4d8d-9ba8-5b6599e8b88c-Sales-Admin-International-Egyptian-Company-for-Investment-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=11
233	1788	1296	Manager	3+ Yrs of Exp	Full Time	2020-11-08 12:50:00	https://wuzzuf.net/jobs/p/ba0c4fed-6378-4085-b171-9e965f93f5c4-Executive-Secretary-Raktos-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=20
234	2313	877	Manager	7-10 Yrs of Exp	Full Time	2020-11-08 12:24:00	https://wuzzuf.net/jobs/p/6bfaf001-74c8-4a4c-a9a3-105e2abc62aa-Merchandiser-Planner-Fields-for-Trading-and-Industries-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=24
235	2314	239	Manager	2-3 Yrs of Exp	Full Time	2020-11-08 12:13:00	https://wuzzuf.net/jobs/p/e0cd8ff1-5858-4ff6-bd75-f72c0b13efae-Fleet-Operations-Supervisor-E3mel-Business-for-Financial-Managerial-Consultancy-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=1
236	1799	1593	Manager	8-15 Yrs of Exp	Full Time	2020-11-08 12:46:00	https://wuzzuf.net/jobs/p/d7a9c0ce-0609-4a6a-a0ed-fdca7123c382-Export-Manager-Pyramid-Poultry-Co-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=8
237	2317	200	Manager	10-12 Yrs of Exp	Full Time	2020-11-08 13:49:00	https://wuzzuf.net/jobs/p/df1bab43-9aa6-439d-b8e0-6eeecdd56de7-Taxes-Department-Manager-B-Tech-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
238	1470	1595	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 13:25:00	https://wuzzuf.net/jobs/p/6b342887-2ced-4806-a632-75e0be37a682-Sales-Coordinator-Sigma-Engineering-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=20
239	1033	1596	Experienced	2-5 Yrs of Exp	Full Time	2020-11-08 14:05:00	https://wuzzuf.net/jobs/p/2d530255-1f1d-41f0-b94a-c33272705b3f-Accountant-New-Motors-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=10
240	2319	1597	Manager	7-9 Yrs of Exp	Full Time	2020-11-08 14:47:00	https://wuzzuf.net/jobs/p/18494119-64b7-45f3-8018-4f3337b46a44-Treasury-Section-Head-Tameer-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=17
241	1127	1598	Experienced	2-4 Yrs of Exp	Full Time	2020-11-08 14:27:00	https://wuzzuf.net/jobs/p/107c224a-e2d6-4b8a-a6d0-d3f34e32cd73-Purchasing-Specialist-Mest-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=7
242	923	1599	Experienced	5+ Yrs of Exp	Full Time	2020-11-08 14:19:00	https://wuzzuf.net/jobs/p/8f93d71f-65d5-4c03-a244-8b0e3fccb38d-Senior-Accountant-Xeedia-Pharmaceuticals-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=4
243	2323	194	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 14:08:00	https://wuzzuf.net/jobs/p/5a9d7fb0-0b75-479c-b065-23c9d39086cc-CRM-Specialist-La-Verde-Real-Estate-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=24
244	2324	1600	Manager	5+ Yrs of Exp	Full Time	2020-11-08 14:45:00	https://wuzzuf.net/jobs/p/754e9b7b-4714-4a07-8935-b0a11131f4f2-Receptionist---Branch-Manager-MWG-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=27
245	259	110	Experienced	7+ Yrs of Exp	Full Time ,Work From Home	2020-11-08 14:43:00	https://wuzzuf.net/jobs/p/bfdddeb9-52df-4140-ba02-736e1a739615-IT-System-Analyst---Banking-Xceed-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=1
246	1033	1605	Experienced	3+ Yrs of Exp	Full Time	2020-11-08 15:46:00	https://wuzzuf.net/jobs/p/e3518c03-60e8-4d63-a18e-fcfe1f2600b0-Accountant-aircom-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=5
247	2330	1106	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-08 15:56:00	https://wuzzuf.net/jobs/p/e3c747ca-720d-4f4c-8239-513d70ef56e9-Stock-Controller-Ehab-Group-StoresMobileAccessoires-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=24
248	2331	1606	Experienced	2-4 Yrs of Exp	Full Time	2020-11-08 15:39:00	https://wuzzuf.net/jobs/p/ae252073-74ce-451a-953f-d199ead8665a-Purchasing-Specialist---Engineer-Smart-Group-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=29
249	2332	1607	Experienced	2-3 Yrs of Exp	Full Time	2020-11-08 15:13:00	https://wuzzuf.net/jobs/p/f8ac8455-1b0f-45cc-a7a5-480d3f080ed0-Administrative-Officer-Arma-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=30
250	2328	1602	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 15:20:00	https://wuzzuf.net/jobs/p/8a211f5e-8223-4934-8551-c77e6eeded95-Export-Coordinator-Marmonil-Marble-Granite-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=31
251	2333	1608	Experienced	5-7 Yrs of Exp	Full Time	2020-11-08 15:06:00	https://wuzzuf.net/jobs/p/81cfa786-a3a5-4a6f-aca9-94d08356f2a4-Stock-Planner---Stock-Control---Pharmacist-Zikry-Pharmacies-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=1
252	2224	1609	Experienced	2-3 Yrs of Exp	Full Time	2020-11-08 15:33:00	https://wuzzuf.net/jobs/p/fbcfca46-c447-41ed-82c8-ad71bc3c7454-Procurement-Engineer-M-I-Engineering-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=11
253	2334	1045	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-08 15:03:00	https://wuzzuf.net/jobs/p/55f69225-2bfa-4a24-9b84-3d81f683d6ca-Toll-Manufacturing-Specialist-EVA-Cosmetics-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=14
254	1637	1472	Experienced	5-10 Yrs of Exp	Full Time	2020-11-08 16:34:00	https://wuzzuf.net/jobs/p/65dc1701-7bc1-4e72-acf6-a766f0f171ba-Administration-Manager-Mirage-Group---Egypt-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=23
255	2337	1613	Experienced	3-4 Yrs of Exp	Full Time	2020-11-08 16:16:00	https://wuzzuf.net/jobs/p/fe024d2f-08c4-4e53-8c25-3022e5842947-Senior-Tax-Accountant-MMA-accounting-office-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=16
256	2338	1614	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-08 16:21:00	https://wuzzuf.net/jobs/p/f3347e79-9ef2-483f-a419-1118e361f7e0-Business-Development---Logistics-Specialist-Jebaal-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=2
257	2075	1075	Entry Level	3-5 Yrs of Exp	Full Time	2020-11-08 17:06:00	https://wuzzuf.net/jobs/p/099ffe75-bab9-4e95-a561-8932ac69f0b0-Purchasing-Officer-Orientals-for-Urban-Development-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=2
258	2340	1616	Senior Management	10-19 Yrs of Exp	Full Time	2020-11-08 17:48:00	https://wuzzuf.net/jobs/p/d2f4eb07-f7a1-48ea-879f-153fb1b48dcc-Head-of-Strategies-Delta-Pharma-Egypt-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=21
259	1033	1617	Experienced	5+ Yrs of Exp	Full Time	2020-11-08 20:53:00	https://wuzzuf.net/jobs/p/ba165417-99bc-41cd-a04d-cb152c507e53-Accountant-Golden-Icon-Company-Riyadh-Saudi-Arabia?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=26
260	2351	1618	Entry Level	0-1 Yrs of Exp	Full Time	2020-11-09 08:08:00	https://wuzzuf.net/jobs/p/4e01d321-09ac-41cc-bb7e-af37b16b4467-Trade-Support-Specialist-Adam-Grain-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=11
261	2224	1115	Experienced	7-12 Yrs of Exp	Full Time	2020-11-09 08:45:00	https://wuzzuf.net/jobs/p/531179d3-e401-4ffd-9074-5da52582ac95-Procurement-Engineer-Tabarak-Holding-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=19
262	2353	624	Entry Level	1-1 Yrs of Exp	Full Time	2020-11-09 09:25:00	https://wuzzuf.net/jobs/p/f1d9fc90-801b-4610-a5a1-42308c67032b-Fresh-Accountant-Al-Safa-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=16
263	2354	780	Senior Management	12-20 Yrs of Exp	Full Time	2020-11-09 10:47:00	https://wuzzuf.net/jobs/p/372d6919-9a4a-4361-b7a6-1e8dbe5c4b8f-Head-of-Finance-WebBeds-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=1
264	2355	1621	Experienced	5-7 Yrs of Exp	Full Time	2020-11-09 10:50:00	https://wuzzuf.net/jobs/p/3738429a-97ce-4ac4-bd07-ab554c44d80f-Accountant--Saudi-Arabia-Altayar-recruitment-Riyadh-Saudi-Arabia?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=14
265	100	184	Manager	7-20 Yrs of Exp	Full Time	2020-11-09 10:09:00	https://wuzzuf.net/jobs/p/d3379053-2dc7-4f73-8c4c-49936fcf6562-Chief-Accountant-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=4
266	1033	1624	Experienced	3-5 Yrs of Exp	Full Time	2020-11-09 11:18:00	https://wuzzuf.net/jobs/p/354eb267-7b80-447c-8a2d-6a89091d56ae-Accountant-Autocool-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=9
267	2359	1625	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-09 11:58:00	https://wuzzuf.net/jobs/p/1b720d1a-20f9-478c-8bc5-70f2b263b676-Billing-Accountant---Ismailia-Aman-Ismailia-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=15
268	1033	1628	Experienced	3-5 Yrs of Exp	Full Time	2020-11-09 11:25:00	https://wuzzuf.net/jobs/p/85cdac97-4a78-44be-b607-8c5f356cb02d-Accountant-Newlife-Company-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
269	2362	1629	Experienced	4-10 Yrs of Exp	Full Time	2020-11-09 11:40:00	https://wuzzuf.net/jobs/p/601b3684-8032-4606-9b41-e3996f8a427f-Accountant---Cairo-Ascon-Advanced-Solutions-Consultant-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=16
270	1778	1630	Experienced	1-2 Yrs of Exp	Full Time	2020-11-09 11:57:00	https://wuzzuf.net/jobs/p/b6ba4ad4-2fb4-4b6e-9258-186858939b81-General-Accountant-NEW-JERSEY-Developments-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=19
271	2361	1469	Experienced	3-10 Yrs of Exp	Part Time	2020-11-09 11:45:00	https://wuzzuf.net/jobs/p/e8b0fa00-1748-4c93-9720-28cb81b0c1e7-Odoo-Implementation-Consultant--Part-Time--YDS-yasar-digital-services-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=25
272	2363	1631	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-09 11:33:00	https://wuzzuf.net/jobs/p/9ccf1e69-1573-45af-9f56-93fc73e4298e-Parts-Sales-Executive---Outdoor---Giza-Al-Mansour-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=28
273	2042	394	Experienced	1-3 Yrs of Exp	Full Time	2020-11-09 11:23:00	https://wuzzuf.net/jobs/p/af085a3a-63ae-410a-8114-79b7eb14e3d4-Project-Coordinator-Fawry-Banking-Payment-Technology-Services-Giza-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=9
274	1253	1007	Manager	3-7 Yrs of Exp	Full Time	2020-11-09 11:14:00	https://wuzzuf.net/jobs/p/598137fe-ef6e-469c-8e47-954cbcf48cae-Sales-Team-Leader-R2S-Logistics-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=7
275	469	1007	Experienced	3-5 Yrs of Exp	Full Time	2020-11-09 11:02:00	https://wuzzuf.net/jobs/p/99bae91c-0695-45b4-a28c-e5f1aad42c3a-Senior-Sales-Executive-R2S-Logistics-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=12
276	1642	1633	Manager	15-20 Yrs of Exp	Full Time	2020-11-09 12:59:00	https://wuzzuf.net/jobs/p/4e7c4e74-1c73-4196-999a-f7d32d4bd8f8-Financial-Manager-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=17
277	923	1635	Experienced	4-8 Yrs of Exp	Full Time	2020-11-09 12:09:00	https://wuzzuf.net/jobs/p/b4a224ac-c116-4a2a-ac86-abfe7d9476bc-Senior-Accountant-Innovinity-Medical-Hub-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=16
278	99	394	Experienced	7-10 Yrs of Exp	Full Time	2020-11-09 12:54:00	https://wuzzuf.net/jobs/p/fcd60fdc-be2f-4373-8ccd-adb21de85e7a-Product-Manager-Fawry-Banking-Payment-Technology-Services-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=21
279	2367	1637	Experienced	2-4 Yrs of Exp	Full Time	2020-11-09 12:13:00	https://wuzzuf.net/jobs/p/b2ee601f-e57f-4e67-bdf8-262e2223a1e6-StoreKeeper-Surgitech-Alexandria-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=4
280	2368	1456	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-09 12:05:00	https://wuzzuf.net/jobs/p/953cf652-484b-473e-84a6-05da8581e3ca-Purchasing-Executive-ariika-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=5
281	1554	1638	Manager	5-8 Yrs of Exp	Full Time	2020-11-09 12:51:00	https://wuzzuf.net/jobs/p/979323e8-f465-49d5-9885-a357a864c73b-Purchasing-Supervisor-Ball-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=7
282	1779	1640	Experienced	2-5 Yrs of Exp	Full Time	2020-11-09 13:33:00	https://wuzzuf.net/jobs/p/c05b4f9c-e546-40ea-9b81-a5dcee923421-Junior-Accountant-Kokoro-Agency-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=8
283	2370	658	Manager	5-7 Yrs of Exp	Full Time	2020-11-09 13:42:00	https://wuzzuf.net/jobs/p/a975680a-7591-41a7-9200-43a712a777a7-Microsoft-Dynamics-AX-Functional-Team-Lead-CompactSoft-International-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=17
284	2371	141	Experienced	1-5 Yrs of Exp	Full Time	2020-11-09 13:35:00	https://wuzzuf.net/jobs/p/73c49920-08f6-4982-92de-116d08db95f7-Payroll-Specialist-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=18
285	1382	1641	Experienced	3-5 Yrs of Exp	Full Time	2020-11-09 13:23:00	https://wuzzuf.net/jobs/p/78e64934-61f6-4d5f-8d3e-f827f867d560-Logistics-Specialist-Universe-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=1
286	2372	1633	Manager	10-15 Yrs of Exp	Full Time	2020-11-09 13:06:00	https://wuzzuf.net/jobs/p/54cdc6ce-1a88-4a80-b1c6-bff84ff71f73-Logistics-Manager--Alexandria-Alexandria-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=2
287	2373	1642	Experienced	2+ Yrs of Exp	Full Time	2020-11-09 13:45:00	https://wuzzuf.net/jobs/p/f56a31f5-c34a-4291-90a9-9dcbf180b83e-Customs-Clearance-Broker---مستخلص-جمركى-Universe-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=13
288	2377	1645	Entry Level		Full Time	2020-11-09 14:27:00	https://wuzzuf.net/jobs/p/580e0e27-26f8-4c65-8973-af157417e252-Banking-customer-care-Representative-Raya-Contact-Center-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=1
289	2378	744	Experienced	5-7 Yrs of Exp	Full Time	2020-11-09 14:49:00	https://wuzzuf.net/jobs/p/20f97dc8-1446-411a-b052-ad82a402df05-Master-Production-Planning-Section-Head-Oriental-Weavers-Sharqia-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=13
290	1778	135	Experienced	2-3 Yrs of Exp	Full Time	2020-11-09 14:05:00	https://wuzzuf.net/jobs/p/6e51f06e-93b5-4580-ab12-9cfcb96df8a1-General-Accountant-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
291	2384	1647	Experienced	2-4 Yrs of Exp	Full Time	2020-11-09 14:01:00	https://wuzzuf.net/jobs/p/8e202e2a-cb93-4d28-a287-837f8bf113cb-Accountant---Obour-City-Food-Brand-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=17
292	1267	1648	Manager	5-10 Yrs of Exp	Full Time	2020-11-09 14:23:00	https://wuzzuf.net/jobs/p/ec51c6dc-b8f7-41be-ba99-c960d9b534af-Sales-Manager-EEC-Group-Sharqia-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=21
293	2385	1649	Experienced	2-3 Yrs of Exp	Full Time	2020-11-09 14:17:00	https://wuzzuf.net/jobs/p/ab1b0c34-75e4-4761-89e1-295527e6e3c3-Team-Leader---Mansoura-4level1-Dakahlia-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=22
294	866	110	Experienced	5+ Yrs of Exp	Full Time ,Work From Home	2020-11-09 14:34:00	https://wuzzuf.net/jobs/p/feb259f8-fb04-43dd-907d-e0d67a185bb5-QA-Automation-Engineer-Xceed-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=3
295	2386	1650	Manager	5-7 Yrs of Exp	Full Time	2020-11-09 14:06:00	https://wuzzuf.net/jobs/p/b4a8a957-2d18-4fba-b73e-9108a4ae50fb-3PL-Manager-Brimore-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=9
296	2387	744	Manager	5-7 Yrs of Exp	Full Time	2020-11-09 14:40:00	https://wuzzuf.net/jobs/p/767888c3-5773-4a5b-8bd2-dd42ec68b50a-Local-Procurement-Section-Head-Indirect-Materials-Oriental-Weavers-Sharqia-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=16
297	2393	898	Experienced	3-6 Yrs of Exp	Full Time	2020-11-09 15:02:00	https://wuzzuf.net/jobs/p/af9ab9cf-c733-4879-9fe8-a3dddd664f14-Payable-Accountant---New-Cairo--Safwa-Urban-Development-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=4
298	2395	1489	Manager	3-5 Yrs of Exp	Full Time	2020-11-09 15:57:00	https://wuzzuf.net/jobs/p/8f2c3c6c-2567-48ca-a312-6aebbe6eecd2-Senior-Accountant-Payable-Majorel-Egypt-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=6
299	1033	1654	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-09 15:09:00	https://wuzzuf.net/jobs/p/5ad381d2-bfba-4a3f-90c0-7db1b46ffcdc-Accountant-REMAX-Everest-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=8
300	45	1652	Experienced	2-4 Yrs of Exp	Full Time	2020-11-09 15:43:00	https://wuzzuf.net/jobs/p/5c3ce7a5-53d1-40bd-8ad1-b464ccff8576-Android-Developer-Transcesion-VC-Giza-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=13
301	2396	1489	Experienced	3-5 Yrs of Exp	Full Time	2020-11-09 16:01:00	https://wuzzuf.net/jobs/p/03d53d7e-cea5-429b-9ca1-1b1576cb35f5-Senior-Treasury-Accountant-Majorel-Egypt-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
302	2397	1655	Experienced	3-5 Yrs of Exp	Full Time	2020-11-09 11:38:00	https://wuzzuf.net/jobs/p/2f739d17-84f3-4f1d-b8a4-bd97d4711d27-Senior-Export-Sales-Specialist---Logistics-Tanmia-Fruit-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=3
303	2401	142	Manager	10-15 Yrs of Exp	Full Time	2020-11-09 16:27:00	https://wuzzuf.net/jobs/p/f37419a8-5933-471c-a1c6-cf42236ba127-Procurement-Section-Head-Alkan-CIT-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=20
304	2399	184	Experienced	5+ Yrs of Exp	Full Time	2020-11-09 16:18:00	https://wuzzuf.net/jobs/p/ca0acc51-2d09-40c9-b885-b30a8e52bb5f-Application-Support-Specialist–-Sales-Buzz-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=24
305	969	249	Experienced	4+ Yrs of Exp	Full Time	2020-11-09 16:55:00	https://wuzzuf.net/jobs/p/ea04d772-06ca-409a-b426-9dfde8cb28fe-Sales-Account-Manager-JRM-for-Communications-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=6
306	2013	60	Experienced	7+ Yrs of Exp	Full Time	2020-11-09 18:51:00	https://wuzzuf.net/jobs/p/6d52e97d-d62f-403a-9291-836af6f4865c-Executive-Secretary-to-Chairman---Alexandria-Paradise-Inn-Hotels-Resorts-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=21
307	97	60	Experienced	7+ Yrs of Exp	Full Time	2020-11-09 19:13:00	https://wuzzuf.net/jobs/p/8defa74b-18cd-4b04-a4e3-bd0cfa5e5867-Personal-Assistant-to-Chairman---Alexandria-Paradise-Inn-Hotels-Resorts-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=21
308	2409	135	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-09 21:50:00	https://wuzzuf.net/jobs/p/7f5b6462-872e-4f28-8c64-004c3fd76e64-Receivable-Accountant-A-R-Accountant-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=12
309	2411	1664	Manager	5+ Yrs of Exp	Full Time	2020-11-10 04:58:00	https://wuzzuf.net/jobs/p/0bb1ee5a-6bb3-41dc-919c-a5c4cdbbbd39-Export---Operation-Manager--Pharmaceutical-industries--Egaz-Alexandria-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=17
310	1129	135	Manager	10-15 Yrs of Exp	Full Time	2020-11-10 09:46:00	https://wuzzuf.net/jobs/p/0a0689c2-b7c4-4741-b156-278f3fa6204b-Accounting-Manager-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=2
311	2413	693	Entry Level	1+ Yrs of Exp	Full Time	2020-11-10 09:50:00	https://wuzzuf.net/jobs/p/fb803ddc-2047-44c4-8d62-ccfe64436d79-Junior-HR-Payroll--personal-Specialist---Cairo-Universal-Payment-Services-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=9
312	315	291	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 10:01:00	https://wuzzuf.net/jobs/p/1f176e0e-4c4d-4dcd-b3d1-1461602a2def-Senior-ERP-Software-Tester-Automation-Microtech-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=20
313	1788	1666	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 10:55:00	https://wuzzuf.net/jobs/p/a333d724-21b4-4c66-80d3-72e7c826d651-Executive-Secretary-Capital-logistics-Alexandria-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=15
314	2416	1276	Experienced	3-4 Yrs of Exp	Full Time	2020-11-10 11:53:00	https://wuzzuf.net/jobs/p/c29c6d8f-2315-455e-a82c-6abc3b7eea9d-Industrial-Cost-Controller-Dayrah-Solutions-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=12
315	739	1669	Manager	10-15 Yrs of Exp	Full Time	2020-11-10 11:09:00	https://wuzzuf.net/jobs/p/2f715b0f-9b06-4eaa-a8f9-c4e689a61d8a-Business-Development-Manager-National-Pipe-Company-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=20
316	2417	204	Experienced	5-8 Yrs of Exp	Full Time	2020-11-10 11:39:00	https://wuzzuf.net/jobs/p/bf44a264-f9b7-418c-9b36-4aeb2f641a88-Senior-Procurement---Tender-Engineer-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=22
317	2418	304	Manager	5-8 Yrs of Exp	Full Time	2020-11-10 11:00:00	https://wuzzuf.net/jobs/p/d1c39f1a-94f6-4640-98de-af85f5bc25ff-Warehouse---Logistics-Supervisor-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=1
318	2419	1552	Experienced	4-5 Yrs of Exp	Full Time	2020-11-10 11:22:00	https://wuzzuf.net/jobs/p/de27fccc-0c09-4821-a3ac-d0724e78b24c-Operation-Specialist--Shipping-International-Trade-Office-Alexandria-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=5
319	2420	28	Manager	10+ Yrs of Exp	Full Time	2020-11-10 11:25:00	https://wuzzuf.net/jobs/p/b241a06e-4914-4f22-a19f-31d10229d3d5-Shipping-Operation-Manager---Alexandria-Alexandria-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=6
320	2421	1670	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 12:19:00	https://wuzzuf.net/jobs/p/03739682-ac2d-437a-9eee-fcd711a2feef-Human-Resources-Specialist-Sky-Medical-for-Medical-Devices-Giza-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=7
321	2426	125	Experienced	9-11 Yrs of Exp	Full Time	2020-11-10 12:30:00	https://wuzzuf.net/jobs/p/fe74ad03-ff5b-4f89-813f-3355891ce029-Internal-Financial-Auditor-Construction-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=4
322	2427	1472	Experienced	5-10 Yrs of Exp	Full Time	2020-11-10 12:33:00	https://wuzzuf.net/jobs/p/d48d7f03-4938-4fc4-b001-b9854966dcfc-Project-Accountant-Mirage-Group---Egypt-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=12
323	2428	245	Experienced	5-8 Yrs of Exp	Full Time	2020-11-10 12:46:00	https://wuzzuf.net/jobs/p/d953c4a1-0690-4b1d-9dd5-f535b398dbfa-Sales-Account-Manager---Consumer-Electronics-Union-Group-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=23
324	2148	61	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 12:51:00	https://wuzzuf.net/jobs/p/72b7b030-fefe-4bd6-9029-3f6867ef4f97-Senior-HR-Generalist-Alexandria-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=10
325	2423	1672	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-10 12:24:00	https://wuzzuf.net/jobs/p/45c57ce7-36a9-4e21-b3fb-7084f48d0b69-HR-Officer--Alex-Branch-Ibn-Sina-Pharma-Alexandria-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=11
326	1450	154	Experienced	2-4 Yrs of Exp	Full Time	2020-11-10 12:16:00	https://wuzzuf.net/jobs/p/8e734e15-e6a1-48df-90d2-44aab9edee4d-Foreign-Purchasing-Specialist-PICO-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=12
327	2433	564	Experienced	4-7 Yrs of Exp	Full Time	2020-11-10 13:41:00	https://wuzzuf.net/jobs/p/c8667460-6086-43ff-b7af-00c7d8e0a476-Assistant-Financial-Planning-Manager-SAVOLA-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=2
328	2434	1677	Entry Level	0-3 Yrs of Exp	Full Time	2020-11-10 13:49:00	https://wuzzuf.net/jobs/p/56272d4a-30d6-4b94-b459-dc306d45a3ce-Localization-Project-Coordinator---Fresh-Graduates-Arabic-Localizer-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=21
329	2435	141	Manager	8-10 Yrs of Exp	Full Time	2020-11-10 13:27:00	https://wuzzuf.net/jobs/p/2ff2ab1c-5045-4891-b6da-512b38836bc2-Supply-Chain-Manager---Furniture-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=1
330	2396	125	Experienced	7-10 Yrs of Exp	Full Time	2020-11-10 13:11:00	https://wuzzuf.net/jobs/p/e9698eaf-6c8a-467c-9b1b-a75111969544-Senior-Treasury-Accountant-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=6
331	1573	1111	Experienced	2-5 Yrs of Exp	Full Time	2020-11-10 14:39:00	https://wuzzuf.net/jobs/p/10914d29-3693-4d10-a90c-ed9ade1c62a0-Senior-Financial-Planning---Analyst-Fresenius-Medical-Care-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=6
332	2436	141	Senior Management	10-20 Yrs of Exp	Full Time	2020-11-10 14:00:00	https://wuzzuf.net/jobs/p/a0dd4256-d823-45db-b422-2634594857dc-Finance-Manager---Furniture-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=1
333	1778	1679	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 14:24:00	https://wuzzuf.net/jobs/p/8f926e0e-c92c-4ce7-8108-2d116560e660-General-Accountant-Premier-Services-and-Recruitment-Overseas-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=10
334	2437	1680	Entry Level	1-6 Yrs of Exp	Full Time	2020-11-10 14:58:00	https://wuzzuf.net/jobs/p/2a9b7156-a231-4b52-9ba6-da634a1909eb-Logistics-Coordinator-Logistic-SAP-Support-Keys-Group-Services-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=15
335	911	644	Experienced	2-4 Yrs of Exp	Full Time	2020-11-10 14:15:00	https://wuzzuf.net/jobs/p/644ad8c3-d344-43b0-9827-c3016382c699-Business-Analyst-IVAS-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=26
336	2438	1681	Manager	10-15 Yrs of Exp	Full Time	2020-11-10 14:52:00	https://wuzzuf.net/jobs/p/64097b62-94bd-4452-a2dd-9ba72d520c02-Happy-Vision-Store-Manager-Sky-Medical-for-Medical-Devices-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=12
337	2439	1682	Manager	10-15 Yrs of Exp	Full Time	2020-11-10 14:49:00	https://wuzzuf.net/jobs/p/5d21a90d-6394-4fe5-b530-d9d11332f7cf-Eyewear-Store-Manager-Sky-Medical-for-Medical-Devices-Giza-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=13
338	2440	1683	Manager	7-10 Yrs of Exp	Full Time	2020-11-10 14:51:00	https://wuzzuf.net/jobs/p/6423b3e1-5522-4166-a65d-8ba28a3426af-Medical-Labs-Area-Manager-Al-Mokhtabar-Laboratories-Dakahlia-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=10
339	2441	1684	Manager	15+ Yrs of Exp	Full Time	2020-11-10 14:29:00	https://wuzzuf.net/jobs/p/a0e8a3f2-3a92-4522-8f69-139a461ce94b-Factory-Manager-Patisserie-Exception-patissiere-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=11
340	2442	311	Experienced	5-8 Yrs of Exp	Full Time	2020-11-10 15:16:00	https://wuzzuf.net/jobs/p/0e042d11-6f81-4f88-af77-1b0b522f650c-Warehouse-Supervisor-e-finance-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=24
341	1033	1687	Experienced	3-4 Yrs of Exp	Full Time	2020-11-10 15:03:00	https://wuzzuf.net/jobs/p/81637c39-0ae9-4d07-a7e7-7150298ce8db-Accountant-Sky-Medical-for-Medical-Devices-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=6
342	1043	462	Experienced	2-4 Yrs of Exp	Full Time	2020-11-10 15:42:00	https://wuzzuf.net/jobs/p/6081a314-bbf7-4a10-b2f8-af2ca72180d3-Treasury-Accountant-Premium-Card-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=12
343	2288	1687	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-10 15:00:00	https://wuzzuf.net/jobs/p/e26efc68-0041-4acf-83e3-d5f79fe74f3d-Warehouse-Keeper-Sky-Medical-for-Medical-Devices-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=25
344	1314	954	Experienced	2+ Yrs of Exp	Full Time	2020-11-10 15:10:00	https://wuzzuf.net/jobs/p/de2461af-375c-42be-b280-1a9599fc49f3-Foreign-Purchasing-Executive-Blend-Furniture-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=6
345	2446	1688	Experienced	6+ Yrs of Exp	Freelance / Project	2020-11-10 15:46:00	https://wuzzuf.net/jobs/p/24ab845f-000f-4f34-b9be-e4a3dab1cf24-Fruit-Post-Harvest-Consultant-Abt-Associates-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=4
346	2447	1689	Manager	5-8 Yrs of Exp	Full Time	2020-11-10 15:11:00	https://wuzzuf.net/jobs/p/9b9f5086-742d-4f85-8288-d4f15babbe4a-Labs-Operations-Area-Manager---Mohandssin-Al-Mokhtabar-Laboratories-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=11
347	2450	1690	Experienced	3+ Yrs of Exp	Full Time	2020-11-10 16:15:00	https://wuzzuf.net/jobs/p/10fb030d-8013-44c4-8d38-239d274a7bf0-Marketing-Accounts-Manager-korAddiction-Sports-Development-Entertainment-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=26
348	1129	1692	Experienced	3-8 Yrs of Exp	Full Time	2020-11-10 16:17:00	https://wuzzuf.net/jobs/p/73111977-28c7-4012-86a9-b4069be8ea25-Accounting-Manager-Infocast-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=1
349	1033	171	Experienced	5-7 Yrs of Exp	Full Time	2020-11-10 16:25:00	https://wuzzuf.net/jobs/p/9fb2325c-b414-4852-9d7b-bb4b55daf01c-Accountant-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=14
350	2454	536	Manager	5-7 Yrs of Exp	Full Time	2020-11-10 16:00:00	https://wuzzuf.net/jobs/p/7cde5d7c-86a9-4df6-8275-60883e0adb00-Warehouse-Section-Head-Arma-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=9
351	2455	2	Manager	3-5 Yrs of Exp	Full Time	2020-11-10 16:18:00	https://wuzzuf.net/jobs/p/b23ffa53-175e-461d-bea6-187184304285-Warehouse-Manager-Medical-Alexandria-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=19
352	2063	135	Experienced	5-7 Yrs of Exp	Full Time	2020-11-10 17:21:00	https://wuzzuf.net/jobs/p/1a1f0896-bf08-4ef6-a057-b660eb8b5390-Cost-Accountant-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=5
353	2086	1694	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-10 17:02:00	https://wuzzuf.net/jobs/p/8c79336e-43ec-4940-8768-825fa9392f79-Accounting-Specialist-Arch-Vision-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=4
354	2459	239	Experienced	2-5 Yrs of Exp	Full Time	2020-11-10 17:44:00	https://wuzzuf.net/jobs/p/72318ea0-2f98-4fc7-9d07-42f74ab6063c-construction-accountant-E3mel-Business-for-Financial-Managerial-Consultancy-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=18
355	2460	60	Manager	5+ Yrs of Exp	Full Time	2020-11-10 17:32:00	https://wuzzuf.net/jobs/p/37c66105-0ef2-41b7-8847-672702034df0-Maitre-DHotel-Egyptian-Or-Foreigner---Alexandria-Paradise-Inn-Hotels-Resorts-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=23
356	1836	1115	Entry Level	0-3 Yrs of Exp	Full Time	2020-11-10 18:46:00	https://wuzzuf.net/jobs/p/dc87d25b-40dd-4abd-8448-1ef9583e3b17-Property-Consultant-Tabarak-Holding-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=25
357	1829	1551	Experienced	2-3 Yrs of Exp	Full Time	2020-11-10 18:00:00	https://wuzzuf.net/jobs/p/33cd4869-026f-4120-a0a9-8d0622bcf831-Telesales-Agent-Fawry-Microfinance-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=15
358	1788	1695	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-10 19:05:00	https://wuzzuf.net/jobs/p/c97dcd82-0b37-459d-b032-cbcf5ce62e93-Executive-Secretary-Serious-construction-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=25
359	2462	239	Experienced	4-5 Yrs of Exp	Full Time	2020-11-10 20:17:00	https://wuzzuf.net/jobs/p/d7bf90db-f2d0-4fe0-98e2-bd57ff66341d-Senior-Forecasting---Analysis-E3mel-Business-for-Financial-Managerial-Consultancy-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=18
360	2166	135	Manager	7-10 Yrs of Exp	Full Time	2020-11-10 22:31:00	https://wuzzuf.net/jobs/p/42758305-646f-4f69-8135-6cb666e3d2db-Treasury-Manager-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=11
361	1788	1699	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-10 22:43:00	https://wuzzuf.net/jobs/p/5f92fbfc-7c5e-42c7-b2ac-8fa1604e97c7-Executive-Secretary-CUBII-Dakahlia-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=24
362	110	1701	Experienced	2-5 Yrs of Exp	Full Time	2020-11-11 09:31:00	https://wuzzuf.net/jobs/p/87eea34a-c9fa-4202-ab0c-c0ecadd9bcbb-Store-Keeper-NMDC-Port-Said-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=19
363	2473	1704	Entry Level		Internship	2020-11-11 10:13:00	https://wuzzuf.net/internship/bce4d4d0-b6c4-425e-a201-ee73c0227e00-Unpaid-accounting-scholarship-Digizilla-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
364	1033	1705	Entry Level	0-3 Yrs of Exp	Full Time	2020-11-11 10:41:00	https://wuzzuf.net/jobs/p/51fa29c6-0867-41ec-8ee1-bb0341b35eb0-Accountant-Hesni-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=4
365	2474	1706	Experienced	3-5 Yrs of Exp	Full Time	2020-11-11 10:12:00	https://wuzzuf.net/jobs/p/ef6d949f-4761-40c5-994d-5d0afdbc1986-Administration-Officer-AMLAK-Finance---Egypt-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=30
366	2475	1707	Entry Level	0-1 Yrs of Exp	Full Time	2020-11-11 10:43:00	https://wuzzuf.net/jobs/p/7cda0091-7577-4b2e-8147-ac9ea1dc41b2-Document-Control-Helper-Better-Home-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=32
367	2470	436	Experienced	2+ Yrs of Exp	Full Time	2020-11-11 10:05:00	https://wuzzuf.net/jobs/p/95078ef3-7953-466b-8120-a83a3943ec3e-ERP-Business-Consultant---HR-Consultant-Dynamicslink-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=33
368	2481	1711	Entry Level		Internship	2020-11-11 11:20:00	https://wuzzuf.net/internship/5c5edb7f-6a32-4eb4-8f30-55c15363a63b-Finance-Intern-Kellogg-Tolaram-Noodles-Egypt-LLC-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=2
369	2482	1709	Manager	15+ Yrs of Exp	Full Time	2020-11-11 11:58:00	https://wuzzuf.net/jobs/p/d619325f-13b5-47f8-8b99-b02c8f1fb9d1-Chief-Financial-Officer-CFO-AACMI-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=8
370	2483	649	Experienced	2-3 Yrs of Exp	Full Time	2020-11-11 11:10:00	https://wuzzuf.net/jobs/p/799141f1-5234-4216-961c-97805f4d186d-Inventory-Accountant-Stock-Controller-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=9
371	2484	1712	Experienced	3+ Yrs of Exp	Full Time	2020-11-11 11:09:00	https://wuzzuf.net/jobs/p/f83458f9-31ca-4376-a5e0-b5ed51f4ed83-Accountant---Fixed-Assets-Cairoscan-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=20
372	2485	1713	Experienced	2-4 Yrs of Exp	Full Time	2020-11-11 11:33:00	https://wuzzuf.net/jobs/p/bb6d8eb2-6af7-4e45-a242-280463171278-Treasury-officer-Vamer-Pharma-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=24
373	1741	1714	Experienced	5+ Yrs of Exp	Full Time	2020-11-11 11:34:00	https://wuzzuf.net/jobs/p/7eb53e0e-3cbf-4986-8143-0428481ebb27-SAP-ABAP-Consultant-e-finance-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=29
374	2486	1703	Senior Management	10+ Yrs of Exp	Full Time	2020-11-11 11:24:00	https://wuzzuf.net/jobs/p/48f250ba-a92d-4c7e-bce2-f5ec1353a6fd-Production-Director-AACMI-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=32
375	2487	297	Experienced	5+ Yrs of Exp	Full Time	2020-11-11 11:49:00	https://wuzzuf.net/jobs/p/819df456-529a-40dd-852f-aedcfb358b94-Senior-Account-Manager--MWG-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=36
376	1110	297	Experienced	5+ Yrs of Exp	Full Time	2020-11-11 11:48:00	https://wuzzuf.net/jobs/p/6dbed52f-fcdc-498d-b209-f8256cea8f1a-Senior-Account-Manager-MWG-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=37
377	2488	2	Entry Level	2-3 Yrs of Exp	Full Time	2020-11-11 11:54:00	https://wuzzuf.net/jobs/p/91e05d47-e4b3-4b33-b15f-8fd9a4f7ce87-Custom-clearance-coordinator-Alexandria-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=12
378	2498	1718	Experienced	3-5 Yrs of Exp	Full Time	2020-11-11 12:13:00	https://wuzzuf.net/jobs/p/b3425868-49a9-4532-acf2-9b9f992c05b6-Financial-Analyst-Hikma-Pharmaceuticals-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=17
379	2499	1613	Manager	10-15 Yrs of Exp	Full Time	2020-11-11 12:29:00	https://wuzzuf.net/jobs/p/abfa7b0e-c913-4b04-af62-4a806c6bab17-Vat---Tax-Manager-MMA-accounting-office-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=20
380	27	239	Experienced	3-5 Yrs of Exp	Full Time	2020-11-11 12:02:00	https://wuzzuf.net/jobs/p/2b3f961a-9df0-4a5e-8172-75d539783834-Odoo-Implementer-E3mel-Business-for-Financial-Managerial-Consultancy-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=28
381	2500	1719	Experienced	2+ Yrs of Exp	Full Time	2020-11-11 12:51:00	https://wuzzuf.net/jobs/p/3a8eadca-32da-4273-a94e-56a130c9ff71-Logistics-Sales-Specialist---International-Trade-doctor-lotus-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=3
382	2501	1393	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-11 13:59:00	https://wuzzuf.net/jobs/p/092df565-be27-445b-8d6c-ea43fc3c88df-Real-Estate-sales-Agent-Banking-sales-RMG-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=1
383	2502	48	Entry Level	0-2 Yrs of Exp	Full Time	2020-11-11 13:38:00	https://wuzzuf.net/jobs/p/cbc8d84c-9c60-46a5-a0e5-99a07090e78b-CFO-Assistant-Stylish-Eve-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=9
384	110	1721	Experienced	5-8 Yrs of Exp	Full Time	2020-11-11 13:26:00	https://wuzzuf.net/jobs/p/6ca55f19-29b7-4f97-81c1-dff92dd832e5-Store-Keeper-Global-For-Elevators-and-Esclators-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=25
385	2172	1645	Entry Level	1+ Yrs of Exp	Full Time	2020-11-11 13:15:00	https://wuzzuf.net/jobs/p/995ffacb-ff8d-4a6c-97e9-720e17f4bbc8-Banking-Call-Center-Representative-Raya-Contact-Center-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=2
386	6	1720	Entry Level	0-2 Yrs of Exp	Full Time	2020-11-11 13:25:00	https://wuzzuf.net/jobs/p/641affb8-8d73-4cd7-8f56-8e2ca9b887db-IT-Help-Desk-Specialist-Fawry-Banking-Payment-Technology-Services-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=13
387	2503	1722	Experienced	3-5 Yrs of Exp	Full Time	2020-11-11 13:08:00	https://wuzzuf.net/jobs/p/ad4f95bb-63fa-433d-ae60-1af9dc7c690e-Senior-Material-Planner---GBPOLO-Ghabbour-Auto-Suez-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=6
388	2504	518	Experienced	3-6 Yrs of Exp	Full Time	2020-11-11 13:53:00	https://wuzzuf.net/jobs/p/e01317d5-abb2-48c5-b68a-f450de969c5e-System-Integration-Analyst-Fawry-Banking-Payment-Technology-Services-Giza-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=13
389	2505	518	Manager	7-9 Yrs of Exp	Full Time	2020-11-11 13:34:00	https://wuzzuf.net/jobs/p/d33b00d3-8221-4396-8086-c25423010a5c-Product-Specialist-Fawry-Banking-Payment-Technology-Services-Giza-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=14
390	2510	1724	Entry Level	2-4 Yrs of Exp	Full Time	2020-11-11 14:00:00	https://wuzzuf.net/jobs/p/578520f4-9f5b-4b31-a250-54949be4223d-Purchasing-Representative-Gulsan-Egypt-Non-Woven-Industries-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=3
391	812	480	Experienced	3+ Yrs of Exp	Full Time	2020-11-11 14:28:00	https://wuzzuf.net/jobs/p/1da12189-bfdd-4cb6-b176-46ea19f43def-Admin-Assistant-Smart-EGAT-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=8
392	2515	333	Experienced	2-3 Yrs of Exp	Full Time	2020-11-11 15:12:00	https://wuzzuf.net/jobs/p/62b7dba5-a757-4261-9e06-d5eee0f92244-محاسبة---Accountant-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=7
393	2516	135	Manager	7-10 Yrs of Exp	Full Time	2020-11-11 15:05:00	https://wuzzuf.net/jobs/p/389c7186-1f25-4254-ae4f-30f70097c914-Accounts-Receivable-Manager---Real-Estate-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=12
394	2063	649	Experienced	3-5 Yrs of Exp	Full Time	2020-11-11 15:38:00	https://wuzzuf.net/jobs/p/416e5a7b-4bb2-4435-9e9f-efcca63c6b86-Cost-Accountant-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=17
395	883	135	Experienced	4-7 Yrs of Exp	Full Time	2020-11-11 15:27:00	https://wuzzuf.net/jobs/p/40dd5305-4c91-4949-8906-b1fa0a51f29c-Office-Manager-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=23
396	2517	1726	Manager	1-5 Yrs of Exp	Part Time ,Full Time	2020-11-11 15:13:00	https://wuzzuf.net/jobs/p/c941b521-75b9-4b31-94ca-9d8427ff0fd4-Stock-exchange-employee-El-Aamana-For-Recruitment-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=24
397	2518	1727	Experienced	5-10 Yrs of Exp	Full Time	2020-11-11 15:57:00	https://wuzzuf.net/jobs/p/503df67c-a073-43f1-bf3c-c358ae7dddc5-Process-improvement-Specialist-Nacita-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=29
398	1043	776	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-11 15:03:00	https://wuzzuf.net/jobs/p/cc7c168a-cb83-4154-bb5b-e7583f4b1b74-Treasury-Accountant-OPPO-Egypt-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=8
399	2454	1728	Experienced	6-8 Yrs of Exp	Full Time	2020-11-11 15:48:00	https://wuzzuf.net/jobs/p/6919c8c9-99d3-46a0-84f6-fc5e70b625aa-Warehouse-Section-Head-ElmarakbySteel-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=3
400	2519	1728	Experienced	3-5 Yrs of Exp	Full Time	2020-11-11 15:58:00	https://wuzzuf.net/jobs/p/6463a640-1188-454b-bfa1-464dba720ee1-Inventory-Controller-ElmarakbySteel-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=8
401	123	141	Experienced	1-3 Yrs of Exp	Full Time	2020-11-11 15:55:00	https://wuzzuf.net/jobs/p/d90eb9a5-fe1a-4e69-b797-aff7e579655f-Sales-Executive-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=3
402	1773	1729	Manager	5-8 Yrs of Exp	Full Time	2020-11-11 16:53:00	https://wuzzuf.net/jobs/p/069b4fc2-f88a-4b3a-8bb0-0d8921819580-Finance-Manager-Infinity-Business-Solutions-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=2
403	2524	1731	Experienced	3+ Yrs of Exp	Full Time	2020-11-11 16:06:00	https://wuzzuf.net/jobs/p/6acefd58-f1d3-4811-9b13-f3a1abb5a3bd-Treasury-Analyst-Ideal-Standard-International-Egypt-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=8
404	923	1732	Experienced	3-5 Yrs of Exp	Full Time	2020-11-11 16:36:00	https://wuzzuf.net/jobs/p/38d4592e-50de-4d01-87ae-ee76a0dd2213-Senior-Accountant-Oasis-Distribution-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=12
405	2525	1732	Experienced	2-3 Yrs of Exp	Full Time	2020-11-11 16:38:00	https://wuzzuf.net/jobs/p/73b95a6d-619a-4c9a-abd0-1c3a99a1a1a3-General-Accountant--AR---AP--Oasis-Distribution-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=14
406	1778	1732	Experienced	2-3 Yrs of Exp	Full Time	2020-11-11 16:46:00	https://wuzzuf.net/jobs/p/3db0e121-72b9-4273-8f1e-7a4116c4f8cb-General-Accountant-Oasis-Distribution-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=17
407	2526	1714	Experienced	5-6 Yrs of Exp	Full Time	2020-11-11 16:56:00	https://wuzzuf.net/jobs/p/415be05b-8df7-4265-a87d-8d126a74ce11-SAP-FI-CA-Consultant-e-finance-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=29
408	2527	1733	Manager	10-15 Yrs of Exp	Full Time	2020-11-11 16:29:00	https://wuzzuf.net/jobs/p/513e5943-1786-467f-978b-cb801f5b358c-Farm-Manager-Dairy-Farm-Beheira-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=34
409	2528	1728	Experienced	2-4 Yrs of Exp	Full Time	2020-11-11 16:13:00	https://wuzzuf.net/jobs/p/8b362f9e-9917-4c7f-b059-88a4aa49c3ae-Transportation-Specialist-ElmarakbySteel-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=3
410	2529	1734	Experienced	2-5 Yrs of Exp	Full Time	2020-11-11 16:14:00	https://wuzzuf.net/jobs/p/682650b0-d53b-4262-b450-3f3dbf05a973-Sourcing-Engineer-KONE-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=5
411	1033	1735	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-11 17:03:00	https://wuzzuf.net/jobs/p/043dd4f4-0186-45bd-94c2-7a3feb59fe61-Accountant-ECRAL-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=5
412	2533	996	Manager	10+ Yrs of Exp	Full Time	2020-11-11 17:28:00	https://wuzzuf.net/jobs/p/c4abf12b-929e-42f8-87e0-70b5daa2db0b-MEP-Area-ManagerConstruction-MH-Group-Giza-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=8
413	2534	1734	Experienced	1-3 Yrs of Exp	Full Time	2020-11-11 17:27:00	https://wuzzuf.net/jobs/p/8c062226-9d13-4e07-8f56-52973bc7ff71-Purchase-Order-Coordinator-KONE-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=5
414	2535	60	Manager	7+ Yrs of Exp	Full Time	2020-11-11 18:26:00	https://wuzzuf.net/jobs/p/045d6dd0-4d8d-4e6a-b789-f406936bf8da-Assistant-Food-And-Beverage-Manager---Alexandria-Paradise-Inn-Hotels-Resorts-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=30
415	1033	1740	Entry Level	0-3 Yrs of Exp	Full Time	2020-11-11 18:09:00	https://wuzzuf.net/jobs/p/b370c9c0-e9f9-4229-b894-5f9c29632bb7-Accountant-Gold-Pack-For-Carton-And-Paper-Products-Port-Said-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=5
416	2537	1204	Experienced	6-8 Yrs of Exp	Full Time	2020-11-11 18:20:00	https://wuzzuf.net/jobs/p/2b9e90d8-0dd2-4cb6-a400-e41dfaad2cae-Quantity-Surveyor-Engineer-New-Plan-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=29
417	1295	1741	Manager	4-8 Yrs of Exp	Full Time	2020-11-11 18:49:00	https://wuzzuf.net/jobs/p/93ad893d-f963-406c-8914-2ea368a91623-Supply-Chain-Manager-Gelila-Monufya-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=1
418	2539	951	Manager	6-10 Yrs of Exp	Full Time	2020-11-11 19:28:00	https://wuzzuf.net/jobs/p/717a9731-c6cf-4412-a505-67701879271b-Program-Manager---IT-Multinational-Pillars-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=13
419	2545	1743	Experienced	5-7 Yrs of Exp	Full Time	2020-11-12 07:23:00	https://wuzzuf.net/jobs/p/84a02160-0615-442d-9e2e-b86da6f001c4-Oracle-Financial-Consultants---Oracle-EBS-Megamind-IT-Solutions-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=35
420	2546	1743	Experienced	7-10 Yrs of Exp	Full Time	2020-11-12 07:24:00	https://wuzzuf.net/jobs/p/b1468e91-b4d6-4c37-8f39-8c6e927b7091-Oracle-Supply-Chain-Consultants---Oracle-EBS-Megamind-IT-Solutions-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=2
421	1033	316	Experienced	2-4 Yrs of Exp	Full Time	2020-11-12 09:36:00	https://wuzzuf.net/jobs/p/6413ed7a-29bf-413c-b956-03bc824000d9-Accountant-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=21
422	1129	135	Manager	15+ Yrs of Exp	Full Time	2020-11-12 09:13:00	https://wuzzuf.net/jobs/p/cfa61c4e-0612-4800-8700-e9250d902b69-Accounting-Manager-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=3
423	1033	133	Entry Level	0-1 Yrs of Exp	Full Time	2020-11-12 10:31:00	https://wuzzuf.net/jobs/p/5b1bc432-97fd-4911-9cb6-9aa656e5198a-Accountant-Premier-Services-and-Recruitment-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=13
424	2552	1201	Experienced	4-5 Yrs of Exp	Full Time	2020-11-12 10:14:00	https://wuzzuf.net/jobs/p/701b2561-c2fb-415d-8e40-3f8a416ed378-Senior-Leasing-Key-Account-Executive-Wadi-Degla-Group-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=29
425	2054	184	Experienced	4-8 Yrs of Exp	Full Time	2020-11-12 10:55:00	https://wuzzuf.net/jobs/p/79379ed9-8e7b-422b-b107-e0f89a326d6c-Senior-Purchasing-Specialist-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=7
426	1127	1151	Experienced	1-3 Yrs of Exp	Full Time	2020-11-12 10:36:00	https://wuzzuf.net/jobs/p/8d4b7071-fac8-442a-bcd3-885522fbf33b-Purchasing-Specialist-Macro-Group-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=8
427	85	146	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-12 10:43:00	https://wuzzuf.net/jobs/p/fdc560b3-9030-4360-ae99-092d60ca9288-Internal-Auditor-Misr-Elkheir-Foundation-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=7
428	2554	1201	Experienced	2-4 Yrs of Exp	Full Time	2020-11-12 10:04:00	https://wuzzuf.net/jobs/p/a803706b-136c-4871-aca0-bdfdbcfcad9b-Leasing-Coordinator-Wadi-Degla-Group-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=25
429	2555	1747	Manager	15-20 Yrs of Exp	Full Time	2020-11-12 10:15:00	https://wuzzuf.net/jobs/p/b4c6ab98-a3d8-4d95-979e-bbaa0bbc5ebe-Projects-Manager-Major-for-Construction-and-Decoration-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=2
430	1902	175	Manager	10-15 Yrs of Exp	Full Time	2020-11-12 11:57:00	https://wuzzuf.net/jobs/p/30b1eed4-4d8b-4691-9f02-af1b1ce75431-Internal-Audit-Manager-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=27
431	2558	1749	Experienced	2-5 Yrs of Exp	Full Time	2020-11-12 11:23:00	https://wuzzuf.net/jobs/p/90e18b0f-6c77-45c8-b994-7e30f3763298-Technical-Office-Engineer-Ikon-Industries-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=28
432	2288	1728	Experienced	2-4 Yrs of Exp	Full Time	2020-11-12 11:00:00	https://wuzzuf.net/jobs/p/09a525e2-0804-4b7b-ac42-966b611e0b84-Warehouse-Keeper-ElmarakbySteel-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=16
433	2561	152	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 11:33:00	https://wuzzuf.net/jobs/p/adcb23b4-38df-442f-810f-f31d9454ecb9-Accounting-Manager-مدير-حسابات-PanExcel-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=2
434	1261	1751	Experienced	5-10 Yrs of Exp	Full Time	2020-11-12 11:39:00	https://wuzzuf.net/jobs/p/9df9ec45-b0eb-40a1-b8dc-987b73e14e7d-Accounts-Receivable-Accountant-Venti-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=18
435	2562	1729	Manager	5-6 Yrs of Exp	Full Time	2020-11-12 11:10:00	https://wuzzuf.net/jobs/p/fd471cce-bc14-46cc-9afa-de98b66d1605-Corporate-Development-Manager-Infinity-Business-Solutions-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=32
436	2563	1151	Experienced	2-4 Yrs of Exp	Full Time	2020-11-12 11:01:00	https://wuzzuf.net/jobs/p/c31baa3e-95f5-45b0-80db-d4cc630cecf1-Senior-Personnel-Specialist-Macro-Group-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=12
437	2565	1710	Experienced	2-4 Yrs of Exp	Full Time	2020-11-12 12:29:00	https://wuzzuf.net/jobs/p/1970ee3a-330a-4dd6-bdff-248d0c91a584-Accounting-Officer-Pannelli-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=2
438	1129	1752	Manager	8-10 Yrs of Exp	Full Time	2020-11-12 12:56:00	https://wuzzuf.net/jobs/p/21a23152-f7a1-4d80-949a-c179720f77ea-Accounting-Manager-Cecil-Intelligent-Childhood-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=5
439	2564	1753	Experienced	3+ Yrs of Exp	Full Time	2020-11-12 12:44:00	https://wuzzuf.net/jobs/p/790f5e39-47c3-490b-ac77-893713518926-Accounting-Associate-The-Hair-Addict-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=6
440	2262	1754	Experienced	3+ Yrs of Exp	Full Time	2020-11-12 12:20:00	https://wuzzuf.net/jobs/p/050cf6a1-7597-46fb-8f05-9a20b9ea08c6-Accountant---Alexandria-Negresco-Alexandria-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=24
441	2566	1755	Entry Level	1-1 Yrs of Exp	Full Time	2020-11-12 12:48:00	https://wuzzuf.net/jobs/p/73bfc3c7-6ac7-4595-8a2e-5f95af9de257-Office-Administrative-Assistant-The-Hair-Addict-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=35
442	1033	1758	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-12 12:27:00	https://wuzzuf.net/jobs/p/f09e294a-4ca5-4f70-9ae2-9dbbedc983d3-Accountant-Medica-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=13
443	2572	1762	Manager	15-20 Yrs of Exp	Full Time	2020-11-12 13:33:00	https://wuzzuf.net/jobs/p/d678b519-cd39-4939-8af5-2a4860acb50b-Cost-Accounting-Manager-Monufya-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=5
444	1033	1763	Experienced	4-5 Yrs of Exp	Full Time	2020-11-12 13:01:00	https://wuzzuf.net/jobs/p/dbfc8717-fc70-460d-95b4-246d740f307f-Accountant-TAQA-Gas-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=24
445	2573	142	Manager	10-15 Yrs of Exp	Full Time	2020-11-12 13:09:00	https://wuzzuf.net/jobs/p/fcb09c68-c108-401f-98c7-a3d780feac0e-Cost-Control-Manager-Alkan-CIT-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=38
446	1033	1766	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 14:36:00	https://wuzzuf.net/jobs/p/2afd26e5-4fa0-4efa-92d3-c4e5317af8a7-Accountant-TopTech-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=16
447	66	1769	Experienced	2-3 Yrs of Exp	Full Time	2020-11-12 14:40:00	https://wuzzuf.net/jobs/p/e41b92e9-640a-4fd6-aa98-dd2f19c379dc-Collection-Officer-Zamil-Steel-Buildings-Co-Giza-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=19
448	2579	85	Experienced	3+ Yrs of Exp	Freelance / Project	2020-11-12 14:21:00	https://wuzzuf.net/jobs/p/93b9a69a-4ce7-4751-a67f-3c44063025d4-System-Administrator-Outsource-Interact-Technology-Solutions-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=1
449	2581	394	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-12 14:09:00	https://wuzzuf.net/jobs/p/b0927cd8-7f27-4855-8c1d-bfd774c3396e-Senior-Business-Operations-Executive---Fawry-Pay-Fawry-Banking-Payment-Technology-Services-Giza-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=18
450	1477	1046	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-12 15:10:00	https://wuzzuf.net/jobs/p/81690a62-bc1c-47ff-bef4-7703edd71206-Microsoft-Dynamics-AX-Consultant-Allamna-Integrated-Solutions-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=22
451	2584	1772	Experienced	4-7 Yrs of Exp	Full Time	2020-11-12 15:19:00	https://wuzzuf.net/jobs/p/a7416794-f2d2-4a1e-a4a3-fcc615c0028f-Senior-Payroll-Specialist-GEMS-Education-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=24
452	1268	1773	Manager	10-15 Yrs of Exp	Full Time	2020-11-12 15:47:00	https://wuzzuf.net/jobs/p/ba6b17ca-4892-43f4-a94e-504e48006445-Production-Manager-Gelila-Monufya-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=37
453	2585	1317	Experienced	5-12 Yrs of Exp	Full Time	2020-11-12 15:33:00	https://wuzzuf.net/jobs/p/d4592d23-17bd-4374-a7ae-b64c81e8c3c9-Export-Sales-Manager-Nile-for-plastic-industries-Giza-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=10
454	2587	1578	Entry Level	0-2 Yrs of Exp	Full Time	2020-11-12 16:22:00	https://wuzzuf.net/jobs/p/349365d4-3de4-4cc1-91a6-49a89162e240-Junior-Associate-Business-Research-CRIF-EGYPT-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=14
455	2588	1650	Entry Level	0-1 Yrs of Exp	Full Time	2020-11-12 16:34:00	https://wuzzuf.net/jobs/p/5f485223-315f-4a45-a157-f60baf72b359-Supplier-Operations-Coordinator-Brimore-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=21
456	2589	1482	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 16:25:00	https://wuzzuf.net/jobs/p/223d2fee-c13c-4f7f-8728-fe2f50a6a43b-Export-Specialist-Life-Chemicals-Group-Cairo-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=3
457	1033	1775	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-12 16:58:00	https://wuzzuf.net/jobs/p/a7fe1d4f-75a8-46cc-838f-671d2a044942-Accountant-EGD-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=15
458	1009	316	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 16:53:00	https://wuzzuf.net/jobs/p/e6f9fb78-04b6-430d-8bd5-edf27c074e84-Database-Administrator-Giza-Egypt?l=bp&t=bj&a=Banking-Jobs-in-Egypt&o=13
459	2596	1777	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-12 16:48:00	https://wuzzuf.net/jobs/p/8f8b6137-630c-44b8-9645-fad7cb3a6930-Online-Operations-Specialist-dynamics-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=10
460	98	1778	Experienced	5-10 Yrs of Exp	Full Time	2020-11-12 18:13:00	https://wuzzuf.net/jobs/p/34db2d97-84ef-4fe8-9fd5-c66b1cbf4886-Financial-Accountant-Equiti-Group-LTD-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=13
461	2597	900	Entry Level	2-5 Yrs of Exp	Full Time	2020-11-12 18:34:00	https://wuzzuf.net/jobs/p/16509d0e-d238-4083-99a5-f28e0763cda8-Administrative-Assistant-Cairo-Egypt?l=bp&t=bj&a=Accounting-Finance-Jobs-in-Egypt&o=30
462	2599	1780	Experienced	2+ Yrs of Exp	Full Time	2020-11-12 20:20:00	https://wuzzuf.net/jobs/p/1a207d26-ca59-4db8-b98d-2e9ba4628635-Indoor-Sales-Representative-Nexus-Logistics-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=12
463	2601	1782	Experienced	4+ Yrs of Exp	Full Time	2020-11-12 20:21:00	https://wuzzuf.net/jobs/p/cbfe0569-ee5d-4ed0-921c-3108b60e3f01-Senior-Operations-Specialist-Nexus-Logistics-Cairo-Egypt?l=bp&t=bj&a=Logistics-Supply-Chain-in-Egypt&o=8
\.


--
-- Data for Name: accounting_finance_job_tags; Type: TABLE DATA; Schema: public; Owner: fscjjarkblijha
--

COPY public.accounting_finance_job_tags (job_tags_id, job_id, tag_id) FROM stdin;
1	1	3737
2	1	2131
3	1	283
4	1	2166
5	1	350
6	1	286
7	1	108
8	1	287
9	1	939
10	1	1783
11	2	3738
12	2	3739
13	2	3740
14	2	3741
15	2	3742
16	2	3743
17	3	211
18	3	335
19	3	391
20	3	389
21	3	390
22	3	387
23	3	285
24	3	549
25	3	154
26	3	381
27	4	47
28	4	48
29	4	18
30	4	183
31	4	1692
32	4	256
33	4	219
34	4	489
35	4	800
36	5	3737
37	5	2131
38	5	283
39	5	2166
40	5	350
41	5	286
42	5	108
43	5	287
44	5	939
45	5	1783
46	6	3738
47	6	3739
48	6	3740
49	6	3741
50	6	3742
51	6	3743
52	7	163
53	7	335
54	7	526
55	7	387
56	7	1784
57	8	465
58	8	3673
59	8	331
60	8	305
61	9	3744
62	9	465
63	9	3745
64	10	350
65	10	283
66	10	286
67	10	346
68	10	487
69	10	287
70	10	285
71	10	402
72	11	283
73	11	350
74	11	286
75	11	287
76	11	285
77	12	283
78	12	286
79	12	3802
80	12	288
81	12	287
82	12	3803
83	12	285
84	12	939
85	13	283
86	13	232
87	13	286
88	13	256
89	13	521
90	13	2078
91	13	287
92	13	285
93	13	484
94	14	283
95	14	108
96	14	286
97	14	350
98	14	180
99	14	13
100	14	487
101	14	287
102	14	285
103	15	283
104	15	232
105	15	286
106	15	3804
107	15	285
108	15	211
109	16	350
110	16	3671
111	16	2619
112	16	232
113	16	283
114	16	333
115	16	287
116	16	2657
117	16	285
118	17	283
119	17	286
120	17	1305
121	17	287
122	17	285
123	18	283
124	18	3805
125	18	256
126	18	3012
127	18	287
128	18	688
129	18	36
130	18	2992
131	18	285
132	18	164
133	18	1488
134	19	232
135	19	108
136	19	286
137	19	283
138	19	2031
139	19	1305
140	19	256
141	19	154
142	19	285
143	20	280
144	20	11
145	20	3543
146	20	10
147	20	56
148	20	373
149	20	607
150	20	228
151	20	285
152	21	530
153	21	3148
154	21	3806
155	21	536
156	21	1
157	21	228
158	21	257
159	21	281
160	21	3212
161	22	283
162	22	2344
163	22	521
164	22	2078
165	22	232
166	22	108
167	22	1783
168	22	179
169	22	1746
170	22	1527
171	22	2943
172	22	3807
173	22	3808
174	23	393
175	23	2129
176	23	521
177	23	3387
178	23	857
179	23	285
180	24	486
181	24	304
182	24	163
183	24	305
184	24	303
185	24	331
186	25	11
187	25	789
188	25	10
189	25	1296
190	25	156
191	25	154
192	25	29
193	26	1103
194	26	155
195	26	565
196	26	536
197	26	228
198	26	489
199	26	1770
200	26	291
201	26	47
202	26	48
203	27	183
204	27	1582
205	27	18
206	27	799
207	27	777
208	27	3809
209	27	3810
210	27	304
211	27	305
212	27	27
213	27	211
214	28	263
215	28	11
216	28	180
217	28	10
218	28	2679
219	28	1505
220	28	367
221	28	228
222	28	28
223	28	68
224	29	232
225	29	109
226	29	108
227	29	2344
228	29	106
229	29	521
230	29	2078
231	29	107
232	29	1527
233	29	366
234	29	3811
235	29	113
236	30	11
237	30	3777
238	30	10
239	30	375
240	30	3776
241	30	374
242	30	652
243	30	67
244	30	265
245	30	622
246	30	17
247	31	465
248	31	3812
249	31	3813
250	31	3814
251	31	3815
252	31	3816
253	31	261
254	31	304
255	31	305
256	31	3666
257	32	11
258	32	47
259	32	313
260	32	10
261	32	228
262	32	489
263	32	53
264	32	29
265	32	48
266	33	346
267	33	3817
268	33	395
269	33	304
270	33	305
271	33	303
272	33	50
273	34	2436
274	34	3818
275	34	331
276	34	475
277	34	379
278	34	2323
279	34	304
280	34	3700
281	34	305
282	34	3819
283	34	2773
284	35	256
285	35	486
286	35	489
287	35	345
288	35	47
289	35	3820
290	35	3821
291	35	303
292	35	50
293	36	108
294	36	280
295	36	465
296	36	555
297	36	295
298	36	304
299	36	305
300	37	164
301	37	13
302	37	324
303	37	487
304	37	345
305	37	36
306	37	305
307	37	303
308	37	50
309	38	3822
310	38	554
311	38	555
312	38	256
313	38	362
314	38	228
315	38	558
316	38	304
317	38	305
318	38	3823
319	39	554
320	39	335
321	39	555
322	39	381
323	39	2055
324	39	3824
325	39	304
326	39	305
327	39	164
328	39	211
329	40	465
330	40	3825
331	40	304
332	40	305
333	40	331
334	41	465
335	41	333
336	41	304
337	41	305
338	41	331
339	42	108
340	42	554
341	42	555
342	42	2146
343	42	2055
344	42	304
345	42	305
346	42	303
347	43	480
348	43	554
349	43	555
350	43	256
351	43	381
352	43	358
353	43	304
354	43	2475
355	43	305
356	44	480
357	44	554
358	44	180
359	44	555
360	44	256
361	44	1330
362	44	462
363	44	304
364	44	305
365	45	1916
366	45	554
367	45	2146
368	45	2323
369	45	305
370	45	303
371	45	331
372	46	369
373	46	108
374	46	555
375	46	2146
376	46	367
377	46	1251
378	46	304
379	46	554
380	46	368
381	47	480
382	47	466
383	47	2837
384	47	993
385	47	3826
386	47	2476
387	47	304
388	47	154
389	47	3827
390	48	344
391	48	2900
392	48	18
393	48	1716
394	48	13
395	48	489
396	48	3828
397	48	36
398	48	47
399	48	164
400	48	48
401	49	108
402	49	3829
403	49	465
404	49	335
405	49	3813
406	49	1784
407	49	305
408	49	3666
409	50	163
410	50	232
411	50	1981
412	50	3830
413	50	287
414	50	3831
415	51	283
416	51	2945
417	51	3832
418	51	350
419	51	287
420	51	349
421	51	285
422	51	286
423	52	286
424	52	285
425	52	3485
426	52	2619
427	52	283
428	53	108
429	53	285
430	53	211
431	53	286
432	53	36
433	53	234
434	53	283
435	54	154
436	54	55
437	54	3834
438	54	11
439	54	65
440	54	29
441	54	228
442	54	10
443	55	3837
444	55	27
445	55	335
446	55	18
447	55	3838
448	55	211
449	55	3207
450	55	3839
451	55	183
452	56	345
453	56	155
454	56	255
455	56	2562
456	56	2476
457	56	256
458	56	480
459	57	232
460	57	285
461	57	241
462	57	238
463	57	3856
464	57	3857
465	57	2452
466	57	3858
467	57	449
468	58	219
469	58	1670
470	58	335
471	58	393
472	59	305
473	59	2711
474	59	304
475	59	211
476	59	548
477	59	554
478	59	256
479	59	3859
480	59	487
481	59	108
482	59	234
483	60	345
484	60	303
485	60	2146
486	60	331
487	60	3860
488	60	180
489	60	304
490	61	1867
491	61	287
492	61	285
493	61	466
494	61	256
495	61	465
496	61	350
497	61	393
498	61	283
499	62	287
500	62	2168
501	62	381
502	62	280
503	62	232
504	62	350
505	62	522
506	62	283
507	62	3864
508	63	287
509	63	285
510	63	3865
511	63	3866
512	63	232
513	63	350
514	63	2454
515	63	283
516	63	343
517	64	554
518	64	521
519	64	13
520	64	305
521	64	304
522	64	256
523	64	2772
524	64	465
525	64	333
526	65	554
527	65	108
528	65	548
529	65	305
530	65	2711
531	65	304
532	65	256
533	65	3859
534	65	234
535	65	487
536	65	211
537	66	554
538	66	13
539	66	305
540	66	304
541	66	138
542	66	465
543	66	36
544	66	487
545	66	2055
546	67	554
547	67	305
548	67	256
549	67	3867
550	67	2146
551	67	345
552	68	232
553	68	285
554	68	211
555	68	3868
556	68	154
557	68	286
558	68	280
559	68	1746
560	68	180
561	68	283
562	69	349
563	69	3871
564	69	2943
565	69	558
566	69	283
567	69	232
568	69	287
569	69	381
570	69	350
571	69	285
572	70	393
573	70	283
574	70	108
575	70	1018
576	70	3872
577	70	486
578	70	163
579	70	285
580	71	50
581	71	114
582	71	303
583	71	734
584	72	283
585	72	11
586	72	2621
587	72	3543
588	72	154
589	72	3875
590	72	796
591	72	381
592	72	228
593	72	373
594	73	304
595	73	3876
596	73	554
597	73	36
598	73	555
599	73	303
600	73	558
601	73	2146
602	74	211
603	74	241
604	74	449
605	74	2229
606	74	108
607	74	13
608	74	242
609	74	487
610	74	238
611	74	335
612	75	350
613	75	3878
614	75	487
615	75	287
616	75	285
617	75	234
618	75	211
619	75	283
620	75	3879
621	76	558
622	76	228
623	76	554
624	76	234
625	76	3149
626	76	292
627	76	555
628	76	362
629	76	3880
630	76	295
631	76	3881
632	77	10
633	77	183
634	77	156
635	77	11
636	77	381
637	77	2110
638	77	18
639	77	280
640	77	154
641	78	536
642	78	256
643	78	292
644	78	3884
645	78	295
646	78	2820
647	78	228
648	78	13
649	78	560
650	78	344
651	78	37
652	79	466
653	79	2596
654	79	3885
655	79	156
656	79	36
657	79	2834
658	79	304
659	79	228
660	79	2476
661	79	1935
662	79	3886
663	80	3887
664	80	1918
665	80	156
666	80	304
667	80	305
668	80	1916
669	80	465
670	80	18
671	80	333
672	81	335
673	81	304
674	81	305
675	81	1784
676	81	2476
677	81	3888
678	81	798
679	81	3889
680	81	334
681	82	3890
682	82	3891
683	82	261
684	82	3816
685	82	305
686	82	486
687	82	465
688	82	3892
689	83	403
690	83	2344
691	83	108
692	83	287
693	83	36
694	83	234
695	83	285
696	83	280
697	83	283
698	83	350
699	83	939
700	84	2749
701	84	809
702	84	486
703	84	3501
704	84	3500
705	84	3499
706	84	551
707	84	256
708	84	3498
709	84	489
710	85	2146
711	85	554
712	85	305
713	85	555
714	85	304
715	85	108
716	86	2146
717	86	305
718	86	554
719	86	304
720	86	555
721	86	345
722	86	303
723	86	1604
724	87	334
725	87	389
726	87	391
727	87	335
728	87	211
729	87	387
730	88	1784
731	88	391
732	88	211
733	88	2175
734	88	387
735	88	27
736	88	18
737	88	335
738	88	64
739	88	183
740	89	286
741	89	280
742	89	285
743	89	283
744	90	1584
745	90	10
746	90	9
747	90	212
748	90	1583
749	90	8
750	90	211
751	90	228
752	90	3910
753	91	286
754	91	280
755	91	285
756	91	211
757	91	283
758	92	2146
759	92	554
760	92	2956
761	92	2762
762	92	304
763	92	303
764	92	555
765	92	305
766	93	387
767	93	3041
768	93	2175
769	93	1580
770	93	108
771	93	522
772	93	1784
773	93	1086
774	93	335
775	93	391
776	93	218
777	94	256
778	94	18
779	94	466
780	94	3603
781	94	3912
782	94	47
783	94	48
784	94	1199
785	95	2455
786	95	280
787	95	2344
788	95	3914
789	95	283
790	95	3915
791	95	285
792	95	286
793	96	164
794	96	462
795	96	373
796	96	280
797	96	156
798	96	1296
799	96	1502
800	96	154
801	96	11
802	96	10
803	97	447
804	97	8
805	97	3901
806	97	17
807	97	314
808	97	154
809	97	56
810	97	10
811	98	65
812	98	2303
813	98	285
814	98	108
815	98	394
816	98	350
817	98	393
818	98	287
819	98	164
820	98	283
821	98	1953
822	99	114
823	99	466
824	99	256
825	99	163
826	100	283
827	100	232
828	100	286
829	100	285
830	101	285
831	101	283
832	101	394
833	101	36
834	101	350
835	101	287
836	101	521
837	101	393
838	101	154
839	102	256
840	102	29
841	102	180
842	102	67
843	102	108
844	102	11
845	102	787
846	102	1750
847	102	3916
848	102	10
849	103	449
850	103	448
851	103	280
852	103	242
853	103	381
854	103	211
855	103	241
856	103	3917
857	103	2406
858	103	108
859	104	331
860	104	761
861	104	108
862	104	3918
863	104	465
864	104	333
865	104	305
866	104	138
867	105	3924
868	105	3012
869	105	232
870	105	853
871	105	3925
872	105	349
873	105	211
874	105	285
875	105	2992
876	105	283
877	105	3926
878	106	3927
879	106	27
880	106	108
881	106	232
882	106	3280
883	106	18
884	106	183
885	106	1200
886	106	73
887	106	403
888	106	489
889	106	283
890	107	3282
891	107	3928
892	107	3929
893	107	233
894	107	486
895	107	489
896	107	1984
897	107	73
898	107	3930
899	107	2636
900	107	381
901	108	2146
902	108	554
903	108	555
904	108	3931
905	109	285
906	109	287
907	109	3932
908	109	286
909	109	350
910	109	13
911	109	283
912	110	1746
913	110	3933
914	110	939
915	110	285
916	110	287
917	110	332
918	110	286
919	110	1867
920	110	283
921	111	285
922	111	29
923	111	10
924	111	584
925	111	393
926	111	11
927	112	1739
928	112	2522
929	112	554
930	112	303
931	112	3046
932	112	343
933	112	2475
934	112	555
935	112	379
936	113	951
937	113	489
938	113	281
939	113	155
940	113	530
941	113	353
942	113	47
943	113	255
944	113	228
945	114	304
946	114	343
947	114	3936
948	114	305
949	114	487
950	114	3166
951	114	3912
952	114	555
953	114	554
954	115	304
955	115	2146
956	115	234
957	115	303
958	115	164
959	115	280
960	115	554
961	116	108
962	116	688
963	116	285
964	116	283
965	116	180
966	116	287
967	116	2168
968	116	381
969	116	286
970	117	285
971	117	2168
972	117	350
973	117	108
974	117	283
975	117	286
976	117	287
977	118	211
978	118	688
979	118	280
980	118	335
981	118	3945
982	118	381
983	118	283
984	118	1866
985	118	2235
986	118	3946
987	118	36
988	119	285
989	119	286
990	119	232
991	119	283
992	120	3952
993	120	286
994	120	3461
995	120	3953
996	120	283
997	121	283
998	121	2196
999	121	211
1000	121	371
1001	121	280
1002	121	285
1003	121	286
1004	121	2823
1005	121	3166
1006	121	3494
1007	121	287
1008	122	219
1009	122	183
1010	122	393
1011	122	2081
1012	122	108
1013	122	853
1014	122	27
1015	122	18
1016	123	286
1017	123	350
1018	123	108
1019	123	2944
1020	123	3956
1021	123	287
1022	123	3957
1023	123	283
1024	123	285
1025	124	3700
1026	124	304
1027	124	480
1028	124	305
1029	124	108
1030	124	554
1031	124	465
1032	124	939
1033	124	2476
1034	124	555
1035	125	214
1036	125	194
1037	125	2258
1038	125	216
1039	125	544
1040	125	546
1041	125	146
1042	125	251
1043	125	497
1044	125	545
1068	158	283
1069	158	287
1070	158	286
1071	158	1305
1072	158	350
1073	158	3991
1074	159	3992
1075	159	3993
1076	159	3994
1077	159	285
1078	159	3995
1079	159	280
1080	159	853
1081	159	283
1082	159	287
1083	159	350
1084	160	285
1085	160	2324
1086	160	283
1087	160	286
1088	160	2196
1089	161	10
1090	161	47
1091	161	108
1092	161	556
1093	161	489
1094	161	13
1095	161	164
1096	161	11
1097	162	36
1098	162	10
1099	162	853
1100	162	521
1101	162	857
1102	162	115
1103	162	164
1104	162	21
1105	162	11
1106	163	3456
1107	163	1863
1108	163	102
1109	163	648
1110	163	29
1111	164	3104
1112	164	285
1113	164	3996
1114	164	2321
1115	164	1305
1116	164	287
1117	164	3997
1118	164	283
1119	164	232
1120	164	286
1121	164	2270
1122	165	50
1123	165	73
1124	165	357
1125	165	1311
1126	165	489
1127	165	582
1128	165	36
1129	166	2944
1130	166	393
1131	166	394
1132	166	350
1133	166	232
1134	166	285
1135	166	287
1136	166	853
1137	167	211
1138	167	349
1139	167	2619
1140	167	1305
1141	167	2270
1142	167	3999
1143	167	285
1144	167	283
1145	167	2321
1146	167	3104
1147	167	286
1148	167	1364
1149	168	467
1150	168	362
1151	168	555
1152	168	360
1153	168	2345
1154	168	285
1155	168	1020
1156	168	228
1157	168	563
1158	168	292
1159	168	4000
1160	168	146
1161	169	821
1162	169	73
1163	169	4001
1164	169	1018
1165	169	4002
1166	169	2760
1167	169	1820
1168	169	4003
1169	169	381
1170	170	303
1171	170	255
1172	170	305
1173	170	304
1174	170	155
1175	171	362
1176	171	4004
1177	171	2505
1178	171	536
1179	171	555
1180	171	530
1181	171	554
1182	171	747
1183	171	228
1184	171	565
1185	171	108
1186	172	283
1187	172	108
1188	172	1696
1189	172	286
1190	172	350
1191	172	4006
1192	172	4007
1193	172	2168
1194	172	285
1195	172	287
1196	173	489
1197	173	18
1198	173	183
1199	173	47
1200	173	36
1201	173	487
1202	173	4008
1203	173	48
1204	173	211
1205	174	402
1206	174	3032
1207	174	287
1208	174	285
1209	174	234
1210	174	283
1211	174	4012
1212	174	2455
1213	174	332
1214	175	256
1215	175	4013
1216	175	465
1217	175	3829
1218	175	228
1219	175	466
1220	175	486
1221	175	1884
1222	175	346
1223	176	211
1224	176	335
1225	176	36
1226	176	1784
1227	176	4014
1228	176	387
1229	176	356
1230	176	391
1231	176	285
1232	177	211
1233	177	335
1234	177	688
1235	177	154
1236	177	1784
1237	177	334
1238	177	387
1239	178	487
1240	178	4008
1241	178	211
1242	178	36
1243	178	18
1244	178	183
1245	178	48
1246	178	489
1247	178	47
1248	179	115
1249	179	853
1250	179	29
1251	179	67
1252	179	521
1253	180	2454
1254	180	283
1255	180	285
1256	180	36
1257	180	287
1258	180	211
1259	180	487
1260	180	280
1261	180	350
1262	181	283
1263	181	288
1264	181	232
1265	181	286
1266	181	285
1267	182	2166
1268	182	3927
1269	182	393
1270	182	3933
1271	182	283
1272	182	2344
1273	182	285
1274	182	2168
1275	182	394
1276	183	232
1277	183	2982
1278	183	1884
1279	183	283
1280	183	108
1281	183	558
1282	183	350
1283	183	688
1284	183	285
1285	183	154
1286	183	923
1287	183	2303
1288	184	50
1289	184	3196
1290	184	48
1291	184	1670
1292	184	489
1293	184	47
1294	185	554
1295	185	108
1296	185	36
1297	185	555
1298	185	305
1299	185	335
1300	185	2146
1301	185	304
1302	186	52
1303	186	13
1304	186	18
1305	186	772
1306	186	4032
1307	186	938
1308	186	489
1309	186	256
1310	186	1935
1311	186	1251
1312	186	164
1313	186	48
1314	186	47
1315	187	285
1316	187	283
1317	187	1783
1318	187	346
1319	187	2901
1320	187	350
1321	187	1488
1322	187	2679
1323	187	287
1324	187	286
1325	188	3280
1326	188	283
1327	188	4033
1328	188	285
1329	188	853
1330	188	4034
1331	188	393
1332	188	2129
1333	188	287
1334	188	394
1335	189	554
1336	189	303
1337	189	2475
1338	189	305
1339	189	4035
1340	189	2476
1341	189	4036
1342	189	1251
1343	189	108
1344	189	555
1345	190	64
1346	190	305
1347	190	4037
1348	190	4038
1349	190	4039
1350	190	4040
1351	190	4041
1352	190	4042
1353	190	489
1354	190	260
1355	190	1484
1356	190	4043
1357	191	13
1358	191	305
1359	191	261
1360	191	304
1361	191	164
1362	191	486
1363	191	52
1364	191	219
1365	191	108
1366	191	256
1367	192	1040
1368	192	346
1369	192	47
1370	192	2346
1371	192	18
1372	192	835
1373	192	489
1374	192	183
1375	192	211
1376	192	146
1377	192	356
1378	193	350
1379	193	287
1380	193	234
1381	193	285
1382	193	232
1383	193	286
1384	193	283
1385	193	211
1386	194	335
1387	194	390
1388	194	381
1389	194	389
1390	194	549
1391	194	285
1392	194	391
1393	194	154
1394	194	387
1395	194	211
1396	195	487
1397	195	367
1398	195	305
1399	195	273
1400	195	4056
1401	195	304
1402	195	4057
1403	195	303
1404	195	379
1405	195	211
1406	196	4060
1407	196	521
1408	196	115
1409	196	2171
1410	196	17
1411	196	853
1412	196	4062
1413	196	4061
1414	196	1858
1415	196	873
1416	197	465
1417	197	18
1418	197	183
1419	197	2133
1420	198	283
1421	198	108
1422	198	154
1423	198	180
1424	198	1580
1425	198	285
1426	198	4064
1427	198	286
1428	199	36
1429	199	3912
1430	199	3499
1431	199	4065
1432	199	2823
1433	199	3166
1434	199	4066
1435	199	853
1436	200	2646
1437	200	358
1438	200	295
1439	200	257
1440	200	121
1441	200	228
1442	200	565
1443	200	2741
1444	200	2742
1445	200	2476
1446	201	286
1447	201	1884
1448	201	287
1449	201	285
1450	201	4070
1451	202	304
1452	202	305
1453	202	2146
1454	202	345
1455	202	303
1456	202	554
1457	202	555
1458	203	4073
1459	203	285
1460	203	286
1461	203	283
1462	204	394
1463	204	285
1464	204	350
1465	204	283
1466	204	287
1467	204	393
1468	204	108
1469	205	4078
1470	205	286
1471	205	3173
1472	205	4079
1473	205	3461
1474	206	350
1475	206	1884
1476	206	484
1477	206	65
1478	206	4080
1479	206	283
1480	206	287
1481	206	211
1482	206	1783
1483	206	285
1484	207	1867
1485	207	287
1486	207	4084
1487	207	283
1488	207	286
1489	207	2619
1490	208	387
1491	208	334
1492	208	335
1493	209	47
1494	209	4088
1495	209	489
1496	209	36
1497	209	280
1498	209	344
1499	209	50
1500	209	4089
1501	209	3559
1502	209	346
1503	209	4090
1504	210	2475
1505	210	3673
1506	210	4091
1507	210	305
1508	210	331
1509	210	303
1510	210	1916
1511	210	304
1512	210	333
1513	211	18
1514	211	4092
1515	211	27
1516	211	183
1517	211	4093
1518	211	1670
1519	211	219
1520	211	393
1521	212	852
1522	212	1488
1523	212	345
1524	212	3831
1525	212	857
1526	212	488
1527	213	1868
1528	213	4100
1529	213	285
1530	213	286
1531	213	287
1532	213	332
1533	213	350
1534	213	283
1535	213	2344
1536	214	285
1537	214	286
1538	214	280
1539	214	287
1540	215	853
1541	215	136
1542	215	10
1543	215	102
1544	215	110
1545	215	106
1546	215	111
1547	215	105
1548	216	2166
1549	216	154
1550	216	285
1551	216	283
1552	216	4105
1553	216	286
1554	217	4103
1555	217	335
1556	217	332
1557	217	2544
1558	217	4104
1559	217	334
1560	218	393
1561	218	1784
1562	218	334
1563	218	211
1564	218	4105
1565	218	335
1566	218	283
1567	218	285
1568	218	391
1569	218	387
1570	219	1488
1571	219	488
1572	219	486
1573	219	345
1574	219	521
1575	219	108
1576	219	73
1577	219	857
1578	220	489
1579	220	47
1580	220	50
1581	220	305
1582	220	4108
1583	220	18
1584	220	27
1585	220	183
1586	220	3188
1587	220	2133
1588	221	108
1589	221	65
1590	221	286
1591	221	285
1592	221	283
1593	222	555
1594	222	335
1595	222	13
1596	222	2146
1597	222	1251
1598	222	554
1599	223	304
1600	223	465
1601	223	305
1602	223	333
1603	223	331
1604	224	286
1605	224	285
1606	224	287
1607	224	4110
1608	224	283
1609	224	232
1610	224	350
1611	224	2823
1612	225	4111
1613	225	4112
1614	225	280
1615	225	304
1616	225	555
1617	225	554
1618	225	346
1619	225	3290
1620	225	465
1621	225	232
1622	225	305
1623	225	154
1624	226	4113
1625	226	280
1626	226	283
1627	226	286
1628	226	285
1629	227	2168
1630	227	287
1631	227	4114
1632	227	4115
1633	227	4116
1634	227	4117
1635	227	283
1636	227	4118
1637	227	285
1638	228	47
1639	228	487
1640	228	1251
1641	228	228
1642	228	2900
1643	228	489
1644	228	48
1645	228	13
1646	228	18
1647	228	36
1648	229	4119
1649	229	47
1650	229	935
1651	229	228
1652	229	257
1653	229	4120
1654	229	489
1655	229	2820
1656	229	2598
1657	230	304
1658	230	393
1659	230	164
1660	230	381
1661	230	2146
1662	230	108
1663	230	554
1664	231	283
1665	231	2531
1666	231	232
1667	231	1989
1668	231	4121
1669	231	285
1670	231	108
1671	231	2823
1672	231	287
1673	231	343
1674	231	484
1675	232	489
1676	232	335
1677	232	393
1678	232	334
1679	232	356
1680	232	285
1681	232	3659
1682	232	688
1683	232	4122
1684	233	4123
1685	233	211
1686	233	335
1687	233	154
1688	233	1784
1689	233	334
1690	233	387
1691	233	4124
1692	233	391
1693	233	487
1694	234	798
1695	234	489
1696	234	3197
1697	234	345
1698	234	2398
1699	234	466
1700	235	303
1701	235	486
1702	235	304
1703	235	3666
1704	235	163
1705	235	305
1706	235	256
1707	236	73
1708	236	489
1709	236	47
1710	236	381
1711	236	465
1712	236	305
1713	236	256
1714	236	36
1715	236	108
1716	236	548
1717	237	283
1718	237	4127
1719	237	286
1720	237	4128
1721	237	285
1722	238	47
1723	238	50
1724	238	582
1725	238	18
1726	238	13
1727	238	335
1728	238	2995
1729	238	73
1730	238	489
1731	239	487
1732	239	285
1733	239	3714
1734	239	287
1735	239	356
1736	239	36
1737	239	350
1738	239	283
1739	239	3484
1740	240	285
1741	240	154
1742	240	2168
1743	240	283
1744	240	853
1745	240	286
1746	241	304
1747	241	554
1748	241	555
1749	241	2146
1750	242	65
1751	242	1582
1752	242	287
1753	242	285
1754	242	939
1755	242	283
1756	242	367
1757	242	4133
1758	242	286
1759	242	180
1760	242	154
1761	242	350
1762	243	496
1763	243	108
1764	243	335
1765	243	1670
1766	243	18
1767	243	52
1768	243	219
1769	244	3651
1770	244	108
1771	244	335
1772	244	486
1773	244	18
1774	244	1784
1775	244	391
1776	244	183
1777	244	256
1778	244	27
1779	244	334
1780	245	852
1781	245	521
1782	245	10
1783	245	854
1784	245	115
1785	245	11
1786	245	853
1787	245	164
1788	245	52
1789	245	21
1790	246	350
1791	246	283
1792	246	211
1793	246	487
1794	246	2454
1795	246	400
1796	246	287
1797	246	285
1798	246	108
1799	247	1916
1800	247	2324
1801	247	4141
1802	247	1866
1803	247	4142
1804	247	304
1805	247	2664
1806	247	305
1807	247	381
1808	247	285
1809	248	4143
1810	248	304
1811	248	281
1812	248	555
1813	248	36
1814	248	228
1815	248	4144
1816	248	554
1817	248	108
1818	249	211
1819	249	387
1820	249	164
1821	249	180
1822	249	1784
1823	249	334
1824	249	688
1825	249	335
1826	249	381
1827	249	343
1828	249	154
1829	250	381
1830	250	548
1831	250	852
1832	250	4138
1833	250	304
1834	250	335
1835	250	305
1836	250	1654
1837	250	183
1838	250	52
1839	250	261
1840	250	108
1841	251	2324
1842	251	2812
1843	251	273
1844	251	379
1845	251	304
1846	251	305
1847	251	2773
1848	251	303
1849	252	304
1850	252	555
1851	252	228
1852	252	2146
1853	252	1743
1854	252	554
1855	252	362
1856	253	466
1857	253	4145
1858	253	4146
1859	253	554
1860	253	4147
1861	253	65
1862	253	305
1863	253	2522
1864	253	343
1865	253	480
1866	253	2476
1867	253	108
1868	254	526
1869	254	256
1870	254	387
1871	254	335
1872	254	553
1873	254	466
1874	254	391
1875	254	18
1876	254	36
1877	255	350
1878	255	287
1879	255	4154
1880	255	349
1881	255	280
1882	255	283
1883	255	2945
1884	255	4155
1885	255	4156
1886	255	4157
1887	255	285
1888	256	114
1889	256	811
1890	256	48
1891	256	4158
1892	256	228
1893	256	164
1894	256	47
1895	256	821
1896	256	13
1897	256	3798
1898	256	489
1899	257	381
1900	257	465
1901	257	305
1902	257	1330
1903	257	554
1904	257	555
1905	257	2055
1906	257	4159
1907	257	304
1908	258	398
1909	258	2542
1910	258	4160
1911	258	114
1912	258	2840
1913	258	360
1914	259	1086
1915	259	286
1916	259	280
1917	259	350
1918	259	285
1919	259	108
1920	259	232
1921	259	4165
1922	259	283
1923	260	356
1924	260	2146
1925	260	4172
1926	260	4173
1927	260	303
1928	260	4174
1929	260	4175
1930	260	4176
1931	261	362
1932	261	536
1933	261	2146
1934	261	555
1935	261	108
1936	261	304
1937	261	1330
1938	261	554
1939	261	13
1940	261	228
1941	262	283
1942	262	286
1943	262	285
1944	263	393
1945	263	287
1946	263	350
1947	263	857
1948	263	283
1949	263	853
1950	264	64
1951	264	287
1952	264	234
1953	264	350
1954	264	285
1955	264	283
1956	264	211
1957	264	1307
1958	264	487
1959	264	400
1960	265	286
1961	265	283
1962	265	350
1963	265	1867
1964	265	256
1965	265	285
1966	265	287
1967	265	348
1968	266	286
1969	266	350
1970	266	283
1971	266	287
1972	266	2619
1973	266	285
1974	267	286
1975	267	4183
1976	267	283
1977	267	3583
1978	267	287
1979	267	285
1980	268	334
1981	268	287
1982	268	350
1983	268	939
1984	268	283
1985	268	1039
1986	268	688
1987	268	2764
1988	268	2168
1989	268	393
1990	268	285
1991	269	52
1992	269	287
1993	269	350
1994	269	283
1995	269	4185
1996	269	286
1997	269	1696
1998	269	285
1999	270	287
2000	270	939
2001	270	394
2002	270	393
2003	270	285
2004	271	381
2005	271	154
2006	271	11
2007	271	373
2008	271	4184
2009	271	10
2010	271	164
2011	271	1502
2012	271	1296
2013	271	156
2014	272	48
2015	272	633
2016	272	489
2017	272	539
2018	272	47
2019	272	346
2020	272	688
2021	272	2757
2022	272	405
2023	272	228
2024	272	36
2025	273	68
2026	273	335
2027	273	395
2028	273	155
2029	273	153
2030	273	360
2031	274	305
2032	274	304
2033	274	489
2034	274	47
2035	274	346
2036	274	688
2037	274	2749
2038	274	324
2039	274	3706
2040	274	18
2041	274	183
2042	275	305
2043	275	304
2044	275	489
2045	275	47
2046	275	346
2047	275	688
2048	275	2749
2049	275	1040
2050	275	18
2051	275	183
2052	276	4186
2053	276	3994
2054	276	2512
2055	276	286
2056	277	287
2057	277	283
2058	277	334
2059	277	393
2060	277	285
2061	277	350
2062	278	114
2063	278	542
2064	278	396
2065	278	2985
2066	278	313
2067	278	4194
2068	278	556
2069	279	304
2070	279	331
2071	279	3673
2072	279	465
2073	279	379
2074	279	305
2075	280	304
2076	280	555
2077	280	554
2078	280	2146
2079	280	303
2080	280	305
2081	281	304
2082	281	2710
2083	281	555
2084	281	180
2085	281	465
2086	281	554
2087	281	256
2088	281	3818
2089	281	305
2090	281	108
2091	282	280
2092	282	286
2093	282	283
2094	282	285
2095	282	287
2096	282	211
2097	283	11
2098	283	164
2099	283	29
2100	283	108
2101	283	753
2102	283	1582
2103	283	10
2104	284	280
2105	284	241
2106	284	2452
2107	284	238
2108	285	4200
2109	285	305
2110	285	555
2111	285	3009
2112	285	4201
2113	285	108
2114	285	4202
2115	285	261
2116	285	4056
2117	285	304
2118	285	554
2119	286	305
2120	286	163
2121	286	1251
2122	286	256
2123	286	548
2124	286	303
2125	286	108
2126	286	304
2127	286	554
2128	287	305
2129	287	4203
2130	287	4204
2131	287	304
2132	287	548
2133	287	2711
2134	287	4202
2135	287	4056
2136	287	465
2137	287	1938
2138	287	4205
2139	288	183
2140	288	853
2141	288	18
2142	288	2081
2143	288	280
2144	288	219
2145	288	108
2146	288	27
2147	289	4210
2148	289	2837
2149	289	163
2150	289	304
2151	289	381
2152	289	2596
2153	289	303
2154	289	466
2155	289	180
2156	290	350
2157	290	356
2158	290	286
2159	290	285
2160	290	283
2161	290	287
2162	291	285
2163	291	232
2164	291	286
2165	292	4224
2166	292	50
2167	292	489
2168	293	36
2169	293	47
2170	293	335
2171	293	3081
2172	293	346
2173	293	219
2174	293	13
2175	293	489
2176	293	18
2177	294	366
2178	294	179
2179	294	11
2180	294	10
2181	294	107
2182	294	228
2183	294	1796
2184	294	376
2185	294	445
2186	295	465
2187	295	4225
2188	295	304
2189	295	305
2190	296	2762
2191	296	4226
2192	296	554
2193	296	180
2194	296	3046
2195	296	155
2196	296	381
2197	296	555
2198	296	304
2199	297	286
2200	297	288
2201	297	2654
2202	297	283
2203	297	285
2204	297	688
2205	298	286
2206	298	288
2207	298	283
2208	298	285
2209	298	287
2210	299	4232
2211	299	939
2212	299	393
2213	299	3857
2214	299	350
2215	299	394
2216	299	283
2217	299	285
2218	299	688
2219	299	287
2220	300	853
2221	300	136
2222	300	153
2223	300	226
2224	300	155
2225	300	17
2226	300	132
2227	301	108
2228	301	283
2229	301	232
2230	301	2168
2231	301	393
2232	301	285
2233	301	394
2234	302	108
2235	302	568
2236	302	234
2237	302	2822
2238	302	487
2239	302	36
2240	302	305
2241	302	211
2242	302	548
2243	302	400
2244	303	555
2245	303	1743
2246	303	465
2247	303	536
2248	303	305
2249	303	228
2250	303	554
2251	303	304
2252	304	4238
2253	304	285
2254	304	728
2255	304	28
2256	304	183
2257	304	11
2258	304	692
2259	304	1515
2260	304	18
2261	304	1309
2262	304	2620
2263	305	47
2264	305	4242
2265	305	48
2266	305	2290
2267	305	853
2268	305	489
2269	305	18
2270	305	553
2271	305	228
2272	305	27
2273	306	154
2274	306	391
2275	306	381
2276	306	285
2277	306	389
2278	306	549
2279	306	335
2280	306	211
2281	306	387
2282	306	390
2283	307	285
2284	307	211
2285	307	154
2286	307	390
2287	307	387
2288	307	335
2289	307	549
2290	307	391
2291	307	389
2292	307	381
2293	308	1670
2294	308	4252
2295	308	285
2296	308	286
2297	308	282
2298	308	4253
2299	308	558
2300	308	4254
2301	308	283
2302	309	273
2303	309	486
2304	309	256
2305	309	345
2306	309	367
2307	309	305
2308	309	303
2309	310	283
2310	310	487
2311	310	285
2312	310	2377
2313	310	688
2314	310	2945
2315	310	287
2316	310	4113
2317	310	350
2318	311	449
2319	311	242
2320	311	522
2321	311	108
2322	311	2743
2323	311	2744
2324	311	241
2325	311	10
2326	311	2452
2327	312	179
2328	312	945
2329	312	10
2330	312	105
2331	312	154
2332	312	109
2333	312	946
2334	312	110
2335	312	113
2336	312	107
2337	313	335
2338	313	391
2339	313	387
2340	313	334
2341	313	108
2342	313	218
2343	313	2235
2344	313	939
2345	313	448
2346	313	1039
2347	313	211
2348	313	4258
2349	314	286
2350	314	358
2351	314	283
2352	314	2196
2353	315	114
2354	315	489
2355	315	1788
2356	316	228
2357	316	36
2358	316	108
2359	316	400
2360	316	257
2361	316	555
2362	316	4262
2363	316	2590
2364	316	362
2365	316	577
2366	317	335
2367	317	305
2368	317	108
2369	317	303
2370	317	331
2371	317	333
2372	317	304
2373	317	256
2374	317	163
2375	318	36
2376	318	108
2377	318	305
2378	318	486
2379	318	939
2380	318	2326
2381	318	13
2382	318	304
2383	318	261
2384	318	688
2385	318	163
2386	319	280
2387	319	305
2388	319	486
2389	319	2326
2390	319	344
2391	319	3188
2392	319	260
2393	319	4263
2394	319	4200
2395	319	261
2396	319	256
2397	320	241
2398	320	242
2399	320	4264
2400	320	238
2401	320	448
2402	320	449
2403	321	108
2404	321	4276
2405	321	1305
2406	321	286
2407	321	154
2408	321	287
2409	321	285
2410	321	283
2411	321	4277
2412	321	4278
2413	322	291
2414	322	155
2415	322	393
2416	322	4279
2417	322	287
2418	322	285
2419	322	283
2420	322	2654
2421	323	1604
2422	323	570
2423	323	211
2424	323	18
2425	323	13
2426	323	48
2427	323	1251
2428	323	4280
2429	323	489
2430	323	47
2431	324	3177
2432	324	211
2433	324	238
2434	324	2182
2435	324	242
2436	324	154
2437	324	4273
2438	324	241
2439	324	449
2440	325	2406
2441	325	241
2442	325	4270
2443	325	4271
2444	325	2810
2445	325	242
2446	325	2407
2447	325	448
2448	325	4272
2449	326	108
2450	326	305
2451	326	211
2452	326	554
2453	326	261
2454	326	304
2455	326	4281
2456	326	164
2457	326	232
2458	326	555
2459	326	4204
2460	327	358
2461	327	2945
2462	327	287
2463	327	4286
2464	327	521
2465	327	285
2466	327	232
2467	327	343
2468	327	283
2469	327	564
2470	327	2943
2471	327	4287
2472	328	487
2473	328	1034
2474	328	3720
2475	328	4288
2476	328	68
2477	328	4289
2478	328	2434
2479	329	261
2480	329	256
2481	329	381
2482	329	2346
2483	329	280
2484	329	2055
2485	329	304
2486	329	305
2487	329	465
2488	330	154
2489	330	853
2490	330	285
2491	330	4290
2492	330	4276
2493	330	108
2494	330	393
2495	330	2168
2496	330	232
2497	330	283
2498	330	4291
2499	330	394
2500	331	1884
2501	331	232
2502	331	466
2503	331	285
2504	331	2414
2505	331	180
2506	331	286
2507	331	283
2508	331	939
2509	331	2945
2510	331	287
2511	331	521
2512	331	3150
2513	332	4292
2514	332	154
2515	332	108
2516	332	350
2517	332	283
2518	332	286
2519	332	285
2520	332	280
2521	332	2346
2522	333	285
2523	333	232
2524	333	283
2525	333	286
2526	334	183
2527	334	747
2528	334	27
2529	334	26
2530	334	4293
2531	334	18
2532	334	180
2533	334	2129
2534	334	335
2535	334	305
2536	335	381
2537	335	1884
2538	335	4294
2539	335	115
2540	335	36
2541	335	1488
2542	335	234
2543	335	4295
2544	336	4090
2545	336	4296
2546	336	345
2547	336	280
2548	336	50
2549	336	4297
2550	337	4090
2551	337	4296
2552	337	345
2553	337	280
2554	337	50
2555	337	4297
2556	338	4298
2557	338	3096
2558	338	475
2559	338	256
2560	338	4299
2561	338	345
2562	338	1452
2563	338	477
2564	338	4300
2565	339	3494
2566	339	163
2567	339	2823
2568	339	4301
2569	339	4302
2570	339	4303
2571	339	1989
2572	339	2476
2573	339	4304
2574	339	280
2575	339	4305
2576	340	305
2577	340	113
2578	340	498
2579	340	304
2580	340	2055
2581	340	366
2582	340	65
2583	340	331
2584	340	333
2585	340	256
2586	340	2772
2587	341	285
2588	341	286
2589	341	283
2590	342	2943
2591	342	3316
2592	342	2168
2593	342	286
2594	342	283
2595	343	393
2596	343	1916
2597	343	4306
2598	343	305
2599	343	331
2600	343	465
2601	344	555
2602	344	2710
2603	344	108
2604	344	2711
2605	344	2146
2606	344	303
2607	344	2709
2608	344	554
2609	344	2346
2610	345	4307
2611	345	355
2612	345	4308
2613	345	463
2614	345	4309
2615	345	4310
2616	346	4300
2617	346	475
2618	346	486
2619	346	108
2620	346	4299
2621	346	4298
2622	346	256
2623	346	47
2624	346	489
2625	346	380
2626	346	345
2627	347	47
2628	347	73
2629	347	164
2630	347	3560
2631	347	48
2632	347	4311
2633	347	256
2634	347	811
2635	347	582
2636	347	4312
2637	347	108
2638	347	52
2639	347	489
2640	348	393
2641	348	108
2642	348	283
2643	348	285
2644	348	2146
2645	348	853
2646	348	1867
2647	348	234
2648	348	350
2649	349	211
2650	349	403
2651	349	108
2652	349	2235
2653	349	283
2654	349	285
2655	349	36
2656	349	350
2657	349	287
2658	350	334
2659	350	280
2660	350	344
2661	350	304
2662	350	331
2663	350	108
2664	350	154
2665	350	256
2666	350	343
2667	350	305
2668	350	487
2669	351	379
2670	351	333
2671	351	465
2672	351	2772
2673	351	256
2674	351	13
2675	351	305
2676	352	287
2677	352	285
2678	352	286
2679	352	283
2680	352	484
2681	353	283
2682	353	286
2683	353	285
2684	353	232
2685	354	3832
2686	354	286
2687	354	4317
2688	355	3166
2689	355	551
2690	355	1989
2691	355	2749
2692	355	4318
2693	355	256
2694	355	3500
2695	355	489
2696	355	211
2697	355	4272
2698	355	486
2699	356	489
2700	356	2764
2701	356	4319
2702	356	772
2703	356	335
2704	356	1671
2705	356	47
2706	356	1670
2707	356	3523
2708	356	498
2709	357	489
2710	357	4320
2711	357	18
2712	357	2081
2713	357	394
2714	357	1291
2715	357	688
2716	357	27
2717	357	47
2718	357	48
2719	357	2995
2720	358	335
2721	358	4321
2722	358	381
2723	358	391
2724	358	4124
2725	358	211
2726	358	356
2727	358	387
2728	359	4322
2729	359	285
2730	359	350
2731	359	3479
2732	359	108
2733	359	487
2734	359	2078
2735	359	283
2736	359	3477
2737	359	4323
2738	360	283
2739	360	287
2740	360	285
2741	360	2168
2742	360	286
2743	360	853
2744	360	234
2745	360	350
2746	360	1670
2747	361	4124
2748	361	688
2749	361	391
2750	361	2235
2751	361	381
2752	361	387
2753	361	211
2754	361	498
2755	361	256
2756	362	36
2757	362	471
2758	362	211
2759	362	335
2760	362	331
2761	362	465
2762	363	286
2763	363	3461
2764	363	4345
2765	364	350
2766	364	285
2767	364	211
2768	364	2323
2769	364	232
2770	364	393
2771	364	334
2772	364	283
2773	364	287
2774	365	4346
2775	365	1784
2776	365	335
2777	365	334
2778	366	211
2779	366	4347
2780	366	286
2781	366	335
2782	366	558
2783	366	2782
2784	366	1784
2785	366	108
2786	366	2175
2787	367	1759
2788	367	154
2789	367	399
2790	367	115
2791	367	4339
2792	367	232
2793	367	164
2794	367	2307
2795	367	10
2796	368	286
2797	368	285
2798	368	283
2799	369	283
2800	369	352
2801	369	285
2802	369	480
2803	369	2344
2804	369	349
2805	369	1959
2806	369	287
2807	369	286
2808	369	256
2809	369	350
2810	369	2129
2811	370	232
2812	370	285
2813	370	4141
2814	370	2324
2815	370	108
2816	370	475
2817	370	1916
2818	370	286
2819	370	283
2820	371	232
2821	371	4353
2822	371	285
2823	371	108
2824	371	287
2825	371	2300
2826	371	475
2827	371	154
2828	371	1916
2829	371	4141
2830	371	350
2831	371	4354
2832	372	286
2833	372	285
2834	372	283
2835	373	29
2836	373	11
2837	373	4355
2838	373	180
2839	373	10
2840	373	12
2841	373	36
2842	373	2008
2843	374	360
2844	374	73
2845	374	163
2846	374	108
2847	374	228
2848	374	4343
2849	374	2476
2850	374	257
2851	374	489
2852	374	256
2853	375	356
2854	375	48
2855	375	18
2856	375	489
2857	375	219
2858	375	256
2859	375	800
2860	375	183
2861	376	356
2862	376	48
2863	376	18
2864	376	47
2865	376	489
2866	376	219
2867	376	256
2868	376	800
2869	376	183
2870	377	163
2871	377	303
2872	377	486
2873	377	305
2874	377	4205
2875	378	393
2876	378	4367
2877	378	283
2878	378	287
2879	378	285
2880	378	857
2881	378	521
2882	378	232
2883	378	108
2884	379	1867
2885	379	2619
2886	379	4368
2887	379	4369
2888	379	4084
2889	379	283
2890	379	3621
2891	379	939
2892	379	285
2893	379	4370
2894	379	350
2895	380	156
2896	380	28
2897	380	154
2898	380	1261
2899	380	11
2900	380	1503
2901	380	285
2902	380	280
2903	380	10
2904	380	286
2905	381	50
2906	381	48
2907	381	1652
2908	381	108
2909	381	548
2910	381	1916
2911	381	852
2912	381	305
2913	381	304
2914	381	1918
2915	381	47
2916	381	489
2917	381	2711
2918	382	50
2919	382	47
2920	382	853
2921	382	48
2922	382	211
2923	382	4371
2924	383	688
2925	383	393
2926	383	232
2927	383	334
2928	383	283
2929	383	381
2930	383	285
2931	383	2067
2932	384	393
2933	384	1916
2934	384	2323
2935	384	334
2936	384	471
2937	384	304
2938	384	333
2939	385	108
2940	385	219
2941	385	853
2942	385	18
2943	385	183
2944	385	2081
2945	385	27
2946	386	219
2947	386	332
2948	386	40
2949	386	8
2950	386	25
2951	386	11
2952	386	19
2953	386	10
2954	387	465
2955	387	480
2956	387	3700
2957	387	466
2958	387	304
2959	387	2476
2960	388	55
2961	388	4373
2962	388	607
2963	388	36
2964	388	265
2965	388	146
2966	388	228
2967	388	10
2968	388	11
2969	388	4372
2970	389	47
2971	389	853
2972	389	153
2973	389	155
2974	389	228
2975	389	13
2976	389	793
2977	389	1671
2978	389	4374
2979	390	108
2980	390	305
2981	390	303
2982	390	2146
2983	390	211
2984	390	555
2985	390	304
2986	390	554
2987	391	334
2988	391	305
2989	391	387
2990	391	211
2991	391	391
2992	391	335
2993	391	356
2994	392	285
2995	392	287
2996	392	3927
2997	392	286
2998	392	283
2999	392	356
3000	392	232
3001	393	108
3002	393	4378
3003	393	285
3004	393	287
3005	393	522
3006	393	283
3007	393	350
3008	393	1670
3009	393	4379
3010	394	484
3011	394	286
3012	394	558
3013	395	108
3014	395	256
3015	395	36
3016	395	285
3017	395	13
3018	395	4326
3019	395	211
3020	395	387
3021	395	391
3022	395	335
3023	396	4380
3024	396	4078
3025	396	286
3026	397	4381
3027	397	4382
3028	397	4383
3029	397	1305
3030	397	2702
3031	397	286
3032	398	2168
3033	398	108
3034	398	285
3035	398	287
3036	398	211
3037	398	2167
3038	398	283
3039	398	382
3040	398	356
3041	398	2166
3042	399	304
3043	399	465
3044	399	3092
3045	399	280
3046	399	331
3047	399	486
3048	400	304
3049	400	465
3050	400	2323
3051	400	180
3052	400	280
3053	400	521
3054	401	48
3055	401	4389
3056	401	13
3057	401	50
3058	401	489
3059	401	1251
3060	401	47
3061	402	283
3062	402	13
3063	402	108
3064	402	496
3065	402	285
3066	402	4390
3067	402	939
3068	402	287
3069	402	36
3070	402	1670
3071	402	350
3072	403	350
3073	403	180
3074	403	4396
3075	403	280
3076	403	287
3077	403	853
3078	403	3150
3079	403	4397
3080	403	283
3081	403	285
3082	403	211
3083	404	350
3084	404	287
3085	404	283
3086	404	285
3087	404	286
3088	405	283
3089	405	285
3090	405	2967
3091	405	286
3092	406	280
3093	406	287
3094	406	283
3095	406	285
3096	406	286
3097	407	180
3098	407	4398
3099	407	286
3100	408	163
3101	408	4399
3102	408	256
3103	409	688
3104	409	180
3105	409	304
3106	409	280
3107	409	305
3108	409	303
3109	409	4200
3110	409	939
3111	409	163
3112	409	486
3113	410	3163
3114	410	555
3115	410	228
3116	410	403
3117	410	257
3118	410	305
3119	410	281
3120	410	554
3121	410	4400
3122	411	283
3123	411	280
3124	411	180
3125	411	286
3126	411	285
3127	411	350
3128	411	4401
3129	411	287
3130	412	281
3131	412	257
3132	412	228
3133	412	4410
3134	412	256
3135	412	360
3136	412	4411
3137	412	163
3138	413	180
3139	413	304
3140	413	303
3141	413	2146
3142	413	335
3143	414	2749
3144	414	809
3145	414	489
3146	414	3499
3147	414	3501
3148	414	486
3149	414	256
3150	414	3500
3151	414	551
3152	414	3498
3153	415	939
3154	415	286
3155	415	36
3156	415	256
3157	415	350
3158	415	283
3159	416	292
3160	416	295
3161	416	4413
3162	416	291
3163	416	536
3164	416	4414
3165	416	228
3166	416	362
3167	416	155
3168	417	163
3169	417	304
3170	417	164
3171	417	305
3172	417	256
3173	417	554
3174	417	344
3175	417	2764
3176	417	303
3177	418	1034
3178	418	68
3179	418	10
3180	418	28
3181	419	4418
3182	419	286
3183	419	4419
3184	420	4420
3185	420	465
3186	420	4418
3187	421	287
3188	421	4424
3189	421	67
3190	421	2052
3191	421	4425
3192	421	154
3193	421	283
3194	421	285
3195	421	4426
3196	422	283
3197	422	256
3198	422	401
3199	422	285
3200	422	350
3201	422	2982
3202	422	4378
3203	422	211
3204	422	232
3205	423	356
3206	423	286
3207	423	283
3208	423	287
3209	423	285
3210	424	489
3211	424	48
3212	424	219
3213	424	183
3214	424	18
3215	424	114
3216	424	47
3217	425	335
3218	425	2146
3219	425	554
3220	425	939
3221	425	305
3222	425	303
3223	425	555
3224	425	304
3225	426	2146
3226	426	554
3227	426	303
3228	426	305
3229	426	555
3230	426	304
3231	427	283
3232	427	285
3233	427	286
3234	427	1305
3235	428	335
3236	428	381
3237	428	114
3238	428	556
3239	428	115
3240	429	68
3241	429	228
3242	429	4428
3243	429	292
3244	429	4429
3245	429	558
3246	429	4430
3247	429	1926
3248	430	1307
3249	430	163
3250	430	2992
3251	430	256
3252	430	359
3253	430	3012
3254	431	228
3255	431	763
3256	431	2346
3257	431	3127
3258	431	2993
3259	431	292
3260	431	146
3261	431	2199
3262	431	211
3263	431	4431
3264	431	2820
3265	431	295
3266	432	331
3267	432	4432
3268	432	180
3269	432	304
3270	432	4088
3271	432	465
3272	432	280
3273	433	283
3274	433	285
3275	433	350
3276	433	286
3277	434	283
3278	434	287
3279	434	393
3280	434	857
3281	434	282
3282	434	154
3283	435	283
3284	435	350
3285	435	163
3286	435	164
3287	435	4433
3288	435	381
3289	435	256
3290	436	449
3291	436	526
3292	436	448
3293	436	1612
3294	436	241
3295	437	287
3296	437	4436
3297	437	487
3298	437	211
3299	437	283
3300	437	285
3301	437	154
3302	437	234
3303	437	350
3304	438	287
3305	438	2452
3306	438	688
3307	438	283
3308	438	285
3309	438	402
3310	438	286
3311	438	2945
3312	438	350
3313	439	211
3314	439	400
3315	439	1669
3316	439	285
3317	439	286
3318	439	234
3319	439	381
3320	440	287
3321	440	283
3322	440	285
3323	440	286
3324	440	108
3325	440	350
3326	440	280
3327	441	4437
3328	441	211
3329	441	334
3330	441	1874
3331	441	335
3332	441	387
3333	442	3868
3334	442	285
3335	442	3914
3336	442	232
3337	442	350
3338	442	1305
3339	442	283
3340	442	4439
3341	442	287
3342	442	4440
3343	443	350
3344	443	287
3345	443	283
3346	443	36
3347	443	349
3348	443	2344
3349	443	2945
3350	443	1866
3351	443	285
3352	443	256
3353	443	232
3354	443	154
3355	444	350
3356	444	287
3357	444	283
3358	444	2129
3359	444	286
3360	444	2344
3361	444	285
3362	444	180
3363	444	923
3364	444	4452
3365	445	2196
3366	445	2197
3367	445	536
3368	445	155
3369	445	362
3370	445	68
3371	445	108
3372	445	291
3373	445	487
3374	446	2619
3375	446	350
3376	446	108
3377	446	285
3378	446	522
3379	446	180
3380	446	402
3381	446	283
3382	446	287
3383	447	285
3384	447	286
3385	447	283
3386	447	4455
3387	447	4456
3388	447	284
3389	447	4457
3390	448	1
3391	448	228
3392	448	10
3393	448	184
3394	448	716
3395	448	1584
3396	448	8
3397	448	1583
3398	448	9
3399	448	211
3400	449	622
3401	449	2110
3402	449	79
3403	449	280
3404	449	10
3405	449	11
3406	449	375
3407	449	265
3408	449	183
3409	449	211
3410	450	28
3411	450	11
3412	450	1582
3413	450	2621
3414	450	692
3415	450	796
3416	450	1270
3417	450	154
3418	450	10
3419	450	297
3420	450	1269
3421	451	2452
3422	451	2075
3423	451	238
3424	451	449
3425	451	241
3426	451	154
3427	451	3177
3428	452	393
3429	452	772
3430	452	2146
3431	452	2476
3432	452	228
3433	452	353
3434	452	256
3435	453	36
3436	453	114
3437	453	108
3438	453	47
3439	453	3545
3440	453	548
3441	453	489
3442	453	305
3443	453	50
3444	453	303
3445	454	521
3446	454	488
3447	454	345
3448	454	73
3449	454	857
3450	454	1488
3451	454	486
3452	454	108
3453	455	211
3454	455	939
3455	455	219
3456	455	486
3457	455	335
3458	455	18
3459	455	4466
3460	456	164
3461	456	304
3462	456	465
3463	456	305
3464	456	4467
3465	456	548
3466	456	261
3467	456	745
3468	457	283
3469	457	108
3470	457	287
3471	457	350
3472	457	286
3473	457	285
3474	458	4468
3475	458	3574
3476	458	159
3477	458	65
3478	458	509
3479	458	1845
3480	458	2205
3481	458	1525
3482	458	266
3483	458	11
3484	458	335
3485	459	939
3486	459	4477
3487	459	568
3488	459	486
3489	459	215
3490	459	3197
3491	459	2870
3492	459	304
3493	459	305
3494	459	2598
3495	459	487
3496	460	286
3497	460	283
3498	460	285
3499	460	1307
3500	461	393
3501	461	256
3502	461	335
3503	461	232
3504	461	4123
3505	461	238
3506	461	381
3507	461	387
3508	462	183
3509	462	4479
3510	462	303
3511	462	305
3512	462	489
3513	462	18
3514	462	47
3515	462	50
3516	463	554
3517	463	465
3518	463	305
3519	463	304
3520	463	4479
\.


--
-- Data for Name: alexandria_jobs; Type: TABLE DATA; Schema: public; Owner: fscjjarkblijha
--

COPY public.alexandria_jobs (job_id, title_id, company_id, job_level, exp_years, job_type, post_date, link) FROM stdin;
\.


--
-- Data for Name: alexandria_jobs_job_tags; Type: TABLE DATA; Schema: public; Owner: fscjjarkblijha
--

COPY public.alexandria_jobs_job_tags (job_tags_id, job_id, tag_id) FROM stdin;
\.


--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: fscjjarkblijha
--

COPY public.company (company_id, company_name, address) FROM stdin;
1	UX Centers	Bourj Alarab, Alexandria
2	Confidential	Alexandria, Egypt
3	Zahran Market	Smouha, Alexandria
4	MTS	Alexandria, Egypt
5	Pharaonia Pharma	Bourj Alarab, Alexandria
6	Advanced Chemical Industries	Smouha, Alexandria
7	Expand Cart	Alexandria, Egypt
8	Prometeon Pirelli Tyres ( Ex-Pirelli )	Ameria, Alexandria
9	MTS	Smouha, Alexandria
10	Caduceus Lane	Alexandria, Egypt
11	Pharous LLC	Alexandria, Egypt
12	Longman Egypt	Alexandria, Egypt
13	Confidential	Sidi Gaber, Alexandria
14	Softxpert Incorporation	Alexandria, Egypt
15	Deal	Alexandria, Egypt
16	Procrew	San Stefano, Alexandria
17	savo style	Alexandria, Egypt
18	Blink	Alexandria, Egypt
19	Alef Software Company	San Stefano, Alexandria
20	Egyptian English Language schools	Mandara, Alexandria
21	Rubex Egypt	Bourj Alarab, Alexandria
22	Lead Liaison	San Stefano, Alexandria
23	Prifix	Bourj Alarab, Alexandria
24	MigrationIT.com	Alexandria, Egypt
25	Ramy Soft	Alexandria, Egypt
26	Wide Horizons	Alexandria, Egypt
27	Sutherland	Alexandria, Egypt
28	Confidential	Bab Sharq, Alexandria
29	HMASERV LLC	Fleming, Alexandria
30	Mantrac	Ameria, Alexandria
31	proleaders	San Stefano, Alexandria
32	Arabic Localizer	San Stefano, Alexandria
33	Andalusia Group	Alexandria, Egypt
34	ERA Solutions	Sidi Gaber, Alexandria
35	Unppar.com	Agami, Alexandria
36	Inova LLC	Bolkly, Alexandria
37	Pyramids Freight Services	Alexandria, Egypt
38	Confidential	Maamoura, Alexandria
39	Amaz Misr	Glim, Alexandria
40	Madar Soft	Fleming, Alexandria
41	archi-architects	Camp Chezar, Alexandria
42	Nile Projects & Trading	Alexandria, Egypt
43	Idealogik Software	Smouha, Alexandria
44	GLC	Alexandria, Egypt
45	Egytrans	Shatby, Alexandria
46	Smartera 3S	Alexandria, Egypt
47	Qsource	Alexandria, Egypt
48	Stylish Eve	Alexandria, Egypt
49	Confidential	Smouha, Alexandria
50	malexs	Siouf, Alexandria
51	Stylish Eve	Smouha, Alexandria
52	POET Egypt	Sidi Gaber, Alexandria
53	Elshaheen Center	Siouf, Alexandria
54	EL KHETA	Alexandria, Egypt
55	GranTech Group	Alexandria, Egypt
56	European Egyptian Pharmaceutical Industries (EEPI)	Alexandria, Egypt
57	incorta	Alexandria, Egypt
58	Pharma Overseas	Smouha, Alexandria
59	Digital Essence	Glim, Alexandria
60	Paradise Inn Hotels & Resorts	Mahta Alraml, Alexandria
61	Confidential	Ameria, Alexandria
62	Confidential	Abu Qir, Alexandria
63	Borg EL-Arab Co  Bait Food	Smouha, Alexandria
64	A-part Bosch	Alexandria, Egypt
65	AL-Matar	Alexandria, Egypt
66	Confidential	Siouf, Alexandria
67	SAVOLA	Bourj Alarab, Alexandria
68	Bavaria Egypt	Glim, Alexandria
69	HealthMED Egypt for Medical Supplies	Alexandria, Egypt
70	Dreem Mashreq Foods	Bourj Alarab, Alexandria
71	Confidential	Bourj Alarab, Alexandria
72	Smart Group	Ameria, Alexandria
73	Evoreen	Alexandria, Egypt
74	MEEG	Alexandria, Egypt
75	ALS	Siouf, Alexandria
76	OVEQ	Glim, Alexandria
77	Excel Systems	Sheikh Zayed, Giza
78	Nahil Computers	Mohandessin, Giza
79	CMS GLOBAL	Cairo, Egypt
80	FaceGraph	Maadi, Cairo
81	Allianz	New Cairo, Cairo
82	Talabat	Beni Suef, Beni Suef
83	K.C.G Textile S.A.E Egypt	10th Of Ramadan City, Cairo
84	Circle K	Heliopolis, Cairo
85	Interact Technology Solutions	Maadi, Cairo
86	AlGammal Contracting	Giza, Egypt
87	Intercom Enterprises	Nasr City, Cairo
88	iHorizons	Maadi, Cairo
89	MidEast Communication Systems	New Cairo, Cairo
90	Orient Egypt	Dokki, Giza
91	shop4build	Maadi, Cairo
92	Egyptrol	Cairo, Egypt
93	People Flow	Cairo, Egypt
94	Path-Solutions	Maadi, Cairo
95	ConZonia Consulting	Nasr City, Cairo
96	Ejada (Cairo)	Cairo, Egypt
97	Informatique Education	Nasr City, Cairo
98	Ebtkarat Information Technology	Nasr City, Cairo
99	CrossWorkers	Cairo, Egypt
100	Veripark	Maadi, Cairo
101	Brmaja	Nasr City, Cairo
102	Clavis Business Solutions	6th Of October, Giza
103	Nile University	6th Of October, Giza
104	PANGEA	New Cairo, Cairo
105	DigitalYard	Heliopolis, Cairo
106	Pefect Presentation	Maadi, Cairo
107	A-part Bosch	Assiut, Egypt
108	Walan Technology	Cairo, Egypt
109	Open Minds CIT	Downtown, Cairo
110	Xceed	Maadi, Cairo
111	Wisely Insure	Heliopolis, Cairo
112	GET Group- Egypt	Sheraton, Cairo
113	Our Education	Nasr City, Cairo
114	TransIT	Shubra, Cairo
115	CrossWorkers	New Cairo, Cairo
116	PaySky	New Cairo, Cairo
117	Sky logistics	Sheikh Zayed, Giza
118	Mazzika Group	Dokki, Giza
119	TMentors	Maadi, Cairo
120	Agile Technologies	Maadi, Cairo
121	BlueCloud	Sheraton, Cairo
122	GET Group- Egypt	Heliopolis, Cairo
123	AMH Technology	6th Of October, Giza
124	Nahdet Misr Publishing Group	Mohandessin, Giza
125	Confidential	Heliopolis, Cairo
126	iHub	Cairo, Egypt
127	Charisma Design	Nasr City, Cairo
128	Nagwa	Nasr City, Cairo
129	HITS Technologies	Nasr City, Cairo
130	AQARITO	Giza, Egypt
131	Nile Bits, LLC	6th Of October, Giza
132	Arqam	Nasr City, Cairo
133	Premier Services and Recruitment	Maadi, Cairo
134	Nada Systems	Helwan, Cairo
135	Confidential	New Cairo, Cairo
136	Spectro	Maadi, Cairo
137	Flairstech	Maadi, Cairo
138	JBF Digital Marketing Agency	Dokki, Giza
139	ATSI	New Cairo, Cairo
140	Easy Cash	Heliopolis, Cairo
141	Confidential	Cairo, Egypt
142	Alkan CIT	Maadi, Cairo
143	AMICO Group	Dokki, Giza
144	Terre des hommes	Downtown, Cairo
145	Codelab	Sheraton, Cairo
146	Misr Elkheir Foundation	Mokattam, Cairo
147	Ibn Sina Pharma	Obour City, Cairo
148	Premier Services and Recruitment	New Cairo, Cairo
149	NEW JERSEY Developments	New Cairo, Cairo
150	API	Nasr City, Cairo
151	Proserv.	Maadi, Cairo
152	PanExcel	Cairo, Egypt
153	Egyptian Language School	New Cairo, Cairo
154	PICO	Zamalek, Cairo
155	Softex	New Cairo, Cairo
156	Profolio Consulting	Maadi, Cairo
157	Ameco Medical Industries	10th Of Ramadan City, Sharqia
158	Huawei Technologies Egypt	Downtown, Cairo
159	Aramex International	Cairo, Egypt
160	Zeta Pharma	Nasr City, Cairo
161	RMS	Mohandessin, Giza
162	iTech Solutions	Maadi, Cairo
163	Andalusia Group	Maadi, Cairo
164	Gadtech-eg	Cairo, Egypt
165	DIRAC SYSTEMS	Heliopolis, Cairo
166	Seven Square	Cairo, Egypt
167	Aramex International	Dokki, Giza
168	union coop	Dokki, Giza
169	CLS Learning Solutions	Dokki, Giza
170	ITIDA	Smart Village, Giza
171	Confidential	Mokattam, Cairo
172	Teleperformance - Egypt	New Cairo, Cairo
173	Argonaut for Mechanical and Electrical Works	Sheraton, Cairo
174	AlQemam For Programming	Mansoura, Dakahlia
175	Confidential	Sheikh Zayed, Giza
176	Confidential	Tanta, Gharbia
177	Qsource	Dokki, Giza
178	Elite Business Services	Mokattam, Cairo
179	Somabay	Hurghada, Red Sea
180	Confidential	Minya, Egypt
181	Al Dar Al Masriah Al Lubnaniah For Publishing	Cairo, Egypt
182	Advansys ESC	Nasr City, Cairo
183	Impomed Egypt	Downtown, Cairo
184	Confidential	Obour City, Cairo
185	Hanimex	Obour City, Cairo
186	GLC	Qift, Qena
187	Deutschland Technology Limited	Obour City, Cairo
188	Castle developments	New Cairo, Cairo
189	Smartistic Education Technology Co	Sheikh Zayed, Giza
190	Nana	Sheraton, Cairo
191	Paymob Solutions	Maadi, Cairo
192	siParadigm Egypt	Sheraton, Cairo
193	Channel IT Egypt	Maadi, Cairo
194	La-Verde Real Estate	Sheraton, Cairo
195	Concrete Plus	New Cairo, Cairo
196	SITA EGYPT	Giza, Egypt
197	Zumra Food	Nasr City, Cairo
198	ShadyPack	Obour City, Cairo
199	DBS	New Cairo, Cairo
200	B.Tech	Nasr City, Cairo
201	Anasia Egypt for Trading	Heliopolis, Cairo
202	Egyptian American International School	New Cairo, Cairo
203	Elite Business Solutions EBS	Maadi, Cairo
204	Confidential	Maadi, Cairo
205	cloud4rain	6th Of October, Giza
206	Ideal House	6th Of October, Giza
207	Smart Home Technology	Heliopolis, Cairo
208	ENBLOM	New Cairo, Cairo
209	Cleopatra Hospitals Group	Maadi, Cairo
210	Enwan	Cairo, Egypt
211	Elattal Holding	Heliopolis, Cairo
212	Restart Technology	Cairo, Egypt
213	Kings Of The Web	Nasr City, Cairo
214	Rowaad	Nasr City, Cairo
215	Aqarmap.com	Nasr City, Cairo
216	Milkys	Noubaria, Beheira
217	Confidential	Badr City, Cairo
218	Scientific Zone	Heliopolis, Cairo
219	AlGhad AlMoshreq	New Cairo, Cairo
220	Premitek	New Cairo, Cairo
221	Mamiba	6th Of October, Giza
222	Pillars	Hadayek Alahram, Giza
223	Smartera 3S	Cairo, Egypt
224	Linked gates	Cairo, Egypt
225	Caelum Middle East	Dokki, Giza
226	Al mansour modern shool	Faqus, Sharqia
227	Expand Cart	6th Of October, Giza
228	asasalqarar	6th Of October, Giza
229	Interact Technology Solutions	Cairo, Egypt
230	Excel Systems	Mohandessin, Giza
231	Sumerge	Maadi, Cairo
232	Integrated Technology Group	Cairo, Egypt
233	Gama Construction	Cairo, Egypt
234	Dexef	Maadi, Cairo
235	Al-Nasser	Dokki, Giza
236	Voo	Downtown, Cairo
607	Khabeer	Dokki, Giza
237	Orientals for Urban Development	10th Of Ramadan City, Sharqia
238	Pro Grow	Haram, Giza
362	TAM	New Cairo, Cairo
239	E3mel Business for Financial & Managerial Consultancy	Maadi, Cairo
240	ClearOrtho	Nasr City, Cairo
241	RMG	Cairo, Egypt
242	Arabian Systems	New Cairo, Cairo
243	Ctopya	Cairo, Egypt
244	Cybertron International Inc.	6th Of October, Giza
245	Union Group	Obour City, Cairo
246	Alnafitha	Zamalek, Cairo
247	Orchidia Pharmaceutical Industries	Cairo, Egypt
248	Botit	Downtown, Cairo
249	JRM for Communications	Nasr City, Cairo
250	M.Srour	Imbaba, Giza
251	Athear For Marketing Services	New Cairo, Cairo
252	Electro Mechanic for Energy (EME)	Heliopolis, Cairo
253	Softec International	Maadi, Cairo
254	ITIDA	6th Of October, Giza
255	Orman Education Management	Haram, Giza
256	Urban Estate	New Cairo, Cairo
257	MTS	Damietta, Egypt
258	MTS	Ain Sokhna, Suez
259	Semak	Giza, Egypt
260	Mercury Vfx	Heliopolis, Cairo
261	Ahram Security Group	10th Of Ramadan City, Sharqia
262	3Brothers	10th Of Ramadan City, Sharqia
263	Cleopatra Hospitals Group	Mohandessin, Giza
264	Safa Soft	Maadi, Cairo
265	Korashi Group	Sheikh Zayed, Giza
266	Esmaar	New Cairo, Cairo
267	Flextock	Heliopolis, Cairo
268	Confidential	10th Of Ramadan City, Cairo
269	Max Muscle	New Cairo, Cairo
270	Flairstech	Cairo, Egypt
271	Alkarma Developments	Sheikh Zayed, Giza
272	Procoor	New Cairo, Cairo
273	Egyptian Takaful Property and Liability	Mohandessin, Giza
274	Ameco Medical Industries	Cairo, Egypt
275	Ghalioungui	Mokattam, Cairo
276	Evergrow for Speciality Fertilizers	Smart Village, Giza
277	Compuroots	Aswan, Egypt
278	AXA OneHealth	New Cairo, Cairo
279	Rasan	Nasr City, Cairo
280	Silicon21	Nasr City, Cairo
281	Selah ElTelmeez For publishing & printing	Obour City, Cairo
282	Gama Construction	Katameya, Cairo
283	Direct Arabia	Cairo, Egypt
284	GLC	Obour City, Cairo
285	ESG Consulting	Cairo, Egypt
286	TravelYalla	Nasr City, Cairo
287	LxT	Mohandessin, Giza
288	MTS	Port Said, Egypt
289	Al-wefaq	Sheraton, Cairo
290	Callvita	Maadi, Cairo
291	Microtech	Dokki, Giza
292	MTS	Heliopolis, Cairo
293	LinkIT	Cairo, Egypt
294	KnowledgeNet	Nasr City, Cairo
295	ASI	Mohandessin, Giza
296	PL-KSA	Sheraton, Cairo
297	MWG	Nasr City, Cairo
298	Sykes Enterprises	Maadi, Cairo
299	Ayman Shahin Group	Arab, Port Said
300	Cairo international School	Giza, Giza
301	Pro Grow	Sheikh Zayed, Giza
302	Queens Health Care	New Cairo, Cairo
303	Hayat Kimya	Ain Sokhna, Suez
304	Confidential	6th Of October, Giza
305	ITS	Nasr City, Cairo
306	Geyushi Motors	Katameya, Cairo
307	UnitLabs	Dokki, Giza
308	UTrust	Nasr City, Cairo
309	Future Face	Nasr City, Cairo
310	TEMPO	New Cairo, Cairo
311	e-finance	Smart Village, Giza
312	Menese International Schools	Cairo, Egypt
313	Charisma Design	Cairo, Egypt
314	Englizya for public transportation	Shubra, Cairo
315	360Imaging	Dokki, Giza
316	Confidential	Dokki, Giza
317	THE PLATFORM	New Cairo, Cairo
318	Happy Trip	Cairo, Egypt
319	Tantamotors company	Nasr City, Cairo
320	Safe Driving Network	Maadi, Cairo
321	Eduapps	Cairo, Egypt
322	Ultimate Solutions Egypt	6th Of October, Giza
323	ysolution	New Damietta, Damietta
324	Robusta	New Cairo, Cairo
325	RDI	Dokki, Giza
326	Shiny white dental center	Cairo, Egypt
327	INNOVTECH	Cairo, Egypt
328	Eamar Al Delta	Tanta, Gharbia
329	Crystal Mind	Nasr City, Cairo
330	Peerless	Mohandessin, Giza
331	Add Pluses	6th Of October, Giza
332	Tech-Hub	Maadi, Cairo
333	Confidential	Nasr City, Cairo
334	National Technology	Nasr City, Cairo
335	ITPS	Maadi, Cairo
336	El-Moasser Books	10th Of Ramadan City, Cairo
337	IoTBlue	Heliopolis, Cairo
338	Div Systems	Mokattam, Cairo
339	Keys Group Services	Maadi, Cairo
340	nichepharma	Sheikh Zayed, Giza
341	BusinessClouds	Heliopolis, Cairo
342	COLNN	Mohandessin, Giza
343	Paxerahealth Corp	6th Of October, Giza
344	Nejmo	Maadi, Cairo
345	Hedab Alkhaleej	Heliopolis, Cairo
346	incorta	Cairo, Egypt
347	DMS	Heliopolis, Cairo
348	Leader	Nasr City, Cairo
349	Tocaan	Maadi, Cairo
350	Hadbrok S.A.E	Maadi, Cairo
351	IT Cores	6th Of October, Giza
352	Izam, inc.	Mohandessin, Giza
353	Schoolver	Hadayek Alahram, Giza
354	Visit Ventures	Nozha, Cairo
355	Confidential	Manial, Cairo
356	34ML	Heliopolis, Cairo
357	Barcode _Sa	Mohandessin, Giza
358	Magdsoft	Nasr City, Cairo
359	LS Egypt	Nasr City, Cairo
360	Arabia for Information Technology	Cairo, Egypt
361	Elnady Engineering & Agencies	Nasr City, Cairo
363	Realtime Integrated Systems	New Cairo, Cairo
364	Rasan	Cairo, Egypt
365	FRIDAL	6th Of October, Giza
366	TRANSSION HOLDINGS	Maadi, Cairo
367	UnitLabs	Mohandessin, Giza
368	Upper Medic	Cairo, Egypt
369	NAOS Marketing	Nasr City, Cairo
370	Onecard	Nasr City, Cairo
371	Ebtikar IT	Maadi, Cairo
372	Kandil Egypt	Heliopolis, Cairo
373	Art dimension	Cairo, Egypt
374	ASYAD-Capital	Nasr City, Cairo
375	Epic Systems	Mohandessin, Giza
376	Femex Egypt	Sheraton, Cairo
377	B&F Soft	Mohandessin, Giza
378	ITGeeks	Mansoura, Dakahlia
379	Creative Motion	Maadi, Cairo
380	Alkan CIT	Cairo, Egypt
381	Asset Technology Group	Sheraton, Cairo
382	DGTERA	Cairo, Egypt
383	Zeal Rewards	Zamalek, Cairo
384	LINK Development	Maadi, Cairo
385	Singleclic	Maadi, Cairo
386	Mazboot	6th Of October, Giza
387	INMA Construction	New Cairo, Cairo
388	OctopusPro Pty Ltd	Nasr City, Cairo
389	Soilmec	Cairo, Egypt
390	ElMnassa Innovation & Development	New Cairo, Cairo
391	Matwaffar	Maadi, Cairo
392	MigrationIT.com	Heliopolis, Cairo
393	eMarketingo	Maadi, Cairo
394	Fawry Banking & Payment Technology Services	Smart Village, Giza
395	Orchtech	Dokki, Giza
396	EEC Group	Sheraton, Cairo
397	Centro Global Solutions	Maadi, Cairo
398	Innovito	Nasr City, Cairo
399	Xtreme Digital	Sheraton, Cairo
400	Media Sci	New Cairo, Cairo
401	QCENTRIS	Cairo, Egypt
402	Ibn Sina Pharma	New Cairo, Cairo
403	El Handasia for Engineering and Contracting	Maadi, Cairo
404	Cegedim	New Cairo, Cairo
405	IMS	Rehab City, Cairo
406	Ark Development	Heliopolis, Cairo
407	Embeddedx	Maadi, Cairo
408	ITGoals	Nasr City, Cairo
409	Robusta	Cairo, Egypt
410	VA Computing Egypt	New Cairo, Cairo
411	Online	Nasr City, Cairo
412	Linux Plus Information Systems	Maadi, Cairo
413	Dawlia	6th Of October, Giza
414	G-Tree Consulting Group	Nasr City, Cairo
415	Puzzle	6th Of October, Giza
416	EHG Group	Cairo, Egypt
417	Zeew	Cairo, Egypt
418	Orange Lab	Giza, Egypt
419	cissegypt	Heliopolis, Cairo
420	Pillars	Badr City, Cairo
421	Afaqy	Nasr City, Cairo
422	Cashcall	Maadi, Cairo
423	Superior Business Solutions	Nasr City, Cairo
424	Furqan Group for Education & IT	Cairo, Egypt
425	Smart IT	Nasr City, Cairo
426	IKEN Technology	Maadi, Cairo
427	Business Values Service "BVS-MEA"	Cairo, Egypt
428	Metra Group	6th Of October, Giza
429	Premier Services and Recruitment	Heliopolis, Cairo
430	GS1	Heliopolis, Cairo
431	eVision	New Cairo, Cairo
432	Archer Solutions	New Cairo, Cairo
433	SAED	Nasr City, Cairo
434	The Lean	Giza, Egypt
435	Trufla	Heliopolis, Cairo
436	Dynamicslink	Nasr City, Cairo
437	microtec	Nasr City, Cairo
438	Togar	New Nozha, Cairo
439	Cairo Airport Travel	Sheraton, Cairo
440	Seuqel Solutions	Downtown, Cairo
441	Business Innovation Mine	Cairo, Egypt
442	New More Design	Nasr City, Cairo
443	git-zone	Cairo, Egypt
444	Corporate Stack Solutions	New Cairo, Cairo
445	SURE International Technology	Nasr City, Cairo
446	Elabd Foods	Mohandessin, Giza
447	Amanleek	New Cairo, Cairo
448	Comfort Egypt	Nasr City, Cairo
449	EffVision	New Cairo, Cairo
450	Maxevia Corporate	Nasr City, Cairo
451	Premier Services and Recruitment	Sheraton, Cairo
452	sadream	Maadi, Cairo
453	Qsource	6th Of October, Giza
454	professional support	Cairo, Egypt
455	ARPUPLUS	Agouza, Giza
456	Gree Solar	Cairo, Egypt
457	IPC	Cairo, Egypt
458	Sharee Coin	New Cairo, Cairo
459	OctopusPro Pty Ltd	Cairo, Egypt
460	Onepoint HR Solutions	Sheraton, Cairo
461	Longman Egypt	Giza, Giza
462	Premium Card	Dokki, Giza
463	Creative Minds	Tanta, Gharbia
464	VARSKEY	Nasr City, Cairo
465	SharpFocus Advertising	Mokattam, Cairo
466	Profolio Consulting	New Cairo, Cairo
467	Autsera Limited	Dokki, Giza
468	Fawry Banking & Payment Technology Services	Cairo, Egypt
469	Marcyrl Pharmaceutical Industry	Obour City, Cairo
470	Ithmaar Integrated Solutions	Haram, Giza
471	Egyptian For Cosmetics	Nasr City, Cairo
472	Drobina Stores	Nasr City, Cairo
473	Etisal EG	New Cairo, Cairo
474	MatsMall	Cairo, Egypt
475	The Micro, Small & Medium Enterprise Development Agency	Dokki, Giza
476	Neom Tech	Maadi, Cairo
477	Awdia Technology	New Cairo, Cairo
478	TOS Group	Cairo, Egypt
479	Net3000.ca	Cairo, Egypt
480	Smart EGAT	Haram, Giza
608	Korashi Group	6th Of October, Giza
481	Awamer Alshabaka _اوامر الشبكه	Mansoura, Dakahlia
482	Appgain	Dokki, Giza
483	ArabDT	New Cairo, Cairo
484	Techno Management	Nasr City, Cairo
485	infasme.com	Heliopolis, Cairo
486	HotelGate	Heliopolis, Cairo
487	DEVOPSolution	Nasr City, Cairo
488	Creative Motion	Cairo, Egypt
489	appcorp	Heliopolis, Cairo
490	Codinga	Heliopolis, Cairo
491	Ziid	Cairo, Egypt
492	MigrationIT.com	Cairo, Egypt
493	Dream2000	New Nozha, Cairo
494	Qsource	New Cairo, Cairo
495	PIXEL	Hadayek Alahram, Giza
496	Glamera	Nasr City, Cairo
497	CDM Graphics	Nasr City, Cairo
498	Agri Soft	Haram, Giza
499	Beyond Solution	Maadi, Cairo
500	Scopic	Cairo, Egypt
501	Premier Services and Recruitment	Giza, Egypt
502	Rytalo	Obour City, Cairo
503	Pefect Presentation	Cairo, Egypt
504	Ceramica Cleopatra	Giza, Egypt
505	Confidential	Sheraton, Cairo
506	LABS	Cairo, Egypt
507	Egpay	Nasr City, Cairo
508	BeSteam	Nasr City, Cairo
509	Deal	Cairo, Egypt
510	EPASS	New Cairo, Cairo
511	3i Vision LTD.	Dokki, Giza
512	The New Firm LLC	Nasr City, Cairo
513	Odiggo	Maadi, Cairo
514	Automated Systems	Maadi, Cairo
515	Solimanyah	Sheikh Zayed, Giza
516	IPC	New Cairo, Cairo
517	Vijua	6th Of October, Giza
518	Fawry Banking & Payment Technology Services	6th Of October, Giza
519	Entrepreware	Maadi, Cairo
520	Go Cloud	Hadayek Alahram, Giza
521	Global Vision	New Cairo, Cairo
522	Qsource	Obour City, Cairo
523	Ultimus	Nasr City, Cairo
524	Radivision	Cairo, Egypt
525	mobyserv	Sheikh Zayed, Giza
526	Wireless Dynamics	Maadi, Cairo
527	Majal	Dokki, Giza
528	Umano	Nasr City, Cairo
529	A1 educenter	Maadi, Cairo
530	Harvest Foods	6th Of October, Giza
531	Gebhaly.com	Heliopolis, Cairo
532	Ads Solution	Cairo, Egypt
533	Mongez	New Cairo, Cairo
534	Bites for Development	Giza, Egypt
535	Roaya IT Solutions,	Maadi, Cairo
536	Arma	Heliopolis, Cairo
537	TechyTypes	Dokki, Giza
538	Dreevo app	Maadi, Cairo
539	DewanSoft	Haram, Giza
540	I2 Egypt - Itsalat Int'l Co.	Cairo, Egypt
541	Sarmady	Mohandessin, Giza
542	Digital pen	Maadi, Cairo
543	Impression Analytics LLC	Maadi, Cairo
544	Nodens Health	Cairo, Egypt
545	Informatique Education	Assuit, Assiut
546	Initium Solutions	Heliopolis, Cairo
547	Gold Market	Cairo, Egypt
548	Nestle	Cairo, Egypt
549	Axcell	Sheikh Zayed, Giza
550	Omega Agency	Mansoura, Dakahlia
551	Delta El-Nile for industries	New Cairo, Cairo
552	EasyKash	Giza, Egypt
553	Confidential	Salam City, Cairo
554	AlgorithmZ –Tooli	Nasr City, Cairo
555	IT Pillars	Nasr City, Cairo
556	Outsoursing Skill	Maadi, Cairo
557	Nile Creations	Heliopolis, Cairo
558	Crymital	Cairo, Egypt
559	3S Software	Nasr City, Cairo
560	Centione	Nasr City, Cairo
561	MAKDZONE	Nasr City, Cairo
562	Path-Solutions	Cairo, Egypt
563	Expert Apps	Maadi, Cairo
564	SAVOLA	Nasr City, Cairo
565	New Innovation Technologies	Nasr City, Cairo
566	duotapcloud	Heliopolis, Cairo
567	Crevisoft Corporation	Maadi, Cairo
568	Edge Pro for Information Systems	Cairo, Egypt
569	Ghassan Ahmed Alsulaiman for Electronic Services	Cairo, Egypt
570	Business Circles	Cairo, Egypt
571	DailyMealz	Maadi, Cairo
572	AQARITO	Cairo, Egypt
573	Codista	New Cairo, Cairo
574	IBS	Nasr City, Cairo
575	Ithmaar Integrated Solutions	Giza, Egypt
576	Contactless	Cairo, Egypt
577	The Portal	Maadi, Cairo
578	EBE	Dokki, Giza
579	TruDoc 24x7	Heliopolis, Cairo
580	Cegedim	Cairo, Egypt
581	Gadtech-eg	New Heliopolis, Cairo
582	GetTechForce.com	Cairo, Egypt
583	MitchDesigns	Heliopolis, Cairo
584	Radivision	Maadi, Cairo
585	Ghassan Ahmed Alsulaiman for Electronic Services	Maadi, Cairo
586	Smart Lighting	Sheraton, Cairo
587	Yodawy	Mohandessin, Giza
588	Masaref	Cairo, Egypt
589	Itqan Information Services	Cairo, Egypt
590	Exe More	Downtown, Cairo
591	TechyTypes	Giza, Egypt
592	evntoo	Obour City, Cairo
593	citpeak	Nasr City, Cairo
594	Ayman Shahin Group	Heliopolis, Cairo
595	infasme.com	Cairo, Egypt
596	PERE	Cairo, Egypt
597	Genena Group	New Cairo, Cairo
598	Digital Experts	Heliopolis, Cairo
599	I2M	New Cairo, Cairo
600	Confidential	Mansoura, Dakahlia
601	Gardenia Pharmacies	Sheikh Zayed, Giza
602	Icommunity	Heliopolis, Cairo
603	Chefaa IT	Cairo, Egypt
604	Chefaa IT	Maadi, Cairo
605	Road9 Media	Maadi, Cairo
606	iHorizons	Cairo, Egypt
609	SAHL Human Resources	Mansoura, Dakahlia
610	Rowad Modern Engineering	Maadi, Cairo
611	Diamond DPC	New Cairo, Cairo
612	CST Systems	New Cairo, Cairo
613	buseet	Maadi, Cairo
614	webSTDY	Mohandessin, Giza
615	Docspert	Nasr City, Cairo
616	Easy System	Mokattam, Cairo
617	Art dimension	Giza, Egypt
618	Universities of Canada in Egypt	New Capital, Cairo
619	Marsa Alam for Touristic Development	Heliopolis, Cairo
620	I2M	Cairo, Egypt
621	TopLine	Cairo, Egypt
622	Gulf tech	Cairo, Egypt
623	Z2 Data	Nasr City, Cairo
624	Al Safa	Nasr City, Cairo
625	Cloud Secrets	Giza, Egypt
626	New Generation International Schools	Obour City, Cairo
627	ITS	Cairo, Egypt
628	EZI Codes	Cairo, Egypt
629	Open Minds CIT	Maadi, Cairo
630	Options	Cairo, Egypt
631	Raffles Advertising Creative House	New Cairo, Cairo
632	khrbashat store	Cairo, Egypt
633	Englizya for public transportation	Cairo, Egypt
634	Elyasmen & Jamar For real Estate Development	New Cairo, Cairo
635	Namaa Flavors & Fragrances | NFF	Cairo, Egypt
636	E-Bakers	Mohandessin, Giza
637	Gulf tech	Nasr City, Cairo
638	Oulabitex	10th Of Ramadan City, Sharqia
639	PICOOK SOLUTIONS	Mansoura, Dakahlia
640	Edara Soft	Nasr City, Cairo
641	Pannelli	New Cairo, Cairo
642	Mongez	Cairo, Egypt
643	Talabat	Maadi, Cairo
644	IVAS	Agouza, Giza
645	Zaytoun development	New Cairo, Cairo
646	Oracle	Cairo, Egypt
647	Pioneers Now	Sheraton, Cairo
648	Arab Consulting Engineers Moharram-Bakhoum	Dokki, Giza
649	Confidential	Giza, Egypt
650	Rashideen Egypt for Trade	Maadi, Cairo
651	Excel Systems	Giza, Giza
652	Statements for Consulting	New Cairo, Cairo
653	Pandora Box	Cairo, Egypt
654	Bouri Group	New Cairo, Cairo
655	Golden Mark	Sheraton, Cairo
656	Confidential	Smart Village, Giza
657	Unicharm	10th Of Ramadan City, Cairo
658	CompactSoft International	New Cairo, Cairo
659	ADDesigner	New Cairo, Cairo
660	Zeina Group	Sheikh Zayed, Giza
661	Focus Communication	Mohandessin, Giza
662	Electronic House	Downtown, Cairo
663	Cultiv	Cairo, Egypt
664	Elaraby Group	Abbassia, Cairo
665	Confidential	Ain Shams, Cairo
666	Better Home	New Cairo, Cairo
667	QuadraTech for Information Technology	Maadi, Cairo
668	CASHU	New Cairo, Cairo
669	Wasla Outsourcing	Heliopolis, Cairo
670	Rednet It Services	Cairo, Egypt
671	Baseera  Foundation	Nasr City, Cairo
672	Naqla	Cairo, Egypt
673	Terre des hommes	Maadi, Cairo
674	Eksab	Downtown, Cairo
675	Talabat	Qena, Qena
676	3D Diagnostix	Maadi, Cairo
677	Carina Wear	New Cairo, Cairo
678	PRESTIGE GROUP FOR REAL ESTATE INVESTMENT & DEVELOPMENT	Cairo, Egypt
679	Ashraf Aesthetic Clinic	Mohandessin, Giza
680	Talabat	Suez, Egypt
681	Talabat	Zagazig, Sharqia
682	NASS Academy	Cairo, Egypt
683	GlobeMed Egypt	Maadi, Cairo
684	BrandMark - Marketing Solutions	Nasr City, Cairo
685	Kick Start Interactive	Dokki, Giza
686	Unicom Group	Maadi, Cairo
687	Open Minds CIT	Cairo, Egypt
688	Spectro	Cairo, Egypt
689	Yat Learning Centers	Maadi, Cairo
690	ExaServe LLC	Nasr City, Cairo
691	IMS	New Cairo, Cairo
692	Silicon Egypt	Nasr City, Cairo
693	Universal Payment Services	Nasr City, Cairo
694	Link Datacenter	Maadi, Cairo
695	classera.	Cairo, Egypt
696	Dual-IT	New Cairo, Cairo
697	Masary	Cairo, Egypt
698	52nd Solution	New Cairo, Cairo
699	LavaLoon	Nasr City, Cairo
700	GIU- AS ( German International University of Applied Science )	New Capital, Cairo
701	MigrationIT.com	Giza, Egypt
702	United	New Cairo, Cairo
703	Crowe Egypt - Dr Khaled Abdelaziz Hegazy	Cairo, Egypt
704	De-MEC	Giza, Egypt
705	TurnDigital	Maadi, Cairo
706	DXPR	Cairo, Egypt
707	Innovety	Sheikh Zayed, Giza
708	Summit Technology Solutions	Katameya, Cairo
709	IN3 Technology	New Cairo, Cairo
710	Generation C	Sheraton, Cairo
711	Sadko for Trading & Agencies	Downtown, Cairo
712	Eagle Chemicals	Heliopolis, Cairo
713	TurnDigital	Cairo, Egypt
714	Crystal Mind	Cairo, Egypt
715	TAB ERP Solutions	Nasr City, Cairo
716	Wham Clinics	Sheikh Zayed, Giza
717	Togar	Cairo, Egypt
718	Ghabbour Auto	Abu Rawash, Giza
719	Andalusia Group	Cairo, Egypt
720	Equine Solutions	Nasr City, Cairo
721	Paynas	Zamalek, Cairo
722	Smart Group	Maadi, Cairo
723	Egabi FSI	Sheraton, Cairo
724	Confidential	Downtown, Cairo
725	AL-Matar	Cairo, Egypt
726	Confidential	Mohandessin, Giza
727	Master Builders Solutions	New Cairo, Cairo
728	Optimum Return	Maadi, Cairo
729	(Delta Textile Egypt)	Nasr City, Cairo
730	Sumerge	Cairo, Egypt
731	Yolo Cosmetics	New Nozha, Cairo
732	Team 4 Security	Cairo, Egypt
733	Compuroots	Nasr City, Cairo
734	Heliopolis University	Salam City, Cairo
735	700 apps	Mohandessin, Giza
736	JoviTronix	Sheikh Zayed, Giza
737	Arrows	6th Of October, Giza
738	NTProAds	Cairo, Egypt
739	Restart Technology	Heliopolis, Cairo
740	ArabAps	Nasr City, Cairo
741	Harirshop	Cairo, Egypt
742	Scoop Production	Haram, Giza
743	Premier Services and Recruitment	Cairo, Egypt
744	Oriental Weavers	10th Of Ramadan City, Sharqia
745	QuadraTech for Information Technology	Katameya, Cairo
746	Hatour Consulting	Maadi, Cairo
747	GET Group- Egypt	Cairo, Egypt
748	EGID company	New Cairo, Cairo
749	iSchool	New Cairo, Cairo
750	WeVenture Pte. Ltd.	Cairo, Egypt
751	STIO Life Science	Cairo, Egypt
752	Cultiv	Assiut, Egypt
753	MoneyFellows	Maadi, Cairo
754	Qsource	Heliopolis, Cairo
755	IdealWaves	Nasr City, Cairo
756	TMentors	Cairo, Egypt
757	Telecom Systems Provider, LLC	Maadi, Cairo
758	Hemaya for Information Technology	Maadi, Cairo
759	IMPARGO GmbH	New Cairo, Cairo
760	OTEX TECHNOLOGY	Nasr City, Cairo
761	montu	Cairo, Egypt
762	Aptec	Obour City, Cairo
763	Solkit Egypt	Cairo, Egypt
764	Cord Digital	Mohandessin, Giza
765	Arkan Integrated Solutions	Maadi, Cairo
766	Prime Group	Mohandessin, Giza
767	La Poire	Basatin, Cairo
768	Majorel Egypt	Maadi, Cairo
769	SABA	Heliopolis, Cairo
770	Raneen	Giza, Giza
771	Kandil Egypt	Obour City, Cairo
772	Mantrac	10th Of Ramadan City, Cairo
773	Cybertron International Inc.	Cairo, Egypt
774	Zewail City	6th Of October, Giza
775	Smart IT	Downtown, Cairo
776	OPPO Egypt	Nasr City, Cairo
777	Mishkat Nour	Port Said, Egypt
778	Mishkat Nour	Nasr City, Cairo
779	Cultiv	Heliopolis, Cairo
780	WebBeds	Nasr City, Cairo
781	Al Amin Technological Systems	Heliopolis, Cairo
782	DIRAC SYSTEMS	Cairo, Egypt
783	Urban Estate	Cairo, Egypt
784	Naqada Music Management	Dokki, Giza
785	SOLAMISR	Heliopolis, Cairo
786	global building	New Cairo, Cairo
787	Alkarma Developments	6th Of October, Giza
788	Movico-ICT	Maadi, Cairo
789	Elif Global	6th Of October, Giza
790	Spark Systems	Nasr City, Cairo
791	STEP	New Cairo, Cairo
792	Bright Minds	Heliopolis, Cairo
793	Egypt Yellow Pages	Heliopolis, Cairo
794	Eagle Air	Dokki, Giza
795	Acino Pharma Egypt	New Cairo, Cairo
796	Energya Cables	10th Of Ramadan City, Sharqia
797	Eastlands International School	Shorouk City, Cairo
798	Be Group	Cairo, Egypt
799	CBRE GWS	6th Of October, Giza
800	MICA	Haram, Giza
801	Talaat Moustafa Group	Dokki, Giza
802	HEIBCO	New Cairo, Cairo
803	Takween Integrated Community Development	Esna, Luxor
804	Takween Integrated Community Development	Maadi, Cairo
805	Expand Cart	Cairo, Egypt
806	Easy Projects Egypt	Cairo, Egypt
807	Sky Distribution	Sheikh Zayed, Giza
808	SmartTech Systems	Nasr City, Cairo
809	GFC Oil & Gas Services	Cairo, Egypt
810	Si-Vision	Sheraton, Cairo
811	Bavaria Egypt	Downtown, Cairo
812	IST Networks	Cairo, Egypt
813	Link Aero Trading Agency	Zamalek, Cairo
814	Sanctum Hospitality	Zamalek, Cairo
815	Construction & Design Co. SAE	Downtown, Cairo
816	Confidential	Damietta, Egypt
817	Leadintop	Cairo, Egypt
818	Semak	Dokki, Giza
819	IntlCables	10th Of Ramadan City, Sharqia
820	Success Academy	Cairo, Egypt
821	BTC-Egypt Gold	Downtown, Cairo
822	kazary	Obour City, Cairo
823	NASS Academy	Mokattam, Cairo
824	Link Datacenter	Dokki, Giza
825	Electro Mechanic for Energy (EME)	New Heliopolis, Cairo
826	Microsoft	Cairo, Egypt
827	BTC-Egypt Gold	Obour City, Cairo
828	Promech Engineering	Maadi, Cairo
829	WUZZUF	Maadi, Cairo
830	Swvl	Cairo, Egypt
831	CPAS	Heliopolis, Cairo
832	HorizonTechs	Nasr City, Cairo
833	MANISA STUDIO	Mokattam, Cairo
834	Majorel Egypt	Cairo, Egypt
835	Signtech Communications S.A.E	Nasr City, Cairo
836	Concentrix	6th Of October, Giza
837	Ibn Sina Pharma	6th Of October, Giza
838	Masary	Mokattam, Cairo
839	Leverage Solutions	6th Of October, Giza
840	Greater Cairo Foundries Co. S.A.E	Belbes, Sharqia
841	Kandeel Group	New Cairo, Cairo
842	SAK Developments	New Cairo, Cairo
843	Ezdehar Management	Obour City, Cairo
844	Target Recruitment  & HR Solutions	Cairo, Egypt
845	Future Group	Cairo, Egypt
846	Parkville Pharmaceuticals	Mohandessin, Giza
847	Confidential	Ain Sokhna, Suez
848	Domiatec Holding	Obour City, Cairo
849	Cairo Shades	6th Of October, Giza
850	Royal Lab	Heliopolis, Cairo
851	Gallop Express	6th Of October, Giza
852	Bavaria Egypt	Nozha, Cairo
853	Rich Home	Cairo, Egypt
854	Al Watania Poultry	6th Of October, Giza
855	Confidential	Khanka, Qalubia
856	Stand zone	15th May City, Cairo
857	Orange Egypt	6th Of October, Giza
858	Confidential	Alsadat City, Monufya
859	Accord Business Group	Cairo, Egypt
860	Raya	Giza, Egypt
861	Better & Partners' Communications	Cairo, Egypt
862	Master Linux	Heliopolis, Cairo
863	Expolink	Maadi, Cairo
864	Global Napi Pharmaceuticals	6th Of October, Giza
865	Asfour Crystal	Shubra, Cairo
866	Egypt Yellow Pages	Maadi, Cairo
867	Metalo	Abu Rawash, Giza
868	El Hoshby	Ain Shams, Cairo
869	Wadi Group	Sheikh Zayed, Giza
870	Alfa Electronics	Heliopolis, Cairo
871	Mobica	Abu Rawash, Giza
872	Wood shed egypt	6th Of October, Giza
873	PANGEA	Cairo, Egypt
874	Jozoor Landspaces	New Cairo, Cairo
875	Al DEYAA Telecom	6th Of October, Giza
876	TRANSSION HOLDINGS	Downtown, Cairo
877	Fields for Trading and Industries	Obour City, Cairo
878	Al Nayrouz Exhibitions	Nasr City, Cairo
879	Bebrand Advertising Agency	Maadi, Cairo
880	Argonaut for Mechanical and Electrical Works	Heliopolis, Cairo
881	Simplex	Nasr City, Cairo
882	Masar Engineering Consulting	New Cairo, Cairo
883	Atheel CC	Maadi, Cairo
884	Maalem-Group	Cairo, Egypt
885	El Nahar for Medical Solutions	Sohag, Sohag
886	InspireOBS	Nasr City, Cairo
887	Tradeline Stores	Port Said, Egypt
888	T.B.F.C	Maadi, Cairo
889	EFG Hermes	Smart Village, Giza
890	Trust	Khanka, Qalubia
891	ECS - Energy & Contracting Solutions	Maadi, Cairo
892	Technoplastic	Obour City, Cairo
893	LG Electronics	10th Of Ramadan City, Sharqia
894	Bocsha egypt	Obour City, Cairo
895	Mwasalat Misr SAE	Heliopolis, Cairo
896	Fingerprint Consultancy	Cairo, Egypt
897	Daltex	Mohandessin, Giza
898	Safwa Urban Development	New Cairo, Cairo
899	CloudInn	Mohandessin, Giza
900	Confidential	New Nozha, Cairo
901	SMARTTEL	Nasr City, Cairo
902	Teraz	New Cairo, Cairo
903	Home city	Heliopolis, Cairo
904	United Bio Med	Heliopolis, Cairo
905	Halwani Bros	10th Of Ramadan City, Cairo
906	Confidential	Nozha, Cairo
907	property today egypt	New Cairo, Cairo
908	Comatrol Systems	Heliopolis, Cairo
909	Innovito	Heliopolis, Cairo
910	Knowledge bridge Solutions	Cairo, Egypt
911	Evoreen	Maadi, Cairo
912	Tawzeiy	New Cairo, Cairo
913	Confidential	New Capital, Cairo
914	DM Engineering	Heliopolis, Cairo
915	Shehab Mazhar	Mohandessin, Giza
916	Mar Group Egypt	Obour City, Cairo
917	AMACO	6th Of October, Giza
918	Confidential	Madinaty, Cairo
919	Chema Foam	10th Of Ramadan City, Sharqia
920	Confidential	10th Of Ramadan City, Sharqia
921	Longman Egypt	6th Of October, Giza
922	El Nasr Group	Heliopolis, Cairo
923	700 apps	Giza, Egypt
924	Tasmeem Studio	6th Of October, Giza
925	Smart Window	New Cairo, Cairo
926	Tradeline Stores	Cairo, Egypt
927	Misr Elkheir Foundation	Cairo, Egypt
928	Talents Arena	Smart Village, Giza
929	Value	New Cairo, Cairo
930	Bomba	Kerdasa, Giza
931	Monginis Bakery	Abu Rawash, Giza
932	Aphrie	Maadi, Cairo
933	Bigo Tech.	New Cairo, Cairo
934	MAC Training Center	Nasr City, Cairo
935	SE Wiring Systems EGYPT	6th Of October, Giza
936	Arabian Systems	Cairo, Egypt
937	Kimit Real Estate	New Cairo, Cairo
938	Egyptian Tabletop Trading Company	Giza, Egypt
939	GLC	Cairo, Egypt
940	Asfour Crystal	Cairo, Egypt
941	Ebtkar	Nasr City, Cairo
942	e-finance	6th Of October, Giza
943	Legacy Coaching Institute	Cairo, Egypt
944	Vodafone	6th Of October, Giza
945	Bingo Global	Heliopolis, Cairo
946	GLC	Giza, Egypt
947	Virtual Worker Now	Cairo, Egypt
948	JUMPPEAK	Sheikh Zayed, Giza
949	Dimofinf Operations Center	Nasr City, Cairo
950	Link Datacenter	Cairo, Egypt
951	Pillars	Cairo, Egypt
952	Term	New Cairo, Cairo
953	Neisco for Modern Water Systems Production	Nasr City, Cairo
954	Blend Furniture	Nasr City, Cairo
955	Assaf Group	Cairo, Egypt
956	El Abd Group	Dokki, Giza
957	Titan Cement Egypt	Sheraton, Cairo
958	BARAKA Institute for Integrative Consciousness	Garden City, Cairo
959	Tameer	6th Of October, Giza
960	BE ONE Solutions	Maadi, Cairo
961	Daleena Polyclinic	Mohandessin, Giza
962	Right Click	Nasr City, Cairo
963	Havana Hills	6th Of October, Giza
964	Power Solutions	6th Of October, Giza
965	Masria Digital Payment (MDP)	New Cairo, Cairo
966	SMART 3DP	Sheikh Zayed, Giza
967	Computer Consulting & Supplies	Zamalek, Cairo
968	SYE English Community	Dokki, Giza
969	Nozha Group	Heliopolis, Cairo
970	Argaam	Mohandessin, Giza
971	Expleo	Maadi, Cairo
972	Handicap International	Cairo, Egypt
973	Multi System Eng. Co	Nasr City, Cairo
974	Think Agency	Nasr City, Cairo
975	Tanmeyah	Maadi, Cairo
976	Meeza	New Cairo, Cairo
977	Hefny Pharma Group	Cairo, Egypt
978	Ultimate Solutions Egypt	Giza, Giza
979	Photon scan	Cairo, Egypt
980	TensorGraph	Maadi, Cairo
981	Ray C - Security & Engineering Solutions	Maadi, Cairo
982	G.I.S Free Zones	Heliopolis, Cairo
983	Ard El Kheir For Trade And Distribution	Maadi, Cairo
984	GlassRock Insulation Co.	Maadi, Cairo
985	Artal Egypt	New Cairo, Cairo
986	Elgabaly Architects	New Cairo, Cairo
987	smartpace solutions	Cairo, Egypt
988	Setec Egypte	Heliopolis, Cairo
989	Global Advanced Systems	Sheraton, Cairo
990	Agyad Schools	Maadi, Cairo
991	Bexel	Nasr City, Cairo
992	Confidential	Basatin, Cairo
993	MAC EGYPT REAL ESTATE CO.	10th Of Ramadan City, Cairo
994	Hayat Kimya	6th Of October, Giza
995	Cognitro Analytics	Maadi, Cairo
996	MH-Group	Mohandessin, Giza
997	Numou International نمو الدولية	Cairo, Egypt
998	TEPCO S.A.E.	6th Of October, Giza
999	Hyma Plastic	Abu Rawash, Giza
1000	Future British International School	Tanta, Gharbia
1001	THE Architects, Planners & Civil Engineers Consultancy Firm	Cairo, Egypt
1002	Insurance Brokerage Office	New Cairo, Cairo
1003	UNI Power	6th Of October, Giza
1004	Confidential	Haram, Giza
1005	iHub	Alamein, Matruh
1006	Fitex	10th Of Ramadan City, Cairo
1007	R2S Logistics	Nasr City, Cairo
1008	MODON Developments	Sheikh Zayed, Giza
1009	Foret Vitale	New Cairo, Cairo
1010	Lafarge	Monufya, Egypt
1011	TechAdemics	New Cairo, Cairo
1012	CCR Developments	Nasr City, Cairo
1013	New Way	New Cairo, Cairo
1014	Dunn	Nasr City, Cairo
1015	Riwaq	Cairo, Egypt
1016	Zumra Food	Cairo, Egypt
1017	D-Fens Networks	Mohandessin, Giza
1018	Kama Manufacturing	10th Of Ramadan City, Cairo
1019	Nouval Group	10th Of Ramadan City, Cairo
1020	Al monairy	10th Of Ramadan City, Sharqia
1021	El Asreya Developments	Heliopolis, Cairo
1022	The American Research Center In Egypt	Cairo, Egypt
1023	Studio PARADIGM	Zamalek, Cairo
1024	AIC - Al Maalim International Co.	New Cairo, Cairo
1025	Reap Solutions	New Cairo, Cairo
1026	AFAQ	Cairo, Egypt
1027	ODEXE Architects	Heliopolis, Cairo
1028	AUG Pharma	Giza, Egypt
1029	Misreya Medical	Sheraton, Cairo
1030	Egyptian American International School	Katameya, Cairo
1031	tshween.com	Maadi, Cairo
1032	Bakeland Egypt	10th Of Ramadan City, Sharqia
1033	Vanilla Jazairy	Obour City, Cairo
1034	KIT Consulting	Dokki, Giza
1035	Global Conveyor Technology	Cairo, Egypt
1036	Confidential	Katameya, Cairo
1037	M² Developments	New Cairo, Cairo
1038	GUC	New Cairo, Cairo
1039	Kidzom	Sheikh Zayed, Giza
1040	TruKKer Misr	Maadi, Cairo
1041	Allamna Integrated Solutions	Assuit, Assiut
1042	Aga Khan Foundation	Aswan, Aswan
1043	Spark Renewables	Cairo, Egypt
1044	beepz	Maadi, Cairo
1045	EVA Cosmetics	6th Of October, Giza
1046	Allamna Integrated Solutions	Heliopolis, Cairo
1047	Devera Developments	New Cairo, Cairo
1048	Exception patissiere	Hadayek Alahram, Giza
1049	kirovest	Obour City, Cairo
1050	organizersgroup	New Cairo, Cairo
1051	Home Town	Cairo, Egypt
1052	Telecom Egypt Club	Nasr City, Cairo
1053	Sayyadco-company	Heliopolis, Cairo
1054	Pillars	Maadi, Cairo
1055	Eva Pharma	Haram, Giza
1056	Egyptian Banks Company	New Cairo, Cairo
1057	Lactalis Halawa	Obour City, Cairo
1058	Gates Development	New Cairo, Cairo
1059	Orange Egypt	Assiut, Egypt
1060	Transmar International	New Cairo, Cairo
1061	Town Team	Tanta, Gharbia
1062	Forsan El Tahrir جمعية فرسان التحرير الخيريه	Nasr City, Cairo
1063	Swedish Group	New Cairo, Cairo
1064	THE PLATFORM	Aswan, Aswan
1065	Tline	Maadi, Cairo
1066	Alba Pharma	Nasr City, Cairo
1067	Fawry Microfinance	Mokattam, Cairo
1068	El Mansour Development	Cairo, Egypt
1069	El Khalifa group	Hadayek Alahram, Giza
1070	SilverLinks	New Cairo, Cairo
1071	Engosoft	Nasr City, Cairo
1072	MediaServ	Nasr City, Cairo
1073	Bingo Global	Sheraton, Cairo
1074	INNOVARE Medical Systems	Mohandessin, Giza
1075	Orientals for Urban Development	Sheraton, Cairo
1076	Royal Ceramica	Nasr City, Cairo
1077	Egybell	Nasr City, Cairo
1078	El Safa for Medical Supplies EMS	10th Of Ramadan City, Sharqia
1079	Kandil Industries	10th Of Ramadan City, Sharqia
1080	Scientific Medical Equipment Co.	Cairo, Egypt
1081	MIU	Obour City, Cairo
1082	Lafarge	Tanta, Gharbia
1083	Five	Sheikh Zayed, Giza
1084	Hi-Q Academy	Nasr City, Cairo
1085	شركة إم تي إم للتوكيلات التجارية MTM International	Heliopolis, Cairo
1086	Bayt El Khebra	Maadi, Cairo
1087	Home of Hope	Mokattam, Cairo
1088	Ibn Sina Pharma	Kafr Alsheikh, Egypt
1089	E-Aswaq Misr	Smart Village, Giza
1090	Breadfast	New Cairo, Cairo
1091	Greater Cairo Foundries Co. S.A.E	Cairo, Egypt
1092	Certifeka inc.	New Cairo, Cairo
1093	Notion International School	Giza, Giza
1094	Ismailia Cardiac Center	Ismailia, Ismailia
1095	Premier Services and Recruitment	Garden City, Cairo
1096	Pillars	6th Of October, Giza
1097	Le Garage Gallery	New Cairo, Cairo
1098	Xact	Heliopolis, Cairo
1099	EFS	Heliopolis, Cairo
1100	Vitas Egypt	Cairo, Egypt
1101	Premier Services and Recruitment Overseas	Obour City, Cairo
1102	Sigma for Import and Export	Heliopolis, Cairo
1103	Rockal	Nasr City, Cairo
1104	Raya Contact Center	6th Of October, Giza
1105	Projects House	Maadi, Cairo
1106	Ehab Group Stores(Mobile&Accessoires)	Downtown, Cairo
1107	Docspert	Cairo, Egypt
1108	Masria Digital Payment (MDP)	10th Of Ramadan City, Sharqia
1109	SOS HR Solutions	Obour City, Cairo
1110	Mobco Civil Construction	Nasr City, Cairo
1111	Fresenius Medical Care	Sheraton, Cairo
1112	The International School of Elite Education	New Cairo, Cairo
1113	Future Group	Mohandessin, Giza
1114	El Nahar for Medical Solutions	Tanta, Gharbia
1115	Tabarak Holding	New Cairo, Cairo
1116	Alarabia Group	10th Of Ramadan City, Cairo
1117	Capital One holding for investment	New Cairo, Cairo
1118	Scarf Home	Dokki, Giza
1119	ShadyPack	10th Of Ramadan City, Cairo
1120	Concrete For Real Estate	6th Of October, Giza
1121	hashtag group	Nasr City, Cairo
1122	Docspert	Dakahlia, Egypt
1123	Johnson Controls	New Cairo, Cairo
1124	Roots Management Consultants	Giza, Egypt
1125	DM Arts	Nasr City, Cairo
1126	A-part Bosch	Katameya, Cairo
1127	A-part Bosch	Gharbia, Egypt
1128	A-part Bosch	Mansoura, Dakahlia
1129	INMA Developments	New Cairo, Cairo
1130	The Translation Gate	Maadi, Cairo
1131	TeleTrust	Mokattam, Cairo
1132	Bow and Ark	Cairo, Egypt
1133	Mphotels	Hurghada, Red Sea
1134	NOK for Human Capital Solutions	Obour City, Cairo
1135	Okhtub	Smart Village, Giza
1136	Serioplast	6th Of October, Giza
1137	Concept Property	Sheikh Zayed, Giza
1138	Barkouky Electric	Sheraton, Cairo
1139	Nozha Group	Obour City, Cairo
1140	LOGIC Training & HR Development	Mohandessin, Giza
1141	Confidential	Belbes, Sharqia
1142	Dual-IT	Tanta, Gharbia
1143	UNICARE Medical Care & Centers	Dokki, Giza
1144	Notion International School	Faisal, Giza
1145	Aramex International	6th Of October, Giza
1146	Aramex International	Heliopolis, Cairo
1147	MTS	Sheraton, Cairo
1148	SAED	Cairo, Egypt
1149	Waradly	Maadi, Cairo
1150	TTC Technologies	Heliopolis, Cairo
1151	Macro Group	Sheraton, Cairo
1152	Confidential	Abu Hummus, Beheira
1153	Etisalat Misr	Smart Village, Giza
1154	OTO Courses	Maadi, Cairo
1155	CBRE GWS	New Cairo, Cairo
1156	Al Futtaim	New Cairo, Cairo
1157	Atco Pharma For Pharmaceutical Industries	Quweisna, Monufya
1158	Confidential	Beni Suef, Beni Suef
1159	Elgabaly Architects	Cairo, Egypt
1160	IstiZada LLC	Cairo, Egypt
1161	Audio Technology	Heliopolis, Cairo
1162	PICO Engineering Group	Mohandessin, Giza
1163	Expert Solutions	Cairo, Egypt
1164	Fingerprint Consultancy	Maadi, Cairo
1165	Afraa Technology	Cairo, Egypt
1166	Azm Challenge	Cairo, Egypt
1167	Global Vision	6th Of October, Giza
1168	EAST Localize	Nasr City, Cairo
1169	INDEVCO	Sheikh Zayed, Giza
1170	Groupe- Atlantic	10th Of Ramadan City, Cairo
1171	OSN	Cairo, Egypt
1172	Al-Madina	Manial, Cairo
1173	NetEra	San Stefano, Alexandria
1174	Paxerahealth Corp	Cairo, Egypt
1175	Ebling	Dokki, Giza
1176	apps square	Tanta, Gharbia
1177	Maxycode	Nasr City, Cairo
1178	TACC Network	Heliopolis, Cairo
1179	Electro	Cairo, Egypt
1180	Sega_m	10th Of Ramadan City, Cairo
1181	Amideast	Giza, Egypt
1182	UX Centers	Abu Rawash, Giza
1183	SERA Mattress & Furniture	Obour City, Cairo
1184	Nexus Analytica	Shorouk City, Cairo
1185	I-Score	Cairo, Egypt
1186	Eva Pharma	Downtown, Cairo
1187	Certifeka inc.	Cairo, Egypt
1188	MTI Automotive	Heliopolis, Cairo
1189	Digital Essence	Maadi, Cairo
1190	MTI Automotive	10th Of Ramadan City, Cairo
1191	Kayan Egypt for Trading & Investment	Katameya, Cairo
1192	Al Arab Group	Sheikh Zayed, Giza
1193	Jfcafes	Cairo, Egypt
1194	Quad Code	Giza, Egypt
1195	Triptab	Cairo, Egypt
1196	Triptab	Haram, Giza
1197	Happy life travel and tourism	Giza, Giza
1198	Nile Air	Sheraton, Cairo
1199	Elabd Foods	Sharabeya, Cairo
1200	Simple Touch Software	Cairo, Egypt
1201	Wadi Degla Group	Maadi, Cairo
1202	Dar Al-Fouad Hospital	6th Of October, Giza
1203	NGMSA	Alexandria, Egypt
1204	New Plan	New Cairo, Cairo
1205	Artapart	Maadi, Cairo
1206	ISEC	Nasr City, Cairo
1207	Global Brands	6th Of October, Giza
1208	Spinneys Egypt	6th Of October, Giza
1209	4level1	Maadi, Cairo
1210	AlAlamia International	Mokattam, Cairo
1211	EasyKash	Dokki, Giza
1212	Aggarly	Mohandessin, Giza
1213	Digisay	Zamalek, Cairo
1214	TensorGraph	Cairo, Egypt
1215	Business Supply Hub	Cairo, Egypt
1216	ICIS	New Cairo, Cairo
1217	Shifa Egypt	New Cairo, Cairo
1218	Qeema	Nasr City, Cairo
1219	ZAD Solutions	Mohandessin, Giza
1220	Hello Mommy Nursery & Preschool	Nasr City, Cairo
1221	Ayman Shahin Group	Obour City, Cairo
1222	Cairo Lab	Giza, Giza
1223	Infinity business Solutions	Maadi, Cairo
1224	Simple Touch Software	Maadi, Cairo
1225	E-Cards	Smart Village, Giza
1226	Fields for Trading and Industries	Cairo, Egypt
1227	Ibn Sina Pharma	Tanta, Gharbia
1228	Gold Market	New Cairo, Cairo
1229	Elsewedy industries	10th Of Ramadan City, Cairo
1230	Smart Group	Nasr City, Cairo
1231	Delta for housing and construction	10th Of Ramadan City, Sharqia
1232	Cequens	Cairo, Egypt
1233	Sidra	Heliopolis, Cairo
1234	Zocer	Haram, Giza
1235	Life Farm	Cairo, Egypt
1236	Premier Services and Recruitment	Salam City, Cairo
1237	Parkville Pharmaceuticals	Giza, Egypt
1238	Capital Link Developments	New Cairo, Cairo
1239	AluNile	Mohandessin, Giza
1240	NMDC	Cairo, Egypt
1241	feast house	Sharm Alsheikh, South Sinai
1242	Premier Services and Recruitment	6th Of October, Giza
1243	ElTarek Automotive	6th Of October, Giza
1244	Dallant Middle East	Heliopolis, Cairo
1245	Inca & Co	New Cairo, Cairo
1246	OdooTec	New Cairo, Cairo
1247	e Aswaaq Misr	Cairo, Egypt
1248	eCompounds	6th Of October, Giza
1249	Geyushi Motors	10th Of Ramadan City, Cairo
1250	General Star Business Development Co.,(Egypt)	New Cairo, Cairo
1251	Aramex International	Mansoura, Dakahlia
1252	o2proformance	Giza, Egypt
1253	Homex Shop	Nasr City, Cairo
1254	Met Life Egypt	Nasr City, Cairo
1255	Lotus Finishing Materials	Nozha, Cairo
1256	INSIDER	New Cairo, Cairo
1257	MAS Trade CO	New Nozha, Cairo
1258	Capital	New Cairo, Cairo
1259	EHG Group	New Cairo, Cairo
1260	Industrial Services Center - Datco	Sheraton, Cairo
1261	MAXAB	Gharbia, Egypt
1262	Al-Mansour	San Stefano, Alexandria
1263	UD Crops	Heliopolis, Cairo
1264	Acino Pharma Egypt	Sayeda Zeinab, Cairo
1265	Confidential	Dakahlia, Egypt
1266	Confidential	Gharbia, Egypt
1267	Minlo	New Nozha, Cairo
1268	Al Ismailia Pharmacy	Alexandria, Egypt
1269	Options	Mohandessin, Giza
1270	ELTOUKHY PHARMACIES	Heliopolis, Cairo
1271	So Value Pharma	Downtown, Cairo
1272	Smart Group	New Cairo, Cairo
1273	Inca & Co	Zamalek, Cairo
1274	Artemis	Maadi, Cairo
1275	Smart GYM	Cairo, Egypt
1276	Dayrah Solutions	Maadi, Cairo
1277	Connect Homes	New Cairo, Cairo
1278	SME Consulting	Heliopolis, Cairo
1279	Infinity Business Solutions	Maadi, Cairo
1280	Hatolna	Heliopolis, Cairo
1281	Go2Martket Dynamics	Sheraton, Cairo
1282	Totals Tech	Kuwait City, Kuwait
1283	Medineeds	Agouza, Giza
1284	Caredirect	Sheraton, Cairo
1285	CBRE GWS	Cairo, Egypt
1286	TCD MENA	Heliopolis, Cairo
1287	Tawzef	Sheraton, Cairo
1288	Viola Communications	Heliopolis, Cairo
1289	Daltex	Abu Almatamir, Beheira
1290	Confidential	Luxor, Egypt
1291	Asass	New Cairo, Cairo
1292	Daltex	Farafra, New Valley
1293	Alam Almaarifa	Muscat, Oman
1294	SURE International Technology	Riyadh, Saudi Arabia
1295	Edu-Fun	Nasr City, Cairo
1296	Raktos	New Cairo, Cairo
1297	Paxerahealth Corp	Sheraton, Cairo
1298	appenza	New Cairo, Cairo
1299	Egyptian Canning - BEST	Aga, Dakahlia
1300	Akhtaboot Group	New Cairo, Cairo
1301	Beta Electronics	Dokki, Giza
1302	Probuilders	Agouza, Giza
1303	El Yasmina Cosmetics	Heliopolis, Cairo
1304	Nana	Cairo, Egypt
1305	Jovi Build	Ain Sokhna, Suez
1306	El Sewedy Trading Group	Mohandessin, Giza
1307	Pointability	Haram, Giza
1308	IT Cores	Heliopolis, Cairo
1309	EL Mohandess Press	10th Of Ramadan City, Sharqia
1310	Medical Empire	Mokattam, Cairo
1311	INTECH	Assuit, Assiut
1312	Confidential	Noubaria, Beheira
1313	High Art	Sheraton, Cairo
1314	MENA For Contracting & Trading	Mohandessin, Giza
1315	Sima Food Industries	10th Of Ramadan City, Sharqia
1316	kraft pack	10th Of Ramadan City, Sharqia
1317	Nile for plastic industries	Haram, Giza
1318	Dream2000	San Stefano, Alexandria
1319	Sima Food Industries	Cairo, Egypt
1320	Power International	New Cairo, Cairo
1321	Peerless	Riyadh, Saudi Arabia
1322	Pan Arab Media Inc	Maadi, Cairo
1323	Confidential	Hurghada, Red Sea
1324	Confidential	Adfo, Aswan
1325	ServerHub	Dallas, United States
1326	Fine Hygienic Holding	6th Of October, Giza
1327	Penta Pharma	Sheraton, Cairo
1328	Infinity	Heliopolis, Cairo
1329	GULFCYBERTECH	Muscat, Oman
1330	RKH Realestate Consultancy	6th Of October, Giza
1331	Proteinea	Downtown, Cairo
1332	World Business Fitness	New Cairo, Cairo
1333	Azadea Group	Cairo, Egypt
1334	Confidential	Riyadh, Saudi Arabia
1335	Al-Ahmady Motors	Nasr City, Cairo
1336	Defy Egypt	6th Of October, Giza
1337	Consulto	New Cairo, Cairo
1338	Metal & Steel Innovation	New Cairo, Cairo
1339	Elite Home	New Cairo, Cairo
1340	Alexandria For Programming	Bolkly, Alexandria
1341	Alternative Education	Heliopolis, Cairo
1342	ABCO Group	Helmeyat Alzaytoun, Cairo
1343	Arab Bridge	New Cairo, Cairo
1344	BAWQ TELECOMM	Dokki, Giza
1345	Sukari Gold Mines	Hurghada, Red Sea
1346	Nozha Group	Ras Sedr, South Sinai
1347	EMIRATES BARQ	Cairo, Egypt
1348	Capital elite for real estate development	6th Of October, Giza
1349	Esnad	Nozha, Cairo
1350	Delta Egypt For Lighting	Obour City, Cairo
1351	Great Castle	Heliopolis, Cairo
1352	ProService	Nasr City, Cairo
1353	Tafeel	Cairo, Egypt
1354	KUWADICO	6th Of October, Giza
1355	A.T Lease Egypt	Cairo, Egypt
1356	Mr. Tailor	Maadi, Cairo
1357	Lotus Finishing Materials	New Cairo, Cairo
1358	Biobusiness	Haram, Giza
1359	Maxab	Maadi, Cairo
1360	La Casa Code	Sheikh Zayed, Giza
1361	Mrsool	Maadi, Cairo
1362	Summer Moon Co.	Bourj Alarab, Alexandria
1363	Madar plus	Obour City, Cairo
1364	MWG	Sidi Gaber, Alexandria
1365	Elite	Riyadh, Saudi Arabia
1366	Filkhedma	New Cairo, Cairo
1367	Go Bus	Katameya, Cairo
1368	Simplex	Marg, Cairo
1369	Etisalat Misr	Cairo, Egypt
1370	WEData	Giza, Egypt
1371	Galaxy Consulting Solutions (G.C.S)	Nasr City, Cairo
1372	A2Z Lingerie	Alexandria, Egypt
1373	ATA Electronics	6th Of October, Giza
1374	199X Digital	Maadi, Cairo
1375	Baseet.ai	Cairo, Egypt
1376	Egyptian British International School	Smouha, Alexandria
1377	Talent 360	Cairo, Egypt
1378	InnoVision Systems	New Cairo, Cairo
1379	Etolv	Dokki, Giza
1380	arkandev	New Cairo, Cairo
1381	Hakim Misr Paco S.A.E.	10th Of Ramadan City, Sharqia
1382	BLU Real Estate	Heliopolis, Cairo
1383	Builderia	New Cairo, Cairo
1384	Reflect Clinics	Heliopolis, Cairo
1385	(Werefresh)	Zamalek, Cairo
1386	Al Andalous Medical Company	6th Of October, Giza
1387	Cleopatra Hospitals Group	Dokki, Giza
1388	PIXEL	Haram, Giza
1389	Skep Home	Heliopolis, Cairo
1390	Google	Cairo, Egypt
1391	MTMs	Heliopolis, Cairo
1392	Youxel	Maadi, Cairo
1393	RMG	New Cairo, Cairo
1394	Skep Home	Cairo, Egypt
1395	eelu	Giza, Egypt
1396	Joovlly	Mohandessin, Giza
1397	Youxel	Cairo, Egypt
1398	Wagdy moamen Group	Obour City, Cairo
1399	Royal Future Light for Publishing	Faisal, Giza
1400	ECCC	Maadi, Cairo
1401	BI-Technologies	New Cairo, Cairo
1402	Kabbany Construction Group	Cairo, Egypt
1403	eelu	Dokki, Giza
1404	eSky IT	New Cairo, Cairo
1405	Almotaheda	Nasr City, Cairo
1406	Dolf	Heliopolis, Cairo
1407	eSky IT	Cairo, Egypt
1408	Digitec	Cairo, Egypt
1409	Club Shoes	Alexandria, Egypt
1410	wnpro	Mohandessin, Giza
1411	Unimix Egypt for Readymix concrete	Cairo, Egypt
1412	Confidential	Zamalek, Cairo
1413	Confidential	Marsa Matruh, Matruh
1414	wnpro	Cairo, Egypt
1415	Sphinx Glass	Maadi, Cairo
1416	Acrylicon Egypt for flooring	New Cairo, Cairo
1417	PANTS	Heliopolis, Cairo
1418	Detco- Add me	Giza, Egypt
1419	Unival	Katameya, Cairo
1420	KidZania Cairo	New Cairo, Cairo
1421	Digitec	New Cairo, Cairo
1422	Ascon Advanced Solutions & Consultant	Alexandria, Egypt
1423	LSMAN Co	10th Of Ramadan City, Cairo
1424	Objects	Alexandria, Egypt
1425	Dawaya	Garden City, Cairo
1426	John Snow InC	Maadi, Cairo
1427	Nile Tronix	Heliopolis, Cairo
1428	Amiral Holdings Limited	Heliopolis, Cairo
1429	MegaSoft	Heliopolis, Cairo
1430	PAVILLION ARCHITECTS	Cairo, Egypt
1431	T&D Design	New Cairo, Cairo
1432	URANIUM	Maadi, Cairo
1433	Egyptian German Automotive	6th Of October, Giza
1434	Just HR	New Cairo, Cairo
1435	alrowad tannery	Badr City, Cairo
1436	Signify	Nasr City, Cairo
1437	GAMP Ltd	Smouha, Alexandria
1438	Namaa InfoLogistics	Nasr City, Cairo
1439	FTH-industries	6th Of October, Giza
1440	Aman	Giza, Egypt
1441	Confidential	Ataqah, Suez
1442	Massoud Steel	Cairo, Egypt
1443	P.ZONE Trading	Heliopolis, Cairo
1444	Nacita	Cairo, Egypt
1445	AHCC	Nasr City, Cairo
1446	Multi M Group	Khanka, Qalubia
1447	ZDS Architects	Cairo, Egypt
1448	Sinoma-cdi	New Cairo, Cairo
1449	Expandium	Maadi, Cairo
1450	Pyramid Glass Company	Bourj Alarab, Alexandria
1451	Statements for Consulting	Downtown, Cairo
1452	BituNil	Heliopolis, Cairo
1453	Injaz Digital	Heliopolis, Cairo
1454	Town Team	Gharbia, Egypt
1455	@DESIGNS Agency	Dokki, Giza
1456	ariika	Obour City, Cairo
1457	TruKKer Misr	Ain Sokhna, Suez
1458	Ship To Box	Sheikh Zayed, Giza
1459	Sphinx Glass	Alsadat City, Monufya
1460	Insitu Egypt	Maadi, Cairo
1461	SAPTelecom	Maadi, Cairo
1462	RISEUP (Endemag for Administrative Skills Development)	Sheikh Zayed, Giza
1463	CNS Group	Cairo, Egypt
1464	CNS Group	Heliopolis, Cairo
1465	Egypt Yellow Pages	Mansoura, Dakahlia
1466	B.Tech	Cairo, Egypt
1467	Tiger Marine	Badr City, Cairo
1468	INGAZ	New Cairo, Cairo
1469	YDS yasar digital services	Sheikh Zayed, Giza
1470	Kira Trade International	New Cairo, Cairo
1471	CASHU	Cairo, Egypt
1472	Mirage Group - Egypt	Moharam Bek, Alexandria
1473	Pillars	Dubai, United Arab Emirates
1474	Alarabi Recruitment & Services	Riyadh, Saudi Arabia
1475	INTECH	Port Fuad, Port Said
1476	Confidential	Giza, Giza
1477	Arabian Company for Trading	Heliopolis, Cairo
1478	Noon	Cairo, Egypt
1479	Rednet It Services	Maadi, Cairo
1480	SAMA FINANCE SAE	Garden City, Cairo
1481	Defy Egypt	Sheikh Zayed, Giza
1482	Life Chemicals Group	Heliopolis, Cairo
1483	Aktan Misr	Mahalla Kubra, Gharbia
1484	Royal House Language School	Giza, Egypt
1485	EGIC	Manial, Cairo
1486	IGFI - Server & Workstations	Giza, Egypt
1487	TMA For Industrial Supplies	New Cairo, Cairo
1488	L10N House, LTD.	6th Of October, Giza
1489	Majorel Egypt	Abbassia, Cairo
1490	Joovlly	Giza, Egypt
1491	MK Team Solutions	Nasr City, Cairo
1492	Singleclic	Cairo, Egypt
1493	Novative	Cairo, Egypt
1494	Eat-Heal	6th Of October, Giza
1495	TAQA Arabia	Cairo, Egypt
1496	The Swiss Quality	Cairo, Egypt
1497	Cubic Information Systems	New Cairo, Cairo
1530	LARIBA Chocolate	Heliopolis, Cairo
1531	INDEVCO	Alsadat City, Monufya
1532	Médecins Sans Frontières / أطباء بلا حدود  - International field work	Maadi, Cairo
1533	NADIM	Abu Rawash, Giza
1534	Contact	Damietta, Damietta
1535	SMART Furniture	10th Of Ramadan City, Cairo
1536	Contact	Downtown, Cairo
1537	Contact	Alexandria, Egypt
1538	Contact	Mansoura, Dakahlia
1539	ConZonia Consulting	New Cairo, Cairo
1540	United Trading & Engineering Company	Cairo, Egypt
1541	Contact	Dakahlia, Egypt
1542	Ceramica Cleopatra	Mohandessin, Giza
1543	Social Peak	Cairo, Egypt
1544	ApexAITechnologies	Sheraton, Cairo
1545	Next Home	Mokattam, Cairo
1546	Euro Van International	Nasr City, Cairo
1547	Alroshd company	Alexandria, Egypt
1548	360Imaging	Mohandessin, Giza
1549	Premier Services and Recruitment	Smart Village, Giza
1550	Second profit	Cairo, Egypt
1551	Fawry Microfinance	Maadi, Cairo
1552	International Trade Office	Bab Sharq, Alexandria
1553	General for Shipping Agencies, Marine Services and Investment Group S.A.E	Mansheya, Alexandria
1554	Qanawat	Sheraton, Cairo
1555	AIESEC - MANSOURA	Uberlandia, Brazil
1556	Global For Elevators and Esclators	Sidi Bishr, Alexandria
1557	Zeal Rewards	New Cairo, Cairo
1558	Bypa-ss	Downtown, Cairo
1559	unilearn	6th Of October, Giza
1560	Masternuts	Marsa Matruh, Matruh
1561	AFKAR Technology	Smart Village, Giza
1562	sakneen	Zamalek, Cairo
1563	Ble Foods	Obour City, Cairo
1564	Mico World Limited	Maadi, Cairo
1565	4level1	Cairo, Egypt
1566	AIESEC - MANSOURA	Belo Horizonte, Brazil
1567	Esmaar	Cairo, Egypt
1568	MAKTech 3d	6th Of October, Giza
1569	realme	Nasr City, Cairo
1570	DYNINNO Egypt	Smart Village, Giza
1571	Micronics S.A.E.	Obour City, Cairo
1572	Essam Abdalmoniem	Heliopolis, Cairo
1573	Infinity Clinic Pharma	Nasr City, Cairo
1574	OPPO Egypt	Alexandria, Egypt
1575	Rotografia	6th Of October, Giza
1576	El Khalifa group	Giza, Egypt
1577	Transcesion VC	Agouza, Giza
1578	CRIF EGYPT	New Cairo, Cairo
1579	El Massria Integrated Schools	10th Of Ramadan City, Sharqia
1580	MigrationIT.com	New Cairo, Cairo
1581	Hayat Kimya	Cairo, Egypt
1582	Server Store	Helwan, Cairo
1583	Trademan For Engineering & Trading Projects	Maadi, Cairo
1584	Alexandria Trading and Engineering Bureau	Sidi Gaber, Alexandria
1585	Splendid Pharma	Sheraton, Cairo
1586	Al-Ahly Computer Equipment	Nasr City, Cairo
1587	Borg EL-Arab Co  Bait Food	10th Of Ramadan City, Sharqia
1588	Sun Lighting Company	6th Of October, Giza
1589	Prado Rugs	Alsadat City, Monufya
1590	Vitas Egypt	Nasr City, Cairo
1591	Arak	Cairo, Egypt
1592	International Egyptian Company for Investment	Heliopolis, Cairo
1593	Pyramid Poultry Co.	Maadi, Cairo
1594	Innovato	Nasr City, Cairo
1595	Sigma Engineering	Obour City, Cairo
1596	New Motors	Abu Rawash, Giza
1597	Tameer	Cairo, Egypt
1598	Mest	Mohandessin, Giza
1599	Xeedia Pharmaceuticals	Heliopolis, Cairo
1600	MWG	Cairo, Egypt
1601	Desklab	New Nozha, Cairo
1602	Marmonil Marble & Granite	Nasr City, Cairo
1603	Coral Technology	Nasr City, Cairo
1604	Grand Plast	Khanka, Qalubia
1605	aircom	Alexandria, Egypt
1606	Smart Group	Heliopolis, Cairo
1607	Arma	Cairo, Egypt
1608	Zikry-Pharmacies	Heliopolis, Cairo
1609	M I Engineering	Nasr City, Cairo
1610	RMG	15th May City, Cairo
1611	Tidal	Nasr City, Cairo
1612	Egpay	Cairo, Egypt
1613	MMA accounting office	Heliopolis, Cairo
1614	Jebaal	New Cairo, Cairo
1615	Air Gate	Mohandessin, Giza
1616	Delta Pharma Egypt	Cairo, Egypt
1617	Golden Icon Company	Riyadh, Saudi Arabia
1618	Adam Grain	New Cairo, Cairo
1619	AL-TAWAKOL For Electrical Industries -NTT	Azbakia, Cairo
1620	Grand Plast	Qalubia, Egypt
1621	Altayar recruitment	Riyadh, Saudi Arabia
1622	The Egyptian Company For Prestressed Concrete	10th Of Ramadan City, Cairo
1623	Confidential	Sharjah, United Arab Emirates
1624	Autocool	10th Of Ramadan City, Cairo
1625	Aman	Ismailia, Egypt
1626	dkt Egypt	Nasr City, Cairo
1627	Alouf Travel	6th Of October, Giza
1628	Newlife Company	Heliopolis, Cairo
1629	Ascon Advanced Solutions & Consultant	Cairo, Egypt
1630	NEW JERSEY Developments	Cairo, Egypt
1631	Al-Mansour	Haram, Giza
1632	Your Parts	Maadi, Cairo
1633	Confidential	Shatby, Alexandria
1634	Izam, inc.	Giza, Egypt
1635	Innovinity Medical Hub	Heliopolis, Cairo
1636	Hits-Consulting	Maadi, Cairo
1637	Surgitech	Alexandria, Egypt
1638	Ball	6th Of October, Giza
1639	Affsquare	Nozha, Cairo
1640	Kokoro Agency	Zamalek, Cairo
1641	Universe	Nasr City, Cairo
1642	Universe	Cairo, Egypt
1643	Soulco	Cairo, Egypt
1644	Shawkat Stone for Marble and Granite	Cairo, Egypt
1645	Raya Contact Center	Shorouk City, Cairo
1646	MG Developments	Cairo, Egypt
1647	Food Brand	Obour City, Cairo
1648	EEC Group	Belbes, Sharqia
1649	4level1	Mansoura, Dakahlia
1650	Brimore	Maadi, Cairo
1651	Yalla Fel Sekka	Maadi, Cairo
1652	Transcesion VC	Mohandessin, Giza
1653	Fixed Solutions	Sheraton, Cairo
1654	RE/MAX Everest	Mohandessin, Giza
1655	Tanmia Fruit	Nasr City, Cairo
1656	Irithm	Cairo, Egypt
1657	Paymob Solutions	Cairo, Egypt
1658	Fruitful Solutions	New Nozha, Cairo
1659	Fixed Solutions	Cairo, Egypt
1660	JOE13	Alexandria, Egypt
1661	Server Store	Victoria, Alexandria
1662	WEData	Cairo, Egypt
1663	AEG Design & Construction	6th Of October, Giza
1664	Egaz	Alexandria, Egypt
1665	H.Touch	Maadi, Cairo
1666	Capital logistics	Mahta Alraml, Alexandria
1667	BETA MEA Integrated Solutions	Giza, Egypt
1668	Orientals for Urban Development	10th Of Ramadan City, Cairo
1669	National Pipe Company	Badr City, Cairo
1670	Sky Medical for Medical Devices	Mohandessin, Giza
1671	Xceed	6th Of October, Giza
1672	Ibn Sina Pharma	Alexandria, Egypt
1673	((SKY Services))	Mokattam, Cairo
1674	MigrationIT.com	Tanta, Gharbia
1675	Startup Manager	Maadi, Cairo
1676	Qawafil For Real Estate Investment	New Cairo, Cairo
1677	Arabic Localizer	Mohandessin, Giza
1678	Floortec	Sheikh Zayed, Giza
1679	Premier Services and Recruitment Overseas	Maadi, Cairo
1680	Keys Group Services	Nasr City, Cairo
1681	Sky Medical for Medical Devices	Zamalek, Cairo
1682	Sky Medical for Medical Devices	6th Of October, Giza
1683	Al Mokhtabar Laboratories	Dakahlia, Egypt
1684	Exception patissiere	Giza, Egypt
1685	MigrationIT.com	Assiut, Egypt
1686	Leap Development Hub	New Cairo, Cairo
1687	Sky Medical for Medical Devices	Heliopolis, Cairo
1688	Abt Associates	Dokki, Giza
1689	Al Mokhtabar Laboratories	Mohandessin, Giza
1690	korAddiction Sports Development & Entertainment	Maadi, Cairo
1691	ReNile	6th Of October, Giza
1692	Infocast	Nasr City, Cairo
1693	EPSILON TRAINING CENTER	Nasr City, Cairo
1694	Arch Vision	New Cairo, Cairo
1695	Serious construction	Nasr City, Cairo
1696	MTS	New Damietta, Damietta
1697	WRIGHT PLAN	New Cairo, Cairo
1698	MTS	Suez, Suez
1699	CUBII	Mansoura, Dakahlia
1700	Bingo Global	New Nozha, Cairo
1701	NMDC	Port Said, Egypt
1702	MisrTech	Sheraton, Cairo
1703	AACMI	Cairo, Egypt
1704	Digizilla	Nasr City, Cairo
1705	Hesni	Zaytoun, Cairo
1706	AMLAK Finance - Egypt	Mohandessin, Giza
1707	Better Home	New Capital, Cairo
1708	Startup Manager	Downtown, Cairo
1709	AACMI	Nozha, Cairo
1710	Pannelli	Nasr City, Cairo
1711	Kellogg Tolaram Noodles Egypt LLC	6th Of October, Giza
1712	Cairoscan	Giza, Egypt
1713	Vamer Pharma	New Cairo, Cairo
1714	e-finance	Abu Rawash, Giza
1715	Tafeel	Nasr City, Cairo
1716	almentor	Maadi, Cairo
1717	Archi Touch	6th Of October, Giza
1718	Hikma Pharmaceuticals	6th Of October, Giza
1719	doctor lotus	6th Of October, Giza
1720	Fawry Banking & Payment Technology Services	Mokattam, Cairo
1721	Global For Elevators and Esclators	Heliopolis, Cairo
1722	Ghabbour Auto	Ain Sokhna, Suez
1723	VadeCom	Haram, Giza
1724	Gulsan Egypt Non-Woven Industries	6th Of October, Giza
1725	IFT Corporation	Mokattam, Cairo
1726	El Aamana For Recruitment	Cairo, Egypt
1727	Nacita	Downtown, Cairo
1728	ElmarakbySteel	6th Of October, Giza
1729	Infinity Business Solutions	New Cairo, Cairo
1730	ZKTeco	Cairo, Egypt
1731	Ideal Standard International Egypt	Sheraton, Cairo
1732	Oasis Distribution	Sheraton, Cairo
1733	Confidential	Beheira, Egypt
1734	KONE	New Cairo, Cairo
1735	ECRAL	Nasr City, Cairo
1736	Unlimited Technology	Helwan, Cairo
1737	Atribs Metscon	Dubai, United Arab Emirates
1738	Datum International Data Systems	Heliopolis, Cairo
1739	American Academy	6th Of October, Giza
1740	Gold Pack For Carton And Paper Products	Port Said, Egypt
1741	Gelila	Alsadat City, Monufya
1742	AIESEC Cairo University	Hyderabad, India
1743	Megamind IT Solutions	10th Of Ramadan City, Cairo
1744	The Breakroom Company	Sheraton, Cairo
1745	Major for Construction and Decoration	Cairo, Egypt
1746	Consultant Engineer Bureau	Giza, Egypt
1747	Major for Construction and Decoration	Sheraton, Cairo
1748	Nagwa	Luxor, Egypt
1749	Ikon Industries	Katameya, Cairo
1750	The Modern Vision Of Advertising	New Cairo, Cairo
1751	Venti	Cairo, Egypt
1752	Cecil Intelligent Childhood	Obour City, Cairo
1753	The Hair Addict	Maadi, Cairo
1754	Negresco	Alexandria, Egypt
1755	The Hair Addict	New Cairo, Cairo
1756	El-Amir Group	Ain Shams, Cairo
1757	Nagwa	10th Of Ramadan City, Sharqia
1758	Medica	Zamalek, Cairo
1759	Ghyma for Tourism	Riyadh, Saudi Arabia
1760	MCG ELMARWAN CONSULTING GROUP	Cairo, Egypt
1761	Nagwa	15th May City, Cairo
1762	Confidential	Monufya, Egypt
1763	TAQA Gas	Maadi, Cairo
1764	Digital Force	Heliopolis, Cairo
1765	Mr ahmed abozeid	6th Of October, Giza
1766	TopTech	Maadi, Cairo
1767	United Engineering company	Giza, Egypt
1768	Clouds Software Solutions	Cairo, Egypt
1769	Zamil Steel Buildings Co	6th Of October, Giza
1770	Source Technology	Heliopolis, Cairo
1771	Mahgoub Group	Nasr City, Cairo
1772	GEMS Education	New Cairo, Cairo
1773	Gelila	Monufya, Egypt
1774	epicore egypt	Nasr City, Cairo
1775	EGD	Cairo, Egypt
1776	United Engineering company	Haram, Giza
1777	dynamics	New Cairo, Cairo
1778	Equiti Group LTD	New Cairo, Cairo
1779	WellGrow Training and  Consulting	Maadi, Cairo
1780	Nexus Logistics	Heliopolis, Cairo
1781	Takween Integrated Community Development	Cairo, Egypt
1782	Nexus Logistics	Nozha, Cairo
\.


--
-- Data for Name: it_software_development; Type: TABLE DATA; Schema: public; Owner: fscjjarkblijha
--

COPY public.it_software_development (job_id, title_id, company_id, job_level, exp_years, job_type, post_date, link) FROM stdin;
1	6	141	Entry Level	0-1 Yrs of Exp	Full Time	2020-11-02 19:13:00	https://wuzzuf.net/jobs/p/0153e4e3-6e6f-4335-a1e0-d32984306af8-IT-Help-Desk-Specialist-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=1
2	2001	1376	Experienced	2+ Yrs of Exp	Full Time	2020-11-02 22:53:00	https://wuzzuf.net/jobs/p/62185901-89f7-47d9-b6b6-e0af74bd86f4-IT-Officer---Alexandria-Egyptian-British-International-School-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=3
3	317	92	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 21:11:00	https://wuzzuf.net/jobs/p/7d842424-dcc7-4f35-a1d3-e6a9e7e9f8cc-Software-Sales-Engineer-Egyptrol-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=11
4	57	482	Experienced	1-2 Yrs of Exp	Full Time	2020-11-02 20:21:00	https://wuzzuf.net/jobs/p/816caa90-fb30-4902-a7ea-0a4d8c6fdcfa-Front-End-Developer-Appgain-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=22
5	458	1377	Experienced	1+ Yrs of Exp	Full Time	2020-11-02 19:54:00	https://wuzzuf.net/jobs/p/b4be6a6f-bc53-46d0-82ba-0b356fb02f92-Junior-Full-Stack-Developer-Talent-360-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=31
6	2002	1378	Experienced	1-2 Yrs of Exp	Freelance / Project	2020-11-02 20:16:00	https://wuzzuf.net/jobs/p/ac033da1-43f4-489d-a59a-dc22aa1422d0-Full-Stack-Web-Developer-MERN-stack-InnoVision-Systems-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=34
7	2003	699	Experienced	2-6 Yrs of Exp	Full Time	2020-11-02 20:24:00	https://wuzzuf.net/jobs/p/210bd54d-e908-4701-b741-796c673503f9-Management-Information-System--MIS--Developer-LavaLoon-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=43
8	2004	1379	Senior Management	1-5 Yrs of Exp	Full Time	2020-11-02 22:03:00	https://wuzzuf.net/jobs/p/ee5640e6-e672-4103-85aa-b5f99e0ea286-php-web-developer-Etolv-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=49
9	2005	125	Entry Level	0-2 Yrs of Exp	Full Time	2020-11-02 21:30:00	https://wuzzuf.net/jobs/p/4b6c5406-19ba-4233-aee0-e1600b3c6dc7-Computer-Science---Computer-Engineering-Fresh-Graduates-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=53
10	2006	1380	Manager	2-7 Yrs of Exp	Full Time	2020-11-02 19:33:00	https://wuzzuf.net/jobs/p/7a879205-a81d-46f8-ba61-e92fc58c5bd8-CRM-manager-arkandev-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=83
11	2007	1381	Experienced	4-6 Yrs of Exp	Full Time	2020-11-02 22:23:00	https://wuzzuf.net/jobs/p/865e3293-74fe-4776-bb52-ac6db42bc4a4-Cnc-Programmer-Hakim-Misr-Paco-S-A-E-Sharqia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=84
12	2008	234	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 17:41:00	https://wuzzuf.net/jobs/p/4f386a56-9003-4703-89e3-d36226865f7b-Senior--NET-Developer-Desktop-Application-Dexef-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=20
13	2009	280	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-02 16:50:00	https://wuzzuf.net/jobs/p/052a50c1-107d-439c-8fc8-743f7637ae66-Resident-Engineer---Operator-Silicon21-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=56
14	120	1382	Experienced	2-4 Yrs of Exp	Full Time	2020-11-02 18:29:00	https://wuzzuf.net/jobs/p/d4fb85e5-4edd-4773-94b7-2a27102ea615-Graphic-Designer-BLU-Real-Estate-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=63
15	2010	280	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 17:08:00	https://wuzzuf.net/jobs/p/fc9529c0-2940-4e8f-9916-5c3ab556d2e8-Product-Manager---Monitors-Projectors-View-Boards---Digital-Displays-Silicon21-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=78
16	2011	141	Experienced	10+ Yrs of Exp	Full Time	2020-11-02 18:37:00	https://wuzzuf.net/jobs/p/deafc59f-3702-4249-a7f1-f8d7e6d9a9b6-Senior-Maintenance-Engineer-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=80
17	2012	48	Manager	8+ Yrs of Exp	Full Time	2020-11-02 18:15:00	https://wuzzuf.net/jobs/p/6b47e8ad-459f-4c80-98d0-1bc864e91daa-Art-Director---Alexandria-Stylish-Eve-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=85
18	2013	60	Experienced	7+ Yrs of Exp	Full Time	2020-11-02 18:30:00	https://wuzzuf.net/jobs/p/13f5cdab-6fe6-4ecc-b2f7-ac4ce702bdf0-Executive-Secretary-to-Chairman---Alexandria-Paradise-Inn-Hotels-Resorts-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=90
19	2014	508	Student		Internship	2020-11-02 16:59:00	https://wuzzuf.net/internship/8fb33c6b-cf6d-4be6-a670-69bfabe6d221-STEAM-Instructor---Intern-BeSteam-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=96
20	2	1386	Manager	10-15 Yrs of Exp	Full Time	2020-11-02 08:15:00	https://wuzzuf.net/jobs/p/e9457272-083a-441e-99ed-ea9d131f8c23-IT-Manager-Al-Andalous-Medical-Company-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
21	2018	1387	Manager	5-10 Yrs of Exp	Full Time	2020-11-02 00:25:00	https://wuzzuf.net/jobs/p/64c971a8-db4d-478c-8883-f7172ef35d0c-IT-Manager--El-Katib-Hospital--Cleopatra-Hospitals-Group-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=4
22	2019	1104	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 15:17:00	https://wuzzuf.net/jobs/p/39cd0904-c72c-4bdb-a441-0526ba9302e1-IT-Network-Specialist-Raya-Contact-Center-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=5
23	2020	122	Experienced	4-7 Yrs of Exp	Full Time	2020-11-02 11:27:00	https://wuzzuf.net/jobs/p/e6fc83b8-0e47-43fd-bb95-a772c6b4f4fa-Senior--Net-Developer-Backend-Developer-GET-Group--Egypt-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=6
24	2021	1388	Experienced	2+ Yrs of Exp	Full Time	2020-11-02 12:09:00	https://wuzzuf.net/jobs/p/f35e01cd-3871-44c9-bb35-4a9291f5afa8-IT-Sales-Specialist-PIXEL-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=7
25	2022	808	Manager	6-8 Yrs of Exp	Full Time	2020-11-02 16:14:00	https://wuzzuf.net/jobs/p/ddf9bd8e-9a14-4e20-ae67-8ea7661ac7bd-Software-Technical-Lead-SmartTech-Systems-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=8
26	48	106	Experienced	4+ Yrs of Exp	Full Time	2020-11-02 14:50:00	https://wuzzuf.net/jobs/p/cb9abf59-20c1-4b9c-a363-95b3872c1507-Software-Quality-Control-Engineer-Pefect-Presentation-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=9
27	251	1389	Manager	5-7 Yrs of Exp	Full Time	2020-11-02 16:03:00	https://wuzzuf.net/jobs/p/69a982f5-e04c-47af-b2a3-f331f299a144-Software-Project-Manager-Skep-Home-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
28	2023	1390	Entry Level		Internship	2020-11-02 15:06:00	https://wuzzuf.net/internship/e5bf98e6-8859-4e60-aeea-c323e30df887-Software-Engineering-Intern-PhD-2021-Google-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=12
29	2024	232	Experienced	4-6 Yrs of Exp	Full Time	2020-11-02 15:05:00	https://wuzzuf.net/jobs/p/9c60bcfc-f4e7-47c7-a148-dc3d13ac679c-Pre-Sales-Executive---IT-Field-Integrated-Technology-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=13
30	332	232	Experienced	4-6 Yrs of Exp	Full Time	2020-11-02 15:01:00	https://wuzzuf.net/jobs/p/915bb109-0d2e-4d2b-96f6-5fbb2701482b-Senior-iOS-Developer-Integrated-Technology-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=15
31	2025	137	Experienced	5+ Yrs of Exp	Full Time	2020-11-02 12:17:00	https://wuzzuf.net/jobs/p/0587eae5-475a-45d6-8366-c523f53ddd2a-Senior-Microsoft-Nav-Developer-Flairstech-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=16
32	2026	1390	Student		Internship	2020-11-02 14:53:00	https://wuzzuf.net/internship/fed3e59d-0d21-4562-b60b-2d4d303e4197-Software-Engineering-or-Site-Reliability-Engineering-Intern-2021-Google-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=17
33	555	495	Experienced	3+ Yrs of Exp	Full Time	2020-11-02 12:15:00	https://wuzzuf.net/jobs/p/a2258a3c-0624-4adf-b1ca-d34f9dc3cd75-Back-End-Developer---ASP-NET-PIXEL-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=18
34	374	772	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 14:09:00	https://wuzzuf.net/jobs/p/eb119ab1-f455-4102-82fd-d8919e5054cd-SharePoint-Developer-Mantrac-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=19
35	2027	1391	Student		Internship	2020-11-02 11:19:00	https://wuzzuf.net/internship/324d2885-3ec3-43d8-be51-75d324f537cc-Android-Developer-internship-MTMs-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=23
36	2028	1294	Experienced	3-4 Yrs of Exp	Full Time	2020-11-02 11:04:00	https://wuzzuf.net/jobs/p/0e0a18d0-dc91-4da4-9804-526af9bbadef-Senior--NET-K2-Developer---KSA-SURE-International-Technology-Riyadh-Saudi-Arabia?l=bp&t=bj&a=IT-Software-Development&o=24
37	412	1392	Experienced	2-4 Yrs of Exp	Full Time	2020-11-02 11:36:00	https://wuzzuf.net/jobs/p/7e6a3b11-077e-4e0d-8a41-1ddfbe7b571c-Senior-Back-End-Developer-Youxel-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=25
38	2029	204	Entry Level	1+ Yrs of Exp	Full Time	2020-11-02 12:50:00	https://wuzzuf.net/jobs/p/2debf238-da3b-4fb4-aa41-70b6a0d6b353-Junior-iOS-Developer-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=26
39	2030	1393	Experienced	6-8 Yrs of Exp	Full Time	2020-11-02 10:56:00	https://wuzzuf.net/jobs/p/29f6e6f1-d97a-42dd-81a7-b2f27dfa5d0a-ASP-Net-Senior-Developer-RMG-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=27
40	2031	516	Experienced	2-4 Yrs of Exp	Full Time	2020-11-02 13:39:00	https://wuzzuf.net/jobs/p/a4b8d015-be24-40bc-ace1-321d69690ba1-Odoo-Developer---Cairo-IPC-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=28
41	2032	1394	Entry Level	1-5 Yrs of Exp	Full Time	2020-11-02 13:47:00	https://wuzzuf.net/jobs/p/02a8e1c4-0ca8-4b65-b635-274bdf832596-Back-End-Developer---PHP-Laravel-Skep-Home-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=29
42	2033	1395	Experienced	2+ Yrs of Exp	Full Time	2020-11-02 10:11:00	https://wuzzuf.net/jobs/p/8c0bb299-14e6-4c2a-b61c-b5d9e4d166bc-E-content-Developer-eelu-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=30
43	718	174	Experienced	2+ Yrs of Exp	Full Time	2020-11-02 13:48:00	https://wuzzuf.net/jobs/p/218f5145-568b-4c42-ae02-b9062b3f310e-UI-Developer-AlQemam-For-Programming-Dakahlia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=32
44	393	563	Experienced	5+ Yrs of Exp	Full Time	2020-11-02 09:34:00	https://wuzzuf.net/jobs/p/2c9af8be-1f34-4039-b898-746a981d49da-Senior-Android-Developer-Expert-Apps-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=33
45	2034	623	Experienced	4+ Yrs of Exp	Full Time	2020-11-02 10:08:00	https://wuzzuf.net/jobs/p/db7c6fc4-e8ba-4a1b-b7e6-7c56d621827a-Sr-NET-Developer-Z2-Data-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=35
46	393	215	Experienced	4+ Yrs of Exp	Full Time	2020-11-02 08:30:00	https://wuzzuf.net/jobs/p/805b207e-9a89-4f7a-aae2-245f3d83cdfd-Senior-Android-Developer-Aqarmap-com-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=36
47	379	576	Manager	5+ Yrs of Exp	Full Time	2020-11-02 10:09:00	https://wuzzuf.net/jobs/p/11fec4ae-4195-4da9-ab7e-6cf68f775190-Senior-Full-Stack-Developer-Contactless-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=37
48	515	461	Experienced	5-10 Yrs of Exp	Full Time	2020-11-02 16:35:00	https://wuzzuf.net/jobs/p/fab4d6c3-8a38-481b-bce5-1839b26c300a-Senior-JavaScript-Developer-Longman-Egypt-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=38
49	2035	1394	Entry Level	0-3 Yrs of Exp	Full Time	2020-11-02 13:57:00	https://wuzzuf.net/jobs/p/ba52fd0f-0f8f-489e-81f7-d5cde521666a-Front-End-Developer-IOS---Android-Skep-Home-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
50	399	1396	Experienced	2+ Yrs of Exp	Full Time	2020-11-02 13:18:00	https://wuzzuf.net/jobs/p/e0379499-d818-43e0-ab40-0c82374c2faa-Mobile-Developer-Joovlly-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=41
51	2036	1397	Experienced	2-4 Yrs of Exp	Full Time	2020-11-02 11:35:00	https://wuzzuf.net/jobs/p/55f1f97a-7a6b-4acf-ab22-8829bcee55a2-BPM-Developer-Youxel-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=42
52	2037	1398	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 12:35:00	https://wuzzuf.net/jobs/p/cfbea08f-0bb2-4eb6-a040-e6e845a8bf8b-AX-Dynamics-Developer-Wagdy-moamen-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=44
53	2038	384	Manager	6-10 Yrs of Exp	Full Time	2020-11-02 11:50:00	https://wuzzuf.net/jobs/p/41ac45a9-f4f0-4727-b743-59b7c022b4ab--Net-Technical-Lead-LINK-Development-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=46
54	870	1038	Experienced	3+ Yrs of Exp	Full Time	2020-11-02 11:37:00	https://wuzzuf.net/jobs/p/284e99af-f6e3-47f7-bd01-e0d53d16811a-Technical-Support-Engineer-GUC-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=47
55	852	232	Manager	9-14 Yrs of Exp	Full Time	2020-11-02 14:31:00	https://wuzzuf.net/jobs/p/29c70554-9d0f-4e2b-aeca-f9175732c1f9-Android-Team-Leader-Integrated-Technology-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=48
56	2039	94	Experienced	8+ Yrs of Exp	Full Time	2020-11-02 09:01:00	https://wuzzuf.net/jobs/p/6a6c067f-4a4e-4104-86c1-b193fea0205b-Lead-Middleware-Platform-Engineer-Path-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=50
57	783	352	Experienced	3-5 Yrs of Exp	Full Time	2020-11-02 14:37:00	https://wuzzuf.net/jobs/p/bd1a52e6-c830-46cb-8bdb-ed2ac3bf7421-Devops-Engineer-Izam-inc-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=51
58	2040	94	Experienced	5-8 Yrs of Exp	Full Time	2020-11-02 09:08:00	https://wuzzuf.net/jobs/p/54357298-7001-4638-a51d-c3030c25b3db-Senior-Integration-Engineer-Path-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=55
59	983	215	Experienced	3+ Yrs of Exp	Full Time	2020-11-02 08:48:00	https://wuzzuf.net/jobs/p/211491f2-1314-49b7-acd8-10a40225acb1-Senior-Product-UI-UX-Designer-Aqarmap-com-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=57
60	2041	1347	Entry Level	1-5 Yrs of Exp	Full Time	2020-11-02 07:49:00	https://wuzzuf.net/jobs/p/ff1beeb5-6882-4235-814b-4ca6457e3cb6-System-Administrator-DevOps-EMIRATES-BARQ-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=58
61	2042	730	Entry Level	0-2 Yrs of Exp	Full Time	2020-11-02 16:10:00	https://wuzzuf.net/jobs/p/6a2bb6eb-9834-45a9-ba0c-a75bd766581c-Project-Coordinator-Sumerge-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=59
62	120	1399	Experienced	2-3 Yrs of Exp	Full Time	2020-11-02 13:41:00	https://wuzzuf.net/jobs/p/c3cb0095-3d02-4724-9d42-5ce044ac8fa2-Graphic-Designer-Royal-Future-Light-for-Publishing-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=60
63	2043	1073	Manager	10-15 Yrs of Exp	Part Time ,Full Time	2020-11-02 13:55:00	https://wuzzuf.net/jobs/p/a3a5feb2-f8d5-4991-b7a2-52f8e158ff04-Odoo-ERP-Senior-Application-Manager-Bingo-Global-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=61
64	2044	838	Experienced	2-3 Yrs of Exp	Full Time	2020-11-02 11:46:00	https://wuzzuf.net/jobs/p/feca371c-694d-4d8b-bd47-1d46975ca8e3-Products-Sr--Specialist-Masary-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=64
65	2045	1400	Manager	4+ Yrs of Exp	Full Time	2020-11-02 15:04:00	https://wuzzuf.net/jobs/p/e3511fcc-108e-4db8-bb5b-e3d5d68bbec3-Automation-Sales-Manager---Cairo-ECCC-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=65
66	2046	883	Entry Level	0-3 Yrs of Exp	Full Time	2020-11-02 16:25:00	https://wuzzuf.net/jobs/p/f61386b8-47c6-42d3-ab02-42a3266c9aea-Customer-Service-Agent-Onshore-Account-Atheel-CC-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=66
67	2047	1401	Entry Level	1-5 Yrs of Exp	Full Time	2020-11-02 13:13:00	https://wuzzuf.net/jobs/p/f90a0553-dbe4-4c42-a104-61193bccc8a8-Application-Support-Specialist-BI-Technologies-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=67
68	2048	433	Experienced	8-15 Yrs of Exp	Full Time	2020-11-02 10:54:00	https://wuzzuf.net/jobs/p/924cb442-5bca-4120-b207-5794318e80ee-Senior-MS-Dynamics-AX-Technical-Consultant-SAED-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=68
69	2049	1402	Experienced	2-5 Yrs of Exp	Full Time	2020-11-02 16:11:00	https://wuzzuf.net/jobs/p/f8d00af7-f399-418e-8894-ddb24033d18f-In-House-Graphic-Designer-Kabbany-Construction-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=72
70	1090	1403	Experienced	3+ Yrs of Exp	Full Time	2020-11-02 10:18:00	https://wuzzuf.net/jobs/p/1838dd74-3669-4bfe-b728-dd05e65306a8-Video-Editor-eelu-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=73
71	1136	1404	Experienced	4-6 Yrs of Exp	Full Time	2020-11-02 12:37:00	https://wuzzuf.net/jobs/p/97e13741-3c7b-4bc7-b315-6cb0a23581c5-Senior-Sales-Account-Manager-eSky-IT-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=74
72	2050	237	Experienced	5-7 Yrs of Exp	Full Time	2020-11-02 16:37:00	https://wuzzuf.net/jobs/p/e58a4d53-fffd-4268-93b9-7a9a58609dbf-Design-Mechanical-Engineer-Orientals-for-Urban-Development-Sharqia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=75
73	2051	772	Manager	6-8 Yrs of Exp	Full Time	2020-11-02 15:43:00	https://wuzzuf.net/jobs/p/263286e8-b61c-4c2c-a68e-454069cdb230-Documents-Management-System-Project-Manager-Mantrac-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=76
74	2052	322	Experienced	2-6 Yrs of Exp	Full Time	2020-11-02 12:43:00	https://wuzzuf.net/jobs/p/7ac34bea-053e-409e-bc21-98c86886afe8-T24-Senior-Technical-Consultant-Ultimate-Solutions-Egypt-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=77
75	1622	1405	Manager	7-12 Yrs of Exp	Full Time	2020-11-02 12:04:00	https://wuzzuf.net/jobs/p/cb72632b-1193-4c6a-b016-07b59cd83331-Operations-Manager-Almotaheda-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=79
76	1375	124	Experienced	10+ Yrs of Exp	Full Time	2020-11-02 13:52:00	https://wuzzuf.net/jobs/p/7c021f5f-df6f-44d4-bd6c-ed01b74343fd-Science-Supervisor-Nahdet-Misr-Publishing-Group-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=82
77	1335	141	Experienced	6-8 Yrs of Exp	Full Time	2020-11-02 13:45:00	https://wuzzuf.net/jobs/p/d6fae707-5735-41b3-8b61-ff35c6d5d807-Technical-Operations-SME---Cloud-Expert-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=86
78	1438	384	Experienced	4-8 Yrs of Exp	Full Time	2020-11-02 13:12:00	https://wuzzuf.net/jobs/p/8c3d24b0-ee3a-4e12-9aa2-8d03f0d23cc3-System-Analysis-Project-Lead-LINK-Development-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=87
79	1273	921	Experienced	5-7 Yrs of Exp	Full Time	2020-11-02 16:34:00	https://wuzzuf.net/jobs/p/ef5654d9-465e-4b0d-95d4-5129c50efff7-Industrial-Engineer-Longman-Egypt-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=91
80	2053	1170	Manager	8-10 Yrs of Exp	Full Time	2020-11-02 09:38:00	https://wuzzuf.net/jobs/p/7ef77d24-f1ae-4c8e-94ff-8b55bf833736-Purchasing-Manager-Groupe--Atlantic-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=92
81	2054	1170	Experienced	5+ Yrs of Exp	Full Time	2020-11-02 08:37:00	https://wuzzuf.net/jobs/p/b396e477-c7c7-44ef-9536-8646173671a9-Senior-Purchasing-Specialist-Groupe--Atlantic-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=93
82	1544	1406	Experienced	3+ Yrs of Exp	Full Time	2020-11-02 11:08:00	https://wuzzuf.net/jobs/p/e1047497-f90b-4d1b-bce2-4c1ad0f8f6b6-Instructional-Designer-Dolf-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=94
83	2055	239	Experienced	6-8 Yrs of Exp	Full Time	2020-11-02 03:29:00	https://wuzzuf.net/jobs/p/f7c954b0-377b-415b-841b-e03f7166e7e4-Senior-Marketer-E3mel-Business-for-Financial-Managerial-Consultancy-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=95
84	2056	730	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-02 13:33:00	https://wuzzuf.net/jobs/p/dfd29c8f-b750-4f37-8059-82054fc106c5-Associate-Systems-Engineer-Sumerge-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=97
85	2057	1407	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-02 12:33:00	https://wuzzuf.net/jobs/p/56b90aea-6dcd-45ef-9305-09ac171a827e-Resident-Engineer-eSky-IT-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=98
86	2058	298	Entry Level	1+ Yrs of Exp	Full Time	2020-11-02 12:10:00	https://wuzzuf.net/jobs/p/2ee36cd7-727d-4cc0-8f95-9f84ef765dea-Dutch-Technical-Support-Representative-Sykes-Enterprises-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=99
87	2059	1390	Entry Level		Internship	2020-11-02 15:50:00	https://wuzzuf.net/internship/26f90038-a07d-4585-901f-dab9147be5c4-Research-Intern-PhD-2021-Google-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=100
88	2060	1390	Entry Level		Internship	2020-11-02 15:42:00	https://wuzzuf.net/internship/0d5226a7-cb6e-4cc3-968a-e438429c8e16-Research-Intern-MSc-2021-Google-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=101
89	1750	1408	Experienced	2-4 Yrs of Exp	Full Time	2020-11-02 10:36:00	https://wuzzuf.net/jobs/p/d8d11a2d-19e3-4fe6-944d-a5720afbf12f-Marketing-Executive-Digitec-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=103
90	916	174	Experienced	2+ Yrs of Exp	Full Time	2020-11-02 13:56:00	https://wuzzuf.net/jobs/p/0ff4dc70-44fd-442a-bf75-61da2e88b15d-UI-UX-Designer-AlQemam-For-Programming-Dakahlia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=104
91	224	137	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-02 11:14:00	https://wuzzuf.net/jobs/p/54b3bbc3-98ca-42d7-9d53-4f9bfbd05ab6-IT-Help-Desk-Flairstech-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=20
92	2081	1377	Experienced	5-7 Yrs of Exp	Full Time	2020-11-03 00:22:00	https://wuzzuf.net/jobs/p/44e0ed0e-bc48-4efa-9928-b0449323405f-Senior-developer-Talent-360-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=25
93	2084	698	Experienced	3-7 Yrs of Exp	Full Time	2020-11-03 07:44:00	https://wuzzuf.net/jobs/p/337dd61a-3297-495b-827e-31ff6f1c35ff-Mid-level-Software-Developer-52nd-Solution-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=1
94	2085	1422	Entry Level	1-4 Yrs of Exp	Full Time	2020-11-03 08:22:00	https://wuzzuf.net/jobs/p/05e53b65-248d-462b-a225-5f5e865f0dea-ADF-Developer---Alexandria-Ascon-Advanced-Solutions-Consultant-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=43
95	399	1424	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-03 08:40:00	https://wuzzuf.net/jobs/p/7f859002-cabf-4b02-94c3-e5f9417edb42-Mobile-Developer-Objects-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=41
96	2087	1425	Manager	5+ Yrs of Exp	Full Time	2020-11-03 08:06:00	https://wuzzuf.net/jobs/p/2fae23a1-4f97-4900-b1db-77a8ca156c45-Art-Director-Dawaya-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=91
97	1110	1427	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 10:50:00	https://wuzzuf.net/jobs/p/05250183-172f-4655-9746-45606e1c481e-Senior-Account-Manager-Nile-Tronix-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=84
98	2090	1428	Experienced	3-15 Yrs of Exp	Full Time	2020-11-03 10:33:00	https://wuzzuf.net/jobs/p/61b4e95d-b793-471b-beb6-fd35faebb90f-Sr--IT-Help-Desk-Amiral-Holdings-Limited-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=4
99	2091	636	Entry Level	0-2 Yrs of Exp	Full Time	2020-11-03 10:38:00	https://wuzzuf.net/jobs/p/eb92ecd2-4293-48d8-a7d9-5a381a52f308-Software-Quality-Tester-E-Bakers-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=15
100	635	333	Experienced	5-8 Yrs of Exp	Full Time	2020-11-03 10:54:00	https://wuzzuf.net/jobs/p/6787df14-60a7-45e0-9a4c-38f9f896fdaf-Senior-Full-Stack-Developer---PHP--Laravel-Vue-js-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=32
101	2092	1429	Entry Level	0-2 Yrs of Exp	Full Time	2020-11-03 11:15:00	https://wuzzuf.net/jobs/p/14e34fdc-df9f-4b1c-8249-edc844a446c9-Junior-Software-Engineer-MegaSoft-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=4
102	6	1430	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-03 11:55:00	https://wuzzuf.net/jobs/p/7ffa2955-8462-47ab-b55c-0002905b0188-IT-Help-Desk-Specialist-PAVILLION-ARCHITECTS-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=4
103	246	208	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 11:43:00	https://wuzzuf.net/jobs/p/fcb40caa-5094-4921-9679-febc6b7c5502-IT-Technical-Support-Engineer-ENBLOM-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=7
104	59	1431	Experienced	3-5 Yrs of Exp	Part Time	2020-11-03 11:31:00	https://wuzzuf.net/jobs/p/de2d2dea-c71f-4000-8bbd-c32ddb3b6eb9-Odoo-Developer-TD-Design-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=36
105	2093	404	Experienced	5-10 Yrs of Exp	Full Time	2020-11-03 11:30:00	https://wuzzuf.net/jobs/p/b8a5c61a-e005-4b8d-b9f4-fe8bb6a4cdb6-EAI-Middleware-Engineer-CHS-Cegedim-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=41
106	2094	1432	Experienced	2-4 Yrs of Exp	Full Time	2020-11-03 11:12:00	https://wuzzuf.net/jobs/p/56286625-73a0-4cda-b346-0f0058ce223c-Associate-System-Engineer-URANIUM-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=47
107	1069	789	Experienced	3+ Yrs of Exp	Full Time	2020-11-03 11:50:00	https://wuzzuf.net/jobs/p/48fec549-fa1d-4701-b448-816676bb96bf-Color-Separation-Specialist-Elif-Global-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=50
108	2095	1433	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 11:36:00	https://wuzzuf.net/jobs/p/c46c1e7e-2362-480d-879d-4e952780ff3a-Quality-Control-Supervisor-Egyptian-German-Automotive-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=67
109	2096	280	Experienced	1-5 Yrs of Exp	Full Time	2020-11-03 11:33:00	https://wuzzuf.net/jobs/p/31fc8607-9a19-4653-b683-13eb5cf7f1aa-IP-Core-Network-Engineer-Silicon21-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=72
110	1613	1130	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 11:42:00	https://wuzzuf.net/jobs/p/5f7679c3-aab0-47b7-be2d-36f3f7ab6579-Senior-Localization-Project-Manager-The-Translation-Gate-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=80
111	2097	141	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-03 11:13:00	https://wuzzuf.net/jobs/p/c82d9076-3204-4925-813f-28df8817ef7e-HR---Operations-assistant-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=81
112	2099	1437	Entry Level	1-4 Yrs of Exp	Full Time	2020-11-03 12:23:00	https://wuzzuf.net/jobs/p/8f3ee669-19ec-4377-afc7-8897c0176c8a-Front-End-Angular-Developer---Alexandria-GAMP-Ltd-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=31
113	551	1438	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 12:48:00	https://wuzzuf.net/jobs/p/6ecd76aa-60d6-4ded-bbc5-f7da8c1c0a53-Senior-Business-Development-Specialist-Namaa-InfoLogistics-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=36
114	862	705	Experienced	2-5 Yrs of Exp	Full Time	2020-11-03 12:08:00	https://wuzzuf.net/jobs/p/5d0af770-8e77-429b-867f-63ab0a911ff0-Senior-Frontend-Engineer-TurnDigital-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
115	123	1439	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 12:55:00	https://wuzzuf.net/jobs/p/44e75a9e-0f8b-494b-8d98-1738fd64f504-Sales-Executive-FTH-industries-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=51
116	937	1440	Experienced	4+ Yrs of Exp	Full Time	2020-11-03 12:31:00	https://wuzzuf.net/jobs/p/6043e0e8-c5be-48d4-a80c-1a97f506aea7-Senior-Business-Analyst-Aman-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=57
117	609	652	Experienced	4-6 Yrs of Exp	Full Time	2020-11-03 13:52:00	https://wuzzuf.net/jobs/p/df92aee3-fb20-485b-a23e-e52b26ae0a81-Business-Development-Specialist-Statements-for-Consulting-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=32
118	2104	1246	Experienced	3+ Yrs of Exp	Full Time	2020-11-03 13:40:00	https://wuzzuf.net/jobs/p/3057e746-2561-4fba-8279-2aaaf9f3045d-ERP-Sales-Manager---Saudi-Market-Based-in-Cairo-OdooTec-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=36
119	774	126	Experienced	2-3 Yrs of Exp	Full Time	2020-11-03 13:58:00	https://wuzzuf.net/jobs/p/9138a456-596e-434d-811f-8f3d77f7ecf1-Product-Owner-iHub-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=45
120	1390	947	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 13:54:00	https://wuzzuf.net/jobs/p/448071a5-d219-43d4-95cd-70763c85b578-Senior-Architect-Virtual-Worker-Now-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=58
121	134	1445	Experienced	3-6 Yrs of Exp	Full Time	2020-11-03 14:12:00	https://wuzzuf.net/jobs/p/4a427095-4905-46f1-8e4d-24691ed2b6a0-Senior-Software-Developer-AHCC-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
122	2107	1446	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 14:26:00	https://wuzzuf.net/jobs/p/31a03dfa-4cf1-4fa7-9d03-34a76855593e-Technical-office-Engineer-Multi-M-Group-Qalubia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=41
123	1026	770	Manager	5-10 Yrs of Exp	Full Time	2020-11-03 14:27:00	https://wuzzuf.net/jobs/p/ade6d42c-438b-430f-b591-c3dfd1ce3efe-E-commerce-Digital-Marketing-Manager---Retail-Background-Only---Raneen-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=65
124	2108	1401	Experienced	2-6 Yrs of Exp	Full Time	2020-11-03 14:54:00	https://wuzzuf.net/jobs/p/46bb813b-9477-4013-b1d3-67470438ae38-Application-Consultant-Microsoft-Dynamics-AX-BI-Technologies-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=66
125	2110	1449	Experienced	2-10 Yrs of Exp	Full Time	2020-11-03 15:01:00	https://wuzzuf.net/jobs/p/a47f7aa1-8d52-46c3-8e02-fab67f38cdc1-Software-Engineer---C---Expandium-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=9
126	104	1450	Experienced	5-8 Yrs of Exp	Full Time	2020-11-03 15:18:00	https://wuzzuf.net/jobs/p/651480b8-7a1d-4cb4-9cac-001328ffef98-HR-Specialist-Pyramid-Glass-Company-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=48
127	1042	239	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 15:53:00	https://wuzzuf.net/jobs/p/2a76e733-3016-4d2f-ba49-468c6841ac88-ERP-Functional-Consultant-E3mel-Business-for-Financial-Managerial-Consultancy-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=56
128	2112	1452	Manager	10-20 Yrs of Exp	Freelance / Project	2020-11-03 15:56:00	https://wuzzuf.net/jobs/p/e2e9747a-6cc3-49af-9bfb-ad841678e9a7-ERP-Application-Manager-BituNil-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=28
129	1098	1297	Experienced	2+ Yrs of Exp	Full Time	2020-11-03 14:43:00	https://wuzzuf.net/jobs/p/fd411c99-a050-4f5b-8b65-cf1cc3067977-Technical-Writer-Paxerahealth-Corp-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=55
130	2113	1453	Entry Level	0-1 Yrs of Exp	Internship	2020-11-03 16:03:00	https://wuzzuf.net/internship/05d3b2cb-52ab-4910-8984-32201141b798-YouTube-Intern-Injaz-Digital-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=50
131	1137	1454	Experienced	2-4 Yrs of Exp	Full Time	2020-11-03 16:49:00	https://wuzzuf.net/jobs/p/653a3acf-8c70-43ad-952e-4f5ae5e75ee4-Interior-Designer-Town-Team-Gharbia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=38
132	2114	1455	Entry Level	1+ Yrs of Exp	Part Time ,Full Time	2020-11-03 16:43:00	https://wuzzuf.net/jobs/p/5e6ede2f-0439-4cd8-8bf1-a727cc781d34-UI-Designer-Web-and-Mobile-DESIGNS-Agency-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=41
133	227	31	Experienced	2-3 Yrs of Exp	Full Time	2020-11-03 17:30:00	https://wuzzuf.net/jobs/p/cf90afa6-9aef-499d-9d14-df20ff2c935d-IT-Technical-Support-proleaders-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=6
134	2119	1458	Experienced	3-10 Yrs of Exp	Full Time	2020-11-03 17:31:00	https://wuzzuf.net/jobs/p/c9d6d308-fd92-4c3f-ac38-1fb6b6a078b6-Senior-Full-Stack-Developer--PHP-Developer--Ship-To-Box-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=12
135	2120	31	Experienced	2-3 Yrs of Exp	Full Time	2020-11-03 17:34:00	https://wuzzuf.net/jobs/p/6bb05966-964b-4550-9838-d7281506799a-Back-end-Developer-WordPress-PHP-proleaders-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=21
136	1591	650	Experienced	5+ Yrs of Exp	Full Time	2020-11-03 17:07:00	https://wuzzuf.net/jobs/p/ede3dbeb-541f-4445-aa25-4d79456e9745-Senior-System-Administrator-Rashideen-Egypt-for-Trade-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=38
137	2121	1455	Experienced	2+ Yrs of Exp	Full Time ,Part Time	2020-11-03 17:19:00	https://wuzzuf.net/jobs/p/b8c2ded1-0dad-4a7e-9f8d-adfe2713d592-Advertising-Sales---Account-Executive-DESIGNS-Agency-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=55
138	909	584	Experienced	3-6 Yrs of Exp	Full Time	2020-11-03 18:05:00	https://wuzzuf.net/jobs/p/3ce89d20-ef3f-4c85-8a5b-aa3edc95c44b-Senior-Back-End-Engineer-Radivision-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=33
139	123	1439	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 12:29:00	https://wuzzuf.net/jobs/p/44e75a9e-0f8b-494b-8d98-1738fd64f504-Sales-Executive-FTH-industries-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=37
140	824	1113	Manager	3+ Yrs of Exp	Work From Home ,Full Time	2020-11-03 18:45:00	https://wuzzuf.net/jobs/p/dee121be-3343-41a9-ba04-fb871a74add6-Social-Media-Specialist-Future-Group-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=55
141	2123	1459	Experienced	2-4 Yrs of Exp	Full Time	2020-11-03 18:52:00	https://wuzzuf.net/jobs/p/eefb34c8-1949-41d7-b73e-1984196f33eb-ERP-Developer-AX-Dynamics---Sadat-City-Sphinx-Glass-Monufya-Egypt?l=bp&t=bj&a=IT-Software-Development&o=20
142	2124	1175	Experienced	4-5 Yrs of Exp	Full Time	2020-11-03 19:20:00	https://wuzzuf.net/jobs/p/b3389689-3bef-479a-8896-ac59426b78f3-SR-Ios-Developer-Ebling-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=26
143	526	1460	Experienced	4-6 Yrs of Exp	Freelance / Project	2020-11-03 20:55:00	https://wuzzuf.net/jobs/p/34342afc-775a-439b-8575-5a4a7d5ec6c3-Website-Developer-Insitu-Egypt-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=17
144	2125	1175	Experienced	4-5 Yrs of Exp	Full Time	2020-11-03 20:09:00	https://wuzzuf.net/jobs/p/f6ec39af-a3e1-4978-910a-6e6f9710cf33-Sr--Android-Developer-Ebling-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=21
145	120	1462	Experienced	1-2 Yrs of Exp	Full Time	2020-11-03 21:23:00	https://wuzzuf.net/jobs/p/85d0757f-7b2b-460f-83d8-3b4c9a01a0a8-Graphic-Designer-RISEUP-Endemag-for-Administrative-Skills-Development-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=29
146	2126	1463	Experienced	5-10 Yrs of Exp	Full Time	2020-11-03 21:13:00	https://wuzzuf.net/jobs/p/2b95cfad-de81-4f9a-b5ab-f7ea15c1f88c-Website-Designer-Ecommerce-CNS-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=41
147	2127	1464	Manager	4-8 Yrs of Exp	Full Time	2020-11-03 21:28:00	https://wuzzuf.net/jobs/p/96b4b196-b7f6-470d-844b-847aad9f0ffb-E-commerce-Manager-CNS-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=55
148	2128	1462	Experienced	3-5 Yrs of Exp	Full Time	2020-11-03 21:30:00	https://wuzzuf.net/jobs/p/e3a37c57-fb63-4c59-98ef-bafb9ea7e434-Developer-RISEUP-Endemag-for-Administrative-Skills-Development-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=12
149	2129	105	Experienced	1-2 Yrs of Exp	Full Time	2020-11-03 22:20:00	https://wuzzuf.net/jobs/p/2c488ee9-fcf2-422e-856b-084a375bbf6d-Software-Sales-Representative-DigitalYard-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=16
150	2130	1464	Manager	3-6 Yrs of Exp	Full Time	2020-11-03 22:23:00	https://wuzzuf.net/jobs/p/3442d7e6-f38f-4ac8-b43a-99f63f70a936-Sales-and-marketing-Manager-CNS-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=37
151	2133	120	Experienced	5-10 Yrs of Exp	Full Time	2020-11-04 09:56:00	https://wuzzuf.net/jobs/p/dd8436cd-45da-4d82-aec0-8288e5cbfa43-Sap-CX-Developer-Agile-Technologies-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=18
152	2134	1465	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-04 09:30:00	https://wuzzuf.net/jobs/p/932fb465-515a-4f20-b221-d03785d495ab-Sales-Account-Manager--Outdoor----Mansoura-Branch-Egypt-Yellow-Pages-Dakahlia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=36
153	487	339	Experienced	3-7 Yrs of Exp	Full Time	2020-11-04 10:25:00	https://wuzzuf.net/jobs/p/43c3601d-8b44-4ae8-a158-da44c8d95caf-Senior-Python-Developer-Keys-Group-Services-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
154	2136	85	Experienced	3-5 Yrs of Exp	Freelance / Project	2020-11-04 10:55:00	https://wuzzuf.net/jobs/p/641bc351-9139-4536-b983-0f1b5d9482a0-Technical-Analyst----Applications-Support--Interact-Technology-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=29
155	2137	1466	Experienced	3-5 Yrs of Exp	Full Time	2020-11-04 10:38:00	https://wuzzuf.net/jobs/p/11a66ef3-0b12-4472-9276-f79742169037-Data-Analytics---Insights-B-Tech-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=43
156	193	1468	Experienced	3-5 Yrs of Exp	Full Time	2020-11-04 11:40:00	https://wuzzuf.net/jobs/p/380f35ed-5ca5-4c04-b66b-78e9d63adca1-IT-Engineer-INGAZ-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=3
157	531	477	Experienced	2-5 Yrs of Exp	Full Time	2020-11-04 11:25:00	https://wuzzuf.net/jobs/p/2de0bd50-1ab9-4e7d-8101-5f62a0a47c59-WordPress-Developer-Awdia-Technology-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=9
158	27	1469	Experienced	1-2 Yrs of Exp	Full Time	2020-11-04 11:48:00	https://wuzzuf.net/jobs/p/bbed811e-6a60-4af7-a02c-14a48c13e90e-Odoo-Implementer-YDS-yasar-digital-services-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=36
159	393	182	Experienced	3-6 Yrs of Exp	Full Time	2020-11-04 12:50:00	https://wuzzuf.net/jobs/p/7ae352eb-3c3f-4084-92e4-51834e7e6f20-Senior-Android-Developer-Advansys-ESC-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=12
160	2140	1459	Experienced	2-4 Yrs of Exp	Full Time	2020-11-04 12:37:00	https://wuzzuf.net/jobs/p/a10933c2-39b5-45fc-83ea-19a85b73b7ec-ERP-Consultant---Sadat-City-Sphinx-Glass-Monufya-Egypt?l=bp&t=bj&a=IT-Software-Development&o=23
161	2141	449	Experienced	1-3 Yrs of Exp	Full Time	2020-11-04 12:42:00	https://wuzzuf.net/jobs/p/f90c4905-8e9c-4824-8fc5-948aa6d596b8-Business-Analyst---Technical-Writer-EffVision-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=27
162	2142	858	Experienced	3-6 Yrs of Exp	Full Time	2020-11-04 12:30:00	https://wuzzuf.net/jobs/p/7e1a0581-6b15-40ac-9b04-338d757b12bc-Mechanical-Design-Engineer-Monufya-Egypt?l=bp&t=bj&a=IT-Software-Development&o=30
163	2143	1471	Senior Management	7-10 Yrs of Exp	Full Time	2020-11-04 13:10:00	https://wuzzuf.net/jobs/p/5d54e4a6-1ecd-482c-a3de-55828f406ac5-Head-of-Business-Development-CASHU-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=18
164	2144	179	Manager	15+ Yrs of Exp	Full Time	2020-11-04 13:42:00	https://wuzzuf.net/jobs/p/485f6e15-c246-4af8-ad72-e1fac0a31a68-ICT Services Delivery Manager-Somabay-Red-Sea-Egypt?l=bp&t=bj&a=IT-Software-Development&o=21
165	2145	1473	Manager	7-15 Yrs of Exp	Full Time	2020-11-04 13:00:00	https://wuzzuf.net/jobs/p/e9386dc9-8481-405a-93d5-84f1f1892593-IT-Manager-Acting---Multinational---DubaiSAP-B1-background-Pillars-Dubai-United-Arab-Emirates?l=bp&t=bj&a=IT-Software-Development&o=7
166	822	526	Experienced	2-4 Yrs of Exp	Full Time	2020-11-04 13:59:00	https://wuzzuf.net/jobs/p/df667b2c-5737-45e1-ab15-e5be9980c89a-DevOps-Engineer-Wireless-Dynamics-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=17
167	2146	1474	Senior Management	5-15 Yrs of Exp	Full Time	2020-11-04 13:55:00	https://wuzzuf.net/jobs/p/b4026b4f-7052-4bcb-830b-0b2d51a5bb9d-Senior-Techno-functional-oracle-erp-consultant-Alarabi-Recruitment-Services-Riyadh-Saudi-Arabia?l=bp&t=bj&a=IT-Software-Development&o=28
168	1749	1130	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-04 13:07:00	https://wuzzuf.net/jobs/p/d0dc31a6-57c4-4d11-ba4c-99e99a6861f8-Localization-Project-Coordinator-The-Translation-Gate-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=42
169	2150	1479	Entry Level	0-1 Yrs of Exp	Internship	2020-11-04 14:13:00	https://wuzzuf.net/internship/237f31a9-72fc-449b-9b1b-9c126c94abcf-Software-Developer---Intern-Rednet-It-Services-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
170	2151	513	Manager	3-12 Yrs of Exp	Full Time	2020-11-04 14:37:00	https://wuzzuf.net/jobs/p/424a038d-8dea-4aac-8a7a-3eabef43e94d-Growth-Marketing-Manager-Odiggo-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
171	246	1483	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-04 14:18:00	https://wuzzuf.net/jobs/p/86b22b50-a59f-4688-b743-0dc2425e103b-IT-Technical-Support-Engineer-Aktan-Misr-Gharbia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=4
172	2155	670	Entry Level	0-1 Yrs of Exp	Internship	2020-11-04 14:11:00	https://wuzzuf.net/internship/a4d98232-6103-46f6-a93b-c777b3e5f335-Application-Consultant---Internship-Rednet-It-Services-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=22
173	2156	1045	Experienced	5-7 Yrs of Exp	Full Time	2020-11-04 14:19:00	https://wuzzuf.net/jobs/p/8a2007b2-20f3-4467-b75b-e64a535b89ac-Purchasing-Supervisor-Packaging-Material-EVA-Cosmetics-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
174	1650	586	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-04 15:34:00	https://wuzzuf.net/jobs/p/29e7356c-877d-4309-ad41-dcb832025ce4-Pre-Sales-Engineer-Smart-Lighting-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=38
175	2157	1424	Entry Level	1+ Yrs of Exp	Full Time	2020-11-04 15:28:00	https://wuzzuf.net/jobs/p/6a11986e-8cb2-4c2f-bf78-fee83b9e7c03-Business-Analyst-Product-Owner-Objects-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=44
176	146	97	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-04 15:01:00	https://wuzzuf.net/jobs/p/6b34ba79-e831-40db-ad30-5326276270f3-Software-Implementation-Specialist-Informatique-Education-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=6
177	620	545	Experienced	3+ Yrs of Exp	Full Time	2020-11-04 15:00:00	https://wuzzuf.net/jobs/p/fb0a4ade-ea02-4b06-8a96-a460d66611b0-Senior--Net-Developer---Assiut-Informatique-Education-Assiut-Egypt?l=bp&t=bj&a=IT-Software-Development&o=14
178	452	1485	Experienced	4-5 Yrs of Exp	Full Time	2020-11-04 15:55:00	https://wuzzuf.net/jobs/p/bc64ad08-fd02-42ed-a8aa-7107b3b07c79-Web-Developer-EGIC-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=20
179	2158	77	Experienced	5+ Yrs of Exp	Full Time	2020-11-04 15:47:00	https://wuzzuf.net/jobs/p/6feb4a3d-9fb7-4d8a-8caa-82bae13c57ec-SharePoint-Lead-Excel-Systems-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=23
180	342	1485	Experienced	3-5 Yrs of Exp	Full Time	2020-11-04 15:57:00	https://wuzzuf.net/jobs/p/c16521e3-15ba-420a-9814-d3fe65aa2a31-Flutter-Developer-EGIC-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=24
181	1006	1486	Experienced	3-5 Yrs of Exp	Full Time	2020-11-04 15:49:00	https://wuzzuf.net/jobs/p/c3c85cfe-2c85-478a-9b06-990cd562da8a-Senior-Technical-Support-Engineer-IGFI---Server-amp-Workstations-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=26
182	939	456	Experienced	2-20 Yrs of Exp	Part Time ,Full Time	2020-11-04 15:12:00	https://wuzzuf.net/jobs/p/bda5cca7-628a-40c6-9551-aaf36c9e8b19-UI-UX-Designer-Gree-Solar-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=47
183	2159	1487	Experienced	4-7 Yrs of Exp	Full Time	2020-11-04 15:46:00	https://wuzzuf.net/jobs/p/7925417c-9934-421b-921d-549db2fcbc48-Senior-sales-engineer-TMA-For-Industrial-Supplies-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=49
184	174	132	Experienced	5+ Yrs of Exp	Full Time	2020-11-04 16:30:00	https://wuzzuf.net/jobs/p/2c7b3098-1cc9-444a-bb8e-af5119832bfe-Senior-Software-Engineer-Arqam-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=9
185	2162	103	Experienced	5+ Yrs of Exp	Full Time	2020-11-04 16:00:00	https://wuzzuf.net/jobs/p/2e37c85a-a068-4176-af7d-2ebdc0136375-Systems-Administrator-Nile-University-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=30
186	2163	1488	Experienced	2+ Yrs of Exp	Full Time	2020-11-04 16:32:00	https://wuzzuf.net/jobs/p/4ab121a9-40c5-4942-87cb-44eab52f6dfe-Desktop-Publishing-Specialist-L10N-House-LTD-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=42
187	969	1490	Experienced	2+ Yrs of Exp	Full Time	2020-11-04 16:57:00	https://wuzzuf.net/jobs/p/b8e2d619-84ca-4038-8b1a-e1ea3794680e-Sales-Account-Manager-Joovlly-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=35
188	1355	316	Entry Level		Full Time	2020-11-04 16:02:00	https://wuzzuf.net/jobs/p/fce737b7-f383-476d-bbb8-7c0021708241-Sales-Agent-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=44
189	2165	103	Experienced	5+ Yrs of Exp	Full Time	2020-11-04 16:01:00	https://wuzzuf.net/jobs/p/c756ca5e-e526-4574-870d-648c2c26b5e4-Network-Administrator-Engineer-Nile-University-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=49
190	51	1491	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-04 17:47:00	https://wuzzuf.net/jobs/p/4db07302-db66-4f4a-bb2d-67fa6a23ccf2-Front-End-Wordpress-Developer-MK-Team-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
191	2167	1492	Experienced	3-5 Yrs of Exp	Full Time	2020-11-04 17:19:00	https://wuzzuf.net/jobs/p/7d845598-6e4c-401e-b72c-e2434ac8caac-RPA-Architect-Singleclic-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=46
192	2169	1396	Experienced	2+ Yrs of Exp	Full Time	2020-11-04 17:05:00	https://wuzzuf.net/jobs/p/ccb715bb-a5b7-4dd7-80c4-e4b528665693-Copywriter-Joovlly-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
193	2170	1493	Experienced	5+ Yrs of Exp	Full Time	2020-11-04 17:33:00	https://wuzzuf.net/jobs/p/d3c65e11-8e0d-480c-bebc-433447bd8cd9-Payroll-Personnel-Specialist-Novative-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=46
194	127	956	Experienced	5-10 Yrs of Exp	Full Time	2020-11-04 18:26:00	https://wuzzuf.net/jobs/p/d4dc3350-cf2e-4381-b060-9ff951cac802-Civil-Engineer-El-Abd-Group-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=38
195	2173	1495	Entry Level	1+ Yrs of Exp	Full Time	2020-11-04 18:53:00	https://wuzzuf.net/jobs/p/dac50463-0dd8-4b41-b724-cad0bd9e8a7d-Marketing-Communication-Executive---Coordinator-TAQA-Arabia-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=49
196	379	1497	Experienced	3-6 Yrs of Exp	Full Time	2020-11-04 23:40:00	https://wuzzuf.net/jobs/p/4ec9fea0-a27c-43c0-b006-80feb8f44118-Senior-Full-Stack-Developer-Cubic-Information-Systems-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=18
197	452	184	Entry Level	2-4 Yrs of Exp	Full Time	2020-11-04 23:33:00	https://wuzzuf.net/jobs/p/778b2b73-e212-4cfe-a780-84a0202ac435-Web-Developer-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=12
198	2175	184	Experienced	3-6 Yrs of Exp	Full Time	2020-11-04 23:04:00	https://wuzzuf.net/jobs/p/8f9428be-5f48-4fda-8733-16cc4348a660-Graphic-Designer---Printing-Background-is-a-must-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=27
230	2208	1530	Experienced	3-4 Yrs of Exp	Full Time	2020-11-05 00:05:00	https://wuzzuf.net/jobs/p/5d2a9e35-8390-4b5d-ab23-12cc04e1d66c-Social-Media---Website-Specialist-LARIBA-Chocolate-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=52
231	239	410	Experienced	3+ Yrs of Exp	Full Time	2020-11-05 09:24:00	https://wuzzuf.net/jobs/p/edefb461-09af-43c2-ac08-1e8de1f87317-Software-Tester-VA-Computing-Egypt-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=5
232	2210	333	Experienced	3-4 Yrs of Exp	Full Time	2020-11-05 10:58:00	https://wuzzuf.net/jobs/p/21c8a71f-287a-4785-a298-a1cc4de5720b-IT-Help-Desk--First-line-Support--Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=4
233	817	676	Manager	5-8 Yrs of Exp	Full Time	2020-11-05 10:44:00	https://wuzzuf.net/jobs/p/2e529356-5f69-4a68-b636-d5855c920291-Angular-OR-Node-Technical-Team-Lead-3D-Diagnostix-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=19
234	2211	721	Experienced	5-7 Yrs of Exp	Full Time	2020-11-05 10:55:00	https://wuzzuf.net/jobs/p/cb749382-6406-46b7-8cfd-2bd225171f63-Senior-Backend-Developer-Laravel-Paynas-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=9
235	2212	184	Senior Management	7-10 Yrs of Exp	Full Time	2020-11-05 10:26:00	https://wuzzuf.net/jobs/p/e4028984-d679-4941-9577-08dc9d5621de-IT-Site-Section-Head-and-Second-Line-Support-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
236	2213	88	Experienced	3-5 Yrs of Exp	Full Time ,Work From Home	2020-11-05 10:05:00	https://wuzzuf.net/jobs/p/978de634-6268-4745-b9ef-38652f71cdbf-Sales-Operations-specialist-IT-iHorizons-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=11
237	2214	1532	Experienced	3+ Yrs of Exp	Full Time	2020-11-05 10:08:00	https://wuzzuf.net/jobs/p/741e2e6b-dccf-4ce6-8533-ea24717886f0-International-Recruitment-and-Development-Advisor-Médecins-Sans-Frontières-أطباء-بلا-حدود---International-field-work-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=21
238	2215	96	Experienced	5-8 Yrs of Exp	Full Time	2020-11-05 10:56:00	https://wuzzuf.net/jobs/p/c7154330-f001-47de-93fa-6ccf6c0f737c-Back-end-Systems-Solution-Analyst-Programmer-Ejada-Cairo-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=26
239	937	721	Experienced	4-7 Yrs of Exp	Full Time	2020-11-05 10:46:00	https://wuzzuf.net/jobs/p/85c8b3b9-62e0-4005-938f-e81d8626c87d-Senior-Business-Analyst-Paynas-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=28
240	117	471	Manager	10-15 Yrs of Exp	Full Time	2020-11-05 11:57:00	https://wuzzuf.net/jobs/p/119c4fc3-d780-4c36-89eb-d4648ddca55e-Marketing-Manager-Egyptian-For-Cosmetics-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=38
241	337	384	Experienced	3-5 Yrs of Exp	Full Time	2020-11-05 11:46:00	https://wuzzuf.net/jobs/p/d9fd0bd7-236a-4cc7-aac1-2d02e3367c71-Senior-Java-Developer-LINK-Development-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=12
242	2217	721	Experienced	3-5 Yrs of Exp	Full Time	2020-11-05 11:01:00	https://wuzzuf.net/jobs/p/69b82329-40a0-43a7-bf80-093ccd83d217-Senior-Frontend-Developer-Angular-Paynas-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=13
243	2218	384	Manager	10+ Yrs of Exp	Full Time	2020-11-05 11:53:00	https://wuzzuf.net/jobs/p/e2547775-8dfb-473a-a41d-50aef82d6071-Java-Senior-Technical-Lead-LINK-Development-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=30
244	1382	1487	Experienced	2-5 Yrs of Exp	Full Time	2020-11-05 11:35:00	https://wuzzuf.net/jobs/p/9c7fde5a-0af8-4f1b-9f64-af471af48059-Logistics-Specialist-TMA-For-Industrial-Supplies-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=47
245	1478	1037	Experienced	3-6 Yrs of Exp	Full Time	2020-11-05 11:24:00	https://wuzzuf.net/jobs/p/9c97f348-56a0-457d-88d1-b6fff5c18060-Senior-Property-Consultant-M²-Developments-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=53
246	2219	1114	Manager	5+ Yrs of Exp	Full Time	2020-11-05 11:42:00	https://wuzzuf.net/jobs/p/96356849-7e0d-4f50-a43c-fa253495c7fe-Customer-Care-Supervisor---Tanta---Mansoura-El-Nahar-for-Medical-Solutions-Gharbia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=54
247	941	1534	Experienced	2-5 Yrs of Exp	Full Time	2020-11-05 12:11:00	https://wuzzuf.net/jobs/p/052610b5-440b-43f2-82f2-b5eb4cec764b-Help-Desk-Specialist-Contact-Damietta-Egypt?l=bp&t=bj&a=IT-Software-Development&o=23
248	2225	404	Experienced	3+ Yrs of Exp	Full Time	2020-11-05 12:34:00	https://wuzzuf.net/jobs/p/01620444-293e-4387-a801-c36c8ba830a6-Devops-ProdOps‎-Engineer---Cairo-Cegedim-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=32
249	2226	1535	Manager	5-10 Yrs of Exp	Full Time	2020-11-05 12:21:00	https://wuzzuf.net/jobs/p/58b9d9fa-53ff-40ea-a8f7-cd20d88aa6b4-Furniture-Design-Manager-SMART-Furniture-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
250	998	1406	Experienced	5+ Yrs of Exp	Full Time	2020-11-05 12:58:00	https://wuzzuf.net/jobs/p/4ccaa1c7-a7c8-4114-a3db-84aec4ea97dd-Senior-Quality-Control-Specialist-Dolf-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=57
251	247	135	Entry Level	1-5 Yrs of Exp	Full Time	2020-11-05 12:03:00	https://wuzzuf.net/jobs/p/8deb3104-d4a1-49db-b3d0-596ea4345f3f-Sales-Representative---Software-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=5
252	2228	781	Experienced	3+ Yrs of Exp	Full Time	2020-11-05 12:51:00	https://wuzzuf.net/jobs/p/82fb93a3-86f7-4bef-a858-d7388a46c4ef-Senior-Android-Developer---Heliopolis-Al-Amin-Technological-Systems-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=13
253	2229	1538	Experienced	2-5 Yrs of Exp	Full Time	2020-11-05 12:19:00	https://wuzzuf.net/jobs/p/a42e763c-f715-438f-bceb-c95e9e6cda7f-Help-Desk-Specialist--Mansoura-Contact-Dakahlia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=24
254	2230	96	Experienced	5-8 Yrs of Exp	Full Time	2020-11-05 12:08:00	https://wuzzuf.net/jobs/p/9721d429-46f3-4e81-bbea-6a46c55904a0-Analyst---Programmer-Ejada-Cairo-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=27
255	1479	657	Experienced	3+ Yrs of Exp	Full Time	2020-11-05 12:13:00	https://wuzzuf.net/jobs/p/bf4b1dc3-7cd2-4c0a-ac57-0e1893093f18-Senior-Marketing-Specialist-Unicharm-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
256	2231	947	Experienced	3+ Yrs of Exp	Full Time ,Work From Home	2020-11-05 12:20:00	https://wuzzuf.net/jobs/p/dcc6fe6e-f15e-4fae-b194-bcad8b48e58b-Architect-Work-from-Home-Virtual-Worker-Now-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=50
257	2236	141	Experienced	3-5 Yrs of Exp	Part Time	2020-11-05 13:56:00	https://wuzzuf.net/jobs/p/2b27b86a-fa76-4091-a970-225fb1db5440-iOS-Developer---Remotely-work-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=17
258	493	1031	Entry Level	1-4 Yrs of Exp	Full Time	2020-11-05 13:30:00	https://wuzzuf.net/jobs/p/3d758100-c4d6-4262-8f59-065e58cfa67d-Magento-Developer-tshween-com-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=21
259	779	693	Experienced	2+ Yrs of Exp	Full Time	2020-11-05 13:54:00	https://wuzzuf.net/jobs/p/01420e36-3418-44ab-89b4-77a1cdd2fc57-Service-Desk-Specialist-Universal-Payment-Services-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=36
260	2237	710	Manager	5+ Yrs of Exp	Full Time	2020-11-05 13:04:00	https://wuzzuf.net/jobs/p/7e44bda7-c77e-4171-bc3c-280f22eb8f7a-Oracle-Developer-Lead-Generation-C-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=14
261	1175	840	Experienced	5-10 Yrs of Exp	Full Time	2020-11-05 13:05:00	https://wuzzuf.net/jobs/p/8f800285-1315-4582-b7c3-ed73a2fe3d81-Production-Engineer-Greater-Cairo-Foundries-Co-S-A-E-Sharqia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=38
262	1208	842	Manager	10-15 Yrs of Exp	Full Time	2020-11-05 13:49:00	https://wuzzuf.net/jobs/p/eb4a9a57-4401-492d-bd03-efbe11c88dea-Sales-Manager---Real-Estate-SAK-Developments-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=41
263	1031	81	Experienced	3-5 Yrs of Exp	Full Time	2020-11-05 13:57:00	https://wuzzuf.net/jobs/p/a27f329b-b43f-4454-9230-e0a63a705202-Senior-Database-Administrator-Allianz-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=58
264	2238	1542	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-05 14:35:00	https://wuzzuf.net/jobs/p/3a9b6637-84b0-466e-ba50-74731a183c4e-IT-Help-Desk-Specialist---HQ-Ceramica-Cleopatra-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=5
265	2239	294	Experienced	4+ Yrs of Exp	Full Time	2020-11-05 14:16:00	https://wuzzuf.net/jobs/p/2bc74e6a-d849-4fb2-9b10-6112dc625972-Oracle-Developer-KnowledgeNet-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
266	788	1543	Experienced	4+ Yrs of Exp	Full Time	2020-11-05 14:45:00	https://wuzzuf.net/jobs/p/395d6645-7011-4b5e-a1dc-61403367c460-Senior-Business-Development-Executive-Social-Peak-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=21
267	654	1543	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-05 14:44:00	https://wuzzuf.net/jobs/p/344c1184-cbc4-431a-bc3f-0eb5bbde265f-Business-Development-Executive-Social-Peak-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=22
268	479	1544	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-05 14:18:00	https://wuzzuf.net/jobs/p/015f80f3-c920-4100-8307-bf598cae7c74-Front-End-Developer-ApexAITechnologies-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=23
269	2157	698	Experienced	3+ Yrs of Exp	Full Time	2020-11-05 14:57:00	https://wuzzuf.net/jobs/p/2dedd78b-e2d2-4a39-aae1-6dd849615339-Business-Analyst-Product-Owner-52nd-Solution-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=32
270	2242	141	Experienced	2-5 Yrs of Exp	Work From Home ,Part Time	2020-11-05 14:17:00	https://wuzzuf.net/jobs/p/ec02949c-0686-4a44-b017-230945e8ada4-Android-Application-Developer---Remotely-Work-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=8
271	2243	705	Experienced	3+ Yrs of Exp	Full Time	2020-11-05 14:27:00	https://wuzzuf.net/jobs/p/9f6783e6-3508-47a4-b42f-bdc4b7436292-Technical-Pre-Sales-Consultant-TurnDigital-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=28
272	833	862	Experienced	3-7 Yrs of Exp	Part Time	2020-11-05 14:43:00	https://wuzzuf.net/jobs/p/ef4cda29-0942-4b5e-975b-eec8798696b9-Business-System-Analyst-Master-Linux-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=37
273	2	315	Manager	4+ Yrs of Exp	Full Time	2020-11-05 15:27:00	https://wuzzuf.net/jobs/p/4328c4a7-bc37-4381-9aea-9d91fc33c974-IT-Manager-360Imaging-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=5
274	2246	585	Experienced	3-4 Yrs of Exp	Full Time	2020-11-05 15:55:00	https://wuzzuf.net/jobs/p/4ab6801a-3a06-4e99-973a-9726bc4551bc-CRM-Developer-Ghassan-Ahmed-Alsulaiman-for-Electronic-Services-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=21
275	120	716	Experienced	3+ Yrs of Exp	Full Time	2020-11-05 15:40:00	https://wuzzuf.net/jobs/p/1e1b566f-34b7-4d4f-8d5c-3ee2744838c2-Graphic-Designer-Wham-Clinics-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=33
276	2247	862	Experienced	2-7 Yrs of Exp	Full Time	2020-11-05 15:00:00	https://wuzzuf.net/jobs/p/4f178a7c-c1fc-4694-a356-06b0cbd585f1-React-JS-Engineer-Master-Linux-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=39
277	2248	774	Experienced	8-10 Yrs of Exp	Full Time	2020-11-05 15:47:00	https://wuzzuf.net/jobs/p/4a1527bc-70d8-47a1-a8f0-69aa195be6d7-Senior-HR-Officer---HRIS-Zewail-City-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=41
278	816	1546	Experienced	2-3 Yrs of Exp	Full Time	2020-11-05 15:10:00	https://wuzzuf.net/jobs/p/2f236a9d-4045-4c6f-9a9e-f2d88cffa833-Digital-Marketing-Specialist-Euro-Van-International-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=62
279	187	1548	Experienced	2-5 Yrs of Exp	Full Time	2020-11-05 15:21:00	https://wuzzuf.net/jobs/p/51b077ea-4ae7-4314-a09e-5d46b7a5d044-IT-Support-Engineer-360Imaging-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=1
280	2250	1549	Experienced	3+ Yrs of Exp	Full Time	2020-11-05 15:48:00	https://wuzzuf.net/jobs/p/5cacddb0-e6a0-434b-8194-f0d60e367d17-Senior--NET-Developer---Smart-Village-Premier-Services-and-Recruitment-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=15
281	633	862	Experienced	3-7 Yrs of Exp	Full Time	2020-11-05 15:12:00	https://wuzzuf.net/jobs/p/71145ae2-bfc5-46b9-9d08-1e3db829bf09-Cross-Platform-Mobile-Developer-Master-Linux-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=17
282	479	111	Entry Level	1-3 Yrs of Exp	Work From Home ,Full Time	2020-11-05 15:25:00	https://wuzzuf.net/jobs/p/63afbf41-967f-4bf7-88b3-ce5c3c430fef-Front-End-Developer-Wisely-Insure-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=24
283	2251	1550	Experienced	5+ Yrs of Exp	Full Time	2020-11-05 15:46:00	https://wuzzuf.net/jobs/p/961cfdf3-a955-4456-8475-fed8bf76b699-Technical-Lead-Second-profit-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=38
284	2252	585	Experienced	3-4 Yrs of Exp	Full Time	2020-11-05 15:45:00	https://wuzzuf.net/jobs/p/9763da6d-a840-4117-8b40-4e6601a2377c-Data-Center-Specialist-Ghassan-Ahmed-Alsulaiman-for-Electronic-Services-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=55
285	2253	1209	Experienced	1-2 Yrs of Exp	Full Time	2020-11-05 15:30:00	https://wuzzuf.net/jobs/p/649b3754-fbfc-4b20-9cf0-c7883f8d1722-Junior-Digital-Media-Buyer-4level1-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=60
286	1705	137	Experienced	4+ Yrs of Exp	Full Time	2020-11-05 16:11:00	https://wuzzuf.net/jobs/p/4f2d37e2-06a7-4bb8-9f1d-218b919497a3-Senior-Front-End-Developer-React-Flairstech-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=22
287	2257	585	Experienced	3-4 Yrs of Exp	Full Time	2020-11-05 16:00:00	https://wuzzuf.net/jobs/p/48b7bc5e-4ec5-4cac-ad89-08a381f97fc4-BI-Developer-Ghassan-Ahmed-Alsulaiman-for-Electronic-Services-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=25
288	2258	1554	Experienced	3-5 Yrs of Exp	Full Time	2020-11-05 16:45:00	https://wuzzuf.net/jobs/p/03a68fdd-f5bf-471c-be8a-f08129a61119-Audience-Development-Specialist-Qanawat-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=27
289	408	377	Experienced	3-4 Yrs of Exp	Full Time	2020-11-05 16:14:00	https://wuzzuf.net/jobs/p/6a1dcd83-0bed-46db-9c3d-45cba9b37e6a-Software-Application-Support-Engineer-BF-Soft-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=5
290	124	487	Experienced	4+ Yrs of Exp	Full Time	2020-11-05 16:50:00	https://wuzzuf.net/jobs/p/89ce1b80-1b92-492d-aafd-287cc578024f-Senior-Graphic-Designer-DEVOPSolution-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=48
291	1651	585	Experienced	2-3 Yrs of Exp	Full Time	2020-11-05 16:09:00	https://wuzzuf.net/jobs/p/52c80ec2-81e1-4345-bab1-a51af3d1371e-Information-Security-Specialist-Ghassan-Ahmed-Alsulaiman-for-Electronic-Services-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=52
292	2259	585	Experienced	4-5 Yrs of Exp	Full Time	2020-11-05 16:27:00	https://wuzzuf.net/jobs/p/f64f566c-137c-4fc7-87cc-f1b30f6373ff-Solution-Owner-Integration-Ghassan-Ahmed-Alsulaiman-for-Electronic-Services-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=61
293	1512	137	Experienced	3-5 Yrs of Exp	Full Time	2020-11-05 17:47:00	https://wuzzuf.net/jobs/p/3231c6f7-64cd-4bcc-940f-040ca36c3374-Senior-Build-Engineer-Flairstech-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=67
294	2261	1555	Entry Level		Internship	2020-11-05 17:23:00	https://wuzzuf.net/internship/9a0aa1b7-3d08-4f54-85ce-27873427b22d-IT-programming-with--Net-in-Seven---Uberlândia-AIESEC---MANSOURA-Uberlandia-Brazil?l=bp&t=bj&a=IT-Software-Development&o=1
295	2013	60	Experienced	7+ Yrs of Exp	Full Time	2020-11-05 17:14:00	https://wuzzuf.net/jobs/p/b30b7067-2f8b-46ea-80e2-fc58645f3e6d-Executive-Secretary-to-Chairman---Alexandria-Paradise-Inn-Hotels-Resorts-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=64
296	2264	1557	Experienced	2+ Yrs of Exp	Full Time	2020-11-05 18:21:00	https://wuzzuf.net/jobs/p/7ad43ab0-d8e2-4486-a9ba-4693d1cd9cbf-Software-Testing-Engineer-Zeal-Rewards-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=6
297	239	1558	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-05 18:10:00	https://wuzzuf.net/jobs/p/89786a22-5034-4657-8109-7844fc248a81-Software-Tester-Bypa-ss-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=19
298	1001	1559	Experienced	2-5 Yrs of Exp	Full Time ,Part Time	2020-11-05 19:52:00	https://wuzzuf.net/jobs/p/25cd1a04-ba38-497b-9f4b-110b9dac812c-Sales-Representative-unilearn-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=48
299	1418	487	Experienced	5+ Yrs of Exp	Full Time	2020-11-05 19:51:00	https://wuzzuf.net/jobs/p/e3ff78fb-bfc4-4074-824b-177dd5099cf0-Senior-UI-UX-Graphic-Designer-DEVOPSolution-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=50
300	2265	1560	Experienced	1+ Yrs of Exp	Work From Home	2020-11-05 21:45:00	https://wuzzuf.net/jobs/p/a6f5a076-53b9-4e52-989c-02a18ef7f53f-Java-Web-Developer-Spring-Framework-Masternuts-Matruh-Egypt?l=bp&t=bj&a=IT-Software-Development&o=37
301	2266	1560	Experienced	1+ Yrs of Exp	Work From Home	2020-11-05 22:45:00	https://wuzzuf.net/jobs/p/777d4f9b-17f9-474a-ac6a-7f73aea1d038-Java-Android-Developer-Algorithmic-Masternuts-Matruh-Egypt?l=bp&t=bj&a=IT-Software-Development&o=38
302	911	721	Experienced	1-3 Yrs of Exp	Full Time	2020-11-06 01:20:00	https://wuzzuf.net/jobs/p/a2ba0242-009a-4ff3-97ea-a9cf8738feaa-Business-Analyst-Paynas-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=55
303	239	1561	Experienced	2-4 Yrs of Exp	Full Time	2020-11-06 02:51:00	https://wuzzuf.net/jobs/p/ac2b94f6-1748-4e89-b617-9159b726191b-Software-Tester-AFKAR-Technology-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=6
304	2267	1562	Manager	4-8 Yrs of Exp	Full Time	2020-11-06 10:18:00	https://wuzzuf.net/jobs/p/ffe43f6b-a888-4bba-9dc5-c19e3edc6d46-Backend-Engineering-Lead-sakneen-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=43
305	2270	485	Experienced	4-6 Yrs of Exp	Full Time	2020-11-06 12:44:00	https://wuzzuf.net/jobs/p/852d06ae-b586-4a79-946d-6e5e30159fc8-Senior-Android-Mobile-Developer--Flutter-Exposure-infasme-com-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
306	357	119	Experienced	3+ Yrs of Exp	Full Time ,Work From Home	2020-11-06 12:12:00	https://wuzzuf.net/jobs/p/560aa1c5-d946-4ac3-9ea0-66ed1119954b-Senior-Front-End-Developer-TMentors-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=16
307	2271	1564	Experienced	2-4 Yrs of Exp	Full Time	2020-11-06 12:43:00	https://wuzzuf.net/jobs/p/59293ea9-ee90-42c1-a050-2d52834ef9e2-Operation-Desinger-Mico-World-Limited-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=51
308	1333	964	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-06 13:38:00	https://wuzzuf.net/jobs/p/078e872c-6af1-4372-bac8-37cfc9e2a735-Industrialization-Engineer-Production---Sheet-Metal-Power-Solutions-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=43
309	499	290	Experienced	2-3 Yrs of Exp	Full Time	2020-11-06 14:19:00	https://wuzzuf.net/jobs/p/d8060930-d514-4a9e-b3c7-d936873a1003-Software-Sales-Executive-Callvita-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=5
310	1	1565	Experienced	3+ Yrs of Exp	Full Time	2020-11-06 17:28:00	https://wuzzuf.net/jobs/p/3bdb2a1f-67e4-4f62-8c4c-eaa0d0b75a90-IT-Specialist-4level1-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=1
311	2272	1566	Entry Level		Internship	2020-11-06 20:15:00	https://wuzzuf.net/internship/55a70866-b4c6-4b00-99f6-6b798c679b1f-Front-end-at-Grupo-TCS---Technologies-AIESEC---MANSOURA-Belo-Horizonte-Brazil?l=bp&t=bj&a=IT-Software-Development&o=6
312	1119	141	Senior Management	5-11 Yrs of Exp	Work From Home ,Full Time	2020-11-07 01:07:00	https://wuzzuf.net/jobs/p/2b6393b3-4630-4dfb-b3a2-29372edcc47d-Head-of-Digital-Marketing-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=9
313	2275	1567	Experienced	3-5 Yrs of Exp	Full Time	2020-11-07 10:22:00	https://wuzzuf.net/jobs/p/3bc16ebf-60fd-49a6-8c32-cc59888dd0d2-Quality-Assurance-Specialist--Software-Tester--Esmaar-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
314	2276	266	Entry Level	1-4 Yrs of Exp	Full Time	2020-11-07 10:11:00	https://wuzzuf.net/jobs/p/0f1eec75-2e38-4dfe-9367-b810576b4bfd-PHP-Laravel-Developer-Esmaar-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=6
315	117	1209	Manager	10-15 Yrs of Exp	Full Time	2020-11-07 11:11:00	https://wuzzuf.net/jobs/p/118f7cbd-2c17-4a4b-a2b6-79940cfb4b97-Marketing-Manager-4level1-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=9
316	2278	481	Experienced	2+ Yrs of Exp	Full Time	2020-11-07 12:41:00	https://wuzzuf.net/jobs/p/1fd56d9c-a112-45e3-b6dc-052a30f38e9b-iOS-Developer-Mansoura-DK-Awamer-Alshabaka-اوامر-الشبكه-Dakahlia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=5
317	206	560	Experienced	1-3 Yrs of Exp	Full Time	2020-11-07 12:30:00	https://wuzzuf.net/jobs/p/e634ad3a-a50c-430a-8ce8-f9d1565579c3-Java-Developer-Centione-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=4
318	1267	1568	Manager	3-7 Yrs of Exp	Full Time	2020-11-07 12:57:00	https://wuzzuf.net/jobs/p/a2973219-5a0e-40cd-a8a2-4372cfd7a8e4-Sales-Manager-MAKTech-3d-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=8
319	2280	1570	Experienced	3-5 Yrs of Exp	Full Time	2020-11-07 14:21:00	https://wuzzuf.net/jobs/p/b4dbac94-3bae-438b-ae49-f7fb3526df76-PR---Internal-Communications-Manager-DYNINNO-Egypt-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=8
320	2283	516	Experienced	2-4 Yrs of Exp	Full Time	2020-11-07 17:48:00	https://wuzzuf.net/jobs/p/28963ec2-bf27-4086-a0b8-d3cbe84e48f1-Dot-Net-Full-stack-developer-IPC-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
321	2284	141	Manager	5-10 Yrs of Exp	Full Time	2020-11-07 17:17:00	https://wuzzuf.net/jobs/p/351d08a3-ac2a-4661-bcdf-c49078eb9093-Business-Developer-for-Interior-Design-Studio-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=6
322	2286	1341	Entry Level	1-2 Yrs of Exp	Full Time ,Work From Home	2020-11-07 18:40:00	https://wuzzuf.net/jobs/p/ef44b2c6-4519-4685-a704-bf65f63c70cd-ESL-content-creator-Alternative-Education-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=11
323	2290	1001	Experienced	1-5 Yrs of Exp	Full Time	2020-11-07 23:43:00	https://wuzzuf.net/jobs/p/912698a4-0af7-40fd-b3c7-a87e9fca8eca-BIM-Mechanical-Electrical-Engineer-THE-Architects-Planners-Civil-Engineers-Consultancy-Firm-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=9
324	2291	1577	Entry Level	2-5 Yrs of Exp	Full Time	2020-11-08 05:17:00	https://wuzzuf.net/jobs/p/116cb161-4359-47c4-8f04-01bafcbe40bd-Java-Spring-Boot-Developer-Transcesion-VC-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=7
325	987	141	Entry Level	0-1 Yrs of Exp	Freelance / Project	2020-11-08 08:13:00	https://wuzzuf.net/jobs/p/f014ff2e-751a-40a4-87e0-7e25f37aa9d2-Help-Desk-Engineer-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=8
336	2304	141	Manager	10+ Yrs of Exp	Full Time	2020-11-08 11:49:00	https://wuzzuf.net/jobs/p/1c4e6389-586f-4b40-bc15-822641eaa13e-IT-Audit-Manager-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=1
326	2293	94	Experienced	5-8 Yrs of Exp	Full Time	2020-11-08 09:18:00	https://wuzzuf.net/jobs/p/339c236a-90c5-4168-a43c-ef72f513f98f-Software-QC-Tester-Path-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
327	2294	627	Experienced	2-5 Yrs of Exp	Full Time	2020-11-08 09:06:00	https://wuzzuf.net/jobs/p/183a33fd-00b0-4b90-a14c-4f6d75a364c7-Data-Center-Operations-Analyst-ITS-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=11
328	22	1340	Entry Level	2-3 Yrs of Exp	Full Time	2020-11-08 09:31:00	https://wuzzuf.net/jobs/p/b288e6f8-fd36-46c3-86d3-c15850d489a9-React-Native-Mobile-Developer-Alexandria-For-Programming-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=5
329	2038	1580	Manager	10+ Yrs of Exp	Full Time	2020-11-08 09:40:00	https://wuzzuf.net/jobs/p/66f888ad-940a-466f-971a-81a7a8299f1e--Net-Technical-Lead-MigrationIT-com-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=8
330	2295	339	Senior Management	10-15 Yrs of Exp	Full Time	2020-11-08 09:33:00	https://wuzzuf.net/jobs/p/8d4c1ab2-5921-4a1e-9324-c90fd7b35b65-Country-Manager---GM-Keys-Group-Services-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=16
331	2297	1581	Experienced	4-7 Yrs of Exp	Full Time	2020-11-08 10:50:00	https://wuzzuf.net/jobs/p/39538ca6-f6d9-4211-8bb8-e942604f5acc-Senior-IT-System-Specialist-Hayat-Kimya-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=1
332	2298	409	Experienced	2+ Yrs of Exp	Full Time	2020-11-08 10:00:00	https://wuzzuf.net/jobs/p/317429b0-640c-43bb-a23f-3e47e7bcaa15-Software-Engineer-in-Backend--Python---Django--Robusta-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=4
333	2299	1582	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-08 10:47:00	https://wuzzuf.net/jobs/p/3ec67b81-aa2c-4c90-83a9-c527638fc32d-Pre-Sales-Executive---Cairo-Server-Store-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=14
334	2300	1582	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 10:34:00	https://wuzzuf.net/jobs/p/2b7d4e06-e3f1-439f-bdfb-f10528ec8b3d-Senior-Pre-Sales-Executive---Cairo-Server-Store-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=15
335	793	658	Experienced	2-5 Yrs of Exp	Full Time	2020-11-08 10:33:00	https://wuzzuf.net/jobs/p/c8c91c46-51e1-4b15-8eeb-001164c2f8d1-AX-Technical-Developer-CompactSoft-International-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
352	174	132	Experienced	5+ Yrs of Exp	Full Time	2020-11-08 14:47:00	https://wuzzuf.net/jobs/p/2c7b3098-1cc9-444a-bb8e-af5119832bfe-Senior-Software-Engineer-Arqam-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
353	2318	1463	Experienced	5-10 Yrs of Exp	Full Time	2020-11-08 14:29:00	https://wuzzuf.net/jobs/p/2b95cfad-de81-4f9a-b5ab-f7ea15c1f88c-Website-Designer-E-commerce-CNS-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=24
354	1117	339	Manager	10-15 Yrs of Exp	Full Time	2020-11-08 09:38:00	https://wuzzuf.net/jobs/p/44957f3b-f261-4826-8784-5c2345e31aae-Financial-Controller-Keys-Group-Services-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=29
361	357	511	Experienced	3-4 Yrs of Exp	Part Time	2020-11-08 15:34:00	https://wuzzuf.net/jobs/p/4da65f95-f533-4f67-90c2-73eb2d96ae00-Senior-Front-End-Developer-3i-Vision-LTD-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=16
362	939	1601	Experienced	4-8 Yrs of Exp	Full Time	2020-11-08 15:31:00	https://wuzzuf.net/jobs/p/0d9f1792-5855-49e9-a103-de77b6ca1d94-UI-UX-Designer-Desklab-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=24
363	1818	1602	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 15:17:00	https://wuzzuf.net/jobs/p/468fe524-ed7b-4d81-87da-0eea3af99a9f-Senior-Sales-Engineer-Marmonil-Marble-Granite-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=35
371	345	1401	Experienced	3-6 Yrs of Exp	Full Time	2020-11-08 16:57:00	https://wuzzuf.net/jobs/p/339d184d-1f40-4d95-ba9c-02b940831668-Senior-Software-Quality-Control-Engineer-BI-Technologies-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=7
372	2335	1610	Experienced	10+ Yrs of Exp	Full Time	2020-11-08 16:08:00	https://wuzzuf.net/jobs/p/429be59f-6868-4a61-9a86-106416c7ddb1-Senior-PHP-Laravel-Developer--Full-Stack-Ecommerce-RMG-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=15
373	760	129	Experienced	2+ Yrs of Exp	Full Time	2020-11-08 16:38:00	https://wuzzuf.net/jobs/p/28fcf41a-5f17-4805-9911-562b7694f120-SQL-Developer---Experienced-HITS-Technologies-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=23
374	2336	1611	Experienced	3-6 Yrs of Exp	Full Time	2020-11-08 16:02:00	https://wuzzuf.net/jobs/p/69617849-bc04-4dde-9ea6-f0fe5f2decc1-Microsoft-Business-Intelligence-Developer-Tidal-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=24
375	1001	1612	Experienced	2+ Yrs of Exp	Full Time	2020-11-08 16:44:00	https://wuzzuf.net/jobs/p/61747514-fa33-4c2c-b30d-5844ae611d37-Sales-Representative-Egpay-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=34
376	1562	1594	Experienced	2-3 Yrs of Exp	Full Time	2020-11-08 16:37:00	https://wuzzuf.net/jobs/p/4348d0b7-f113-4ab3-b173-5edc9e37deba-System-Admin-Innovato-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=50
380	2339	330	Experienced	2+ Yrs of Exp	Full Time	2020-11-08 17:45:00	https://wuzzuf.net/jobs/p/0c474a79-0611-43e6-ba1d-87d29dd72295-Odoo-Back-End-Developer-Peerless-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=15
381	59	1071	Experienced	2-5 Yrs of Exp	Full Time	2020-11-08 17:42:00	https://wuzzuf.net/jobs/p/11b715cb-4b44-40f2-bf80-6467c0fd23d9-Odoo-Developer-Engosoft-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=16
382	1267	1615	Manager	6-8 Yrs of Exp	Full Time	2020-11-08 17:54:00	https://wuzzuf.net/jobs/p/253c0c7e-eea9-461a-a727-a48f1910cac7-Sales-Manager-Air-Gate-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=54
384	2341	726	Experienced	2+ Yrs of Exp	Full Time	2020-11-08 18:46:00	https://wuzzuf.net/jobs/p/17e5cace-82a3-4f74-8ba5-a10abea97876-Odoo-Front-End-Developer-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=15
385	2342	1211	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-08 18:25:00	https://wuzzuf.net/jobs/p/3fae7357-3ec6-45a8-8f4f-f13488898ed5-Junior-Mean-Stack-Developer-Nodejs-EasyKash-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=27
387	119	48	Manager	5+ Yrs of Exp	Full Time	2020-11-08 19:02:00	https://wuzzuf.net/jobs/p/26aaebf1-e2d3-4959-8e34-476141bff712-Sales-Manager--Alexandria-Stylish-Eve-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=61
388	32	121	Experienced	2-3 Yrs of Exp	Full Time	2020-11-08 19:46:00	https://wuzzuf.net/jobs/p/7cf1170b-05bb-4fe8-93da-7964d725fa88-Software-Developer-BlueCloud-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=3
389	57	325	Experienced	1+ Yrs of Exp	Full Time	2020-11-08 19:36:00	https://wuzzuf.net/jobs/p/6ae71336-afc0-4f9d-9da0-e62bacbc0c1d-Front-End-Developer-RDI-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=16
390	2344	1211	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-08 19:54:00	https://wuzzuf.net/jobs/p/72bf7020-42a4-4579-ac07-148f899b8e93-Merchant-Acquisition-Specialist-EasyKash-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=45
391	989	1211	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-08 20:11:00	https://wuzzuf.net/jobs/p/7ad1d564-aa09-4607-a02f-13f8e755b530-Telesales-Representative-EasyKash-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=45
392	239	434	Experienced	2+ Yrs of Exp	Full Time ,Work From Home	2020-11-08 21:44:00	https://wuzzuf.net/jobs/p/aee760ca-d31d-4510-bd0e-b7b8e74d5a73-Software-Tester-The-Lean-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
337	2305	1586	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 11:22:00	https://wuzzuf.net/jobs/p/0f785df1-9392-43bc-9331-1fc1662d205c-Sales-Account-Manager-Hardware-Al-Ahly-Computer-Equipment-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=14
338	1471	600	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 11:20:00	https://wuzzuf.net/jobs/p/3844e5cd-ada2-427e-8374-c4ce7fe8ee15-Senior-Digital-Marketing-Specialist-Dakahlia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=22
339	361	163	Entry Level	2-3 Yrs of Exp	Full Time	2020-11-08 11:11:00	https://wuzzuf.net/jobs/p/accd1d4c-007e-4189-8b09-0bbefb9e92ae-PHP-Developer-Andalusia-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=4
340	2306	1588	Manager	8-10 Yrs of Exp	Full Time	2020-11-08 11:29:00	https://wuzzuf.net/jobs/p/677b2879-d7ba-4049-8102-36d28fb1ca2e-HR-manager-Sun-Lighting-Company-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=20
341	816	1325	Experienced	2+ Yrs of Exp	Full Time ,Work From Home	2020-11-08 11:08:00	https://wuzzuf.net/jobs/p/c5fdb80c-ad84-4a3a-ad59-650533ab7bca-Digital-Marketing-Specialist-ServerHub-Dallas-United-States?l=bp&t=bj&a=IT-Software-Development&o=23
342	2307	261	Experienced	5-6 Yrs of Exp	Full Time	2020-11-08 11:24:00	https://wuzzuf.net/jobs/p/fcb13c14-bf1c-445f-9ebf-a4be8d257766-External-Affairs-Officer-Ahram-Security-Group-Sharqia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=24
343	335	310	Experienced	5+ Yrs of Exp	Full Time	2020-11-08 12:59:00	https://wuzzuf.net/jobs/p/eb014160-02d2-440f-83f5-c7a10eb1599a-Senior-Software-Engineer-Backend-TEMPO-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=1
344	507	40	Experienced	2-3 Yrs of Exp	Full Time	2020-11-08 12:05:00	https://wuzzuf.net/jobs/p/78fa2565-d0a6-4b34-8574-181668f05579-iOS-Developer-Madar-Soft-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=8
345	1136	745	Experienced	5-10 Yrs of Exp	Full Time	2020-11-08 12:46:00	https://wuzzuf.net/jobs/p/7019e4ea-665a-4f88-b0d6-5030512bfc41-Senior-Sales-Account-Manager-QuadraTech-for-Information-Technology-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=16
346	2312	800	Experienced	1-3 Yrs of Exp	Full Time	2020-11-08 12:51:00	https://wuzzuf.net/jobs/p/676c09c0-f74d-4aa7-b5dc-86254718e4c3-Network-Instructor-MICA-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=17
347	2315	191	Experienced	2+ Yrs of Exp	Full Time	2020-11-08 13:24:00	https://wuzzuf.net/jobs/p/b36c3119-8951-4b1e-be51-609056f442c8-Senior-PHP-Developer---Plugins-Development-Paymob-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
348	2316	333	Experienced	4-5 Yrs of Exp	Full Time	2020-11-08 13:34:00	https://wuzzuf.net/jobs/p/9e033827-93b2-47c1-87e9-49b454704b46-Application-developer-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=9
349	747	1594	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 13:27:00	https://wuzzuf.net/jobs/p/8ecf8950-9a49-4612-9775-057bfb187df9-Wordpress-Developer-Innovato-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
350	769	481	Experienced	5+ Yrs of Exp	Full Time	2020-11-08 13:08:00	https://wuzzuf.net/jobs/p/b7acbbf6-9f18-4257-b20b-3903d09eced2-Senior-PHP---Laravel-Developer---Mansoura-DK-Awamer-Alshabaka-اوامر-الشبكه-Dakahlia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=15
351	1470	555	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-08 13:09:00	https://wuzzuf.net/jobs/p/534f7f6a-b25d-4ab9-8844-4caa4c693ece-Sales-Coordinator-IT-Pillars-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=28
355	2320	191	Experienced	1-2 Yrs of Exp	Full Time	2020-11-08 14:32:00	https://wuzzuf.net/jobs/p/4daf31c3-9e5e-4d66-bb67-28eb312b0a7d-Software-Engineer-Elastic-Search-Developer-Paymob-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=1
356	259	110	Experienced	7+ Yrs of Exp	Work From Home ,Full Time	2020-11-08 14:43:00	https://wuzzuf.net/jobs/p/bfdddeb9-52df-4140-ba02-736e1a739615-IT-System-Analyst---Banking-Xceed-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
357	2321	191	Experienced	1-3 Yrs of Exp	Full Time	2020-11-08 14:54:00	https://wuzzuf.net/jobs/p/c60ada38-39b2-40ba-b1bc-dfbc203ad237-JavaScript-Developer-Paymob-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=13
358	2322	1599	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 14:20:00	https://wuzzuf.net/jobs/p/6ed61441-eb93-472f-a2d0-e781f9fe6e37-SFE-Specialist-Xeedia-Pharmaceuticals-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=28
359	1650	1598	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-08 14:17:00	https://wuzzuf.net/jobs/p/d4413354-3e25-4d1a-89bc-3d4aafb0aad8-Pre-Sales-Engineer-Mest-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=35
360	1619	726	Senior Management	15-20 Yrs of Exp	Full Time	2020-11-08 14:25:00	https://wuzzuf.net/jobs/p/f3b383e6-ce59-42c8-8074-4c369c3eeba7-Director-Of-Engineering---Agriculture-Machinery-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=38
364	2325	1603	Manager	6+ Yrs of Exp	Full Time	2020-11-08 15:30:00	https://wuzzuf.net/jobs/p/dfb057e4-c4ca-4625-8316-8c290439bded-Software-Technical-Lead-Principal-Software-Engineer-Coral-Technology-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
365	739	1178	Manager	3-5 Yrs of Exp	Full Time	2020-11-08 15:50:00	https://wuzzuf.net/jobs/p/66d480cf-b8a0-4714-a5b1-5230bbe4123e-Business-Development-Manager-TACC-Network-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=23
366	2326	191	Experienced	2-3 Yrs of Exp	Full Time	2020-11-08 15:54:00	https://wuzzuf.net/jobs/p/93428193-990e-403b-82cf-aad642ceb01d-Technical-Project-Manager-Paymob-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=27
367	2327	184	Experienced	4-8 Yrs of Exp	Full Time	2020-11-08 15:58:00	https://wuzzuf.net/jobs/p/b33c1925-4c0c-4176-823d-e012f0c4c1fb-Senior-Network-and-Security-Admin-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=28
368	2328	1602	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 15:20:00	https://wuzzuf.net/jobs/p/8a211f5e-8223-4934-8551-c77e6eeded95-Export-Coordinator-Marmonil-Marble-Granite-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=39
369	2329	1604	Manager	3+ Yrs of Exp	Full Time	2020-11-08 15:18:00	https://wuzzuf.net/jobs/p/dfa6324c-8d9d-4b08-aaa4-6959d7a42bb0-Plant-Manager-Grand-Plast-Qalubia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=47
370	124	304	Experienced	5-10 Yrs of Exp	Work From Home	2020-11-08 15:35:00	https://wuzzuf.net/jobs/p/85125fc4-f34e-44f7-b551-e2cd1af318ba-Senior-Graphic-Designer-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=50
377	147	608	Manager	5-10 Yrs of Exp	Full Time	2020-11-08 16:59:00	https://wuzzuf.net/jobs/p/de355fac-e509-4629-ba48-c1c35d461e27-Software-Development-Team-Leader-Korashi-Group-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
378	609	928	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-08 16:18:00	https://wuzzuf.net/jobs/p/92c5819b-7fa4-4387-b3ce-0edd218a9f23-Business-Development-Specialist-Talents-Arena-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=22
379	691	489	Experienced	3-5 Yrs of Exp	Full Time	2020-11-08 16:35:00	https://wuzzuf.net/jobs/p/aa21ef17-534d-4eb0-93a4-6d27e0d77248-Senior-Frontend-Developer-appcorp-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=23
383	1098	1297	Experienced	2+ Yrs of Exp	Full Time	2020-11-08 17:56:00	https://wuzzuf.net/jobs/p/fd411c99-a050-4f5b-8b65-cf1cc3067977-Technical-Writer-Paxerahealth-Corp-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=48
386	2343	325	Experienced	2+ Yrs of Exp	Full Time	2020-11-08 19:27:00	https://wuzzuf.net/jobs/p/261ae0b7-afc9-4acc-9d1f-ba48b5367d46-Senior-Full-Stack-Java-Developer-RDI-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=15
393	2345	434	Experienced	3-4 Yrs of Exp	Full Time ,Work From Home	2020-11-08 21:31:00	https://wuzzuf.net/jobs/p/f650580d-016b-4a4c-8833-98460800c06b-Content-Developer-The-Lean-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=33
394	2346	1570	Manager	3-5 Yrs of Exp	Full Time	2020-11-08 21:13:00	https://wuzzuf.net/jobs/p/a39a56a6-1778-4aa2-8e67-ab5c3614a439-PR---Internal-Communications-specialist-DYNINNO-Egypt-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=57
395	878	434	Experienced	3-4 Yrs of Exp	Full Time ,Work From Home	2020-11-08 21:38:00	https://wuzzuf.net/jobs/p/503f74bd-80b5-43c0-9bb4-509737083afa-Web-Designer-The-Lean-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=59
396	2347	784	Entry Level	1+ Yrs of Exp	Work From Home	2020-11-08 22:36:00	https://wuzzuf.net/jobs/p/85248a00-636a-43e4-a5f1-ed8ac09005ff-Website-Administrator---Project-Coordinator-Naqada-Music-Management-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=44
397	2348	125	Experienced		Full Time	2020-11-08 22:10:00	https://wuzzuf.net/jobs/p/559d0285-13f5-4a9c-a4e1-852d4981500e-Telemedicine---Telehealth-Specialist-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=45
398	2349	856	Entry Level	1-5 Yrs of Exp	Full Time	2020-11-08 23:27:00	https://wuzzuf.net/jobs/p/28684511-6449-4788-9b6a-aa9cc79834bc-3D-Max-Designer--Display-stand--booths-Stand-zone-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=49
399	42	485	Experienced	2-4 Yrs of Exp	Full Time	2020-11-08 23:50:00	https://wuzzuf.net/jobs/p/fd582146-56b5-466f-b086-87de51594f67-Application-Support-Engineer-infasme-com-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=67
400	2350	491	Experienced	3+ Yrs of Exp	Work From Home ,Part Time ,Full Time	2020-11-09 07:29:00	https://wuzzuf.net/jobs/p/2fb67617-b6a3-4c01-acff-f24cdf702a65-Senior-Front-End-Developer-Needed-Ziid-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=18
401	2352	1619	Experienced	5-7 Yrs of Exp	Full Time	2020-11-09 08:37:00	https://wuzzuf.net/jobs/p/95dd9fe2-1549-4507-9236-4b3083ec7c26-Sales-Panel-engineer-AL-TAWAKOL-For-Electrical-Industries--NTT-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=56
402	2	1620	Manager	3-5 Yrs of Exp	Full Time	2020-11-09 10:32:00	https://wuzzuf.net/jobs/p/31b6e4d0-7ad8-4f62-9581-7499b0885c8c-IT-Manager-Grand-Plast-Qalubia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=11
403	4	1622	Experienced	2-4 Yrs of Exp	Full Time	2020-11-09 10:10:00	https://wuzzuf.net/jobs/p/d54ab88d-ab6d-47eb-8b4d-01f479f8e461-IT-Technical-Support-Specialist-The-Egyptian-Company-For-Prestressed-Concrete-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=6
404	2356	1623	Experienced	2+ Yrs of Exp	Full Time	2020-11-09 09:12:00	https://wuzzuf.net/jobs/p/8cdce1ef-774d-445a-a4ce-eaad03f7990e-Iphone-Technician---UAE-Sharjah-United-Arab-Emirates?l=bp&t=bj&a=IT-Software-Development&o=36
405	2357	1176	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-09 11:38:00	https://wuzzuf.net/jobs/p/17a40ad7-4130-4840-8446-9a959e75a05a-iOS-developer-apps-square-Gharbia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=13
406	2358	1463	Experienced	5-10 Yrs of Exp	Full Time	2020-11-09 11:32:00	https://wuzzuf.net/jobs/p/2b95cfad-de81-4f9a-b5ab-f7ea15c1f88c-Web-Designer-E-commerce-CNS-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=43
407	334	77	Manager	6+ Yrs of Exp	Full Time	2020-11-09 11:42:00	https://wuzzuf.net/jobs/p/df643d83-1d65-4eaf-a57a-c566454f8b63-QC-Team-Lead-Engineer---Software-Testing-Excel-Systems-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
408	2360	1626	Manager	2+ Yrs of Exp	Full Time	2020-11-09 11:03:00	https://wuzzuf.net/jobs/p/e8a24779-a938-4360-8a3f-0a926fc148ae-Product-Manager---Womens-Healthcare-dkt-Egypt-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=44
409	883	1627	Manager	5-10 Yrs of Exp	Full Time	2020-11-09 11:26:00	https://wuzzuf.net/jobs/p/cd67b611-eced-4ee7-aca3-57a26d76f94a-Office-Manager-Alouf-Travel-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=46
410	2361	1469	Experienced	3-10 Yrs of Exp	Part Time	2020-11-09 11:45:00	https://wuzzuf.net/jobs/p/e8b0fa00-1748-4c93-9720-28cb81b0c1e7-Odoo-Implementation-Consultant--Part-Time--YDS-yasar-digital-services-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=50
411	48	14	Experienced	2-4 Yrs of Exp	Full Time	2020-11-09 12:54:00	https://wuzzuf.net/jobs/p/2d021180-b903-4053-87a4-d1600ba5d2b2-Software-Quality-Control-Engineer-Softxpert-Incorporation-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=7
412	337	400	Experienced	2-6 Yrs of Exp	Full Time	2020-11-09 12:23:00	https://wuzzuf.net/jobs/p/2c49136e-baf6-4962-9b0f-bf6659ea8b84-Senior-Java-Developer-Media-Sci-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=18
413	332	1632	Experienced	3+ Yrs of Exp	Full Time	2020-11-09 12:40:00	https://wuzzuf.net/jobs/p/61efbf89-4497-46de-9237-b2fb42bc3332-Senior-iOS-Developer-Your-Parts-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=26
414	2364	1634	Experienced	5+ Yrs of Exp	Full Time ,Work From Home	2020-11-09 12:29:00	https://wuzzuf.net/jobs/p/dcaa23f3-23c4-4cb1-87e0-f7e6c5b34497-Senior-PHP-Developer-From-Home-Optional-Izam-inc-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=28
415	2365	137	Experienced	2+ Yrs of Exp	Full Time	2020-11-09 12:15:00	https://wuzzuf.net/jobs/p/f0ed12a0-e884-49f4-86ba-c5ad0dc5b63d-GoLang-Developer-Flairstech-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=30
416	654	1635	Experienced	4-7 Yrs of Exp	Full Time	2020-11-09 12:35:00	https://wuzzuf.net/jobs/p/69a07e73-fb2a-4f53-b703-bce7ce40891e-Business-Development-Executive-Innovinity-Medical-Hub-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=35
417	2366	1636	Experienced	3+ Yrs of Exp	Full Time ,Work From Home	2020-11-09 12:46:00	https://wuzzuf.net/jobs/p/91e6e796-23ea-4d12-8c3d-dcf7c8ec2255-Oracle-Sales-Consultant-Hits-Consulting-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=44
418	1	194	Experienced	2-3 Yrs of Exp	Full Time	2020-11-09 13:54:00	https://wuzzuf.net/jobs/p/24fb0f28-ff21-4af1-a7e5-5cee41ee0122-IT-Specialist-La-Verde-Real-Estate-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=6
419	394	369	Experienced	4+ Yrs of Exp	Full Time	2020-11-09 13:27:00	https://wuzzuf.net/jobs/p/12ab4f02-73c0-4e8e-866a-9bc07776567d-Senior-MVC--NET-Developer-NAOS-Marketing-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=16
420	1	1598	Experienced	1-3 Yrs of Exp	Full Time	2020-11-09 13:53:00	https://wuzzuf.net/jobs/p/46ec3c9d-0b2d-4db2-b7da-0ecd9fae491a-IT-Specialist-Mest-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=18
421	2369	174	Experienced	3+ Yrs of Exp	Full Time	2020-11-09 13:13:00	https://wuzzuf.net/jobs/p/052b3e89-69f2-4892-b431-8e8cf87b7ab9-Senior-Q-C-Software-Tester-AlQemam-For-Programming-Dakahlia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=27
422	206	1440	Entry Level	0-2 Yrs of Exp	Full Time	2020-11-09 13:21:00	https://wuzzuf.net/jobs/p/502eef5d-91d8-435b-9374-f1fa42ed8644-Java-Developer-Aman-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=35
423	479	1639	Experienced	2-2 Yrs of Exp	Full Time	2020-11-09 13:48:00	https://wuzzuf.net/jobs/p/d05d4e55-7b8d-4b78-a0d4-d1ef5d4840cd-Front-End-Developer-Affsquare-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=36
424	2370	658	Manager	5-7 Yrs of Exp	Full Time	2020-11-09 13:42:00	https://wuzzuf.net/jobs/p/a975680a-7591-41a7-9200-43a712a777a7-Microsoft-Dynamics-AX-Functional-Team-Lead-CompactSoft-International-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=67
425	2374	1643	Experienced	3-7 Yrs of Exp	Full Time	2020-11-09 14:25:00	https://wuzzuf.net/jobs/p/459f1cbc-665b-4b2b-aa1e-42a9784dfecb-IT-Technical-Sales-Representative-Soulco-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=12
426	501	77	Experienced	4-6 Yrs of Exp	Full Time	2020-11-09 14:37:00	https://wuzzuf.net/jobs/p/4405a5a7-d395-402f-afe9-b8bbf0c2591c-Senior--NET-Full-Stack-Developer-Excel-Systems-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=18
427	2375	174	Experienced	2+ Yrs of Exp	Full Time	2020-11-09 14:59:00	https://wuzzuf.net/jobs/p/2af4def4-70cb-41a0-9f2e-e141b2ec38f8-iOS-Mobile-Developer---Mansoura-AlQemam-For-Programming-Dakahlia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=19
428	2376	1644	Experienced	3-5 Yrs of Exp	Full Time	2020-11-09 14:56:00	https://wuzzuf.net/jobs/p/30370f95-226f-4a37-982e-d649b31a0b0f-Quality-Control-Specialist-Shawkat-Stone-for-Marble-and-Granite-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=61
429	1988	1360	Manager	7+ Yrs of Exp	Full Time	2020-11-09 14:21:00	https://wuzzuf.net/jobs/p/e7c17087-2743-4dc5-8728-6c2751431118-Tech-Lead-Software-Manager-La-Casa-Code-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
430	2379	1639	Experienced	2-2 Yrs of Exp	Full Time	2020-11-09 14:40:00	https://wuzzuf.net/jobs/p/93d31051-f063-4993-9423-013dc13553db-Back-end-developer-Affsquare-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=33
431	1852	368	Entry Level	2-2 Yrs of Exp	Full Time	2020-11-09 14:58:00	https://wuzzuf.net/jobs/p/87009e7b-321f-4b6b-9f68-c0fef120c330-Full-Stack-WordPress-Web-Developer-Upper-Medic-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=35
432	508	382	Experienced	3-5 Yrs of Exp	Full Time	2020-11-09 14:49:00	https://wuzzuf.net/jobs/p/ec471455-64ce-42a0-b1ac-00c172767588-IOS-Developer-DGTERA-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=39
433	866	110	Experienced	5+ Yrs of Exp	Full Time ,Work From Home	2020-11-09 14:34:00	https://wuzzuf.net/jobs/p/feb259f8-fb04-43dd-907d-e0d67a185bb5-QA-Automation-Engineer-Xceed-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=47
434	2380	33	Manager	4-7 Yrs of Exp	Full Time	2020-11-09 14:15:00	https://wuzzuf.net/jobs/p/85764308-c0d1-4412-af28-371bbb812dbb-Xamarin-Team-Leader-Andalusia-Group-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=48
435	2381	262	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-09 14:27:00	https://wuzzuf.net/jobs/p/92b571f8-3c62-4f82-8e9c-a53b8a4baaa9-Junior-R-D-Engineer-3Brothers-Sharqia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=54
436	1818	1643	Experienced	5-10 Yrs of Exp	Full Time	2020-11-09 14:43:00	https://wuzzuf.net/jobs/p/fbfbdfec-352c-4a42-adf5-214692b3cbd0-Senior-Sales-Engineer-Soulco-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=61
437	2382	1646	Manager	4-6 Yrs of Exp	Full Time	2020-11-09 14:17:00	https://wuzzuf.net/jobs/p/a9b931a9-3de8-43f7-8bbb-4026949ad1c0-Telesales-Team-LeaderReal-Estate-MG-Developments-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=62
438	2383	1643	Experienced	3-7 Yrs of Exp	Full Time	2020-11-09 14:38:00	https://wuzzuf.net/jobs/p/8f2b0263-96ae-4ec1-ad45-edf1c417d477-Communication-Technical-Sales-Representative-Soulco-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=76
439	682	1651	Experienced	3-5 Yrs of Exp	Full Time	2020-11-09 15:51:00	https://wuzzuf.net/jobs/p/1ed99cd2-41b2-47b9-ac8f-d0a22be4a5b4-Front-End-Developer-React-Yalla-Fel-Sekka-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=30
440	2388	329	Experienced	4-6 Yrs of Exp	Full Time	2020-11-09 15:00:00	https://wuzzuf.net/jobs/p/0c63c7c4-e91f-419c-98ef-08b52672bfdd-NopCommerce-Web-Application-Support-Engineer-Crystal-Mind-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=43
441	2389	476	Experienced	8-10 Yrs of Exp	Full Time	2020-11-09 15:50:00	https://wuzzuf.net/jobs/p/07d6267f-d8b1-466e-9d0e-5539071571e6-Technical-Team-Lead--NET-Neom-Tech-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=47
442	2390	190	Manager	5-10 Yrs of Exp	Full Time	2020-11-09 15:01:00	https://wuzzuf.net/jobs/p/25c2a7cd-6894-4a1b-bce1-962b60e35474-Customer-Experience-Manager-Nana-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=62
443	2391	1632	Experienced	3+ Yrs of Exp	Full Time	2020-11-09 15:57:00	https://wuzzuf.net/jobs/p/93e48e9f-13f2-484e-8f07-03a55473ceae-Senior-React-Frontend-Developer-Your-Parts-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=24
444	45	1652	Experienced	2-4 Yrs of Exp	Full Time	2020-11-09 15:43:00	https://wuzzuf.net/jobs/p/5c3ce7a5-53d1-40bd-8ad1-b464ccff8576-Android-Developer-Transcesion-VC-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
445	2392	1653	Experienced	2-5 Yrs of Exp	Full Time	2020-11-09 15:26:00	https://wuzzuf.net/jobs/p/7caf74d1-4d48-4e02-a3d5-9818cd092c9a-Sr--DevOps-Engineer-Fixed-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=46
446	2393	898	Experienced	3-6 Yrs of Exp	Full Time	2020-11-09 15:02:00	https://wuzzuf.net/jobs/p/af9ab9cf-c733-4879-9fe8-a3dddd664f14-Payable-Accountant---New-Cairo--Safwa-Urban-Development-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=60
447	2394	919	Experienced	3-5 Yrs of Exp	Full Time	2020-11-09 15:45:00	https://wuzzuf.net/jobs/p/cd5c736e-0b1f-4b97-b61b-407857bd3b28-Mechanical-Engineer-Chema-Foam-Sharqia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=67
448	479	1656	Experienced	3-5 Yrs of Exp	Work From Home ,Full Time	2020-11-09 16:13:00	https://wuzzuf.net/jobs/p/59563c29-c583-4ade-ae2e-9530cf602677-Front-End-Developer-Irithm-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=35
449	2398	137	Experienced	2+ Yrs of Exp	Full Time	2020-11-09 16:05:00	https://wuzzuf.net/jobs/p/a8aeb46b-8a77-41d6-b7cb-5705fa70a1b1-Salesforce-Developer---Admin-Flairstech-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=38
450	2399	184	Experienced	5+ Yrs of Exp	Full Time	2020-11-09 16:18:00	https://wuzzuf.net/jobs/p/ca0acc51-2d09-40c9-b885-b30a8e52bb5f-Application-Support-Specialist–-Sales-Buzz-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=47
451	2400	404	Experienced	3+ Yrs of Exp	Full Time	2020-11-09 16:52:00	https://wuzzuf.net/jobs/p/90daf204-feff-4255-a319-a533f7021455-Manual-Quality-Analyst-Cegedim-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=58
452	870	1657	Entry Level	1+ Yrs of Exp	Full Time	2020-11-09 17:01:00	https://wuzzuf.net/jobs/p/2c7fb5ca-b62b-44e3-b597-23932b5e9a9f-Technical-Support-Engineer-Paymob-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=43
453	2402	1658	Senior Management	3-10 Yrs of Exp	Full Time ,Work From Home	2020-11-09 17:18:00	https://wuzzuf.net/jobs/p/5996ffd3-ec13-4092-b970-01476088e9ca-Full-Stack-Software-Developer-Fruitful-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
454	2403	333	Experienced	3-5 Yrs of Exp	Full Time	2020-11-09 17:33:00	https://wuzzuf.net/jobs/p/938e6889-80f3-4a8f-814c-c46c31f3a7dc-Android-Software-Engineer-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=6
455	333	1632	Experienced	3+ Yrs of Exp	Full Time	2020-11-09 17:16:00	https://wuzzuf.net/jobs/p/d1ca8d0b-0892-4f15-8ee2-42c5b4333649-Senior-Software-Testing-Engineer-Your-Parts-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=7
456	379	333	Experienced	3-5 Yrs of Exp	Full Time	2020-11-09 17:32:00	https://wuzzuf.net/jobs/p/e0562503-f65b-4d21-9f7b-7b25a72ebef8-Senior-Full-Stack-Developer-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=25
457	2404	1659	Experienced	2-5 Yrs of Exp	Full Time	2020-11-09 17:31:00	https://wuzzuf.net/jobs/p/5d82023f-08eb-475b-8a52-141256eaae00-QA-Process-Improvement-Engineer-Fixed-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=57
458	430	1660	Experienced	3+ Yrs of Exp	Full Time	2020-11-09 18:09:00	https://wuzzuf.net/jobs/p/441b688a-6be0-4eb3-8491-f37a2ff94481-Back-End-Developer-JOE13-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=25
459	479	1656	Experienced	3-5 Yrs of Exp	Full Time ,Work From Home	2020-11-09 14:42:00	https://wuzzuf.net/jobs/p/59563c29-c583-4ade-ae2e-9530cf602677-Front-End-Developer-Irithm-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=36
460	124	1660	Experienced	4+ Yrs of Exp	Full Time	2020-11-09 18:04:00	https://wuzzuf.net/jobs/p/54d9dd05-def1-4668-8d6c-e2b93d5b529f-Senior-Graphic-Designer-JOE13-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=67
461	2405	1661	Experienced	3-5 Yrs of Exp	Full Time	2020-11-09 18:22:00	https://wuzzuf.net/jobs/p/f5db05f9-548c-4b2f-92bc-57d092aa9e93-Programmer-Application-Developer-Server-Store-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=12
462	2013	60	Experienced	7+ Yrs of Exp	Full Time	2020-11-09 18:51:00	https://wuzzuf.net/jobs/p/6d52e97d-d62f-403a-9291-836af6f4865c-Executive-Secretary-to-Chairman---Alexandria-Paradise-Inn-Hotels-Resorts-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=67
463	2406	1662	Experienced	3-5 Yrs of Exp	Full Time	2020-11-09 18:14:00	https://wuzzuf.net/jobs/p/d803f71c-848d-4c86-9d86-199765f58f6c-Senior-Roaming-Specialist-WEData-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=78
464	2407	482	Experienced	4-7 Yrs of Exp	Full Time	2020-11-09 19:26:00	https://wuzzuf.net/jobs/p/08826362-e030-4153-b028-d16a70fe2d31-Online---Inside-Sales-Executive-Appgain-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=55
465	97	60	Experienced	7+ Yrs of Exp	Full Time	2020-11-09 19:13:00	https://wuzzuf.net/jobs/p/8defa74b-18cd-4b04-a4e3-bd0cfa5e5867-Personal-Assistant-to-Chairman---Alexandria-Paradise-Inn-Hotels-Resorts-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=63
466	2408	1325	Experienced	3+ Yrs of Exp	Work From Home	2020-11-09 20:44:00	https://wuzzuf.net/jobs/p/883d02b4-f22f-4955-8f7d-16c5d2857253-WHMCS-and-PHP-Expert-ServerHub-Dallas-United-States?l=bp&t=bj&a=IT-Software-Development&o=70
467	2410	1663	Experienced	7+ Yrs of Exp	Full Time	2020-11-09 22:46:00	https://wuzzuf.net/jobs/p/d881a759-57d9-4190-b507-ba8cdd89d97e-3D-Interior-Designer--Visualizer-AEG-Design-Construction-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=58
468	801	1665	Entry Level	2-5 Yrs of Exp	Full Time	2020-11-10 05:17:00	https://wuzzuf.net/jobs/p/8d68045f-28c3-421e-8e3f-bab324b97d4e-Presales-Engineer-H-Touch-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=72
469	2412	261	Manager	5-7 Yrs of Exp	Full Time	2020-11-10 09:30:00	https://wuzzuf.net/jobs/p/da2b3f50-999c-44ba-a0d6-a6e44cf33b1b-Tooling-Design-Section-Head---Sharqia-Ahram-Security-Group-Sharqia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=54
470	383	279	Experienced	8-10 Yrs of Exp	Full Time	2020-11-10 10:44:00	https://wuzzuf.net/jobs/p/1b8f49bf-4d85-4c5c-ad33-7ce1d623e00f-Senior-Integration--NET-Developer-Rasan-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=14
471	315	291	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 10:01:00	https://wuzzuf.net/jobs/p/1f176e0e-4c4d-4dcd-b3d1-1461602a2def-Senior-ERP-Software-Tester-Automation-Microtech-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=7
472	394	364	Experienced	4-8 Yrs of Exp	Full Time	2020-11-10 10:43:00	https://wuzzuf.net/jobs/p/3c14d497-4b7a-467c-b3fe-61c51fd13d50-Senior-MVC--NET-Developer-Rasan-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=16
473	667	445	Experienced	5-7 Yrs of Exp	Full Time	2020-11-10 10:48:00	https://wuzzuf.net/jobs/p/718ad99c-f4f0-490f-90c0-f328555e35cb-Senior-PHP-Developer-Laravel-SURE-International-Technology-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=29
474	1575	184	Experienced	4-8 Yrs of Exp	Full Time	2020-11-10 10:20:00	https://wuzzuf.net/jobs/p/7e6d3401-5b54-4512-aaba-175251ff09fd-Project-Management-Specialist-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=48
475	224	333	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 10:36:00	https://wuzzuf.net/jobs/p/ec480107-88a5-422d-95e8-c922b63c3bac-IT-Help-Desk-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=3
476	649	291	Experienced	5-7 Yrs of Exp	Full Time	2020-11-10 10:00:00	https://wuzzuf.net/jobs/p/f9c9132c-4f67-48b6-bc2d-85728861f22a-Senior-ASP-Net-Developer-Microtech-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=29
477	2414	245	Manager	5-7 Yrs of Exp	Full Time	2020-11-10 11:46:00	https://wuzzuf.net/jobs/p/e88ea363-c2e9-4e45-ac53-fa43f3344ffd-IT-Operations-Team-Leader-Union-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=6
478	2415	404	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 11:25:00	https://wuzzuf.net/jobs/p/6cdc7688-7faf-4356-93b1-4e2960439783-Infrastructure-Automation-Developer-Cegedim-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=34
479	1183	858	Experienced	4-7 Yrs of Exp	Full Time	2020-11-10 11:52:00	https://wuzzuf.net/jobs/p/ca0a0fc6-3b83-4772-8471-fc0b1019dc3b-Senior-Electrical-Engineer-Monufya-Egypt?l=bp&t=bj&a=IT-Software-Development&o=54
480	969	1667	Experienced	2-15 Yrs of Exp	Full Time	2020-11-10 11:42:00	https://wuzzuf.net/jobs/p/dfda5653-5e19-41c4-be28-a653726e220a-Sales-Account-Manager-BETA-MEA-Integrated-Solutions-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=63
481	1889	1668	Manager	5+ Yrs of Exp	Full Time	2020-11-10 11:19:00	https://wuzzuf.net/jobs/p/bb31a54d-eaf5-4235-b582-f5738920589d-Farm-Manager-Orientals-for-Urban-Development-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=75
482	2422	1671	Entry Level	0-1 Yrs of Exp	Full Time ,Work From Home	2020-11-10 12:50:00	https://wuzzuf.net/jobs/p/589a6468-c44f-4de6-bf35-ab430c2fd9b7-IT-Help-Desk-Representative-Xceed-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
483	45	684	Experienced	2-4 Yrs of Exp	Full Time	2020-11-10 12:53:00	https://wuzzuf.net/jobs/p/d613ed41-5da6-4053-8f2a-8ec7ac90d435-Android-Developer-BrandMark---Marketing-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=32
484	2423	1672	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-10 12:24:00	https://wuzzuf.net/jobs/p/45c57ce7-36a9-4e21-b3fb-7084f48d0b69-HR-Officer--Alex-Branch-Ibn-Sina-Pharma-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=54
485	969	1667	Experienced	2-15 Yrs of Exp	Full Time	2020-11-09 17:19:00	https://wuzzuf.net/jobs/p/dfda5653-5e19-41c4-be28-a653726e220a-Sales-Account-Manager-BETA-MEA-Integrated-Solutions-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=58
486	2148	61	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 12:51:00	https://wuzzuf.net/jobs/p/72b7b030-fefe-4bd6-9029-3f6867ef4f97-Senior-HR-Generalist-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=63
487	2424	770	Manager	10-15 Yrs of Exp	Full Time	2020-11-10 12:10:00	https://wuzzuf.net/jobs/p/e34d7003-d9c9-4438-928e-5ae97ad735be-Retail-Training-Manager---Non-Food-Business-40-Shops-Across-Egypt--Raneen-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=71
488	2425	1673	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 12:43:00	https://wuzzuf.net/jobs/p/47cbafc3-f05b-4928-b9e9-1ac26d597060-Technical-Engineer-Firmware-Upgrade---CDCN-Provisioning-SKY-Services-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=73
489	2429	1674	Experienced	2-5 Yrs of Exp	Full Time	2020-11-10 13:00:00	https://wuzzuf.net/jobs/p/1d484c32-313d-4d3d-80d3-3f10ed77420b-JD-Edwards-Technical-Consultant-MigrationIT-com-Gharbia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=31
490	2430	85	Experienced	2+ Yrs of Exp	Full Time	2020-11-10 13:11:00	https://wuzzuf.net/jobs/p/98c8c9b7-4d6f-48a1-860d-239a9b1f11a1-Software-Presales-Engineer---Cairo-Interact-Technology-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
491	2431	1675	Experienced	3-4 Yrs of Exp	Freelance / Project	2020-11-10 13:06:00	https://wuzzuf.net/jobs/p/27c6a927-3248-4cca-8f1f-dbc24ab82e79-iOS-Android-Developer-Freelance-Startup-Manager-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=31
492	2432	1674	Experienced	5-10 Yrs of Exp	Full Time	2020-11-10 13:04:00	https://wuzzuf.net/jobs/p/926b4202-e17f-49f8-8a6c-d185cfd7b7b3-JD-Edwards-Functional-Consultant-MigrationIT-com-Gharbia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=43
493	124	1676	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 13:17:00	https://wuzzuf.net/jobs/p/bee58a39-adac-4dc9-b649-ff2865777e9f-Senior-Graphic-Designer-Qawafil-For-Real-Estate-Investment-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=45
494	23	18	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 13:49:00	https://wuzzuf.net/jobs/p/ab6db610-3398-4b4d-8d67-2348b3967fbf-Magneto-Site-Administrator-Blink-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=58
495	1836	1037	Experienced	3-6 Yrs of Exp	Full Time	2020-11-10 13:47:00	https://wuzzuf.net/jobs/p/9c97f348-56a0-457d-88d1-b6fff5c18060-Property-Consultant-M²-Developments-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=67
496	1573	1111	Experienced	2-5 Yrs of Exp	Full Time	2020-11-10 14:39:00	https://wuzzuf.net/jobs/p/10914d29-3693-4d10-a90c-ed9ade1c62a0-Senior-Financial-Planning---Analyst-Fresenius-Medical-Care-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=53
497	207	304	Entry Level	0-2 Yrs of Exp	Full Time	2020-11-10 14:13:00	https://wuzzuf.net/jobs/p/d6fa217d-c77b-4300-9706-ba532288c839-Software-Sales-Specialist-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=5
498	379	1678	Experienced	3-6 Yrs of Exp	Full Time	2020-11-10 14:41:00	https://wuzzuf.net/jobs/p/676a90e4-92a1-427f-8c49-6b06a2d4330f-Senior-Full-Stack-Developer-Floortec-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=13
499	1397	829	Manager	7-15 Yrs of Exp	Full Time	2020-11-10 14:30:00	https://wuzzuf.net/jobs/p/a3db6022-d084-4658-8543-a2cb6595fde9-Strategic-Programs-Team-Manager-WUZZUF-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=51
500	2443	316	Experienced	10-12 Yrs of Exp	Full Time	2020-11-10 15:26:00	https://wuzzuf.net/jobs/p/42bba70d-3735-4652-abca-804b12a8aaf6-IT-Assistant-Manager-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
501	2444	1685	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-10 15:44:00	https://wuzzuf.net/jobs/p/39a68f94-611c-4a07-9cba-a79c172fc438-Junior-Technical-Support-Engineer---Upper-Egypt-MigrationIT-com-Assiut-Egypt?l=bp&t=bj&a=IT-Software-Development&o=26
502	870	455	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-10 15:06:00	https://wuzzuf.net/jobs/p/456264a5-646e-4f8b-ab3f-7100a10dc268-Technical-Support-Engineer-ARPUPLUS-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=31
503	1314	954	Experienced	2+ Yrs of Exp	Full Time	2020-11-10 15:10:00	https://wuzzuf.net/jobs/p/de2461af-375c-42be-b280-1a9599fc49f3-Foreign-Purchasing-Executive-Blend-Furniture-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
504	2445	1686	Entry Level		Part Time	2020-11-10 15:07:00	https://wuzzuf.net/jobs/p/a5798ad6-8a40-43d2-a350-788f101d1b95-Back-from-School-German-Teacher-Leap-Development-Hub-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=50
505	2448	1344	Experienced	2-4 Yrs of Exp	Full Time	2020-11-10 16:02:00	https://wuzzuf.net/jobs/p/2299d9d2-031e-47d0-a2ca-b32054cfc9fa-Javascript-Back-End-Developer---Dokki-BAWQ-TELECOMM-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=18
506	2449	1651	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 16:00:00	https://wuzzuf.net/jobs/p/21493677-f8f8-491c-ab0f-77219ce9998f-Backend-Developer-Node-Js-Yalla-Fel-Sekka-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=23
507	2450	1690	Experienced	3+ Yrs of Exp	Full Time	2020-11-10 16:15:00	https://wuzzuf.net/jobs/p/10fb030d-8013-44c4-8d38-239d274a7bf0-Marketing-Accounts-Manager-korAddiction-Sports-Development-Entertainment-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=53
508	2451	672	Experienced	5+ Yrs of Exp	Full Time	2020-11-10 16:22:00	https://wuzzuf.net/jobs/p/4e3fc1bb-717e-4554-bad6-7705992cf647-Senior-Software-Automation-Tester---Cairo-Naqla-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=8
509	2452	1691	Entry Level	2+ Yrs of Exp	Full Time	2020-11-10 16:42:00	https://wuzzuf.net/jobs/p/fe921cda-a358-4db4-bf3f-73fbdaec78cf-Junior-Mean-Stack-Developer-ReNile-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=21
510	2453	1651	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 16:41:00	https://wuzzuf.net/jobs/p/3895c667-614d-4933-9a82-2297d30a275a-Full-Stack-Developer-Mern-Stack-Yalla-Fel-Sekka-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=26
511	2456	264	Experienced	3-10 Yrs of Exp	Full Time	2020-11-10 17:54:00	https://wuzzuf.net/jobs/p/054e0dbc-39e9-4884-b63b-f37293914f9b-Senior-Front-End-Developer-React-JS-Safa-Soft-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=25
512	909	584	Experienced	3-6 Yrs of Exp	Full Time	2020-11-10 17:56:00	https://wuzzuf.net/jobs/p/8986e948-c92d-4899-958f-4c1725455e8e-Senior-Back-End-Engineer-Radivision-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=26
513	802	321	Entry Level	2-5 Yrs of Exp	Full Time	2020-11-10 17:04:00	https://wuzzuf.net/jobs/p/6ec5a527-c418-4e16-985d-bf9824c61193-Scrum-Master-Eduapps-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=29
514	2457	1693	Experienced	1-3 Yrs of Exp	Part Time	2020-11-10 17:53:00	https://wuzzuf.net/jobs/p/380783fc-59a3-4ed3-80d4-526134565db4-Blockchain-Instructor-EPSILON-TRAINING-CENTER-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=51
515	2458	1693	Experienced	3-5 Yrs of Exp	Part Time	2020-11-10 17:44:00	https://wuzzuf.net/jobs/p/2a88ec85-d57d-4ae1-8d02-f71d63452b73-Business-Intelligence-Instructor-Power-BI---Tableau---Excel-EPSILON-TRAINING-CENTER-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=55
516	2461	106	Experienced	4-9 Yrs of Exp	Full Time	2020-11-10 18:50:00	https://wuzzuf.net/jobs/p/b74d2c4c-4fec-4810-a379-0eccf915f0d5-odoo-Techno-Functional-Pefect-Presentation-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=46
517	1788	1695	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-10 19:05:00	https://wuzzuf.net/jobs/p/c97dcd82-0b37-459d-b032-cbcf5ce62e93-Executive-Secretary-Serious-construction-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
518	288	1696	Experienced	3+ Yrs of Exp	Full Time	2020-11-10 21:38:00	https://wuzzuf.net/jobs/p/196c2353-cbfd-4b4c-a330-10a6942503e8-IT-Help-Desk-Specialist---Damietta-MTS-Damietta-Egypt?l=bp&t=bj&a=IT-Software-Development&o=5
519	404	333	Experienced	2+ Yrs of Exp	Full Time	2020-11-10 21:59:00	https://wuzzuf.net/jobs/p/12729b9f-2e1b-4593-993a-ca411c93b02d-Opencart-Developer-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=23
520	2463	1697	Experienced	4-8 Yrs of Exp	Full Time	2020-11-10 21:21:00	https://wuzzuf.net/jobs/p/0fefc102-cc08-4a39-bfe9-7161b5cb0d65-Office-Manager---HR-Admin-WRIGHT-PLAN-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=47
521	2464	333	Experienced	3-5 Yrs of Exp	Full Time	2020-11-10 21:35:00	https://wuzzuf.net/jobs/p/a6da14eb-c972-4175-abb2-19b3a9707015-IOS-Software-Engineer-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=6
522	2465	1696	Experienced	3+ Yrs of Exp	Full Time	2020-11-10 21:29:00	https://wuzzuf.net/jobs/p/2f00b154-ecce-41ca-80b7-68843bf98215-Network-and-Security-Administrator---Damietta-MTS-Damietta-Egypt?l=bp&t=bj&a=IT-Software-Development&o=55
523	289	1698	Experienced	3+ Yrs of Exp	Full Time	2020-11-10 21:46:00	https://wuzzuf.net/jobs/p/ede2a83f-6c65-4013-af62-ebbd36ae5b6a-IT-Help-Desk-Specialist---Suez-MTS-Suez-Egypt?l=bp&t=bj&a=IT-Software-Development&o=7
524	2466	1325	Experienced	3+ Yrs of Exp	Work From Home ,Full Time	2020-11-10 22:15:00	https://wuzzuf.net/jobs/p/e464acc3-ad14-4974-99b4-5509eb2912df-Linux-Administrator---Remote-ServerHub-Dallas-United-States?l=bp&t=bj&a=IT-Software-Development&o=57
525	519	210	Experienced	3-10 Yrs of Exp	Freelance / Project	2020-11-11 00:02:00	https://wuzzuf.net/jobs/p/5cbaebd5-37c6-4e82-9d17-9f89c22e3648-Senior-Php-Developer-Enwan-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=24
526	2467	1700	Experienced	3-5 Yrs of Exp	Full Time	2020-11-11 00:29:00	https://wuzzuf.net/jobs/p/c9ba47b7-8ffe-45b5-83ae-4a5f6a0d4f33-Odoo-ERP-System-Administrator-Bingo-Global-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=48
527	224	184	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-11 09:15:00	https://wuzzuf.net/jobs/p/db6df47b-9346-4165-ba4d-0e5ce75c7ba4-IT-Help-Desk-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=4
528	110	1701	Experienced	2-5 Yrs of Exp	Full Time	2020-11-11 09:31:00	https://wuzzuf.net/jobs/p/87eea34a-c9fa-4202-ab0c-c0ecadd9bcbb-Store-Keeper-NMDC-Port-Said-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
529	2468	264	Experienced	3+ Yrs of Exp	Full Time	2020-11-11 10:16:00	https://wuzzuf.net/jobs/p/05d9d583-39a8-4bac-a9f2-ce9c1e6ae4c3-Mobile-Developer--Android-Watch--Safa-Soft-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=22
530	2469	380	Experienced	5-7 Yrs of Exp	Full Time	2020-11-11 10:19:00	https://wuzzuf.net/jobs/p/85fb1abb-82dd-4b64-aefa-bc65e91aa33d-Telecom---Solution-Engineer-Alkan-CIT-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=24
531	2470	436	Experienced	2+ Yrs of Exp	Full Time	2020-11-11 10:05:00	https://wuzzuf.net/jobs/p/95078ef3-7953-466b-8120-a83a3943ec3e-ERP-Business-Consultant---HR-Consultant-Dynamicslink-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=25
532	919	1702	Experienced	2+ Yrs of Exp	Full Time	2020-11-11 10:33:00	https://wuzzuf.net/jobs/p/140c0731-c25f-4e59-9f89-e2600620db3b-Systems-Engineer-MisrTech-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=32
533	2471	1702	Experienced	3+ Yrs of Exp	Full Time	2020-11-11 10:22:00	https://wuzzuf.net/jobs/p/19fb7db9-bfe0-4283-903a-0ebc1652cf74-Pre-Sales-Engineer---Network---Security-MisrTech-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
534	2472	1703	Experienced	10+ Yrs of Exp	Full Time	2020-11-11 10:58:00	https://wuzzuf.net/jobs/p/624cb8fd-8a76-4ab9-9c4d-4490ec1a35e2-CNC-Programming-Engineer-AACMI-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=43
535	2476	112	Experienced	6-8 Yrs of Exp	Full Time	2020-11-11 11:07:00	https://wuzzuf.net/jobs/p/37d22769-7d37-4f2f-bd20-ce87cb8a6491-Senior-MEAN-Stack-Developer-GET-Group--Egypt-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=12
536	80	343	Experienced	5+ Yrs of Exp	Full Time	2020-11-11 11:28:00	https://wuzzuf.net/jobs/p/51e57a1f-52ad-4053-80f7-dbf3ca11441f-Senior--Net-Developer-Paxerahealth-Corp-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=17
537	2477	1708	Experienced	3-4 Yrs of Exp	Full Time	2020-11-11 11:58:00	https://wuzzuf.net/jobs/p/39a4e285-0656-4c73-9492-324cdb051fca-iOS-Android-Developer---Fulltime-Startup-Manager-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=21
538	2478	1709	Manager	10+ Yrs of Exp	Full Time	2020-11-11 11:46:00	https://wuzzuf.net/jobs/p/d8abbc28-99f0-4a99-ba35-12fb73b8bd2d-Head-of-Information-Technology-AACMI-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=28
539	2479	585	Experienced	2-3 Yrs of Exp	Full Time	2020-11-11 11:34:00	https://wuzzuf.net/jobs/p/9f260b3f-21cd-48e0-9660-9ce42a1e7ce9-Oracle-HCM-cloud-techno-functional-Consultant-Ghassan-Ahmed-Alsulaiman-for-Electronic-Services-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=38
540	753	1710	Experienced	2-5 Yrs of Exp	Full Time	2020-11-11 11:17:00	https://wuzzuf.net/jobs/p/f08b904d-703f-484d-b242-4e7c02607ee6-HR-Generalist-Pannelli-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=50
541	2480	142	Experienced	5+ Yrs of Exp	Full Time	2020-11-11 09:55:00	https://wuzzuf.net/jobs/p/8d80feee-f4cb-43b5-b730-2cbb00d82fca-Telecom---Proposal-Engineer-Alkan-CIT-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=56
542	811	1715	Experienced	2-5 Yrs of Exp	Full Time	2020-11-11 12:43:00	https://wuzzuf.net/jobs/p/09f7bf2e-61ce-4d4d-ba31-37b8db455656-Senior-Quality-Control-Engineer-Tafeel-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=23
543	2489	664	Manager	10-15 Yrs of Exp	Full Time	2020-11-11 12:06:00	https://wuzzuf.net/jobs/p/fcfe2703-e3f2-4056-8a53-bddbd2526f1e-IT-Director-Elaraby-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=6
544	2490	1347	Experienced	3-5 Yrs of Exp	Full Time ,Work From Home	2020-11-11 12:02:00	https://wuzzuf.net/jobs/p/2dd15a78-4d2a-4813-8d23-8b33722f9756-Software-QC-Tester---Remotely-EMIRATES-BARQ-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
545	671	575	Entry Level	1+ Yrs of Exp	Full Time	2020-11-11 12:41:00	https://wuzzuf.net/jobs/p/8ba7f7d0-d357-40ac-ba21-0998418246ed-Mobile-Developer-React-Native-Ithmaar-Integrated-Solutions-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=15
546	2491	1347	Experienced	3-5 Yrs of Exp	Full Time ,Work From Home	2020-11-11 12:20:00	https://wuzzuf.net/jobs/p/75463fe1-9017-499d-88e7-eab16a09414a-Back-end-Developer-PHP-JAVA---Remotely-work-EMIRATES-BARQ-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=24
547	2492	656	Manager	3-5 Yrs of Exp	Full Time	2020-11-11 11:54:00	https://wuzzuf.net/jobs/p/bd60937f-0ca4-46a3-8310-c60841d594c0-Supervisor-Network-Engineer---Giza-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=32
548	2493	141	Experienced	5-10 Yrs of Exp	Full Time	2020-11-11 12:34:00	https://wuzzuf.net/jobs/p/351d08a3-ac2a-4661-bcdf-c49078eb9093-Sales-Engineer---Architect-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=33
549	2494	1716	Manager	7-12 Yrs of Exp	Full Time	2020-11-11 12:40:00	https://wuzzuf.net/jobs/p/b96a77a2-d421-4ddf-bc22-5bd8e2c81673-Senior-Sales-Manager---French-Speaking-almentor-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=36
550	1203	557	Experienced	3+ Yrs of Exp	Full Time ,Work From Home	2020-11-11 12:58:00	https://wuzzuf.net/jobs/p/8071dfac-22c0-4e89-847e-2b008e1757ff-UI-UX-Web-Designer-Nile-Creations-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=37
551	2495	1709	Manager	15+ Yrs of Exp	Full Time	2020-11-11 12:12:00	https://wuzzuf.net/jobs/p/7c8d29d8-c98f-43c6-a738-8250bb8d0fcf-Chief-Commercial-Officer-COO-AACMI-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=38
552	2496	1716	Experienced	5-10 Yrs of Exp	Full Time	2020-11-11 12:48:00	https://wuzzuf.net/jobs/p/9248b100-be1a-4728-8617-cb98b86adb7d-Senior-Pre-Sales-Executive---Cairo-almentor-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
553	2497	1717	Entry Level	0-5 Yrs of Exp	Full Time	2020-11-11 12:24:00	https://wuzzuf.net/jobs/p/74abad61-aeb8-4109-9dbe-5ae00806c179-Sales-Engineer---Furniture-Archi-Touch-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=41
554	1437	1037	Manager	7-13 Yrs of Exp	Full Time	2020-11-11 12:33:00	https://wuzzuf.net/jobs/p/e12d7be3-ac12-4b8a-a946-a337e616408e-Real-Estate-Sales-Manager-M²-Developments-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=53
555	422	1619	Experienced	3-5 Yrs of Exp	Full Time	2020-11-11 13:44:00	https://wuzzuf.net/jobs/p/075133d4-d978-40c3-84a6-3c2db4737a1c-Business-Development-Engineer-AL-TAWAKOL-For-Electrical-Industries--NTT-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=22
556	6	1720	Entry Level	0-2 Yrs of Exp	Full Time	2020-11-11 13:25:00	https://wuzzuf.net/jobs/p/641affb8-8d73-4cd7-8f56-8e2ca9b887db-IT-Help-Desk-Specialist-Fawry-Banking-Payment-Technology-Services-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=4
557	2504	518	Experienced	3-6 Yrs of Exp	Full Time	2020-11-11 13:53:00	https://wuzzuf.net/jobs/p/e01317d5-abb2-48c5-b68a-f450de969c5e-System-Integration-Analyst-Fawry-Banking-Payment-Technology-Services-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=35
558	2506	1723	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-11 14:07:00	https://wuzzuf.net/jobs/p/bc538b80-5db2-42f3-9afe-2a6bb5fc2cd1-PHP-Full-Stack-Developer---Laravel-VadeCom-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=16
559	2507	1723	Experienced	2-5 Yrs of Exp	Full Time	2020-11-11 14:14:00	https://wuzzuf.net/jobs/p/a4b650be-96b7-4656-8d9a-cdaaff08632d-UI-UX-Front-End---WordPress-Developer-VadeCom-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=21
560	2508	1386	Experienced	3-5 Yrs of Exp	Full Time	2020-11-11 14:41:00	https://wuzzuf.net/jobs/p/515478e1-78d5-40a3-b8d9-d32264063ff3-Senior-ERP-SAP-Support-Specialist-Al-Andalous-Medical-Company-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=34
561	2509	292	Experienced	6-8 Yrs of Exp	Full Time	2020-11-11 14:09:00	https://wuzzuf.net/jobs/p/53ba19fc-8251-4c55-8978-c619f163551e-Senior-Help-Desk-Specialist-MTS-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=38
562	337	381	Experienced	4+ Yrs of Exp	Full Time	2020-11-11 14:46:00	https://wuzzuf.net/jobs/p/cdb55876-b3cd-4f87-a5fc-92b177be8a6c-Senior-Java-Developer-Asset-Technology-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
563	2511	229	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-11 14:43:00	https://wuzzuf.net/jobs/p/da3152c4-bec7-4d98-8cf4-03ee49ca856b-Technical-Support-Engineer-Outsourcing-Interact-Technology-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=33
564	2512	1725	Experienced	4+ Yrs of Exp	Full Time	2020-11-11 14:22:00	https://wuzzuf.net/jobs/p/dfd3afd1-fadc-4cbe-b593-71a673cc26b3-Marketing-Associate-IFT-Corporation-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=53
565	2513	231	Entry Level	0-2 Yrs of Exp	Full Time	2020-11-11 15:59:00	https://wuzzuf.net/jobs/p/6004910d-cc3d-4771-8cb4-9dec41dc611b-Associate-Presales-Engineer-Sumerge-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=24
566	2514	163	Experienced	3-5 Yrs of Exp	Full Time	2020-11-11 15:19:00	https://wuzzuf.net/jobs/p/2054ad78-f6f4-4ec9-88ba-fb226942d420-Sr--Quality-Control-Andalusia-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=61
567	1043	776	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-11 15:03:00	https://wuzzuf.net/jobs/p/cc7c168a-cb83-4154-bb5b-e7583f4b1b74-Treasury-Accountant-OPPO-Egypt-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=33
568	2520	1716	Experienced	4-6 Yrs of Exp	Full Time	2020-11-11 15:53:00	https://wuzzuf.net/jobs/p/d0b6fe4b-2060-4513-9693-2ea74f0284c0-Senior-Product-Owner-almentor-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=60
569	2505	518	Experienced	7-9 Yrs of Exp	Full Time	2020-11-11 13:34:00	https://wuzzuf.net/jobs/p/d33b00d3-8221-4396-8086-c25423010a5c-Product-Specialist-Fawry-Banking-Payment-Technology-Services-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=63
570	2521	204	Manager	5+ Yrs of Exp	Full Time	2020-11-11 16:27:00	https://wuzzuf.net/jobs/p/cb4ededd-4e3b-44e9-83b8-c284ca983897-IT-Manager--Project-Manager-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
571	2522	204	Manager	5+ Yrs of Exp	Full Time	2020-11-11 16:47:00	https://wuzzuf.net/jobs/p/a39f722c-8601-42ed-8cf3-b23d5156013d-IT-Help-Desk-Team-Leader-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=12
572	870	1730	Experienced	3-5 Yrs of Exp	Full Time	2020-11-11 16:06:00	https://wuzzuf.net/jobs/p/7e57c4ed-0979-4f83-9fe6-9e117fdcfe50-Technical-Support-Engineer-ZKTeco-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=28
573	2523	292	Experienced	3-5 Yrs of Exp	Full Time	2020-11-11 16:22:00	https://wuzzuf.net/jobs/p/721e605b-9b90-48da-bcee-443b2838fd89-Network-Security-Admin---Cairo-MTS-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=37
574	479	65	Experienced	3+ Yrs of Exp	Full Time	2020-11-11 17:18:00	https://wuzzuf.net/jobs/p/706b2f96-82fc-4fa1-80d7-121d945bde83-Front-End-Developer-AL-Matar-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=14
575	2530	824	Entry Level	2-3 Yrs of Exp	Full Time	2020-11-11 17:32:00	https://wuzzuf.net/jobs/p/091e62b3-d936-4735-88a4-5af93cfe0897-Open-Source-System-Engineer-Link-Datacenter-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=30
576	870	1736	Entry Level	2-4 Yrs of Exp	Full Time	2020-11-11 17:40:00	https://wuzzuf.net/jobs/p/15b54af0-98a9-4832-8cce-464be96ce014-Technical-Support-Engineer-Unlimited-Technology-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=35
577	2531	824	Experienced	2-3 Yrs of Exp	Full Time	2020-11-11 17:35:00	https://wuzzuf.net/jobs/p/ad57e211-538d-4e16-9403-ced83efda715-Windows-System-Engineer-Link-Datacenter-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=42
578	2532	1737	Experienced	5-12 Yrs of Exp	Full Time	2020-11-11 17:43:00	https://wuzzuf.net/jobs/p/21860cd8-dd92-411a-896c-31c16534c43e-Sensory---Product-Guidance-Specialist-Atribs-Metscon-Dubai-United-Arab-Emirates?l=bp&t=bj&a=IT-Software-Development&o=60
579	93	732	Manager	3-5 Yrs of Exp	Full Time	2020-11-11 17:19:00	https://wuzzuf.net/jobs/p/9b804b82-be5b-4f26-9d34-f4f490778d42-Project-Manager-Team-4-Security-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=65
580	430	65	Experienced	3+ Yrs of Exp	Full Time	2020-11-11 17:20:00	https://wuzzuf.net/jobs/p/fc106080-0cff-4ac8-8d15-7726296d6032-Back-End-Developer-AL-Matar-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=14
581	746	788	Entry Level	2-3 Yrs of Exp	Full Time	2020-11-11 18:15:00	https://wuzzuf.net/jobs/p/5ddc0980-3ae0-4ccc-94e6-c548c21b56a3-Technical-Support-Specialist-Movico-ICT-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=31
582	469	1738	Experienced	4-8 Yrs of Exp	Full Time	2020-11-11 18:54:00	https://wuzzuf.net/jobs/p/81fbd686-7379-482e-bb81-a68f94f354bf-Senior-Sales-Executive-Datum-International-Data-Systems-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=46
583	2536	1739	Experienced	2+ Yrs of Exp	Part Time	2020-11-11 14:59:00	https://wuzzuf.net/jobs/p/aeb5a174-5531-4d1c-ae0e-fbf81343f63a-CCNA-Instructor-American-Academy-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=57
584	2538	16	Experienced	4+ Yrs of Exp	Full Time	2020-11-11 18:27:00	https://wuzzuf.net/jobs/p/d816bcde-afa0-4abe-a32e-320e0502d44b-Senior-Full-Stack-Web-Developer-Laravel---Alexandria-Procrew-Alexandria-Egypt?l=bp&t=bj&a=IT-Software-Development&o=18
585	6	110	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-11 19:32:00	https://wuzzuf.net/jobs/p/47ea4f7d-bf02-4a80-8b3d-ef961123e0f8-IT-Help-Desk-Specialist-Xceed-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=3
586	2539	951	Manager	6-10 Yrs of Exp	Full Time	2020-11-11 19:28:00	https://wuzzuf.net/jobs/p/717a9731-c6cf-4412-a505-67701879271b-Program-Manager---IT-Multinational-Pillars-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
587	2540	125	Experienced	3+ Yrs of Exp	Full Time	2020-11-11 20:17:00	https://wuzzuf.net/jobs/p/8063b6ee-c9d4-40c1-84ee-1d658a0edc7a-Full-Stack-Web-Developer---for-E-commerce-websites-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=22
588	2541	125	Experienced	1-2 Yrs of Exp	Full Time	2020-11-11 20:25:00	https://wuzzuf.net/jobs/p/fd5b56c2-0037-434c-ae16-55857466f827-Flutter-Mobile-apps-Developer-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=19
589	2542	141	Experienced	3-5 Yrs of Exp	Full Time	2020-11-11 23:29:00	https://wuzzuf.net/jobs/p/097ff338-a0ac-40a8-8407-b28457490e1f-Full-Stack-Web-Developer-For-E-Commerce-Websites-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=17
590	2543	1742	Entry Level	0-1 Yrs of Exp	Internship	2020-11-12 01:17:00	https://wuzzuf.net/internship/388d6800-e661-4281-8c04-ee5e6afea567-Marketing---Graphic-Designing---Intern---India-AIESEC-Cairo-University-Hyderabad-India?l=bp&t=bj&a=IT-Software-Development&o=52
591	2544	1096	Senior Management	15+ Yrs of Exp	Full Time	2020-11-12 07:45:00	https://wuzzuf.net/jobs/p/92679262-54ed-4a6d-8294-eb01132f3ab6-Marketing-Director-Regional-Multinational-Pillars-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=60
592	2547	1744	Experienced	2-5 Yrs of Exp	Full Time ,Part Time	2020-11-12 10:00:00	https://wuzzuf.net/jobs/p/3645001a-0a3d-4278-bc0d-82ef9f81b841-IT---Odoo-Specialist-The-Breakroom-Company-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=5
593	1009	483	Experienced	5-8 Yrs of Exp	Part Time	2020-11-12 09:13:00	https://wuzzuf.net/jobs/p/8adfc952-02ab-4373-aee9-7f0911865ec9-Database-Administrator-ArabDT-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=32
594	783	483	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 09:05:00	https://wuzzuf.net/jobs/p/0e31744a-1d73-4d61-86e4-34575e5bc230-Devops-Engineer-ArabDT-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=45
595	2526	1714	Experienced	5+ Yrs of Exp	Full Time	2020-11-11 16:56:00	https://wuzzuf.net/jobs/p/415be05b-8df7-4265-a87d-8d126a74ce11-SAP-FI-CA-Consultant-e-finance-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=62
596	939	120	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 09:19:00	https://wuzzuf.net/jobs/p/ca1c14d9-71ef-4275-976e-491f36700c9b-UI-UX-Designer-Agile-Technologies-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=57
597	174	190	Experienced	4-6 Yrs of Exp	Full Time	2020-11-12 10:57:00	https://wuzzuf.net/jobs/p/44e43e3f-a449-4f18-804a-89b883f3ee5c-Senior-Software-Engineer-Nana-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=5
598	1073	121	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-12 10:54:00	https://wuzzuf.net/jobs/p/4885def0-f8da-4c9f-98b0-d1e9181c8789-Associate-Infrastructure-Consultant-Identity-Management-BlueCloud-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=37
599	2548	1745	Manager	10-15 Yrs of Exp	Full Time	2020-11-12 10:43:00	https://wuzzuf.net/jobs/p/3ac9f26a-d4e3-418d-aa2e-daf927624d90-Warehouses-Manager-Construction-Major-for-Construction-and-Decoration-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=47
600	2549	1743	Experienced	5-7 Yrs of Exp	Full Time	2020-11-12 07:22:00	https://wuzzuf.net/jobs/p/54215115-34aa-4337-b30a-13f0994a48a9-Oracle-Human-Capital-Management-HCM-Consultant---Oracle-Fusion-Megamind-IT-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=50
601	2550	1746	Experienced	3-4 Yrs of Exp	Full Time	2020-11-12 10:55:00	https://wuzzuf.net/jobs/p/8a94fb6a-cbed-4909-835a-5203409314a4-Sr--Human-Resources-Consultant-Engineer-Bureau-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=61
602	2551	424	Experienced	2+ Yrs of Exp	Full Time ,Work From Home	2020-11-12 10:51:00	https://wuzzuf.net/jobs/p/8ccbb2bb-9801-4999-b98e-2ea0482a1339-Customer-Service-Agent---Fluent-English-Furqan-Group-for-Education-IT-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=64
603	174	1201	Experienced	4-7 Yrs of Exp	Full Time	2020-11-12 10:30:00	https://wuzzuf.net/jobs/p/c51ea571-8950-4635-9ef9-033b3c6a030f-Senior-Software-Engineer-Wadi-Degla-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=5
604	793	658	Experienced	2-5 Yrs of Exp	Full Time	2020-11-12 10:16:00	https://wuzzuf.net/jobs/p/c8c91c46-51e1-4b15-8eeb-001164c2f8d1-AX-Technical-Developer-CompactSoft-International-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=23
605	2553	1743	Experienced	7-10 Yrs of Exp	Full Time	2020-11-12 07:24:00	https://wuzzuf.net/jobs/p/b1468e91-b4d6-4c37-8f39-8c6e927b7091-Oracle-Supply-Chain-Consultant---Oracle-EBS-Megamind-IT-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=50
606	448	410	Experienced	3+ Yrs of Exp	Full Time	2020-11-12 11:29:00	https://wuzzuf.net/jobs/p/6e8c84ab-e749-4a21-883d-14f459f84a06-Java-Rust-Developer-VA-Computing-Egypt-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=10
607	966	270	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-12 11:26:00	https://wuzzuf.net/jobs/p/2f6fd4fb-d60e-4964-ae90-055cbdea1727-Technical-Support-Agent-US-Account-Flairstech-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=25
608	2556	223	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 11:57:00	https://wuzzuf.net/jobs/p/5601988a-1cbc-42d7-b52b-f7af8b176714-ETL-Consultant-Smartera-3S-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=46
609	2557	1748	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 11:55:00	https://wuzzuf.net/jobs/p/274e1209-281a-4645-ad0e-7c9a95a933d2-Senior-Sales-Executive-Luxor-Nagwa-Luxor-Egypt?l=bp&t=bj&a=IT-Software-Development&o=62
610	2559	1750	Experienced	2-5 Yrs of Exp	Full Time	2020-11-12 11:37:00	https://wuzzuf.net/jobs/p/dc7cb5bb-a247-4ddb-94df-d5d3f8e582bb-Senior-Telesales-Executive-The-Modern-Vision-Of-Advertising-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
611	2560	774	Experienced	8-10 Yrs of Exp	Full Time	2020-11-12 11:22:00	https://wuzzuf.net/jobs/p/b36765cd-8ff4-48c5-8230-f7be053c0391-HR-officer-Zewail-City-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=58
612	1555	457	Manager	9-15 Yrs of Exp	Full Time	2020-11-12 11:39:00	https://wuzzuf.net/jobs/p/dcf8fc32-a6ef-42fb-b9ca-3ea180d6e457-Digital-Marketing-Manager-IPC-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=60
613	170	137	Manager	5-10 Yrs of Exp	Full Time	2020-11-12 12:11:00	https://wuzzuf.net/jobs/p/210553c0-a4d9-4e0c-a4f6-dadeb29e9233-Software-Development-Manager-Flairstech-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=1
614	332	592	Experienced	4-7 Yrs of Exp	Full Time	2020-11-12 12:30:00	https://wuzzuf.net/jobs/p/3fefa5aa-1dce-4b3e-a42c-d3f555a43087-Senior-iOS-Developer-evntoo-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=16
615	1765	483	Experienced	12-15 Yrs of Exp	Full Time ,Part Time	2020-11-12 12:28:00	https://wuzzuf.net/jobs/p/2d8e8ff8-9c77-4223-a356-daae0afca1f0-Senior-Solution-Architect-ArabDT-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=32
616	1129	1752	Manager	8-10 Yrs of Exp	Full Time	2020-11-12 12:56:00	https://wuzzuf.net/jobs/p/21a23152-f7a1-4d80-949a-c179720f77ea-Accounting-Manager-Cecil-Intelligent-Childhood-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=44
617	2564	1753	Experienced	3+ Yrs of Exp	Full Time	2020-11-12 12:44:00	https://wuzzuf.net/jobs/p/790f5e39-47c3-490b-ac77-893713518926-Accounting-Associate-The-Hair-Addict-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=49
618	2489	726	Senior Management	15+ Yrs of Exp	Full Time	2020-11-12 12:19:00	https://wuzzuf.net/jobs/p/9d642f4d-d3bc-45b5-9434-72cb3337ecef-IT-Director-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=9
619	2567	1756	Experienced	2-4 Yrs of Exp	Full Time	2020-11-12 12:06:00	https://wuzzuf.net/jobs/p/a88de181-bc9f-4e6d-9d8a-764b846fed84-Junior-Web-Developer-El-Amir-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=18
620	2253	1209	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-12 12:55:00	https://wuzzuf.net/jobs/p/b0bc6e39-672a-4458-b973-09173d1b3a8c-Junior-Digital-Media-Buyer-4level1-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=48
621	2568	1757	Experienced	3+ Yrs of Exp	Full Time	2020-11-12 12:10:00	https://wuzzuf.net/jobs/p/e42c99f8-fe30-4a90-9155-1787e0741393-Senior-Sales-Executive-10th-Of-Ramadan-City-Nagwa-Sharqia-Egypt?l=bp&t=bj&a=IT-Software-Development&o=66
622	1761	1759	Manager	2-4 Yrs of Exp	Work From Home	2020-11-12 13:51:00	https://wuzzuf.net/jobs/p/1a3cda25-1c8f-48b2-971a-cc8b326c1cea-Mobile-Development-Lead---Android---iOS-Ghyma-for-Tourism-Riyadh-Saudi-Arabia?l=bp&t=bj&a=IT-Software-Development&o=22
623	2569	1365	Experienced	2-10 Yrs of Exp	Full Time	2020-11-12 13:07:00	https://wuzzuf.net/jobs/p/6302245c-8576-4fc4-a4aa-22eb8629212a-Head-Waiter-in-K-S-A-Elite-Riyadh-Saudi-Arabia?l=bp&t=bj&a=IT-Software-Development&o=30
624	1491	1760	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-12 13:06:00	https://wuzzuf.net/jobs/p/3d629493-f5cb-4563-be7b-83ad94ce064f-Junior-Architect-MCG-ELMARWAN-CONSULTING-GROUP-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=50
625	2570	1761	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 13:56:00	https://wuzzuf.net/jobs/p/18c05bfb-0f69-4df2-8d16-d25f4263ec0c-Senior-Sales-Executive-15th-of-May-City-Nagwa-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=65
626	2571	184	Manager	15+ Yrs of Exp	Full Time	2020-11-12 13:23:00	https://wuzzuf.net/jobs/p/a0628a65-fe21-4865-9541-519901464f83-Group-IT-Manager-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=2
627	2572	1762	Manager	15-20 Yrs of Exp	Full Time	2020-11-12 13:33:00	https://wuzzuf.net/jobs/p/d678b519-cd39-4939-8af5-2a4860acb50b-Cost-Accounting-Manager-Monufya-Egypt?l=bp&t=bj&a=IT-Software-Development&o=59
628	2573	142	Manager	10-15 Yrs of Exp	Full Time	2020-11-12 13:09:00	https://wuzzuf.net/jobs/p/fcb09c68-c108-401f-98c7-a3d780feac0e-Cost-Control-Manager-Alkan-CIT-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=62
629	433	112	Experienced	5-7 Yrs of Exp	Full Time	2020-11-12 14:38:00	https://wuzzuf.net/jobs/p/3c8822a9-9df7-438c-a3ac-8b0eb77107c8-Senior-Full-Stack--Net-Developer-GET-Group--Egypt-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=11
630	481	1764	Experienced	5-7 Yrs of Exp	Full Time	2020-11-12 14:49:00	https://wuzzuf.net/jobs/p/1ff43a0d-f8a6-4716-a9b1-a5cc2564398a-Senior-Java-Spring-Developer-Digital-Force-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=15
631	2574	1570	Experienced	3-6 Yrs of Exp	Full Time	2020-11-12 14:02:00	https://wuzzuf.net/jobs/p/51c31e32-2701-45f3-9caa-ca6d888eec95-Travel-Consultant-Team-Leader-Trainee-DYNINNO-Egypt-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=29
632	2575	137	Experienced	4-6 Yrs of Exp	Full Time	2020-11-12 14:12:00	https://wuzzuf.net/jobs/p/490ac90f-cff1-433b-8b46-34862abcc1d4-Senior-Automation-Engineer-Flairstech-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=31
633	2576	135	Experienced	3+ Yrs of Exp	Full Time	2020-11-12 14:22:00	https://wuzzuf.net/jobs/p/1e5783e7-a6ff-4ee1-807f-ece2f26ae443-Creative-Content-Creator-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=62
634	2577	1765	Entry Level	1-3 Yrs of Exp	Freelance / Project	2020-11-12 14:44:00	https://wuzzuf.net/jobs/p/23b322bd-eaf9-4ad2-81a1-07fda09884a2-Data-collector-Mr-ahmed-abozeid-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=72
635	2578	1766	Experienced	4-6 Yrs of Exp	Full Time	2020-11-12 14:41:00	https://wuzzuf.net/jobs/p/d48c0963-45f5-44cb-a522-43a30457e5ef-IT-Helpdesk-Engineer-TopTech-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=6
636	2579	85	Experienced	3+ Yrs of Exp	Freelance / Project	2020-11-12 14:21:00	https://wuzzuf.net/jobs/p/93b9a69a-4ce7-4751-a67f-3c44063025d4-System-Administrator-Outsource-Interact-Technology-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=29
637	120	1332	Entry Level		Internship	2020-11-12 14:25:00	https://wuzzuf.net/internship/abd7efd6-2f1f-46df-ba99-826ee8cf103b-Graphic-Designer-World-Business-Fitness-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=45
638	2580	110	Manager	4+ Yrs of Exp	Full Time	2020-11-12 14:30:00	https://wuzzuf.net/jobs/p/7f782228-c5ad-4ce3-bf1a-bc80fc573851-Business-Continuity-Supervisor-Xceed-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=59
639	2394	1767	Experienced	3+ Yrs of Exp	Full Time	2020-11-12 14:11:00	https://wuzzuf.net/jobs/p/72db76f0-3d6c-4971-aae3-f3b70b22502d-Mechanical-Engineer-United-Engineering-company-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=70
640	2576	1768	Experienced	3-5 Yrs of Exp	Full Time ,Part Time ,Work From Home	2020-11-12 14:43:00	https://wuzzuf.net/jobs/p/c6322dd0-2ece-4415-9755-4b0bcbf35edd-Creative-Content-Creator-Clouds-Software-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=75
641	332	554	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 15:44:00	https://wuzzuf.net/jobs/p/53dd5e8a-c578-46c0-9e03-eccd250128e1-Senior-iOS-Developer-AlgorithmZ-–Tooli-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=25
642	2582	649	Experienced	10+ Yrs of Exp	Full Time	2020-11-12 15:05:00	https://wuzzuf.net/jobs/p/5f3bb24e-5d12-45f2-9122-54ac9aebf01e-Publishing-Manager-Assistant-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=50
643	822	191	Experienced	2-4 Yrs of Exp	Full Time	2020-11-12 15:39:00	https://wuzzuf.net/jobs/p/40bcbd8e-0a05-4fdf-b29d-c43ad83d1dd5-DevOps-Engineer-Paymob-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=73
644	2583	242	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 15:03:00	https://wuzzuf.net/jobs/p/9d64da84-e3d4-4a0c-bf67-a0edf6c1f65c-Senior-Front-End-Developer-React-JS-Arabian-Systems-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=15
645	332	513	Entry Level	1-7 Yrs of Exp	Full Time	2020-11-12 15:04:00	https://wuzzuf.net/jobs/p/77d4bec3-d087-49a3-93bf-daab39bf510f-Senior-iOS-Developer-Odiggo-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=21
646	811	554	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 15:52:00	https://wuzzuf.net/jobs/p/e4f4170b-6b54-4ed4-8e22-eeddcb2ae861-Senior-Quality-Control-Engineer-AlgorithmZ-–Tooli-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=40
647	1477	1046	Entry Level	1-3 Yrs of Exp	Full Time	2020-11-12 15:10:00	https://wuzzuf.net/jobs/p/81690a62-bc1c-47ff-bef4-7703edd71206-Microsoft-Dynamics-AX-Consultant-Allamna-Integrated-Solutions-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=54
648	93	1770	Manager	5+ Yrs of Exp	Full Time	2020-11-12 15:42:00	https://wuzzuf.net/jobs/p/9e8f8176-003c-4115-bc45-3f7b420d2ab5-Project-Manager-Source-Technology-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=58
649	1391	1771	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 15:16:00	https://wuzzuf.net/jobs/p/76bd7d7d-41ef-4c48-b777-3bbf3c3f4868-Social-Media---Digital-Marketing-Specialist-Mahgoub-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=77
650	2586	1632	Experienced	3+ Yrs of Exp	Full Time	2020-11-12 16:23:00	https://wuzzuf.net/jobs/p/3ab05104-7a8b-471e-a30d-e185397812f3-Senior-Python-Django-Backend-Developer-Your-Parts-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=21
651	2590	1774	Manager	6+ Yrs of Exp	Full Time	2020-11-12 16:38:00	https://wuzzuf.net/jobs/p/efee9ea5-2ba5-4af6-a08e-b2f470990cbb-Agile-Development-Team-Lead-epicore-egypt-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=11
652	586	519	Entry Level	1-2 Yrs of Exp	Full Time	2020-11-12 16:48:00	https://wuzzuf.net/jobs/p/83b7aa27-1f11-492f-aeb1-a57f98d59c54-Java-Backend-Developer-Entrepreware-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=13
653	1009	316	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 16:53:00	https://wuzzuf.net/jobs/p/e6f9fb78-04b6-430d-8bd5-edf27c074e84-Database-Administrator-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=45
654	2591	592	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 17:28:00	https://wuzzuf.net/jobs/p/39b6c44b-0540-4221-ba8c-8f2aced3bd23-B2B-Sales-Representative-evntoo-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=58
655	2592	163	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 17:03:00	https://wuzzuf.net/jobs/p/e4164662-50e8-41d1-9408-a6f94086b07d-Senior-Xamarin-Cross-Platform-Mobile-Apps-Developer-Andalusia-Group-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=24
656	2593	802	Experienced	3-5 Yrs of Exp	Full Time	2020-11-12 17:02:00	https://wuzzuf.net/jobs/p/d9aa0375-f869-4359-a105-d455d0a0cbe3-Workflow-Guru-Administrative-Assistant-HEIBCO-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=56
657	2594	1767	Experienced	2-5 Yrs of Exp	Full Time	2020-11-12 17:50:00	https://wuzzuf.net/jobs/p/c2bc07ac-33fe-4cca-b8a4-4ba7f9628763-Mechanical-Technical-Office-Engineer-United-Engineering-company-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=64
658	2595	1776	Experienced	2-3 Yrs of Exp	Full Time	2020-11-12 15:02:00	https://wuzzuf.net/jobs/p/e9685937-1eba-4a9b-bccb-cbbcaf304533-Site-Mechanical-Engineer-United-Engineering-company-Giza-Egypt?l=bp&t=bj&a=IT-Software-Development&o=73
659	2598	1779	Experienced	2-3 Yrs of Exp	Full Time	2020-11-12 19:07:00	https://wuzzuf.net/jobs/p/134facea-fc61-4289-a9d8-790468ebcb51-HR-Specialist-Recruitment-WellGrow-Training-and-Consulting-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=48
660	883	135	Experienced	4-8 Yrs of Exp	Full Time	2020-11-12 19:21:00	https://wuzzuf.net/jobs/p/45c9f71c-6066-4457-95e9-1e6c51a56829-Office-Manager-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=66
661	2600	1781	Manager	15-20 Yrs of Exp	Full Time	2020-11-12 20:09:00	https://wuzzuf.net/jobs/p/7e2a566a-6a31-4bf8-974c-46570a6c7bf6-Conservation---Adaptive-Reuse-Project-Manager-Team-Leader-Takween-Integrated-Community-Development-Cairo-Egypt?l=bp&t=bj&a=IT-Software-Development&o=59
\.


--
-- Data for Name: it_software_development_job_tags; Type: TABLE DATA; Schema: public; Owner: fscjjarkblijha
--

COPY public.it_software_development_job_tags (job_tags_id, job_id, tag_id) FROM stdin;
1	1	29
2	1	19
3	1	28
4	2	66
5	2	17
6	2	564
7	2	10
8	2	36
9	2	5
10	2	11
11	3	489
12	3	114
13	3	47
14	3	50
15	3	358
16	3	326
17	3	21
18	3	10
19	3	52
20	3	11
21	4	82
22	4	87
23	4	17
24	4	71
25	4	627
26	4	1332
27	4	15
28	4	447
29	4	81
30	4	648
31	4	1333
32	4	259
33	5	87
34	5	79
35	5	179
36	5	17
37	5	327
38	5	1014
39	5	607
40	5	67
41	5	10
42	5	1280
43	5	11
44	6	79
45	6	17
46	6	3721
47	6	497
48	6	3722
49	6	3723
50	6	1015
51	6	731
52	6	3724
53	6	11
54	6	1308
55	6	3661
56	7	17
57	7	1265
58	7	1286
59	7	29
60	8	29
61	8	3725
62	8	1272
63	9	2864
64	9	17
65	9	879
66	9	1469
67	9	15
68	9	2074
69	9	67
70	9	329
71	9	10
72	9	11
73	10	489
74	10	47
75	10	381
76	10	163
77	10	335
78	10	352
79	10	164
80	10	18
81	10	52
82	10	108
83	11	155
84	11	2147
85	11	2562
86	11	280
87	11	480
88	11	255
89	11	3726
90	12	67
91	12	1132
92	12	3727
93	12	89
94	12	157
95	12	10
96	12	3728
97	12	78
98	12	337
99	12	202
100	12	11
101	13	313
102	13	3729
103	13	13
104	13	11
105	13	228
106	13	3730
107	13	55
108	13	753
109	13	1
110	13	28
111	13	6
112	14	214
113	14	544
114	14	497
115	14	191
116	14	146
117	14	195
118	14	1445
119	14	216
120	14	194
121	14	2258
122	14	251
123	15	313
124	15	489
125	15	10
126	15	228
127	15	396
128	15	55
129	15	3731
130	15	114
131	15	1604
132	16	155
133	16	30
134	16	228
135	16	530
136	16	565
137	16	3732
138	16	361
139	16	1
140	16	457
141	16	255
142	17	3733
143	17	71
144	17	3734
145	17	1994
146	17	3735
147	17	146
148	17	1980
149	17	545
150	17	117
151	17	194
152	18	387
153	18	335
154	18	391
155	18	211
156	18	285
157	18	389
158	18	154
159	18	549
160	18	390
161	18	381
162	19	1757
163	19	3736
164	19	355
165	19	463
166	19	149
167	19	228
168	19	147
169	19	136
170	19	2151
171	19	11
172	20	367
173	20	228
174	20	263
175	20	180
176	20	11
177	20	1505
178	20	68
179	20	10
180	20	2679
181	20	28
182	21	3746
183	21	263
184	21	487
185	21	179
186	21	186
187	21	11
188	21	21
189	21	105
190	21	10
191	21	67
192	21	211
193	22	62
194	22	228
195	22	741
196	22	61
197	22	11
198	22	1388
199	22	804
200	22	10
201	22	13
202	22	31
203	22	108
204	23	1538
205	23	169
206	23	672
207	23	1238
208	23	15
209	23	447
210	23	10
211	23	17
212	23	78
213	24	48
214	24	11
215	24	938
216	24	8
217	24	489
218	24	10
219	24	136
220	24	47
221	24	28
222	24	50
223	25	169
224	25	375
225	25	246
226	25	98
227	25	10
228	25	3747
229	25	67
230	25	3748
231	25	11
232	25	82
233	25	648
234	25	198
235	25	79
236	26	11
237	26	111
238	26	179
239	26	3749
240	26	692
241	26	105
242	26	113
243	26	10
244	26	502
245	26	324
246	26	102
247	27	11
248	27	375
249	27	21
250	27	68
251	27	105
252	27	82
253	27	10
254	27	108
255	27	256
256	27	157
257	28	190
258	28	441
259	28	11
260	28	375
261	28	15
262	28	21
263	28	165
264	28	10
265	28	199
266	28	17
267	29	228
268	29	48
269	29	11
270	29	53
271	29	489
272	29	10
273	29	313
274	29	47
275	29	29
276	30	228
277	30	11
278	30	865
279	30	94
280	30	607
281	30	10
282	30	17
283	30	523
284	31	1270
285	31	11
286	31	329
287	31	10
288	31	17
289	31	584
290	31	108
291	31	1269
292	32	616
293	32	1648
294	32	2848
295	32	3750
296	32	1968
297	32	165
298	32	637
299	32	3751
300	32	3752
301	32	3753
302	32	3754
303	32	29
304	33	645
305	33	21
306	33	1093
307	33	146
308	33	98
309	33	10
310	33	17
311	33	67
312	33	78
313	33	663
314	33	11
315	33	731
316	33	202
317	34	81
318	34	71
319	34	898
320	34	17
321	34	588
322	34	648
323	34	10
324	34	202
325	34	79
326	34	67
327	34	3755
328	35	120
329	35	132
330	35	11
331	35	21
332	35	272
333	35	10
334	35	138
335	35	509
336	35	17
337	35	229
338	36	71
339	36	11
340	36	15
341	36	98
342	36	10
343	36	55
344	36	17
345	36	788
346	37	3756
347	37	169
348	37	11
349	37	71
350	37	98
351	37	10
352	37	1080
353	37	202
354	37	78
355	37	628
356	38	228
357	38	11
358	38	89
359	38	3757
360	38	17
361	38	10
362	38	55
363	38	204
364	38	1234
365	38	94
366	39	11
367	39	98
368	39	10
369	39	202
370	39	3758
371	39	17
372	39	663
373	39	29
374	40	1296
375	40	11
376	40	190
377	40	156
378	40	146
379	40	327
380	40	10
381	40	118
382	40	29
383	41	83
384	41	222
385	41	188
386	41	11
387	41	375
388	41	186
389	41	227
390	41	15
391	41	82
392	41	10
393	41	17
394	42	188
395	42	186
396	42	246
397	42	590
398	42	3759
399	42	133
400	42	76
401	42	3760
402	42	11
403	42	236
404	42	3761
405	42	3762
406	42	172
407	43	81
408	43	11
409	43	85
410	43	246
411	43	82
412	43	10
413	43	79
414	43	221
415	43	172
416	43	157
417	44	3763
418	44	132
419	44	11
420	44	607
421	44	10
422	44	138
423	44	17
424	44	229
425	45	169
426	45	3683
427	45	3764
428	45	10
429	45	640
430	45	67
431	45	78
432	45	11
433	45	1767
434	45	3765
435	45	3766
436	45	3767
437	45	202
438	46	228
439	46	132
440	46	11
441	46	635
442	46	272
443	46	10
444	46	17
445	46	226
446	46	229
447	47	780
448	47	1091
449	47	89
450	47	3768
451	47	3769
452	47	10
453	47	3770
454	47	259
455	47	86
456	47	1541
457	47	1021
458	47	85
459	47	731
460	47	172
461	47	3771
462	47	77
463	48	83
464	48	81
465	48	89
466	48	11
467	48	87
468	48	85
469	48	82
470	48	79
471	48	10
472	48	84
473	48	17
474	48	86
475	49	132
476	49	11
477	49	17
478	49	85
479	49	128
480	49	10
481	49	94
482	49	160
483	49	86
484	49	29
485	50	132
486	50	11
487	50	3757
488	50	17
489	50	659
490	50	146
491	50	10
492	50	327
493	50	94
494	50	91
495	50	229
496	51	969
497	51	652
498	51	970
499	51	7
500	51	11
501	51	179
502	51	272
503	51	10
504	51	310
505	51	17
506	51	65
507	51	102
508	52	228
509	52	169
510	52	11
511	52	3772
512	52	1753
513	52	10
514	52	2621
515	52	67
516	52	1582
517	52	523
518	52	796
519	53	169
520	53	21
521	53	3773
522	53	98
523	53	10
524	53	55
525	53	67
526	53	78
527	53	228
528	53	11
529	53	90
530	53	202
531	53	172
532	54	11
533	54	183
534	54	26
535	54	27
536	54	10
537	54	266
538	54	986
539	54	18
540	54	134
541	54	3774
542	55	228
543	55	132
544	55	11
545	55	198
546	55	10
547	55	1320
548	55	157
549	56	228
550	56	83
551	56	180
552	56	11
553	56	375
554	56	21
555	56	198
556	56	10
557	56	683
558	56	266
559	56	3775
560	56	65
561	57	605
562	57	89
563	57	997
564	57	186
565	57	843
566	57	1153
567	57	10
568	57	973
569	57	1197
570	57	29
571	58	622
572	58	652
573	58	11
574	58	265
575	58	375
576	58	10
577	58	3776
578	58	374
579	58	17
580	58	67
581	58	3777
582	59	11
583	59	179
584	59	109
585	59	105
586	59	497
587	59	113
588	59	10
589	59	445
590	59	102
591	60	717
592	60	188
593	60	186
594	60	21
595	60	755
596	60	44
597	60	1680
598	60	22
599	60	11
600	60	804
601	60	759
602	60	266
603	60	2011
604	61	334
605	61	21
606	61	68
607	61	3778
608	61	36
609	61	10
610	61	571
611	61	108
612	62	3779
613	62	546
614	62	251
615	62	191
616	62	214
617	62	21
618	62	216
619	62	146
620	62	13
621	62	194
622	63	1296
623	63	11
624	63	156
625	63	789
626	63	10
627	63	154
628	63	29
629	64	542
630	64	396
631	64	228
632	64	115
633	64	447
634	64	73
635	64	1677
636	64	1855
637	64	313
638	64	28
639	64	466
640	65	48
641	65	27
642	65	489
643	65	376
644	65	3530
645	65	18
646	65	262
647	65	13
648	65	47
649	65	50
650	66	7
651	66	8
652	66	183
653	66	27
654	66	18
655	66	280
656	66	2081
657	66	219
658	66	28
659	67	228
660	67	11
661	67	332
662	67	1713
663	67	10
664	67	55
665	67	67
666	67	18
667	67	212
668	68	153
669	68	1582
670	68	11
671	68	1309
672	68	10
673	68	154
674	68	136
675	68	155
676	68	67
677	68	1270
678	69	251
679	69	191
680	69	1311
681	69	214
682	69	216
683	69	146
684	69	193
685	69	73
686	69	194
687	69	3780
688	70	1708
689	70	1445
690	70	214
691	70	146
692	70	3781
693	70	2267
694	70	74
695	70	194
696	70	2251
697	70	519
698	70	2350
699	71	47
700	71	48
701	71	11
702	71	938
703	71	159
704	71	489
705	71	3782
706	71	3783
707	71	18
708	71	28
709	72	537
710	72	257
711	72	469
712	72	3180
713	72	146
714	72	121
715	72	155
716	72	255
717	73	62
718	73	228
719	73	64
720	73	11
721	73	3784
722	73	68
723	73	10
724	73	55
725	73	211
726	74	228
727	74	11
728	74	56
729	74	607
730	74	373
731	74	10
732	74	280
733	74	285
734	74	3543
735	75	163
736	75	486
737	75	256
738	75	36
739	76	147
740	76	463
741	76	36
742	76	148
743	76	149
744	76	368
745	76	108
746	76	369
747	77	62
748	77	83
749	77	761
750	77	11
751	77	131
752	77	7
753	77	607
754	77	266
755	77	28
756	77	2745
757	77	29
758	77	42
759	78	314
760	78	2915
761	78	11
762	78	115
763	78	68
764	78	164
765	78	10
766	78	108
767	78	3634
768	78	1086
769	79	228
770	79	257
771	79	480
772	79	2644
773	79	772
774	79	358
775	79	2645
776	79	2646
777	79	2476
778	80	554
779	80	555
780	80	480
781	80	358
782	80	256
783	80	381
784	80	305
785	80	304
786	80	2475
787	81	554
788	81	555
789	81	480
790	81	180
791	81	462
792	81	1330
793	81	256
794	81	305
795	81	304
796	82	3785
797	82	147
798	82	3786
799	82	1905
800	82	3787
801	82	3788
802	82	149
803	82	133
804	83	217
805	83	64
806	83	233
807	83	73
808	83	74
809	83	940
810	83	218
811	83	13
812	83	488
813	83	466
814	83	468
815	84	3789
816	84	605
817	84	843
818	84	10
819	84	3790
820	84	924
821	84	3791
822	84	2467
823	84	3792
824	84	1153
825	84	3793
826	84	758
827	84	759
828	84	3775
829	85	62
830	85	228
831	85	11
832	85	332
833	85	3794
834	85	10
835	85	3795
836	85	29
837	85	42
838	86	183
839	86	26
840	86	447
841	86	27
842	86	36
843	86	18
844	86	3796
845	86	212
846	87	3797
847	87	3798
848	87	857
849	87	3799
850	87	368
851	87	3800
852	88	3801
853	88	3797
854	88	3798
855	88	857
856	88	3799
857	88	368
858	88	3800
859	89	217
860	89	2415
861	89	233
862	89	73
863	89	381
864	89	1788
865	89	218
866	90	251
867	90	1919
868	90	469
869	90	146
870	90	235
871	90	128
872	90	29
873	91	8
874	91	1054
875	91	10
876	91	1213
877	91	55
878	91	1055
879	91	28
880	91	19
881	91	11
882	91	108
883	92	10
884	92	901
885	92	373
886	92	17
887	92	11
888	92	463
889	92	164
890	92	15
891	92	1488
892	93	645
893	93	3833
894	93	228
895	93	98
896	93	15
897	93	10
898	93	11
899	93	78
900	93	653
901	93	169
902	93	17
903	94	228
904	94	29
905	94	10
906	94	65
907	94	3834
908	94	154
909	94	11
910	94	55
911	95	229
912	95	94
913	95	3835
914	95	865
915	95	132
916	95	252
917	95	155
918	95	153
919	95	136
920	95	1803
921	96	3836
922	96	1788
923	96	469
924	96	1650
925	96	146
926	96	345
927	96	194
928	96	215
929	97	3840
930	97	800
931	97	3841
932	97	489
933	97	47
934	97	3842
935	97	556
936	97	3843
937	98	25
938	98	138
939	98	280
940	98	8
941	98	19
942	98	447
943	98	10
944	98	1085
945	98	28
946	99	110
947	99	107
948	99	136
949	99	106
950	99	11
951	99	105
952	99	212
953	99	10
954	100	1236
955	100	607
956	100	17
957	100	506
958	100	123
959	100	11
960	100	997
961	100	82
962	100	228
963	100	10
964	101	3844
965	101	375
966	101	21
967	101	315
968	101	10
969	101	11
970	101	17
971	101	1469
972	101	15
973	102	10
974	102	19
975	102	29
976	103	813
977	103	280
978	103	25
979	103	764
980	103	19
981	103	8
982	103	11
983	103	812
984	103	10
985	104	156
986	104	82
987	104	29
988	105	3845
989	105	3846
990	105	3847
991	105	17
992	105	11
993	105	3848
994	105	10
995	105	55
996	106	3849
997	106	280
998	106	758
999	106	7
1000	106	40
1001	106	62
1002	106	28
1003	106	335
1004	106	759
1005	106	1784
1006	106	67
1007	106	3850
1008	106	3851
1009	107	191
1010	107	2209
1011	107	21
1012	107	487
1013	107	228
1014	107	2208
1015	107	2211
1016	107	2210
1017	107	214
1018	107	146
1019	107	1739
1020	108	521
1021	108	366
1022	108	228
1023	108	110
1024	108	113
1025	108	106
1026	108	3852
1027	108	480
1028	109	153
1029	109	228
1030	109	62
1031	109	13
1032	109	10
1033	109	155
1034	110	68
1035	110	2320
1036	110	2434
1037	110	64
1038	110	3201
1039	110	18
1040	110	851
1041	110	183
1042	110	3203
1043	111	3853
1044	111	389
1045	111	241
1046	111	3854
1047	111	3855
1048	111	334
1049	112	76
1050	112	172
1051	112	3861
1052	112	3862
1053	112	17
1054	112	1553
1055	112	79
1056	112	10
1057	112	11
1058	112	1302
1059	113	114
1060	113	1330
1061	113	381
1062	113	48
1063	113	108
1064	113	47
1065	113	50
1066	113	489
1067	114	1870
1068	114	622
1069	114	588
1070	114	265
1071	114	90
1072	114	103
1073	114	246
1074	114	71
1075	114	10
1076	114	140
1077	114	11
1078	114	1720
1079	115	292
1080	115	228
1081	115	2396
1082	115	48
1083	115	52
1084	115	489
1085	115	556
1086	115	2395
1087	115	3863
1088	115	146
1089	115	47
1090	115	1994
1091	116	521
1092	116	211
1093	116	115
1094	116	36
1095	116	10
1096	116	2998
1097	116	11
1098	116	164
1099	117	381
1100	117	1736
1101	117	48
1102	117	47
1103	117	50
1104	117	489
1105	117	283
1106	117	681
1107	117	114
1108	118	28
1109	118	53
1110	118	3869
1111	118	811
1112	118	3507
1113	118	3506
1114	118	52
1115	118	556
1116	118	154
1117	118	21
1118	118	3870
1119	118	489
1120	118	156
1121	119	164
1122	119	21
1123	119	857
1124	119	102
1125	119	136
1126	119	395
1127	120	228
1128	120	1743
1129	120	146
1130	120	2395
1131	120	871
1132	120	152
1133	120	295
1134	120	366
1135	120	292
1136	121	14
1137	121	17
1138	121	76
1139	121	267
1140	121	10
1141	121	15
1142	121	11
1143	121	202
1144	121	79
1145	122	280
1146	122	2346
1147	122	3873
1148	122	228
1149	122	3874
1150	122	469
1151	122	2475
1152	122	295
1153	122	146
1154	123	346
1155	123	215
1156	123	73
1157	123	233
1158	123	569
1159	123	660
1160	123	256
1161	123	164
1162	123	498
1163	123	232
1164	123	218
1165	123	489
1166	124	283
1167	124	373
1168	124	3543
1169	124	796
1170	124	3875
1171	124	2621
1172	124	228
1173	124	154
1174	124	381
1175	124	11
1176	125	10
1177	125	29
1178	125	11
1179	125	17
1180	125	3877
1181	125	89
1182	125	165
1183	125	1153
1184	126	526
1185	126	450
1186	126	1408
1187	126	241
1188	126	449
1189	126	2075
1190	126	2229
1191	126	36
1192	126	242
1193	126	238
1194	127	18
1195	127	10
1196	127	183
1197	127	27
1198	127	11
1199	127	154
1200	127	20
1201	127	381
1202	127	156
1203	128	55
1204	128	11
1205	128	136
1206	128	10
1207	128	68
1208	128	398
1209	129	940
1210	129	447
1211	129	569
1212	129	218
1213	129	1445
1214	129	2307
1215	129	2355
1216	129	3277
1217	129	10
1218	130	3882
1219	130	10
1220	130	73
1221	130	11
1222	130	3883
1223	130	218
1224	130	217
1225	130	74
1226	130	55
1227	131	146
1228	131	469
1229	131	1743
1230	131	2345
1231	131	50
1232	131	292
1233	132	1193
1234	132	189
1235	132	82
1236	132	79
1237	132	81
1238	132	191
1239	132	152
1240	132	214
1241	132	2115
1242	132	85
1243	133	10
1244	133	29
1245	133	26
1246	133	28
1247	134	79
1248	134	11
1249	134	17
1250	134	10
1251	134	81
1252	134	3893
1253	134	3894
1254	134	3725
1255	134	82
1256	134	186
1257	135	243
1258	135	3895
1259	135	660
1260	135	29
1261	135	11
1262	135	17
1263	135	188
1264	135	10
1265	136	298
1266	136	61
1267	136	55
1268	136	595
1269	136	11
1270	136	10
1271	136	200
1272	136	42
1273	136	3896
1274	137	489
1275	137	48
1276	137	50
1277	137	800
1278	137	47
1279	137	1650
1280	137	73
1281	137	3897
1282	137	18
1283	138	11
1284	138	371
1285	138	10
1286	138	1215
1287	138	14
1288	138	15
1289	138	89
1290	138	79
1291	138	444
1292	138	17
1293	139	47
1294	139	292
1295	139	52
1296	139	489
1297	139	2395
1298	139	2396
1299	139	48
1300	139	1994
1301	139	228
1302	139	556
1303	139	146
1304	139	3863
1305	140	569
1306	140	3898
1307	140	1789
1308	140	218
1309	140	73
1310	140	940
1311	140	2319
1312	140	3899
1313	140	3042
1314	140	3900
1315	141	17
1316	141	154
1317	141	8
1318	141	3901
1319	141	447
1320	141	10
1321	141	314
1322	141	56
1323	142	511
1324	142	204
1325	142	11
1326	142	94
1327	142	278
1328	142	102
1329	142	1331
1330	142	10
1331	142	55
1332	142	1433
1333	143	10
1334	143	17
1335	143	11
1336	143	82
1337	143	164
1338	143	3902
1339	143	79
1340	143	152
1341	144	132
1342	144	10
1343	144	17
1344	144	11
1345	144	677
1346	144	230
1347	144	301
1348	144	607
1349	144	226
1350	144	89
1351	145	2345
1352	145	544
1353	145	146
1354	145	28
1355	145	29
1356	145	194
1357	145	469
1358	146	1548
1359	146	28
1360	146	29
1361	146	82
1362	146	114
1363	146	251
1364	147	217
1365	147	29
1366	147	2133
1367	147	215
1368	147	218
1369	147	114
1370	148	10
1371	148	15
1372	148	29
1373	148	17
1374	148	11
1375	149	47
1376	149	489
1377	149	21
1378	149	48
1379	149	326
1380	149	36
1381	149	50
1382	149	836
1383	149	1251
1384	149	1536
1385	150	47
1386	150	489
1387	150	73
1388	150	10
1389	150	138
1390	150	357
1391	150	50
1392	150	136
1393	151	3903
1394	151	180
1395	151	607
1396	151	3904
1397	151	3905
1398	151	2008
1399	151	3906
1400	151	3907
1401	151	11
1402	151	102
1403	151	21
1404	152	489
1405	152	47
1406	152	36
1407	152	50
1408	152	3908
1409	152	357
1410	152	1716
1411	153	190
1412	153	14
1413	153	11
1414	153	10
1415	153	62
1416	153	3909
1417	153	17
1418	153	36
1419	153	21
1420	154	1583
1421	154	10
1422	154	1584
1423	154	3910
1424	154	9
1425	154	8
1426	154	212
1427	154	228
1428	154	211
1429	155	1265
1430	155	11
1431	155	55
1432	155	10
1433	155	67
1434	155	2078
1435	155	2595
1436	155	521
1437	155	29
1438	156	5
1439	156	10
1440	156	17
1441	156	62
1442	156	9
1443	156	36
1444	156	447
1445	156	14
1446	157	170
1447	157	76
1448	157	11
1449	157	10
1450	157	17
1451	157	15
1452	157	731
1453	157	14
1454	157	81
1455	157	188
1456	158	280
1457	158	10
1458	158	11
1459	158	1502
1460	158	1296
1461	158	373
1462	158	154
1463	158	156
1464	158	3911
1465	158	164
1466	159	85
1467	159	17
1468	159	375
1469	159	11
1470	159	21
1471	159	527
1472	159	230
1473	159	269
1474	159	10
1475	159	132
1476	159	327
1477	159	89
1478	160	3901
1479	160	17
1480	160	56
1481	160	314
1482	160	8
1483	160	10
1484	160	447
1485	160	154
1486	161	136
1487	161	56
1488	161	108
1489	161	115
1490	161	211
1491	161	10
1492	161	857
1493	162	295
1494	162	3913
1495	162	537
1496	162	2475
1497	162	228
1498	162	146
1499	163	466
1500	163	163
1501	163	114
1502	163	256
1503	164	10
1504	164	136
1505	164	153
1506	164	806
1507	164	746
1508	164	155
1509	165	256
1510	165	11
1511	165	1750
1512	165	29
1513	165	180
1514	165	10
1515	165	67
1516	165	3916
1517	165	108
1518	165	787
1519	166	11
1520	166	228
1521	166	10
1522	166	17
1523	166	21
1524	166	80
1525	166	67
1526	166	108
1527	166	843
1528	167	1515
1529	167	11
1530	167	29
1531	167	65
1532	167	10
1533	167	280
1534	167	154
1535	168	2434
1536	168	777
1537	168	851
1538	168	521
1539	168	64
1540	168	164
1541	168	68
1542	168	211
1543	168	2320
1544	168	940
1545	169	1245
1546	169	1732
1547	169	643
1548	169	11
1549	169	202
1550	169	297
1551	169	98
1552	169	78
1553	169	3919
1554	169	652
1555	169	55
1556	169	71
1557	170	73
1558	170	660
1559	170	233
1560	170	256
1561	170	218
1562	170	3920
1563	170	3921
1564	170	3922
1565	170	3923
1566	170	3278
1567	171	26
1568	171	30
1569	171	11
1570	171	29
1571	171	10
1572	172	584
1573	172	11
1574	172	393
1575	172	29
1576	172	285
1577	172	10
1578	173	3046
1579	173	379
1580	173	555
1581	173	554
1582	173	1739
1583	173	2475
1584	173	2522
1585	173	343
1586	173	303
1587	174	951
1588	174	47
1589	174	228
1590	174	281
1591	174	155
1592	174	353
1593	174	489
1594	174	530
1595	174	255
1596	175	102
1597	175	3934
1598	175	908
1599	175	29
1600	175	1858
1601	175	115
1602	175	542
1603	176	55
1604	176	609
1605	176	17
1606	176	497
1607	176	512
1608	176	10
1609	176	11
1610	177	78
1611	177	90
1612	177	622
1613	177	81
1614	177	202
1615	177	67
1616	177	101
1617	177	10
1618	177	98
1619	177	246
1620	177	898
1621	177	82
1622	177	172
1623	177	11
1624	178	590
1625	178	98
1626	178	76
1627	178	17
1628	178	29
1629	178	514
1630	178	532
1631	178	103
1632	178	221
1633	178	223
1634	178	11
1635	179	78
1636	179	55
1637	179	299
1638	179	280
1639	179	103
1640	179	588
1641	179	202
1642	179	79
1643	179	98
1644	179	76
1645	179	246
1646	179	584
1647	179	155
1648	180	55
1649	180	94
1650	180	229
1651	180	11
1652	180	29
1653	180	659
1654	180	132
1655	180	128
1656	180	3717
1657	180	532
1658	181	23
1659	181	21
1660	181	26
1661	181	11
1662	181	280
1663	181	298
1664	181	10
1665	181	228
1666	182	235
1667	182	3935
1668	182	1919
1669	182	86
1670	182	189
1671	182	128
1672	182	2470
1673	182	146
1674	182	152
1675	182	528
1676	182	85
1677	183	108
1678	183	228
1679	183	1713
1680	183	211
1681	183	530
1682	183	48
1683	183	281
1684	183	47
1685	183	489
1686	183	565
1687	184	686
1688	184	625
1689	184	605
1690	184	159
1691	184	684
1692	184	266
1693	184	190
1694	184	682
1695	184	71
1696	184	269
1697	184	685
1698	184	683
1699	184	320
1700	185	228
1701	185	8
1702	185	11
1703	185	29
1704	185	10
1705	185	266
1706	185	21
1707	185	186
1708	185	67
1709	185	1
1710	186	211
1711	186	3937
1712	186	3938
1713	186	3939
1714	186	3940
1715	186	1817
1716	186	3941
1717	186	3942
1718	186	3943
1719	186	191
1720	186	2277
1721	187	48
1722	187	47
1723	187	489
1724	187	2014
1725	187	3944
1726	187	18
1727	187	108
1728	187	21
1729	187	2748
1730	187	52
1731	188	183
1732	188	27
1733	188	371
1734	188	48
1735	188	2133
1736	188	47
1737	188	489
1738	188	18
1739	188	108
1740	188	50
1741	189	1370
1742	189	42
1743	189	11
1744	189	1388
1745	189	10
1746	189	716
1747	189	9
1748	189	228
1749	189	845
1750	189	776
1751	190	11
1752	190	79
1753	190	1195
1754	190	17
1755	190	10
1756	190	243
1757	190	76
1758	190	81
1759	190	82
1760	190	221
1761	190	567
1762	191	731
1763	191	3947
1764	191	3948
1765	191	3949
1766	191	228
1767	191	131
1768	191	3950
1769	191	578
1770	191	3951
1771	191	969
1772	191	2992
1773	191	742
1774	191	272
1775	191	632
1776	192	74
1777	192	2319
1778	192	940
1779	192	233
1780	192	108
1781	192	3954
1782	192	218
1783	192	660
1784	192	481
1785	192	73
1786	193	2075
1787	193	164
1788	193	241
1789	193	449
1790	193	2452
1791	193	108
1792	193	13
1793	193	726
1794	193	939
1795	193	1408
1796	193	242
1797	193	448
1798	194	1743
1799	194	362
1800	194	1034
1801	194	292
1802	194	536
1803	194	558
1804	194	469
1805	195	73
1806	195	13
1807	195	36
1808	195	218
1809	195	1675
1810	195	1650
1811	195	3955
1812	195	357
1813	196	3958
1814	196	3959
1815	196	52
1816	196	153
1817	196	155
1818	196	136
1819	197	1118
1820	197	11
1821	197	155
1822	197	138
1823	197	10
1824	197	7
1825	197	1065
1826	197	71
1827	197	256
1828	198	194
1829	198	214
1830	198	191
1831	198	3732
1832	198	189
1833	198	216
1834	198	164
1835	198	133
1836	198	546
1837	198	1739
1838	198	251
1852	230	29
1853	230	36
1854	230	217
1855	230	218
1856	230	660
1857	230	189
1858	230	469
1859	231	11
1860	231	15
1861	231	781
1862	231	21
1863	231	179
1864	231	102
1865	231	10
1866	231	113
1867	231	105
1868	231	780
1869	232	10
1870	232	7
1871	232	211
1872	232	2
1873	232	6
1874	232	34
1875	232	595
1876	232	4
1877	232	753
1878	232	11
1879	233	10
1880	233	228
1881	233	172
1882	233	11
1883	233	79
1884	233	375
1885	233	21
1886	233	444
1887	233	17
1888	233	160
1889	233	692
1890	234	17
1891	234	10
1892	234	102
1893	234	607
1894	234	11
1895	234	188
1896	234	83
1897	234	29
1898	234	21
1899	235	10
1900	235	11
1901	235	228
1902	235	55
1903	235	256
1904	235	29
1905	235	138
1906	236	556
1907	236	10
1908	236	164
1909	236	11
1910	236	108
1911	236	47
1912	236	13
1913	236	489
1914	237	241
1915	237	238
1916	237	242
1917	237	464
1918	238	1863
1919	238	648
1920	238	102
1921	238	3456
1922	238	29
1923	239	10
1924	239	521
1925	239	115
1926	239	164
1927	239	36
1928	239	857
1929	239	11
1930	239	21
1931	239	853
1932	240	73
1933	240	1311
1934	240	489
1935	240	582
1936	240	357
1937	240	36
1938	240	50
1939	241	90
1940	241	222
1941	241	266
1942	241	82
1943	241	79
1944	241	188
1945	241	447
1946	241	243
1947	241	186
1948	241	10
1949	241	172
1950	241	15
1951	242	103
1952	242	17
1953	242	76
1954	242	170
1955	242	71
1956	242	11
1957	242	77
1958	242	246
1959	242	10
1960	242	172
1961	243	90
1962	243	732
1963	243	1258
1964	243	375
1965	243	3998
1966	243	10
1967	243	11
1968	243	55
1969	243	1111
1970	243	671
1971	243	506
1972	244	304
1973	244	255
1974	244	155
1975	244	303
1976	244	305
1977	245	64
1978	245	3123
1979	245	47
1980	245	27
1981	245	183
1982	245	18
1983	245	1670
1984	245	48
1985	245	489
1986	245	3124
1987	246	183
1988	246	27
1989	246	2133
1990	246	18
1991	246	164
1992	246	466
1993	246	256
1994	246	346
1995	246	163
1996	246	489
1997	247	7
1998	247	522
1999	247	487
2000	247	8
2001	247	55
2002	247	11
2003	247	19
2004	247	10
2005	248	843
2006	248	89
2007	248	1877
2008	248	2116
2009	248	2117
2010	248	2120
2011	248	1207
2012	248	2121
2013	248	83
2014	248	2118
2015	248	190
2016	248	2038
2017	248	266
2018	248	375
2019	248	2122
2020	248	1082
2021	248	2119
2022	249	228
2023	249	146
2024	249	251
2025	249	563
2026	249	4005
2027	249	2345
2028	249	2346
2029	249	334
2030	249	2170
2031	249	1769
2032	249	256
2033	250	136
2034	250	106
2035	250	113
2036	250	109
2037	251	49
2038	251	838
2039	251	10
2040	251	835
2041	251	47
2042	251	53
2043	251	811
2044	251	489
2045	251	836
2046	251	837
2047	251	52
2048	252	229
2049	252	132
2050	252	10
2051	252	17
2052	252	91
2053	252	4009
2054	252	622
2055	252	15
2056	252	11
2057	253	10
2058	253	19
2059	253	8
2060	253	487
2061	253	11
2062	253	7
2063	253	522
2064	253	55
2065	254	67
2066	254	521
2067	254	853
2068	254	115
2069	254	29
2070	255	108
2071	255	462
2072	255	164
2073	255	660
2074	255	218
2075	255	211
2076	255	73
2077	255	74
2078	255	2415
2079	255	233
2080	255	217
2081	256	146
2082	256	2395
2083	256	292
2084	256	152
2085	256	4010
2086	256	1769
2087	256	366
2088	256	4011
2089	256	228
2090	257	21
2091	257	366
2092	257	11
2093	257	94
2094	257	10
2095	257	136
2096	257	155
2097	257	153
2098	257	4015
2099	258	78
2100	258	188
2101	258	265
2102	258	11
2103	258	137
2104	258	140
2105	258	243
2106	258	247
2107	258	677
2108	258	81
2109	258	10
2110	258	79
2111	259	487
2112	259	21
2113	259	447
2114	259	211
2115	259	198
2116	259	10
2117	259	5
2118	259	19
2119	260	228
2120	260	212
2121	260	10
2122	260	67
2123	260	65
2124	260	11
2125	260	4016
2126	260	199
2127	260	164
2128	261	228
2129	261	2476
2130	261	366
2131	261	2562
2132	261	257
2133	261	106
2134	261	480
2135	261	2477
2136	262	1251
2137	262	489
2138	262	1670
2139	262	48
2140	262	256
2141	262	50
2142	262	47
2143	263	4017
2144	263	10
2145	263	509
2146	263	65
2147	263	11
2148	263	29
2149	263	266
2150	264	26
2151	264	11
2152	264	4018
2153	264	10
2154	264	19
2155	264	4019
2156	264	55
2157	264	4020
2158	265	4021
2159	265	1649
2160	265	1231
2161	265	17
2162	265	11
2163	265	67
2164	265	266
2165	265	10
2166	265	65
2167	265	4022
2168	265	4023
2169	265	146
2170	266	556
2171	266	48
2172	266	114
2173	266	4024
2174	266	47
2175	266	489
2176	267	556
2177	267	36
2178	267	48
2179	267	114
2180	267	1688
2181	267	47
2182	267	489
2183	268	29
2184	268	172
2185	268	1400
2186	268	514
2187	268	79
2188	268	10
2189	268	82
2190	268	730
2191	269	1856
2192	269	1857
2193	269	15
2194	269	17
2195	269	228
2196	269	166
2197	269	908
2198	269	738
2199	269	502
2200	269	1858
2201	269	102
2202	270	11
2203	270	132
2204	270	157
2205	270	10
2206	270	229
2207	270	15
2208	270	228
2209	271	489
2210	271	17
2211	271	10
2212	271	1978
2213	271	15
2214	271	466
2215	271	951
2216	271	36
2217	271	53
2218	272	21
2219	272	115
2220	272	301
2221	272	157
2222	272	10
2223	272	607
2224	272	146
2225	272	314
2226	273	918
2227	273	777
2228	273	8
2229	273	4025
2230	273	266
2231	273	12
2232	273	55
2233	273	11
2234	273	10
2235	274	649
2236	274	98
2237	274	4026
2238	274	52
2239	274	246
2240	274	4027
2241	274	968
2242	274	4028
2243	274	67
2244	274	79
2245	274	169
2246	274	600
2247	274	76
2248	274	29
2249	274	265
2250	275	194
2251	275	1445
2252	275	191
2253	275	214
2254	275	251
2255	275	216
2256	275	256
2257	275	28
2258	275	498
2259	275	21
2260	275	146
2261	276	1021
2262	276	71
2263	276	142
2264	276	143
2265	276	79
2266	276	17
2267	276	1608
2268	276	11
2269	276	10
2270	276	91
2271	276	87
2272	277	36
2273	277	2078
2274	277	4029
2275	277	2630
2276	277	4030
2277	277	4031
2278	277	2739
2279	278	218
2280	278	73
2281	278	357
2282	278	217
2283	278	1675
2284	278	233
2285	278	74
2286	279	1866
2287	279	2426
2288	279	15
2289	279	42
2290	279	17
2291	279	266
2292	279	10
2293	279	228
2294	279	25
2295	279	4025
2296	280	11
2297	280	146
2298	280	78
2299	280	169
2300	280	98
2301	280	17
2302	280	10
2303	280	76
2304	280	14
2305	280	1350
2306	280	79
2307	280	81
2308	281	146
2309	281	659
2310	281	328
2311	281	132
2312	281	90
2313	281	15
2314	281	17
2315	281	447
2316	281	14
2317	281	204
2318	281	87
2319	282	11
2320	282	55
2321	282	17
2322	282	10
2323	282	1092
2324	282	79
2325	282	155
2326	282	138
2327	283	83
2328	283	186
2329	283	11
2330	283	55
2331	283	497
2332	283	266
2333	283	17
2334	283	10
2335	283	1527
2336	283	188
2337	283	172
2338	284	11
2339	284	595
2340	284	57
2341	284	42
2342	284	29
2343	284	10
2344	284	1769
2345	284	776
2346	285	233
2347	285	74
2348	285	1789
2349	285	73
2350	285	660
2351	285	752
2352	285	218
2353	285	2635
2354	285	1688
2355	285	1650
2356	285	2804
2357	286	146
2358	286	228
2359	286	172
2360	286	82
2361	286	87
2362	286	10
2363	286	81
2364	286	267
2365	286	578
2366	286	17
2367	286	221
2368	286	71
2369	287	10
2370	287	55
2371	287	1309
2372	287	649
2373	287	169
2374	287	67
2375	287	11
2376	287	4044
2377	287	1265
2378	287	79
2379	287	98
2380	287	923
2381	287	265
2382	287	246
2383	288	1675
2384	288	74
2385	288	218
2386	288	1445
2387	288	4045
2388	289	11
2389	289	1151
2390	289	1147
2391	289	1149
2392	289	8
2393	289	10
2394	289	1148
2395	289	266
2396	289	26
2397	289	1150
2398	289	1152
2399	289	1146
2400	290	216
2401	290	191
2402	290	194
2403	290	146
2404	290	193
2405	290	86
2406	290	251
2407	290	2200
2408	290	85
2409	290	1454
2410	290	468
2411	290	214
2412	291	2467
2413	291	1656
2414	291	62
2415	291	138
2416	291	44
2417	291	895
2418	291	743
2419	291	4046
2420	291	10
2421	291	4047
2422	291	3791
2423	291	447
2424	291	22
2425	292	1645
2426	292	310
2427	292	4048
2428	292	4049
2429	292	2494
2430	292	375
2431	292	4050
2432	292	4051
2433	292	4052
2434	292	598
2435	292	1704
2436	292	4053
2437	292	4054
2438	293	29
2439	293	680
2440	293	3052
2441	293	11
2442	293	1014
2443	293	1381
2444	293	843
2445	293	1153
2446	293	4055
2447	293	1543
2448	294	98
2449	294	138
2450	294	17
2451	294	29
2452	294	14
2453	294	11
2454	294	228
2455	294	10
2456	295	549
2457	295	391
2458	295	335
2459	295	390
2460	295	387
2461	295	389
2462	295	211
2463	295	285
2464	295	154
2465	295	381
2466	296	179
2467	296	4058
2468	296	106
2469	296	366
2470	296	15
2471	296	376
2472	296	10
2473	296	136
2474	296	371
2475	296	122
2476	297	179
2477	297	11
2478	297	105
2479	297	29
2480	298	53
2481	298	761
2482	298	811
2483	298	489
2484	298	18
2485	298	1330
2486	298	108
2487	298	21
2488	298	4059
2489	298	256
2490	299	55
2491	299	1042
2492	299	187
2493	299	85
2494	299	11
2495	299	865
2496	299	10
2497	299	15
2498	299	86
2499	300	29
2500	300	375
2501	300	509
2502	300	132
2503	300	280
2504	300	1338
2505	300	165
2506	300	666
2507	300	82
2508	301	280
2509	301	509
2510	301	165
2511	301	1338
2512	301	132
2513	301	514
2514	301	666
2515	301	375
2516	301	29
2517	302	1858
2518	302	115
2519	302	2171
2520	302	521
2521	302	17
2522	302	4060
2523	302	4061
2524	302	873
2525	302	853
2526	302	4062
2527	303	105
2528	303	106
2529	303	228
2530	303	11
2531	303	10
2532	303	111
2533	303	366
2534	303	211
2535	303	179
2536	303	2344
2537	304	605
2538	304	17
2539	304	146
2540	304	11
2541	304	4063
2542	304	10
2543	304	374
2544	304	14
2545	304	371
2546	304	89
2547	304	509
2548	305	172
2549	305	17
2550	305	146
2551	305	11
2552	305	10
2553	305	85
2554	305	330
2555	305	132
2556	305	607
2557	305	79
2558	306	622
2559	306	650
2560	306	11
2561	306	10
2562	306	648
2563	306	143
2564	306	103
2565	306	91
2566	306	76
2567	306	330
2568	306	651
2569	306	79
2570	307	163
2571	307	4067
2572	307	4068
2573	307	136
2574	308	228
2575	308	2646
2576	308	358
2577	308	295
2578	308	121
2579	308	257
2580	308	2741
2581	308	2742
2582	308	2476
2583	308	565
2584	309	136
2585	309	114
2586	309	4069
2587	309	489
2588	309	50
2589	310	42
2590	310	1055
2591	310	5
2592	310	10
2593	310	885
2594	310	21
2595	310	332
2596	310	11
2597	310	371
2598	310	886
2599	310	23
2600	311	1022
2601	311	144
2602	311	17
2603	311	29
2604	311	11
2605	311	79
2606	311	108
2607	311	138
2608	311	10
2609	311	650
2610	312	1688
2611	312	233
2612	312	1650
2613	312	218
2614	312	74
2615	312	73
2616	312	1713
2617	312	4071
2618	312	4072
2619	312	371
2620	313	29
2621	313	21
2622	313	1029
2623	313	105
2624	313	446
2625	313	179
2626	313	10
2627	313	109
2628	313	67
2629	313	780
2630	314	186
2631	314	692
2632	314	105
2633	314	103
2634	314	188
2635	314	11
2636	314	10
2637	314	228
2638	314	79
2639	314	76
2640	314	89
2641	314	222
2642	315	218
2643	315	73
2644	315	660
2645	315	1688
2646	315	233
2647	315	489
2648	315	1650
2649	315	4074
2650	315	1802
2651	315	488
2652	315	74
2653	316	230
2654	316	1078
2655	316	94
2656	316	29
2657	316	532
2658	316	17
2659	316	11
2660	316	204
2661	316	327
2662	317	17
2663	317	4075
2664	317	78
2665	317	968
2666	317	375
2667	317	29
2668	318	371
2669	318	48
2670	318	466
2671	318	47
2672	318	64
2673	318	1251
2674	318	1199
2675	318	475
2676	318	489
2677	318	1330
2678	318	772
2679	318	256
2680	319	2662
2681	319	73
2682	319	114
2683	319	1788
2684	319	2786
2685	319	218
2686	319	354
2687	319	13
2688	320	1163
2689	320	29
2690	320	631
2691	320	223
2692	320	4081
2693	320	174
2694	320	4082
2695	320	4083
2696	321	146
2697	321	114
2698	321	556
2699	321	489
2700	321	292
2701	321	73
2702	321	2345
2703	321	1743
2704	322	148
2705	322	4085
2706	322	4086
2707	322	2832
2708	322	4087
2709	323	4094
2710	323	257
2711	323	228
2712	323	4095
2713	323	281
2714	323	3309
2715	323	4096
2716	323	2589
2717	324	136
2718	324	375
2719	324	327
2720	324	4097
2721	324	155
2722	324	153
2723	325	8
2724	325	19
2725	325	10
2726	325	29
2727	326	136
2728	326	105
2729	326	110
2730	326	111
2731	326	10
2732	326	102
2733	326	853
2734	326	106
2735	327	29
2736	327	4098
2737	327	28
2738	327	486
2739	327	4099
2740	328	132
2741	328	4101
2742	328	328
2743	328	102
2744	328	87
2745	328	10
2746	328	327
2747	328	447
2748	328	1279
2749	328	230
2750	328	622
2751	328	17
2752	329	172
2753	329	21
2754	329	102
2755	329	2253
2756	329	10
2757	329	98
2758	329	17
2759	329	138
2760	329	11
2761	329	4102
2762	330	2544
2763	330	335
2764	330	332
2765	330	4103
2766	330	334
2767	330	4104
2768	331	3
2769	331	155
2770	331	759
2771	331	487
2772	331	985
2773	331	4
2774	331	982
2775	331	10
2776	331	981
2777	331	983
2778	331	211
2779	331	984
2780	331	62
2781	332	1025
2782	332	102
2783	332	29
2784	332	190
2785	333	791
2786	333	28
2787	333	2716
2788	333	1680
2789	333	18
2790	333	4106
2791	333	26
2792	333	489
2793	333	4107
2794	333	219
2795	333	951
2796	334	280
2797	334	50
2798	334	28
2799	334	18
2800	334	26
2801	334	489
2802	334	951
2803	334	2133
2804	335	1753
2805	335	169
2806	335	155
2807	335	14
2808	335	11
2809	335	10
2810	335	154
2811	335	98
2812	335	183
2813	335	607
2814	335	796
2815	336	487
2816	336	10
2817	336	1305
2818	336	11
2819	336	180
2820	336	29
2821	337	10
2822	337	489
2823	337	322
2824	337	447
2825	337	47
2826	337	48
2827	337	53
2828	337	5
2829	337	49
2830	338	4109
2831	338	660
2832	338	468
2833	338	117
2834	338	74
2835	338	2518
2836	338	233
2837	338	217
2838	338	218
2839	338	2804
2840	339	29
2841	339	11
2842	339	1272
2843	339	10
2844	339	17
2845	339	188
2846	340	450
2847	340	242
2848	340	256
2849	340	238
2850	340	241
2851	341	660
2852	341	73
2853	341	2186
2854	341	233
2855	341	2185
2856	341	1688
2857	341	2518
2858	341	2595
2859	341	1984
2860	341	2636
2861	341	1650
2862	341	74
2863	342	334
2864	342	772
2865	342	335
2866	343	11
2867	343	190
2868	343	15
2869	343	67
2870	343	731
2871	343	677
2872	343	83
2873	343	248
2874	343	10
2875	343	997
2876	343	17
2877	344	204
2878	344	11
2879	344	89
2880	344	10
2881	344	94
2882	344	278
2883	344	17
2884	344	1331
2885	344	1118
2886	344	327
2887	345	2332
2888	345	47
2889	345	800
2890	345	2333
2891	345	49
2892	345	2331
2893	345	2334
2894	345	53
2895	345	489
2896	345	726
2897	345	776
2898	345	2021
2899	346	11
2900	346	804
2901	346	136
2902	346	42
2903	346	355
2904	346	228
2905	346	791
2906	346	10
2907	346	463
2908	347	71
2909	347	1035
2910	347	81
2911	347	17
2912	347	10
2913	347	500
2914	347	188
2915	347	222
2916	347	79
2917	347	11
2918	348	94
2919	348	17
2920	348	29
2921	348	10
2922	348	15
2923	348	132
2924	348	375
2925	348	11
2926	349	4125
2927	349	76
2928	349	660
2929	349	243
2930	349	2185
2931	349	3355
2932	349	10
2933	349	4126
2934	349	15
2935	349	3791
2936	349	79
2937	350	67
2938	350	76
2939	350	29
2940	350	10
2941	350	89
2942	350	188
2943	350	186
2944	350	246
2945	350	103
2946	350	78
2947	350	222
2948	350	79
2949	350	11
2950	351	335
2951	351	2617
2952	351	462
2953	351	47
2954	351	218
2955	351	489
2956	351	108
2957	351	164
2958	351	73
2959	351	114
2960	352	159
2961	352	71
2962	352	320
2963	352	266
2964	352	605
2965	352	190
2966	352	686
2967	352	685
2968	352	625
2969	352	684
2970	352	269
2971	352	683
2972	352	682
2973	353	215
2974	353	251
2975	353	85
2976	353	1993
2977	353	10
2978	353	86
2979	353	82
2980	353	1548
2981	353	11
2982	353	2210
2983	354	283
2984	354	1868
2985	354	285
2986	354	350
2987	354	4100
2988	354	2344
2989	354	286
2990	354	287
2991	355	1585
2992	355	155
2993	355	153
2994	355	2120
2995	355	2280
2996	355	136
2997	355	4129
2998	356	852
2999	356	521
3000	356	115
3001	356	11
3002	356	10
3003	356	853
3004	356	164
3005	356	52
3006	356	854
3007	356	21
3008	357	79
3009	357	3754
3010	357	77
3011	357	76
3012	357	10
3013	357	17
3014	357	29
3015	357	1025
3016	358	521
3017	358	262
3018	358	50
3019	358	52
3020	358	4130
3021	358	4131
3022	358	489
3023	358	4132
3024	358	345
3025	358	2832
3026	359	319
3027	359	10
3028	359	211
3029	359	489
3030	359	381
3031	359	47
3032	359	3792
3033	359	814
3034	359	228
3035	360	2822
3036	360	155
3037	360	478
3038	360	3208
3039	360	256
3040	360	68
3041	360	228
3042	360	345
3043	361	327
3044	361	1447
3045	361	1299
3046	361	604
3047	361	17
3048	361	82
3049	361	4134
3050	361	10
3051	361	79
3052	361	172
3053	361	11
3054	361	81
3055	362	125
3056	362	4135
3057	362	17
3058	362	85
3059	362	82
3060	362	146
3061	362	2552
3062	362	10
3063	362	11
3064	362	81
3065	363	295
3066	363	563
3067	363	346
3068	363	228
3069	363	108
3070	363	4136
3071	363	47
3072	363	48
3073	363	292
3074	363	545
3075	363	489
3076	363	1933
3077	364	502
3078	364	1215
3079	364	10
3080	364	327
3081	364	11
3082	364	17
3083	364	102
3084	364	21
3085	364	108
3086	364	15
3087	364	83
3088	365	164
3089	365	256
3090	365	13
3091	365	1650
3092	365	1251
3093	365	2028
3094	365	73
3095	365	489
3096	365	114
3097	365	108
3098	365	3379
3099	365	47
3100	366	68
3101	366	4137
3102	366	159
3103	366	55
3104	366	371
3105	366	11
3106	366	215
3107	367	804
3108	367	7
3109	367	775
3110	367	55
3111	367	10
3112	367	1388
3113	367	11
3114	367	716
3115	367	228
3116	368	304
3117	368	1654
3118	368	381
3119	368	52
3120	368	4138
3121	368	305
3122	368	261
3123	368	108
3124	368	335
3125	368	183
3126	368	852
3127	368	548
3128	369	4139
3129	369	358
3130	369	256
3131	369	2476
3132	369	480
3133	369	108
3134	369	2475
3135	369	228
3136	369	345
3137	370	214
3138	370	191
3139	370	251
3140	370	546
3141	370	195
3142	370	194
3143	370	73
3144	370	216
3145	370	146
3146	370	4140
3147	371	447
3148	371	113
3149	371	110
3150	371	376
3151	371	4148
3152	371	228
3153	371	55
3154	371	212
3155	371	10
3156	372	29
3157	372	1548
3158	372	11
3159	372	222
3160	372	188
3161	372	17
3162	372	10
3163	373	153
3164	373	67
3165	373	11
3166	373	155
3167	373	136
3168	373	55
3169	373	10
3170	374	632
3171	374	1265
3172	374	1529
3173	374	67
3174	374	11
3175	374	843
3176	374	4149
3177	374	1524
3178	374	704
3179	374	3594
3180	374	169
3181	374	1732
3182	374	1698
3183	374	337
3184	375	53
3185	375	21
3186	375	50
3187	375	1548
3188	375	489
3189	375	371
3190	375	47
3191	375	211
3192	376	36
3193	376	11
3194	376	159
3195	376	200
3196	376	266
3197	376	4150
3198	376	186
3199	376	759
3200	377	4151
3201	377	3725
3202	377	4152
3203	377	153
3204	377	21
3205	377	3798
3206	377	4153
3207	377	1038
3208	377	442
3209	377	136
3210	377	155
3211	378	1488
3212	378	108
3213	378	15
3214	378	73
3215	378	47
3216	378	114
3217	378	489
3218	378	3193
3219	378	48
3220	378	164
3221	379	11
3222	379	79
3223	379	82
3224	379	87
3225	379	17
3226	379	246
3227	379	188
3228	379	29
3229	379	10
3230	379	81
3231	380	190
3232	380	10
3233	380	11
3234	380	82
3235	380	172
3236	380	684
3237	380	996
3238	380	156
3239	380	246
3240	380	17
3241	380	265
3242	380	590
3243	381	190
3244	381	266
3245	381	1296
3246	381	10
3247	381	684
3248	381	156
3249	381	29
3250	382	489
3251	382	357
3252	382	13
3253	382	47
3254	382	48
3255	382	18
3256	382	345
3257	382	50
3258	383	447
3259	383	218
3260	383	1445
3261	383	10
3262	383	2307
3263	383	2355
3264	383	569
3265	383	940
3266	383	3277
3267	384	86
3268	384	11
3269	384	146
3270	384	81
3271	384	82
3272	384	89
3273	384	17
3274	384	375
3275	384	676
3276	384	10
3277	384	246
3278	384	85
3279	384	79
3280	385	153
3281	385	67
3282	385	246
3283	385	1014
3284	385	76
3285	385	102
3286	385	136
3287	385	155
3288	385	1474
3289	385	103
3290	385	341
3291	386	1182
3292	386	17
3293	386	131
3294	386	1111
3295	386	11
3296	386	1328
3297	386	619
3298	386	375
3299	386	10
3300	386	15
3301	387	47
3302	387	496
3303	387	48
3304	387	494
3305	387	262
3306	387	256
3307	387	495
3308	387	163
3309	387	489
3310	387	108
3311	388	186
3312	388	654
3313	388	652
3314	388	655
3315	388	11
3316	388	228
3317	388	14
3318	388	165
3319	388	67
3320	388	10
3321	388	653
3322	388	15
3323	389	160
3324	389	4161
3325	389	81
3326	389	17
3327	389	76
3328	389	77
3329	389	79
3330	389	10
3331	389	259
3332	389	4162
3333	389	15
3334	390	4163
3335	390	47
3336	390	114
3337	390	48
3338	390	3840
3339	390	50
3340	390	4164
3341	390	811
3342	390	36
3343	390	489
3344	391	18
3345	391	114
3346	391	47
3347	391	50
3348	391	2133
3349	391	3840
3350	391	1291
3351	391	489
3352	392	102
3353	392	79
3354	392	188
3355	392	1796
3356	392	76
3357	392	11
3358	392	17
3359	392	103
3360	392	10
3361	393	569
3362	393	217
3363	393	73
3364	393	397
3365	393	4166
3366	393	82
3367	393	11
3368	393	660
3369	393	940
3370	393	218
3371	394	1671
3372	394	108
3373	394	1788
3374	394	2662
3375	394	354
3376	394	13
3377	394	73
3378	394	466
3379	394	256
3380	394	218
3381	395	251
3382	395	102
3383	395	146
3384	395	11
3385	395	189
3386	395	103
3387	395	152
3388	395	10
3389	396	381
3390	396	851
3391	396	940
3392	396	68
3393	396	660
3394	396	108
3395	396	335
3396	396	4167
3397	396	164
3398	396	334
3399	397	380
3400	397	4168
3401	397	136
3402	397	4169
3403	397	4170
3404	398	193
3405	398	295
3406	398	194
3407	398	152
3408	398	214
3409	398	2481
3410	398	191
3411	399	728
3412	399	18
3413	399	10
3414	399	4171
3415	399	36
3416	399	11
3417	399	228
3418	399	98
3419	400	85
3420	400	172
3421	400	89
3422	400	11
3423	400	108
3424	400	79
3425	400	403
3426	400	10
3427	400	17
3428	401	281
3429	401	48
3430	401	498
3431	401	530
3432	401	3226
3433	401	4177
3434	401	228
3435	401	4178
3436	401	47
3437	401	489
3438	402	65
3439	402	180
3440	402	55
3441	402	28
3442	402	11
3443	402	335
3444	402	154
3445	402	373
3446	402	108
3447	402	156
3448	402	10
3449	402	619
3450	403	26
3451	403	23
3452	403	7
3453	403	11
3454	403	10
3455	403	21
3456	403	20
3457	403	28
3458	403	5
3459	404	4179
3460	404	1086
3461	404	4180
3462	404	1
3463	404	6
3464	404	4181
3465	404	532
3466	404	4182
3467	404	108
3468	404	28
3469	405	94
3470	405	10
3471	405	21
3472	405	17
3473	405	29
3474	406	2210
3475	406	11
3476	406	82
3477	406	86
3478	406	1548
3479	406	251
3480	406	10
3481	406	85
3482	406	1993
3483	406	215
3484	407	995
3485	407	109
3486	407	179
3487	407	113
3488	407	280
3489	407	105
3490	407	10
3491	407	111
3492	407	996
3493	407	11
3494	408	73
3495	408	396
3496	408	2438
3497	408	489
3498	408	2617
3499	408	233
3500	408	483
3501	408	16
3502	408	114
3503	409	487
3504	409	256
3505	409	36
3506	409	334
3507	409	387
3508	409	211
3509	409	448
3510	409	108
3511	409	335
3512	410	1502
3513	410	164
3514	410	4184
3515	410	154
3516	410	156
3517	410	10
3518	410	381
3519	410	373
3520	410	1296
3521	410	11
3522	411	105
3523	411	11
3524	411	17
3525	411	237
3526	411	107
3527	411	113
3528	411	179
3529	411	109
3530	411	111
3531	411	110
3532	412	29
3533	412	186
3534	412	11
3535	412	17
3536	412	10
3537	412	1195
3538	412	375
3539	413	94
3540	413	11
3541	413	17
3542	413	155
3543	413	10
3544	413	136
3545	413	153
3546	414	590
3547	414	81
3548	414	188
3549	414	657
3550	414	246
3551	414	10
3552	414	67
3553	414	4187
3554	414	212
3555	414	186
3556	414	71
3557	415	4188
3558	415	228
3559	415	11
3560	415	4189
3561	415	4190
3562	415	1478
3563	415	15
3564	415	532
3565	415	4191
3566	416	475
3567	416	114
3568	416	489
3569	416	483
3570	416	50
3571	417	47
3572	417	48
3573	417	4192
3574	417	1429
3575	417	114
3576	417	4193
3577	417	108
3578	417	65
3579	417	489
3580	417	403
3581	418	155
3582	418	153
3583	418	8
3584	418	42
3585	418	11
3586	418	10
3587	418	784
3588	418	136
3589	419	78
3590	419	21
3591	419	692
3592	419	108
3593	419	169
3594	419	11
3595	419	598
3596	419	923
3597	419	337
3598	419	67
3599	419	1131
3600	419	17
3601	419	10
3602	419	102
3603	420	8
3604	420	595
3605	420	4195
3606	420	4196
3607	420	11
3608	420	13
3609	420	1317
3610	420	10
3611	420	319
3612	421	110
3613	421	228
3614	421	179
3615	421	36
3616	421	11
3617	421	4197
3618	421	113
3619	421	136
3620	421	106
3621	421	102
3622	422	82
3623	422	17
3624	422	228
3625	422	678
3626	422	89
3627	422	10
3628	422	71
3629	422	81
3630	422	375
3631	422	67
3632	422	65
3633	422	11
3634	423	17
3635	423	259
3636	423	81
3637	423	246
3638	423	4198
3639	423	221
3640	423	82
3641	423	3321
3642	423	4199
3643	423	79
3644	423	152
3645	423	172
3646	423	1195
3647	424	29
3648	424	10
3649	424	164
3650	424	1582
3651	424	108
3652	424	753
3653	424	11
3654	425	11
3655	425	489
3656	425	1388
3657	425	4206
3658	425	62
3659	425	47
3660	425	744
3661	425	228
3662	425	768
3663	425	131
3664	425	28
3665	425	10
3666	426	1294
3667	426	202
3668	426	653
3669	426	1189
3670	426	1293
3671	426	1037
3672	426	650
3673	426	637
3674	426	280
3675	426	82
3676	426	98
3677	426	1245
3678	426	190
3679	427	11
3680	427	375
3681	427	229
3682	427	55
3683	427	17
3684	427	278
3685	427	2000
3686	427	94
3687	427	4207
3688	427	15
3689	428	4208
3690	428	107
3691	428	4209
3692	428	366
3693	428	109
3694	428	113
3695	428	106
3696	429	375
3697	429	77
3698	429	10
3699	429	21
3700	429	523
3701	429	14
3702	429	79
3703	429	248
3704	429	15
3705	429	17
3706	429	82
3707	430	4199
3708	430	114
3709	430	1648
3710	430	4211
3711	430	4212
3712	430	616
3713	430	29
3714	430	4213
3715	430	4214
3716	431	188
3717	431	243
3718	431	76
3719	431	103
3720	431	146
3721	431	246
3722	431	11
3723	431	17
3724	431	29
3725	431	87
3726	431	79
3727	431	327
3728	432	10
3729	432	89
3730	432	29
3731	432	230
3732	432	204
3733	432	469
3734	432	229
3735	433	10
3736	433	107
3737	433	366
3738	433	376
3739	433	445
3740	433	11
3741	433	179
3742	433	228
3743	433	1796
3744	434	104
3745	434	10
3746	434	98
3747	434	169
3748	434	67
3749	434	11
3750	434	264
3751	434	4215
3752	434	202
3753	434	17
3754	434	4216
3755	435	4217
3756	435	3874
3757	435	146
3758	435	4218
3759	435	281
3760	435	4219
3761	435	4220
3762	435	1006
3763	435	4221
3764	435	521
3765	435	108
3766	435	228
3767	435	4222
3768	436	136
3769	436	28
3770	436	211
3771	436	47
3772	436	772
3773	436	13
3774	436	489
3775	436	73
3776	436	50
3777	436	228
3778	436	48
3779	437	1291
3780	437	18
3781	437	219
3782	437	183
3783	437	1670
3784	437	489
3785	437	27
3786	437	2272
3787	437	108
3788	437	52
3789	438	36
3790	438	47
3791	438	4223
3792	438	37
3793	438	2159
3794	438	13
3795	438	489
3796	438	29
3797	438	804
3798	438	228
3799	438	48
3800	439	228
3801	439	82
3802	439	87
3803	439	17
3804	439	246
3805	439	133
3806	439	11
3807	439	660
3808	439	79
3809	439	10
3810	439	81
3811	440	4227
3812	440	108
3813	440	1378
3814	440	728
3815	440	215
3816	440	183
3817	440	280
3818	440	10
3819	440	319
3820	441	98
3821	441	89
3822	441	17
3823	441	169
3824	441	78
3825	441	11
3826	441	4228
3827	441	67
3828	441	300
3829	441	102
3830	441	1042
3831	441	10
3832	441	81
3833	442	18
3834	442	163
3835	442	183
3836	442	486
3837	442	27
3838	442	344
3839	442	36
3840	442	2133
3841	443	81
3842	443	500
3843	443	10
3844	443	79
3845	443	15
3846	443	17
3847	443	102
3848	443	11
3849	443	87
3850	444	853
3851	444	155
3852	444	132
3853	444	136
3854	444	17
3855	444	153
3856	444	226
3857	445	266
3858	445	170
3859	445	10
3860	445	212
3861	445	4229
3862	445	2038
3863	445	4230
3864	445	11
3865	445	1877
3866	445	843
3867	445	625
3868	445	605
3869	446	283
3870	446	285
3871	446	288
3872	446	688
3873	446	2654
3874	446	286
3875	447	257
3876	447	68
3877	447	1
3878	447	228
3879	447	4231
3880	447	30
3881	447	2475
3882	447	2382
3883	448	146
3884	448	172
3885	448	79
3886	448	10
3887	448	17
3888	448	731
3889	448	330
3890	448	77
3891	448	102
3892	448	11
3893	449	976
3894	449	55
3895	449	4233
3896	449	4234
3897	449	10
3898	449	4235
3899	449	4236
3900	449	11
3901	449	4237
3902	450	1515
3903	450	183
3904	450	692
3905	450	4238
3906	450	728
3907	450	28
3908	450	285
3909	450	18
3910	450	11
3911	450	1309
3912	450	2620
3913	451	1061
3914	451	4239
3915	451	4240
3916	451	11
3917	451	10
3918	451	113
3919	451	109
3920	451	102
3921	451	4241
3922	451	780
3923	451	843
3924	452	918
3925	452	8
3926	452	55
3927	452	1
3928	452	11
3929	452	108
3930	452	10
3931	452	26
3932	453	11
3933	453	17
3934	453	190
3935	453	67
3936	453	29
3937	454	11
3938	454	17
3939	454	91
3940	454	10
3941	454	226
3942	454	375
3943	454	89
3944	454	132
3945	454	29
3946	455	11
3947	455	4243
3948	455	1032
3949	455	111
3950	455	105
3951	455	4244
3952	455	366
3953	455	15
3954	455	10
3955	456	202
3956	456	17
3957	456	11
3958	456	98
3959	456	246
3960	456	79
3961	456	89
3962	456	67
3963	456	159
3964	456	169
3965	456	76
3966	456	78
3967	457	11
3968	457	106
3969	457	4245
3970	457	21
3971	457	109
3972	457	107
3973	457	3808
3974	457	228
3975	457	521
3976	457	1306
3977	457	486
3978	457	369
3979	458	17
3980	458	15
3981	458	248
3982	458	14
3983	458	222
3984	458	188
3985	458	10
3986	458	190
3987	458	11
3988	458	170
3989	459	79
3990	459	17
3991	459	330
3992	459	102
3993	459	146
3994	459	731
3995	459	172
3996	459	10
3997	459	11
3998	459	77
3999	460	251
4000	460	194
4001	460	152
4002	460	216
4003	460	146
4004	460	191
4005	460	569
4006	460	214
4007	460	468
4008	460	4246
4009	461	17
4010	461	607
4011	461	11
4012	461	29
4013	461	14
4014	461	4247
4015	461	10
4016	461	15
4017	462	391
4018	462	549
4019	462	390
4020	462	389
4021	462	387
4022	462	381
4023	462	335
4024	462	285
4025	462	154
4026	462	211
4027	463	212
4028	463	50
4029	463	114
4030	463	22
4031	463	2469
4032	463	4248
4033	463	2081
4034	464	4249
4035	464	36
4036	464	47
4037	464	51
4038	464	3445
4039	464	489
4040	464	326
4041	464	838
4042	464	114
4043	464	4250
4044	465	389
4045	465	549
4046	465	211
4047	465	381
4048	465	390
4049	465	335
4050	465	154
4051	465	387
4052	465	285
4053	465	391
4054	466	153
4055	466	28
4056	466	188
4057	466	3632
4058	466	136
4059	466	155
4060	466	1163
4061	466	67
4062	466	4251
4063	467	2345
4064	467	194
4065	467	146
4066	467	214
4067	467	292
4068	467	228
4069	467	443
4070	467	2399
4071	467	191
4072	467	193
4073	468	228
4074	468	768
4075	468	489
4076	468	2365
4077	468	36
4078	468	2364
4079	468	2363
4080	468	47
4081	468	806
4082	468	13
4083	468	804
4084	469	2806
4085	469	4255
4086	469	228
4087	469	2476
4088	469	4256
4089	469	146
4090	469	871
4091	469	688
4092	469	4257
4093	469	3874
4094	469	257
4095	470	169
4096	470	21
4097	470	643
4098	470	10
4099	470	1094
4100	470	78
4101	470	11
4102	470	337
4103	470	98
4104	470	17
4105	470	102
4106	470	67
4107	470	1093
4108	471	10
4109	471	110
4110	471	179
4111	471	154
4112	471	946
4113	471	113
4114	471	105
4115	471	109
4116	471	107
4117	471	945
4118	472	10
4119	472	169
4120	472	17
4121	472	102
4122	472	67
4123	472	337
4124	472	7
4125	472	11
4126	472	1122
4127	472	78
4128	472	146
4129	472	21
4130	473	93
4131	473	10
4132	473	1091
4133	473	1021
4134	473	188
4135	473	175
4136	473	157
4137	473	222
4138	473	15
4139	473	667
4140	474	10
4141	474	68
4142	474	164
4143	474	114
4144	474	73
4145	474	752
4146	474	256
4147	474	11
4148	475	487
4149	475	726
4150	475	8
4151	475	1086
4152	475	10
4153	475	11
4154	475	108
4155	475	228
4156	475	280
4157	475	19
4158	476	223
4159	476	11
4160	476	165
4161	476	1501
4162	476	704
4163	476	154
4164	476	14
4165	476	1500
4166	476	1499
4167	476	17
4168	476	169
4169	476	67
4170	476	82
4171	477	11
4172	477	212
4173	477	29
4174	477	4259
4175	477	10
4176	477	4260
4177	477	846
4178	478	29
4179	478	843
4180	478	28
4181	478	376
4182	479	537
4183	479	281
4184	479	2484
4185	479	228
4186	479	530
4187	479	36
4188	479	2485
4189	479	2477
4190	480	11
4191	480	62
4192	480	48
4193	480	228
4194	480	47
4195	480	804
4196	480	18
4197	480	489
4198	480	159
4199	481	2326
4200	481	2476
4201	481	478
4202	481	4261
4203	481	3601
4204	481	228
4205	481	109
4206	481	113
4207	481	345
4208	481	155
4209	481	2822
4210	482	771
4211	482	21
4212	482	26
4213	482	1
4214	482	28
4215	482	8
4216	482	10
4217	482	23
4218	482	11
4219	483	4265
4220	483	4266
4221	483	4267
4222	483	229
4223	483	4268
4224	483	4269
4225	483	10
4226	483	17
4227	483	11
4228	483	132
4229	484	2406
4230	484	2810
4231	484	241
4232	484	448
4233	484	242
4234	484	4270
4235	484	4271
4236	484	4272
4237	484	2407
4238	485	47
4239	485	228
4240	485	18
4241	485	62
4242	485	48
4243	485	159
4244	485	804
4245	485	489
4246	485	11
4247	486	241
4248	486	2182
4249	486	242
4250	486	211
4251	486	238
4252	486	154
4253	486	3177
4254	486	449
4255	486	4273
4256	487	47
4257	487	353
4258	487	355
4259	487	346
4260	487	463
4261	487	489
4262	488	62
4263	488	29
4264	488	4274
4265	488	1388
4266	488	42
4267	488	4275
4268	488	281
4269	488	11
4270	489	29
4271	489	10
4272	489	11
4273	489	4282
4274	490	3373
4275	490	8
4276	490	2726
4277	490	228
4278	490	489
4279	490	47
4280	490	1
4281	490	6
4282	490	10
4283	490	1922
4284	490	2763
4285	491	132
4286	491	1222
4287	491	1353
4288	491	11
4289	491	94
4290	491	153
4291	491	136
4292	491	10
4293	491	155
4294	491	1149
4295	491	4283
4296	492	29
4297	492	10
4298	492	4282
4299	492	11
4300	493	194
4301	493	146
4302	493	191
4303	493	152
4304	493	214
4305	493	4284
4306	493	4285
4307	493	544
4308	493	1670
4309	494	137
4310	494	138
4311	494	141
4312	494	30
4313	494	139
4314	494	106
4315	494	108
4316	494	28
4317	494	135
4318	494	136
4319	494	140
4320	495	18
4321	495	27
4322	495	183
4323	495	489
4324	495	48
4325	495	47
4326	495	1670
4327	495	3123
4328	495	64
4329	495	3124
4330	496	1884
4331	496	232
4332	496	180
4333	496	285
4334	496	466
4335	496	2414
4336	496	286
4337	496	3150
4338	496	2945
4339	496	283
4340	496	287
4341	496	521
4342	496	939
4343	497	532
4344	497	489
4345	497	48
4346	497	136
4347	497	28
4348	497	326
4349	497	50
4350	497	11
4351	497	21
4352	497	47
4353	498	175
4354	498	10
4355	498	186
4356	498	327
4357	498	17
4358	498	11
4359	498	77
4360	498	599
4361	498	79
4362	498	76
4363	499	2840
4364	499	2838
4365	499	2839
4366	499	68
4367	499	1783
4368	499	521
4369	499	2841
4370	499	360
4371	499	13
4372	500	21
4373	500	23
4374	500	29
4375	500	10
4376	501	55
4377	501	228
4378	501	764
4379	501	61
4380	501	21
4381	501	10
4382	501	11
4383	501	26
4384	502	266
4385	502	447
4386	502	2309
4387	502	755
4388	502	228
4389	502	2311
4390	502	10
4391	502	7
4392	502	2310
4393	502	27
4394	502	26
4395	503	554
4396	503	2711
4397	503	303
4398	503	2146
4399	503	108
4400	503	2710
4401	503	2709
4402	503	2346
4403	503	555
4404	504	149
4405	504	147
4406	504	148
4407	504	1807
4408	504	1580
4409	505	1472
4410	505	79
4411	505	1074
4412	505	1464
4413	505	3667
4414	505	17
4415	505	2143
4416	505	1726
4417	505	1302
4418	505	1145
4419	505	11
4420	505	10
4421	506	79
4422	506	144
4423	506	71
4424	506	375
4425	506	199
4426	506	17
4427	506	190
4428	506	188
4429	506	10
4430	506	11
4431	506	1022
4432	507	256
4433	507	3560
4434	507	489
4435	507	582
4436	507	164
4437	507	108
4438	507	47
4439	507	52
4440	507	48
4441	507	811
4442	507	4311
4443	507	4312
4444	507	73
4445	508	17
4446	508	280
4447	508	4313
4448	508	21
4449	508	15
4450	508	11
4451	508	10
4452	508	105
4453	509	103
4454	509	157
4455	509	172
4456	509	1224
4457	509	76
4458	509	79
4459	509	89
4460	509	650
4461	509	685
4462	509	11
4463	509	622
4464	509	10
4465	510	155
4466	510	71
4467	510	17
4468	510	11
4469	510	153
4470	510	136
4471	511	1804
4472	511	71
4473	511	76
4474	511	79
4475	511	186
4476	511	153
4477	511	103
4478	511	136
4479	511	4314
4480	511	82
4481	511	155
4482	512	444
4483	512	11
4484	512	10
4485	512	15
4486	512	79
4487	512	89
4488	512	14
4489	512	17
4490	512	1215
4491	512	371
4492	513	68
4493	513	11
4494	513	55
4495	513	502
4496	513	21
4497	513	228
4498	513	29
4499	513	102
4500	513	371
4501	514	793
4502	514	11
4503	514	557
4504	514	131
4505	514	4315
4506	514	136
4507	514	1283
4508	514	355
4509	515	1701
4510	515	1527
4511	515	11
4512	515	164
4513	515	4316
4514	515	2079
4515	515	1704
4516	515	521
4517	515	1698
4518	515	2078
4519	516	154
4520	516	156
4521	516	521
4522	516	29
4523	516	10
4524	517	387
4525	517	4321
4526	517	356
4527	517	335
4528	517	391
4529	517	211
4530	517	4124
4531	517	381
4532	518	33
4533	518	332
4534	518	11
4535	518	4324
4536	518	19
4537	518	35
4538	518	10
4539	519	81
4540	519	384
4541	519	1142
4542	519	79
4543	519	11
4544	519	648
4545	519	159
4546	519	78
4547	519	248
4548	519	77
4549	519	4325
4550	519	246
4551	520	242
4552	520	211
4553	520	256
4554	520	241
4555	520	335
4556	520	108
4557	520	4326
4558	520	36
4559	520	558
4560	520	344
4561	521	1117
4562	521	17
4563	521	21
4564	521	11
4565	521	1298
4566	521	94
4567	521	3390
4568	521	2583
4569	521	532
4570	521	134
4571	522	332
4572	522	776
4573	522	42
4574	522	153
4575	522	4327
4576	522	4328
4577	522	4329
4578	522	155
4579	522	2422
4580	522	4330
4581	522	136
4582	522	4331
4583	523	35
4584	523	4324
4585	523	11
4586	523	33
4587	523	332
4588	523	10
4589	523	19
4590	524	632
4591	524	83
4592	524	266
4593	524	165
4594	524	190
4595	524	605
4596	524	203
4597	524	859
4598	524	4332
4599	524	4333
4600	524	4334
4601	524	4335
4602	524	2162
4603	524	759
4604	525	17
4605	525	29
4606	525	188
4607	525	11
4608	526	29
4609	526	156
4610	526	1910
4611	527	42
4612	527	4336
4613	527	21
4614	527	595
4615	527	66
4616	527	5
4617	527	11
4618	527	1213
4619	527	4337
4620	527	10
4621	528	331
4622	528	471
4623	528	211
4624	528	335
4625	528	465
4626	528	36
4627	529	136
4628	529	4338
4629	529	17
4630	529	132
4631	529	865
4632	529	155
4633	529	153
4634	529	229
4635	530	313
4636	530	153
4637	530	11
4638	530	155
4639	531	1759
4640	531	399
4641	531	10
4642	531	154
4643	531	4339
4644	531	164
4645	531	115
4646	531	232
4647	531	2307
4648	532	10
4649	532	1875
4650	532	11
4651	532	228
4652	532	13
4653	532	55
4654	532	42
4655	532	2110
4656	533	383
4657	533	4340
4658	533	9
4659	533	2717
4660	533	804
4661	533	10
4662	533	776
4663	533	108
4664	533	11
4665	533	228
4666	534	4341
4667	534	4342
4668	534	4343
4669	534	4344
4670	534	2147
4671	534	108
4672	534	257
4673	534	228
4674	534	380
4675	535	55
4676	535	15
4677	535	170
4678	535	17
4679	535	4348
4680	535	103
4681	535	10
4682	535	11
4683	535	76
4684	536	98
4685	536	136
4686	536	17
4687	536	478
4688	536	71
4689	536	155
4690	536	4349
4691	536	67
4692	536	78
4693	536	169
4694	536	11
4695	537	4283
4696	537	132
4697	537	1222
4698	537	1149
4699	537	1353
4700	537	136
4701	537	155
4702	537	94
4703	537	10
4704	537	11
4705	537	153
4706	538	570
4707	538	55
4708	538	532
4709	538	108
4710	538	3497
4711	538	10
4712	538	11
4713	539	65
4714	539	131
4715	539	4350
4716	539	29
4717	539	2538
4718	539	4351
4719	539	10
4720	540	448
4721	540	2810
4722	540	238
4723	541	556
4724	541	1086
4725	541	18
4726	541	3049
4727	541	108
4728	541	2818
4729	541	114
4730	541	11
4731	541	4352
4732	542	11
4733	542	593
4734	542	179
4735	542	10
4736	542	21
4737	542	107
4738	542	55
4739	542	105
4740	542	122
4741	542	109
4742	543	154
4743	543	845
4744	543	15
4745	543	4356
4746	543	4357
4747	543	180
4748	543	11
4749	543	10
4750	543	228
4751	544	4358
4752	544	136
4753	544	106
4754	544	4359
4755	544	4360
4756	544	3798
4757	544	114
4758	544	616
4759	545	328
4760	545	17
4761	545	229
4762	545	87
4763	545	94
4764	545	228
4765	545	11
4766	545	302
4767	545	10
4768	545	132
4769	546	71
4770	546	1250
4771	546	159
4772	546	607
4773	546	375
4774	546	11
4775	546	2625
4776	546	188
4777	547	4361
4778	547	159
4779	547	15
4780	547	4362
4781	547	4363
4782	547	4364
4783	548	146
4784	548	50
4785	548	292
4786	548	2345
4787	548	114
4788	548	47
4789	548	1677
4790	548	73
4791	548	489
4792	549	4245
4793	549	36
4794	549	852
4795	549	1330
4796	549	155
4797	549	48
4798	549	18
4799	549	108
4800	549	47
4801	549	489
4802	550	1919
4803	550	2258
4804	550	86
4805	550	193
4806	550	214
4807	550	1271
4808	550	2527
4809	550	103
4810	550	191
4811	550	76
4812	550	243
4813	551	256
4814	551	2078
4815	551	475
4816	551	50
4817	551	164
4818	551	114
4819	551	228
4820	551	352
4821	551	345
4822	551	73
4823	551	489
4824	552	4245
4825	552	1984
4826	552	2928
4827	552	36
4828	552	1086
4829	552	489
4830	552	47
4831	552	4365
4832	552	108
4833	552	4366
4834	552	383
4835	553	2253
4836	553	3293
4837	553	489
4838	553	362
4839	553	48
4840	553	835
4841	553	2346
4842	553	1716
4843	553	47
4844	553	228
4845	554	2913
4846	554	2914
4847	554	256
4848	554	1671
4849	554	13
4850	554	48
4851	554	18
4852	554	47
4853	554	489
4854	555	62
4855	555	228
4856	555	10
4857	555	556
4858	555	1604
4859	555	13
4860	555	114
4861	555	108
4862	556	10
4863	556	219
4864	556	8
4865	556	19
4866	556	40
4867	556	25
4868	556	11
4869	556	332
4870	557	228
4871	557	11
4872	557	146
4873	557	36
4874	557	4372
4875	557	4373
4876	557	607
4877	557	55
4878	557	10
4879	557	265
4880	558	590
4881	558	168
4882	558	81
4883	558	4375
4884	558	188
4885	558	78
4886	558	82
4887	558	222
4888	558	90
4889	558	648
4890	558	246
4891	558	266
4892	558	231
4893	558	10
4894	558	221
4895	559	146
4896	559	86
4897	559	1144
4898	559	85
4899	559	212
4900	559	228
4901	559	648
4902	559	11
4903	559	660
4904	559	1145
4905	559	172
4906	559	10
4907	559	221
4908	560	329
4909	560	18
4910	560	369
4911	560	367
4912	560	2615
4913	560	154
4914	560	180
4915	560	11
4916	560	2679
4917	560	3065
4918	560	480
4919	560	3067
4920	560	138
4921	560	4376
4922	561	298
4923	561	19
4924	561	25
4925	561	10
4926	561	8
4927	561	138
4928	561	11
4929	562	375
4930	562	10
4931	562	228
4932	562	91
4933	562	666
4934	562	78
4935	562	1159
4936	562	17
4937	562	212
4938	562	190
4939	562	1160
4940	563	1044
4941	563	10
4942	563	228
4943	563	11
4944	563	1045
4945	563	481
4946	563	26
4947	563	1043
4948	564	475
4949	564	47
4950	564	4377
4951	564	380
4952	564	73
4953	564	489
4954	564	1650
4955	564	211
4956	564	357
4957	565	17
4958	565	2684
4959	565	55
4960	565	489
4961	565	951
4962	565	10
4963	565	11
4964	565	15
4965	566	113
4966	566	366
4967	566	155
4968	566	11
4969	566	153
4970	566	136
4971	567	2166
4972	567	2167
4973	567	211
4974	567	287
4975	567	283
4976	567	382
4977	567	2168
4978	567	356
4979	567	108
4980	567	285
4981	568	102
4982	568	4384
4983	568	4385
4984	568	10
4985	568	447
4986	568	4386
4987	568	4387
4988	569	1671
4989	569	793
4990	569	13
4991	569	228
4992	569	11
4993	569	532
4994	569	394
4995	569	4388
4996	569	47
4997	570	11
4998	570	4391
4999	570	228
5000	570	68
5001	570	4392
5002	570	10
5003	570	21
5004	570	1473
5005	570	360
5006	571	11
5007	571	154
5008	571	4393
5009	571	3773
5010	571	18
5011	571	10
5012	571	256
5013	571	19
5014	571	36
5015	571	13
5016	572	5
5017	572	212
5018	572	4394
5019	572	228
5020	572	4395
5021	572	10
5022	572	2
5023	572	21
5024	573	11
5025	573	918
5026	573	804
5027	573	1388
5028	573	716
5029	573	22
5030	573	21
5031	573	10
5032	573	62
5033	573	42
5034	574	17
5035	574	1099
5036	574	77
5037	574	146
5038	574	248
5039	574	11
5040	574	103
5041	574	10
5042	574	71
5043	574	81
5044	574	172
5045	575	15
5046	575	62
5047	575	228
5048	575	4402
5049	575	4403
5050	575	11
5051	575	10
5052	575	4404
5053	575	83
5054	575	266
5055	576	155
5056	576	2133
5057	576	26
5058	576	138
5059	576	10
5060	576	153
5061	577	1488
5062	577	777
5063	577	228
5064	577	314
5065	577	4405
5066	577	11
5067	577	10
5068	577	15
5069	578	2443
5070	578	4406
5071	578	369
5072	578	2823
5073	578	4407
5074	578	3499
5075	578	4408
5076	578	4409
5077	579	1034
5078	579	2365
5079	579	136
5080	579	13
5081	579	466
5082	579	68
5083	579	11
5084	580	10
5085	580	21
5086	580	11
5087	580	15
5088	580	4412
5089	580	78
5090	580	487
5091	580	17
5092	580	2180
5093	580	83
5094	581	11
5095	581	40
5096	581	280
5097	581	42
5098	581	10
5099	581	26
5100	581	8
5101	581	219
5102	582	48
5103	582	489
5104	582	136
5105	582	114
5106	582	50
5107	582	47
5108	583	463
5109	583	11
5110	583	42
5111	583	10
5112	583	228
5113	583	136
5114	583	153
5115	583	155
5116	583	313
5117	584	79
5118	584	222
5119	584	1464
5120	584	1021
5121	584	17
5122	584	1165
5123	584	1145
5124	584	186
5125	584	77
5126	584	89
5127	584	14
5128	584	10
5129	585	11
5130	585	23
5131	585	21
5132	585	1
5133	585	26
5134	585	298
5135	585	8
5136	585	10
5137	586	10
5138	586	1034
5139	586	28
5140	586	68
5141	587	188
5142	587	82
5143	587	10
5144	587	79
5145	587	11
5146	587	17
5147	587	81
5148	587	186
5149	587	160
5150	587	172
5151	587	4415
5152	588	10
5153	588	514
5154	588	17
5155	588	4416
5156	588	252
5157	588	1066
5158	588	11
5159	588	94
5160	588	1279
5161	588	659
5162	588	132
5163	589	81
5164	589	82
5165	589	188
5166	589	17
5167	589	76
5168	589	108
5169	589	103
5170	589	1271
5171	589	10
5172	589	79
5173	589	246
5174	589	11
5175	590	1650
5176	590	73
5177	590	194
5178	590	4417
5179	590	1788
5180	590	146
5181	590	469
5182	591	3096
5183	591	357
5184	591	488
5185	591	1452
5186	591	73
5187	591	475
5188	591	3097
5189	591	3098
5190	591	256
5191	592	156
5192	592	4421
5193	592	2447
5194	592	29
5195	593	29
5196	593	67
5197	593	1309
5198	593	4422
5199	593	10
5200	593	4423
5201	593	509
5202	593	1396
5203	593	11
5204	594	997
5205	594	71
5206	594	11
5207	594	29
5208	594	10
5209	594	843
5210	594	667
5211	594	102
5212	594	502
5213	595	3065
5214	595	29
5215	595	180
5216	595	4398
5217	595	10
5218	595	2213
5219	595	12
5220	595	11
5221	595	393
5222	596	81
5223	596	82
5224	596	10
5225	596	1919
5226	596	102
5227	596	146
5228	596	2177
5229	596	79
5230	596	251
5231	596	86
5232	596	85
5233	596	216
5234	596	3425
5235	597	11
5236	597	79
5237	597	371
5238	597	330
5239	597	10
5240	597	186
5241	597	85
5242	597	14
5243	597	82
5244	597	15
5245	597	102
5246	597	190
5247	598	11
5248	598	1078
5249	598	2227
5250	598	10
5251	598	55
5252	598	2224
5253	598	2225
5254	598	2226
5255	598	2095
5256	599	334
5257	599	333
5258	599	2772
5259	599	331
5260	599	558
5261	599	4088
5262	600	2737
5263	600	11
5264	600	10
5265	600	1288
5266	600	4427
5267	600	1429
5268	600	256
5269	600	2538
5270	600	65
5271	600	876
5272	601	448
5273	601	242
5274	601	238
5275	601	241
5276	601	335
5277	601	3063
5278	601	526
5279	602	108
5280	602	183
5281	602	27
5282	602	219
5283	602	18
5284	602	2995
5285	603	15
5286	603	79
5287	603	172
5288	603	10
5289	603	267
5290	603	17
5291	603	11
5292	603	78
5293	603	81
5294	603	82
5295	603	67
5296	604	10
5297	604	155
5298	604	14
5299	604	169
5300	604	11
5301	604	183
5302	604	607
5303	604	98
5304	604	154
5305	604	796
5306	604	1753
5307	605	10
5308	605	136
5309	605	1429
5310	605	65
5311	605	4418
5312	605	465
5313	605	304
5314	605	228
5315	605	11
5316	606	108
5317	606	165
5318	606	1216
5319	606	11
5320	606	67
5321	606	1215
5322	606	21
5323	606	625
5324	606	632
5325	606	1217
5326	606	10
5327	606	375
5328	607	108
5329	607	159
5330	607	27
5331	607	183
5332	607	2047
5333	607	21
5334	607	26
5335	607	18
5336	608	136
5337	608	2751
5338	608	155
5339	608	4087
5340	608	153
5341	608	10
5342	608	1529
5343	609	50
5344	609	147
5345	609	48
5346	609	489
5347	609	1536
5348	609	47
5349	609	1251
5350	610	73
5351	610	18
5352	610	1713
5353	610	1291
5354	610	27
5355	610	47
5356	610	36
5357	610	211
5358	610	49
5359	610	489
5360	611	241
5361	611	238
5362	611	2811
5363	611	772
5364	611	449
5365	611	242
5366	612	233
5367	612	73
5368	612	582
5369	612	68
5370	612	1802
5371	612	218
5372	612	189
5373	612	74
5374	612	13
5375	612	3144
5376	613	21
5377	613	98
5378	613	36
5379	613	155
5380	613	17
5381	613	14
5382	613	10
5383	613	691
5384	613	11
5385	614	447
5386	614	17
5387	614	371
5388	614	15
5389	614	10
5390	614	278
5391	614	94
5392	614	204
5393	614	71
5394	615	2062
5395	615	155
5396	615	10
5397	615	4434
5398	615	4435
5399	615	11
5400	616	2945
5401	616	287
5402	616	402
5403	616	286
5404	616	283
5405	616	350
5406	616	688
5407	616	285
5408	616	2452
5409	617	211
5410	617	1669
5411	617	286
5412	617	234
5413	617	400
5414	617	285
5415	617	381
5416	618	14
5417	618	352
5418	618	29
5419	618	28
5420	618	10
5421	618	55
5422	618	11
5423	619	297
5424	619	17
5425	619	179
5426	619	10
5427	619	598
5428	619	11
5429	619	71
5430	619	24
5431	619	67
5432	620	1789
5433	620	218
5434	620	233
5435	620	2635
5436	620	73
5437	620	752
5438	620	660
5439	620	2804
5440	620	74
5441	620	1650
5442	620	1688
5443	621	47
5444	621	50
5445	621	1536
5446	621	48
5447	621	489
5448	621	4438
5449	621	147
5450	622	229
5451	622	89
5452	622	10
5453	622	327
5454	622	132
5455	622	230
5456	622	85
5457	622	29
5458	622	94
5459	622	146
5460	622	469
5461	623	4441
5462	623	3912
5463	623	4442
5464	623	4443
5465	623	3691
5466	623	4444
5467	623	4445
5468	624	2395
5469	624	2381
5470	624	292
5471	624	2647
5472	624	146
5473	624	688
5474	624	155
5475	624	295
5476	624	108
5477	624	871
5478	624	228
5479	624	291
5480	625	50
5481	625	4446
5482	625	4447
5483	626	4448
5484	626	4449
5485	626	10
5486	626	154
5487	626	4450
5488	626	1309
5489	626	21
5490	626	4451
5491	626	65
5492	626	5
5493	627	2344
5494	627	350
5495	627	36
5496	627	349
5497	627	2945
5498	627	154
5499	627	232
5500	627	1866
5501	627	287
5502	627	283
5503	627	256
5504	627	285
5505	628	155
5506	628	108
5507	628	2196
5508	628	2197
5509	628	536
5510	628	291
5511	628	362
5512	628	487
5513	628	68
5514	629	300
5515	629	15
5516	629	169
5517	629	55
5518	629	10
5519	629	17
5520	629	913
5521	629	165
5522	629	78
5523	629	11
5524	630	82
5525	630	1351
5526	630	81
5527	630	1818
5528	630	10
5529	630	375
5530	630	17
5531	630	89
5532	630	1309
5533	630	108
5534	630	1082
5535	630	11
5536	631	489
5537	631	47
5538	631	2133
5539	631	18
5540	631	48
5541	631	13
5542	631	108
5543	631	344
5544	631	50
5545	631	2180
5546	632	445
5547	632	446
5548	632	82
5549	632	10
5550	632	375
5551	632	105
5552	632	376
5553	632	179
5554	632	101
5555	632	11
5556	633	468
5557	633	660
5558	633	569
5559	633	2786
5560	633	73
5561	633	2642
5562	633	2641
5563	633	1788
5564	633	940
5565	633	218
5566	633	74
5567	634	357
5568	634	521
5569	634	136
5570	634	1527
5571	634	4453
5572	634	73
5573	634	284
5574	634	3710
5575	634	857
5576	635	764
5577	635	10
5578	635	228
5579	635	18
5580	635	8
5581	635	487
5582	635	11
5583	635	21
5584	636	184
5585	636	10
5586	636	9
5587	636	1583
5588	636	1
5589	636	228
5590	636	8
5591	636	1584
5592	636	211
5593	636	716
5594	637	468
5595	637	1688
5596	637	4454
5597	637	146
5598	637	214
5599	637	544
5600	637	2558
5601	637	194
5602	637	1994
5603	637	3732
5604	637	191
5605	637	21
5606	638	880
5607	638	381
5608	638	108
5609	638	2992
5610	638	2990
5611	638	2988
5612	638	556
5613	638	1086
5614	638	2989
5615	638	479
5616	638	61
5617	638	2991
5618	639	768
5619	639	146
5620	639	565
5621	639	1
5622	639	228
5623	639	257
5624	639	256
5625	639	295
5626	639	281
5627	639	211
5628	640	569
5629	640	468
5630	640	1688
5631	640	108
5632	640	2163
5633	640	660
5634	640	1086
5635	640	2641
5636	640	1488
5637	640	940
5638	640	218
5639	641	327
5640	641	1099
5641	641	89
5642	641	94
5643	641	622
5644	641	10
5645	641	11
5646	641	17
5647	641	229
5648	641	228
5649	641	204
5650	642	3943
5651	642	2319
5652	642	1445
5653	642	4458
5654	642	4459
5655	642	147
5656	642	4460
5657	642	108
5658	642	940
5659	642	2435
5660	642	1279
5661	643	3238
5662	643	83
5663	643	329
5664	643	685
5665	643	3237
5666	643	62
5667	643	11
5668	643	10
5669	643	3239
5670	643	1877
5671	643	924
5672	643	1943
5673	644	327
5674	644	79
5675	644	87
5676	644	17
5677	644	259
5678	644	221
5679	644	81
5680	644	258
5681	644	89
5682	644	143
5683	644	11
5684	644	159
5685	645	731
5686	645	607
5687	645	1386
5688	645	85
5689	645	17
5690	645	94
5691	645	10
5692	645	204
5693	645	86
5694	645	1385
5695	645	229
5696	645	11
5697	646	625
5698	646	106
5699	646	11
5700	646	146
5701	646	327
5702	646	4461
5703	646	228
5704	646	366
5705	646	179
5706	646	21
5707	646	67
5708	646	113
5709	646	979
5710	647	796
5711	647	692
5712	647	10
5713	647	2621
5714	647	28
5715	647	1582
5716	647	297
5717	647	154
5718	647	1269
5719	647	1270
5720	647	11
5721	648	2992
5722	648	68
5723	648	10
5724	648	4462
5725	648	256
5726	648	228
5727	648	2197
5728	648	4463
5729	648	4464
5730	648	78
5731	648	169
5732	649	2186
5733	649	73
5734	649	4465
5735	649	189
5736	649	233
5737	649	660
5738	649	217
5739	649	488
5740	649	71
5741	649	74
5742	649	218
5743	650	369
5744	650	1025
5745	650	1110
5746	650	17
5747	650	11
5748	650	83
5749	650	138
5750	650	190
5751	650	187
5752	650	91
5753	650	10
5754	650	228
5755	651	502
5756	651	188
5757	651	87
5758	651	102
5759	651	17
5760	651	89
5761	651	21
5762	651	172
5763	651	11
5764	651	375
5765	651	10
5766	651	166
5767	651	79
5768	652	159
5769	652	81
5770	652	11
5771	652	375
5772	652	118
5773	652	103
5774	652	1163
5775	652	82
5776	652	444
5777	652	15
5778	652	341
5779	652	671
5780	653	1845
5781	653	335
5782	653	266
5783	653	159
5784	653	3574
5785	653	11
5786	653	2205
5787	653	509
5788	653	1525
5789	653	65
5790	653	4468
5791	654	357
5792	654	811
5793	654	50
5794	654	489
5795	654	47
5796	654	114
5797	654	48
5798	654	2178
5799	655	4469
5800	655	104
5801	655	132
5802	655	98
5803	655	10
5804	655	17
5805	655	527
5806	655	169
5807	655	11
5808	655	102
5809	655	502
5810	656	4470
5811	656	4471
5812	656	4123
5813	656	1784
5814	656	335
5815	656	4472
5816	656	163
5817	657	211
5818	657	577
5819	657	37
5820	657	295
5821	657	2820
5822	657	565
5823	657	4473
5824	657	3549
5825	657	257
5826	657	228
5827	657	146
5828	658	4474
5829	658	3128
5830	658	3549
5831	658	257
5832	658	228
5833	658	1728
5834	658	68
5835	658	4475
5836	658	4476
5837	659	3064
5838	659	211
5839	659	239
5840	659	526
5841	659	238
5842	659	241
5843	659	242
5844	659	4478
5845	660	13
5846	660	211
5847	660	391
5848	660	3009
5849	660	108
5850	660	335
5851	660	939
5852	660	387
5853	660	381
5854	660	688
5855	661	291
5856	661	2264
5857	661	292
5858	661	4480
5859	661	155
\.


--
-- Data for Name: it_software_development_jobs_in_egypt; Type: TABLE DATA; Schema: public; Owner: fscjjarkblijha
--

COPY public.it_software_development_jobs_in_egypt (job_id, title_id, company_id, job_level, exp_years, job_type, post_date, link) FROM stdin;
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: fscjjarkblijha
--

COPY public.tags (tag_id, tag) FROM stdin;
1	Maintenance
2	Technical Support 
3	LAN
4	WAN
5	Computer Hardware
6	Repair
7	Troubleshooting
8	Installation
9	Networks
10	Information Technology (IT)
11	Computer Science
12	Configuration
13	Communication
14	Programming
15	Software Engineering
16	Project Management 
17	Software Development
18	Customer Service
19	Help Desk
20	Installation 
21	Software
22	Network
23	Hardware
24	Maintenance 
25	Computer Systems
26	Technical Support
27	Customer Care
28	IT
29	IT/Software Development 
30	Installation/Maintenance/Repair
31	ITIL Foundation
32	TCP/IP 
33	Microsoft Certified Solutions Associate
34	CompTIA A+
35	Windows 10
36	Communication Skills
37	Technical
38	Computer Systems 
39	Technology Tools
40	MCSA
41	Network Servers
42	CCNA
43	VMware 
44	Firewall
45	Network Systems
46	Selling Skills
47	Sales Skills
48	Sales Target
49	Corporate Sales
50	Sales/Retail 
51	B2B Sales
52	CRM
53	IT Sales
54	Computer Communication
55	Computer Engineering
56	Technical Analysis
57	Infrastructure
58	LSA
59	Cisco 
60	VLAN's 
61	ITIL
62	Networking
63	Applicant Tracking Systems
64	English 
65	Oracle
66	Computer Maintenance
67	SQL
68	Project Management
69	Advertisement
70	IT Solutions
71	Web Development
72	Digital Projects 
73	Marketing
74	Media
75	Ruby On Rails
76	HTML5
77	Front-End
78	MVC
79	javaScript
80	Software Engineering 
81	CSS
82	HTML
83	AWS
84	RESTful 
85	UI
86	UX
87	React
88	10 Vacancies
89	Git
90	OOP
91	REST
92	Code Versioning Tools 
93	Github
94	iOS
95	MVP
96	MVVM
97	Firebase
98	.NET
99	4 Vacancies
100	RPC
101	C# 
102	Agile
103	CSS3
104	Xamarin
105	Software Testing
106	Quality 
107	QA
108	English
109	Quality Assurance
110	QC
111	ISTQB
112	Software Life Cycle
113	Quality Control
114	Business Development
115	Business Analysis
116	2 Vacancies
117	Marketing 
118	GIT
119	SVN
120	Android Development
121	SolidWorks
122	SDLC
123	TDD
124	Wireframes
125	Sketch
126	Adobe XD
127	Prototypes 
128	UI/UX
129	Vue.Js
130	FrontEnd
131	Cloud
132	Android
133	Design 
134	IOS
135	Regular
136	IT/Software Development
137	Magento
138	Computer
139	Configure
140	CMS
141	Tier
142	React.js
143	Redux
144	JS
145	angular 
146	Design
147	Education
148	Education/Teaching 
149	Teaching
150	3 Vacancies
151	InVision
152	Creative/Design/Art 
153	 Telecom/Technology 
154	ERP
155	Engineering 
156	Odoo
157	Software Development 
158	PHP Development
159	Information Technology (IT) 
160	Front End
161	Frontend
162	SAP Implementation
163	Operations/Management 
164	Business
165	C++
166	Testing 
167	Modeling 
168	UML
169	C#
170	javaScript 
171	Ionic
172	Angular
173	Sails js
174	Node js
175	Full Stack
176	ERP Implementation
177	System Implementation
178	ERP Software Implementation
179	Testing
180	SAP
181	Bug Reporting
182	5 Vacancies
183	Customer Support
184	Repair 
185	IT Support
186	MySQL
187	CSS3 
188	PHP
189	Web Design
190	Python
191	Adobe Illustrator
192	DHTML 
193	Adobe Indesign
194	Graphic Design
195	Adobe
196	Wireframe
197	Installing
198	Telecom Engineering
199	Programming 
200	System Administration
201	VB
202	ASP.NET
203	Ruby
204	Swift
205	UIKit
206	Design Patterns
207	OOP 
208	Support
209	Windows 
210	IIS
211	Microsoft Office
212	Telecommunication
213	System Engineering
214	Adobe Photoshop
215	E-Commerce
216	Illustrator
217	E-marketing
218	Social Media
219	Customer Service/Support 
220	MVC Pattern
221	Bootstrap
222	Laravel
223	JQuery
224	GitHub 
225	Javascript
226	Android SDK
227	APIs 
228	Engineering
229	Mobile Development
230	RESTful
231	SEO 
232	Commerce
233	Digital Marketing
234	Microsoft Excel
235	UI/UX Design
236	SCSS
237	Software Life Cycle 
238	Human Resources 
239	Hiring
240	IT Recruiter
241	Human Resources (HR)
242	Recruitment
243	WordPress
244	Front End 
245	PHP 
246	jQuery
247	Shopify
248	Back-End
249	Wireframe Designs
250	Dreamweaver 
251	Photoshop
252	Mobile
253	XD
254	Zeplin
255	 Mechanical/Electrical 
256	Management
257	Mechanical Engineering
258	LESS
259	SASS
260	Freight Forwarding
261	Shipping
262	Sales Management
263	ERP 
264	SCRUM
265	XML
266	Linux
267	jQuery 
268	NOSQL 
269	Kotlin
270	OO design patterns
271	MVC,
272	Java 
273	Pharmaceutical 
274	Pharmacist
275	Pharmaceutical Sciences
276	Clinical Pharmacy
277	Core Data
278	Objective-C
279	Electronics 
280	Males Only
281	Electrical Engineering
282	Accounts Receivable
283	Finance
284	Collection
285	Accounting
286	Accounting/Finance 
287	Financial Analysis
288	Accounts Payable
289	Corona
290	Vray
291	 Construction/Civil/Architecture 
292	Architecture
293	3DMAX
294	Interior Designer
295	AutoCAD
296	Relational Database
297	SSRS
298	Installation/Maintenance/Repair 
299	TSQL
300	WPF
301	Applications
302	UI 
303	Logistics/Supply Chain
304	Supply Chain
305	Logistics
306	Logistic Sales Manager
307	Painting
308	Colors
309	Chemicals
310	SOA
311	OAF 
312	Oracle Applications
313	Telecom
314	System Analysis
315	Database 
316	System Design
317	Java J2EE
318	EJB
319	Information Systems
320	Scala
321	AngularJs 
322	Hardware Sales
323	Retail Shops
324	E-commerce
325	Egypt Restaurants
326	Software Sales
327	APIs
328	React Native
329	Computer Engineering 
330	React 
331	Warehousing
332	Males Preferred
333	Warehouse
334	Administration 
335	Administration
336	Data Entry
337	TFS
338	Agile Methodologies
339	Web Application
340	Code 
341	AngularJS
342	Software Angular JS
343	FMCG
344	Leadership
345	Operations/Management
346	Retail
347	CIMA 
348	CFO
349	CPA
350	Financial Management
351	Corporate
352	MBA
353	Sales/Retail
354	Public Relations (PR)
355	Training/Instructor 
356	Females Only
357	Marketing/PR/Advertising
358	Industrial
359	Internal Auditing
360	PMP
361	Safety
362	Civil Engineering
363	Budget
364	Finishing Works
365	Construction Quality
366	Quality
367	Pharmaceutical
368	R&D/Science
369	Science
370	Compliance
371	Startup
372	Maintenance/Repair 
373	Implementation
374	Integration
375	Java
376	Automation
377	Cosmetology
378	Cosmo-medicals
379	Pharmacy
380	Medical/Healthcare 
381	Business Administration
382	Commerce 
383	Pre-Sales
384	Wordpress
385	UX 
386	Customer Support 
387	Office Management
388	MS Office 
389	Admin Assistant
390	Back Office
391	Secretary
392	Hotel
393	Accounting/Finance
394	Banking 
395	Project/Program Management
396	Product Management
397	Content Management
398	Strategy/Consulting 
399	ERP Systems
400	Microsoft Word
401	Accounting Manager
402	Accounting Software
403	Arabic 
404	Vehicles
405	Spare Parts
406	2-4 Yrs of Exp
407	3-5 Yrs of Exp
408	0-2 Yrs of Exp
409	1-3 Yrs of Exp
410	3+ Yrs of Exp
411	1+ Yrs of Exp
412	5+ Yrs of Exp
413	3-6 Yrs of Exp
414	7-10 Yrs of Exp
415	2-3 Yrs of Exp
416	5-10 Yrs of Exp
417	4-7 Yrs of Exp
418	1-4 Yrs of Exp
419	4+ Yrs of Exp
420	0-3 Yrs of Exp
421	2-5 Yrs of Exp
422	4-6 Yrs of Exp
423	2-6 Yrs of Exp
424	10+ Yrs of Exp
425	0-5 Yrs of Exp
426	3-7 Yrs of Exp
427	0-1 Yrs of Exp
428	5-8 Yrs of Exp
429	2-7 Yrs of Exp
430	4-10 Yrs of Exp
431	2+ Yrs of Exp
432	8-10 Yrs of Exp
433	8-12 Yrs of Exp
434	1-2 Yrs of Exp
435	12-15 Yrs of Exp
436	6+ Yrs of Exp
437	7+ Yrs of Exp
438	3-4 Yrs of Exp
439	5-7 Yrs of Exp
440	Mac OS
441	Coding
442	CTO
443	AutoCAD 
444	Backend
445	Automation Testing
446	Selenium
447	Computer Science 
448	HR
449	Personnel
450	Labor Law
451	Auditor 14001 
452	OSHA
453	6-8 Yrs of Exp
454	HSE
455	ISO 9001
456	NEBOSH
457	Health
458	Auditor 18001
459	School Facility Manager
460	Conflict Management
461	4-5 Yrs of Exp
462	Business Administration 
463	Training
464	Organization Development
465	Logistics/Supply Chain 
466	Planning
467	Art
468	Creative
469	Creative/Design/Art
470	Polymer
471	Store Keeping
472	Research & Development
473	Validation
474	Veterinary
475	Medical
476	Gynecology
477	Medical/Healthcare
478	 Other 
479	ISO
480	Manufacturing
481	Communications
482	Sales Skills 
483	Healthcare
484	Cost Accounting
485	Internal Costs
486	Operations
487	Computer Skills
488	Market Research
489	Sales
490	6-10 Yrs of Exp
491	Product Manager
492	Brand
493	Export Management
494	Electronic Health
495	Beauty Products
496	Analytical
497	Software 
498	Communication 
499	MCSA 
500	HTML 
501	Maintenance/Repair
502	Scrum
503	Ionic 
504	MVC 
505	Git 
506	Docker 
507	Web Development 
508	Application 
509	Database
510	WooCommerce 
511	Core Animation
512	Software Implementation
513	SAP 
514	Web
2084	PMI
515	Offline Campaigns
516	Design Projects
517	Visual Arts
518	Online Campaigns
519	Adobe After Effects
520	Arts 
521	Analysis
522	Microsoft Office 
523	Telecom 
524	IT Sales 
525	Prototypes
526	Human Resources
527	iOS 
528	UX Design
529	Electrical Power
530	Electrical
531	Project
532	Information Technology
533	Implementation 
534	BIM
535	3D Modelling
536	Civil
537	CAD
538	Geomatics
539	Automotive
540	Auditor 14001
541	Fire Fighting 
542	Product
543	Graphic Designer 
544	Graphic
545	Fine Arts
546	InDesign
547	Pharma
548	Export
549	Hotel 
550	Sourcing Management
551	Hotels
552	Vendor Management
553	Hospitality 
554	Purchasing
555	Procurement
556	Business Development 
557	Engineering - Telecom/Technology
558	Construction
559	Civil 3D
560	Site
561	Art 
562	Motion Graphics
563	Applied Arts
564	Computer Skills 
565	Mechanical
566	IIS 
567	Photoshop 
568	Sales 
569	Content
570	Management 
571	IT Project Management
572	Project Manager
573	Manage
574	Reports
575	Building Materials
576	Electrical Engineering 
577	HVAC
578	SaaS
579	Agile Development
580	Compuetr Engineering
581	Customer Relations 
582	Marketing Campaigns
583	Account Managment
584	Microsoft SQL Server
585	Visual 
586	Database Administration
587	Network Management
588	SharePoint
589	Knockout
590	JavaScript
591	Angular JS
592	OOP concept
593	.NET 
594	Microsoft CRM
595	MCSE
596	CISSP
597	Software develop
598	.Net
599	CSS 
600	Nodejs
601	Design Patterns 
602	Mechatronics 
603	IT Infrastructure
604	MongoDB 
605	Docker
606	Technical Development
607	Development
608	Mobile 
609	Database Fundamentals
610	ADO.NET 
611	Microsoft Technology
612	Net core 
613	ASP 
614	ASP.NET MVC
615	Cordova
616	software
617	Team Leader
618	Software Development Team Leader
619	Linux 
620	LMS
621	Ajax
622	JSON
623	Vue.JS
624	Symphony
625	NoSQL
626	Fullstack
627	React.JS
628	Back End
629	Entity Framework
630	MVC 5
631	MSSQL
632	Azure
633	Spare Parts Sales
634	Data Base 
635	Android Studio
636	Scrum 
637	java
638	ASP.NET 
639	jscript
640	Development 
641	AJAX 
642	F# 
643	WCF
644	Embedded 
645	MySQL 
646	Bugs 
647	Cross Browser Testing
648	AJAX
649	XSLT
650	Node.js
651	BackboneJs
652	SOAP
653	C#.Net
654	XSLT 
655	C/C++
656	Software Design
657	Web Design 
658	Mobile Development 
659	Flutter
660	SEO
661	Microsoft.Net
662	Windows Server
663	ASP
664	Website Development
665	Apache Camel
666	Spring
667	Microservices
668	startup
669	Lambda
670	JBPM
671	Hibernate
672	Mongo DB
673	SCRUM 
674	Symfony
675	Vue.js
676	Angular 
677	Agile 
678	JSON 
679	CD 
680	CI
681	Lead Generation
682	Apache Beam
683	JVM
684	PostgreSQL
685	MongoDB
686	NoSql
687	MS 
688	MS Office
689	ORM 
690	.Net Core
691	Managerial Skills
692	SQL 
693	CVS
694	Object Orientated
695	MS Dynamics CRM 
696	Web Services
697	Angular 2+
698	GIS
699	ArcGIS For JS Apis
700	EsriNeA
701	Dojo
702	IT Technical Support
703	.Net framework
704	ASP.Net
705	Database Design
706	RESTful APIs
707	NoSQL 
708	Digital Transformation
709	Database Query Tools
710	IT Solution
711	Sales Director
712	Business Solution
713	Sales Manager
714	Business Development Manager
715	Business Development Director
716	Network Administration
717	System Administration 
718	Webforms
719	NET
720	Sales Account
721	Communication Engineering
722	Appium 
723	SCM 
724	Objective C
725	C/C++ 
726	IT 
727	Microsoft Office 365 
728	Application Support
729	HTML5 
730	Typescript
731	API
732	Spring Boot
733	mobile apps 
734	sales
735	VMWare
736	Microservices 
737	RxJs
738	Kanban
739	Senior QA 
740	IT Technical
741	Computer 
742	Information Security
743	CISCO
744	RFP
745	Export Sales
746	ICT
747	Supply Chain 
748	Agile Software Development
749	Software Analysis
750	Scripting
751	Troubleshoot 
752	Communication Skills 
753	Microsoft
754	Help-desk
755	Windows
756	Desk Software
757	Moderation
758	DHCP
759	DNS
760	3sx
761	Shift Based
762	Database Management
763	Industry
764	Hardware 
765	Customer Service 
766	Service Desk
767	Help Desk Support
768	Technical 
769	Mobile Devices
770	Diagnose 
771	Help Desk 
772	Skills
773	IT Specialist
774	Computer Hardware 
775	Network 
776	Cisco
777	Microsoft Windows
778	Cloud Testing 
779	API Testing
780	Jira
781	ISTQB 
782	CCNA 
783	SOPHOS
784	SOPHOS Firewall
785	Troubleshoot
786	Network Infrastructure
787	VB.Net
788	SharePoint 
789	Application Manager
790	WAN 
791	Firewalls
792	Enterprise IT
793	Technology
794	Microsoft Dynamics 365
795	Food & Beverage 
796	Dynamics AX
797	Industrial Manufacturing
798	Fashion
799	Forcasting
800	Account Management
801	Installing 
802	CEH
803	CISM
804	Security
805	Help Disk
806	CCTV
807	Corporate 
808	MCSD
809	Food 
810	SalesTarget
811	B2B
812	Diagnose
813	Technical Issues
814	Microsoft 
815	Quality assurance
816	Software Tester 
817	Softwre test
818	Test
819	Test Cases
820	Performance
821	Analysis 
822	Tester
823	Firewall 
824	Gulp 
825	IT Information Technology
826	Mobile Software 
827	Software Business
828	Surveillance
829	Microsoft Exchange
830	Information System
831	CCNS
832	Computer Network
833	Mac 
834	TroubleShooting
835	Indoor Sales
836	Software Products
837	Leads 
838	Online Sales
839	Codebase
840	Unit Test 
841	RESTful API
842	Office 365
843	DevOps
844	Windows Server 
845	ITIL 
846	IT Operations
847	Project 
848	Service Delivery
849	Software Project
850	quality assurance manager
851	Project Coordination
852	French
853	Banking
854	IS 
855	Writing Defects
856	Software Quality Assurance
857	Analyst/Research 
858	CCTV Systems
859	Cloud Computing
860	CCTV 
861	Internet Security 
862	Woo commerce
863	Framework
864	Web Services 
865	Mobile Applications
866	Bugs
867	QC 
868	Data Storage
869	AutoCAD 2D
870	3D CAD
871	3D
872	CAM
873	agile
874	fullstack
875	Technical Analysis 
876	Cloud 
877	Infrasturcture
878	BPMN
879	ITSM
880	COBIT
881	ISO 20000 
882	Disaster Recovery Planning
883	VMware
884	Cisco Routers 
885	N+
886	A+
887	Electronics Engineering
888	Kubernetes 
889	Mathematics 
890	TCP/IP
891	CAM's 
892	Domain Server
893	ORM
894	RestFull 
895	IP
896	Linq
897	Visual Studio 
898	T-SQL
899	Communication Engineering 
900	MS Dynamics
901	Technology 
902	OS X
903	Information Systems 
904	Crystal Reports
905	Query
906	Moblie Software
907	Software Automation
908	Product Owner
909	Customer 
910	Angular 6+
911	Unit Testing
912	Printers
913	Python 
914	CodeIgniter
915	Software Tester
916	SQL Database
917	DC
918	Troubleshooting 
919	IT Admin
920	IaaS
921	PaaS 
922	XSD
923	MS
924	Kubernetes
925	MS Windows Server
926	LDAP
927	OS Systems
928	System Engineering 
929	Fortigate
930	custom
931	Code Ignitor
932	Payment Gateway
933	Certified
934	Magento 2
935	Technical Sales
936	Software QC 
937	WebLogic
938	Selling
939	Excel
940	Writing
941	jmeter
942	Redmine 
943	Appium
944	LAN 
945	Microsoft Visual Studio
946	ERP Testing 
947	iOS Developer 
948	MCPD 
949	Software Pre-Sales
950	Software House
951	Presales
952	PL
953	GAP Analysis
954	GAP
955	WCF 
956	Mongo
957	Yii
958	Cakephp
959	PHP5
960	Amazon Travel
961	Symfony2
962	Codeigniter
963	SCOM
964	SCCM
965	MS Lync
966	TMG 
967	Test Automation
968	J2EE
969	BPM
970	RESTFul
971	BPD
972	Financial Services
973	Apache
974	Spark
975	IBM 
976	Eclipse
977	BAW
978	italian
979	Software Quality
980	Configuring
981	VSpehre
982	WNS
983	VCenter
984	ESXi
985	HyperV
986	Android 
987	Financial Applications
988	Geyushi
989	IT Engineer 
990	Geyushi motors
991	Oracle 
992	iti 
993	Quality Control 
994	MTM
995	Web Security
996	API 
997	CI/CD
998	Java Development
999	OS
1000	QA Engineering
1001	GLSL
1002	CUDA
1003	OpenCL
1004	3D Graphics
1005	Sciences
1006	R&D
1007	DirectX11
1008	HLSL
1009	Linear Algebra
1010	Mathematics
1011	OpenGL-3.3+
1012	C++11 
1013	Office Automation
1014	NodeJS
1015	ReactJS
1016	QGIS
1017	Mobile Developer 
1018	Insurance
1019	TFS 
1020	Contracting 
1021	Vue
1022	Node
1023	Rails 
1024	Spring 
1025	Django
1026	GCP
1027	SOLID 
1028	Database Systems
1029	Mobile Testing
1030	Burp Suite 
1031	Robotics Process Automation
1032	Automation 
1033	RPA
1034	Project/Program Management 
1035	Plugins Development
1036	vuejs
1037	react
1038	javascript
1039	Word
1040	Sales Target 
1041	Odoo ERP
1042	Web Applications
1043	Print Server 
1044	Desktop Operating Systems
1045	MS SCCM
1046	Chemistry
1047	Labs
1048	Telecommunication 
1049	Security 
1050	System
1051	Technician
1052	Operating Systems
1053	Windows Server 2008
1054	Helpdesk
1055	Networks 
1056	Software Architectures
1057	Mobile App Developer
1058	Swift 
1059	scrum
1060	test plan
1061	Selenium 
1062	Documentation
1063	JIra 
1064	Test Planning
1065	code
1066	Mobile Apps
1067	Developer
1068	Back-End Developer
1069	Golang 
1070	JUnit Testing
1071	Postgres 
1072	MySQL.
1073	Hadoop
1074	GraphQL
1075	Weblogic
1076	JPA
1077	Glassfish
1078	ITI
1079	JSF
1080	Microsoft SQL Server 
1081	SE
1082	Tomcat
1083	JMeter
1084	cpanel
1085	technical support
1086	Arabic
1087	WebAPI
1088	Typing 
1089	Sockets 
1090	Data Structures
1091	REST APIs
1092	VueJS
1093	Web API
1094	Integration 
1095	LINQ 
1096	Program Management
1097	MS ASP
1098	Programmer
1099	REST 
1100	VueJs
1101	PHP Laravel
1102	IT Engineer
1103	Engineer
1104	Web Application Design
1105	Framework 
1106	Natural Language Processing
1107	Data Science
1108	Pandas
1109	Machine Learning
1110	Flask
1111	Java EE
1112	Database Schemas
1113	GraphQL API
1114	Bootstrap 4
1115	Full Stack Development
1116	Mobile Developer
1117	App Store
1118	Code Versioning Tools
1119	Performance Testing
1120	Gradle
1121	SDK 
1122	Frontend 
1123	Molex
1124	Perl
1125	Desktop Application
1126	Testing Tools
1127	MySQL Database
1128	ReactJs
1129	Flexbox
1130	Cross Platform
1131	MVC.NET
1132	WinForms
1133	MVC .Net
1134	JEE 
1135	SWT
1136	JSP
1137	Swing
1138	MVV
1139	Sales Software
1140	UI Design 
1141	My SQL
1142	OpenCart
1143	JQuery 
1144	Front
1145	End 
1146	Windows O.S
1147	TCR
1148	AML
1149	KYC
1150	HRMS
1151	RDBMS 
1152	TomCat
1153	Jenkins
1154	Node.js 
1155	Restful
1156	Defence 
1157	Gas
1158	Oil
1159	JSP 
1160	Computer Software
1161	JUnit 
1162	PostgreSQL 
1163	MYSQL
1164	Clean Code
1165	Full-Stack
1166	GitHub
1167	Redis 
1168	Data Structures 
1169	ArcGIS
1170	ESRI 
1171	Vue.js 
1172	Data Security
1173	iOS SDK
1174	Swift 2
1175	Xcode 7
1176	Active Directory
1177	Configurations
1178	Fix Bugs
1179	Developer 
1180	Node JS 
1181	Software Computer Science 
1182	OOD
1183	Backend 
1184	Python Django
1185	Github 
1186	Bitbucket
1187	Servlets
1188	Mysql
1189	Full Stack Developer
1190	Angular 4+
1191	.NET Core
1192	cPanel 
1193	DreamWeaver
1194	Joomla
1195	Frameworks
1196	GIT 
1197	Nginx
1198	Yaf
1199	Sales Strategies
1200	Sales Planning
1201	SVN 
1202	RESTful APIs 
1203	js
1204	EHcache 
1205	Maven
1206	Drupal
1207	Jenkins 
1208	AnjularJS
1209	JavaSript
1210	MQTT
1211	Aedes
1212	Back End 
1213	IT HelpDesk
1214	Data Structure
1215	AWS 
1216	Rust
1217	Google Cloud
1218	Oracle ADF
1219	ADF
1220	Oracle SOA
1221	JavaScript 
1222	SDK
1223	DevOps 
1224	Express
1225	MEAN Stack
1226	Karaf 
1227	Java 8
1228	MicroServices
1229	Rest
1230	OSGi
1231	RDBMS
1232	Web development
1233	Mobile Application 
1234	iOS Development
1235	Java 8+ 
1236	Test Driven Development
1237	ReactJS 
1238	Node.JS
1239	MERN
1240	IT Manager
1241	NetSuite
1242	Implementations
1243	Vue 
1244	HealthCare
1245	ADO.NET
1246	Data Security 
1247	Kotlin 
1248	Native 
1249	backend
1250	Backend Developer
1251	Negotiation
1252	Mobile Testing 
1253	DART
1254	Mobile App Developer 
1255	Application Security
1256	Microsoft SQL
1257	WebSphere 
1258	Spring MVC
1259	OpenERP
1260	Implementer 
1261	Business Processes
1262	iPhone 
1263	Pentaho PDI
1264	Pentaho
1265	BI
1266	ClickHook 
1267	Ember.JS
1268	C/AL 
1269	Dynamics
1270	Microsoft Dynamics
1271	WordPress 
1272	laravel
1273	codeigniter
1274	mysql
1275	Boot 
1276	Java Spring Boot
1277	Java Spring Development
1278	mongodDB
1279	Native
1280	React Native 
1281	VueJS 
1282	Account Management 
1283	Blockchain
1284	AX 
1285	.NET Developer
1286	MIS
1287	Open ERP 
1288	Oracle Fusion
1289	Workday Studio 
1290	SAP NetWeaver
1291	Telesales
1292	Unity
1293	MS SQL 
1294	.NEt Full Stack Developer
1295	Reactjs
1296	Odoo Modules
1297	Apple 
1298	IOS Development
1299	HTML 5
1300	Mongoose
1301	Databases
1302	TypeScript
1303	RESTfulWebServices
1304	Visual Studio
1305	Auditing
1306	CMMI
1307	Audit
1308	Software Engineer
1309	MS SQL
1310	Applications Development 
1311	Branding
1312	CI 
1313	Educational Games
1314	Game Studio
1315	Game Developer
1316	Game
1317	Microsoft Exchange 
1318	WSUS
1319	Spring Boot 
1320	Mobile Application
1321	GOF
1322	LINQ
1323	MSSQL 
1324	NodeJS 
1325	ExpressJS
1326	SpringData
1327	Java8
1328	Spring Framework
1329	GPA
1330	Negotiation Skills
1331	Core Data 
1332	Webpack
1333	Boostrap
1334	Dev Express
1335	SQL Reporting Services 
1336	Dot.Net Core
1337	web forms
1338	Algorithms
1339	Ubuntu OS
1340	java script
1341	NOSQL
1342	angular
1343	ES6
1344	Rxjs 
1345	Android Information
1346	Native Android Apps
1347	ASP.NET Core
1348	Web Performance
1349	Grunt
1350	C++ 
1351	Oracle DB
1352	Internet Security
1353	Xcode
1354	Mobile Applicantions
1355	IT Backup Engineering 
1356	Backup
1357	IOS 
1358	Postgresql
1359	Software Computer Science
1360	Sharepoint
1361	solution Developer
1362	Data Analytics
1363	Information securtiy
1364	CISA
1365	J2EE Design
1366	Business Systems 
1367	Ubuntu
1368	Object- Oriented
1369	Systems Infrastructure
1370	Network Security
1371	Hyper-V
1372	Symantec Backup
1373	vSphere
1374	VPN
1375	JMS
1376	MVVM 
1377	Mariadb
1378	Application
1379	Open Source CMS
1380	Drupal 
1381	PowerShell
1382	Nintex
1383	ASP.NET Core 
1384	.Net Core 
1385	C 
1386	Objective
1387	Docker/Kubernetes
1388	CCNP
1389	git
1390	github
1391	Android Studio 
1392	Cloud Functions
1393	DynamoDB 
1394	Responsive Layouts
1395	SASS 
1396	SQL Server
1397	Postgres
1398	Cocoa
1399	NGINX 
1400	css
1401	jquery
1402	html
1403	senior .net developer
1404	entity framework
1405	Sybase
1406	.NET Core 2.0
1407	Network Engineering
1408	Labor Legislation
1409	Recruiter
1410	Technical Recruiter
1411	Human Resources (HR) 
1412	Corporate Sales 
1413	Front-end
1414	Code Review
1415	Guru
1416	Upwork
1417	Target Identification
1418	PPH
1419	Elance
1420	Authorize.net
1421	Paypal
1422	Payments Gateways
1423	Google Checkout 
1424	Payfort
1425	Affiliate Management System
1426	frontend Developer
1427	Senior FrontEnd Developer
1428	Oracle Enterprise Applications Suite
1429	EBS
1430	Oracle Development
1431	PLSQL
1432	RxSwift
1433	Cocoa Touch
1434	Viper
1435	Realm
1436	Gitflow
1437	Firebase 
1438	Typescript based API
1439	MariaDB
1440	OpenStack
1441	SaltStack
1442	SAP Hybris Commerce 
1443	Technical Project
1444	GoLang
1445	Editing
1446	Java SE
1447	Json
1448	IBM ESB
1449	APIGEE API
1450	Apigee 
1451	JS Framework 
1452	C
1453	DB Design
1454	Animation
1455	Game Development
1456	Unity3D
1457	Plugins
1458	Koa
1459	digital solutions
1460	food and beverage
1461	Digital product
1462	code 
1463	Code Versioning
1464	Back
1465	Software Solution
1466	AWS Stack 
1467	Data Centers
1468	DELL
1469	IBM
1470	Cocoa Touch 
1471	Mobile loT 
1472	IoT
1473	Projects
1474	Mean Stack
1475	Ionic 2+
1476	Andriod
1477	Titanium Mobile
1478	Programming Language
1479	SWE
1480	Dynamics 
1481	Web 
1482	PC
1483	Computer skills
1484	Microsoft office
1485	Entityframework
1486	XML 
1487	CakePHP
1488	Research
1489	Babel
1490	NPM
1491	Nextjs
1492	GPS
1493	Frameworks 
1494	Android APIs
1495	SQLite
1496	Camera
1497	Core Python
1498	Odoo Development
1499	MS Visual Studio
1500	.Net Framework
1501	Delphi 
1502	Functional
1503	Open Source
1504	PWA
1505	Less
1506	Sass
1507	Web Pack 
1508	Azure DevOps Server
1509	CSS Preprocessor
1510	React JS
1511	Engineering Software
1512	Adobe XD 
1513	PR 
1514	Oracle HRMS 
1515	Oracle ERP
1516	Oracle E-Business
1517	Elastic Search 
1518	MVC Core 
1519	Hospital 
1520	Visual Design
1521	Android SDK 
1522	RESTFUL APIs
1523	Offline Storage
1524	Data Warehouse
1525	OBIEE
1526	Data Modeling
1527	Data
1528	Power BI Development 
1529	ETL
1530	Unit Testing 
1531	Redux 
1532	JSS
1533	Devtools
1534	Entity framework
1535	Vuejs
1536	E-Learning
1537	NoSql 
1538	Angular.JS
1539	SaSS
1540	Lumen
1541	REST API
1542	Php
1543	CD
1544	C/Python
1545	UNIX
1546	LEMP
1547	AngularJS 
1548	Ecommerce
1549	Shopify 
1550	Angular.js
1551	PM2
1552	REST Web Service
1553	Material Design
1554	JSON format
1555	ElasticSearch 
1556	Bootstrap 
1557	DOM 
1558	Nosql
1559	react native 
1560	micro services
1561	angular js
1562	Laravel 
1563	Jira 
1564	Cloud Technology 
1565	Jest
1566	nopcommerce
1567	.net core
1568	senior frontend developer
1569	ui developer
1570	front-end developer
1571	frontend
1572	angulr
1573	senior front-end developer
1574	flutter 
1575	Android Design
1576	reactjs
1577	Android Applications
1578	Android Developement
1579	Business Process
1580	German
1581	Application Developer
1582	AX
1583	MS Project
1584	CAD Drawing
1585	Elastic Search
1586	NPM 
1587	Information Technology IT
1588	CSOM 
1589	Microsoft Dynamics 
1590	Software Developer
1591	JSOM
1592	XSLT/XML
1593	Angular Js
1594	CSOM
1595	Workflow
1596	workflows
1597	UI/
1598	React Hooks
1599	Flexbox 
1600	MEAN
1601	Vanilla ES6
1602	Nodejs 
1603	Apps
1604	Electronics
1605	BI Development
1606	boomi
1607	Data Warehousing
1608	JS 
1609	Data Stage
1610	Data Developer
1611	SOLID
1612	Legal 
1613	Regulatory Compliance
1614	Money Laundry
1615	Financing Terrorism
1616	Angular 6 
1617	MapKit
1618	Consuming
1619	StoryBoards
1620	SWIFT
1621	CoreLocation
1622	IOS development
1623	Node JS
1624	.Net 
1625	Full Stack Developement
1626	PLSQL 
1627	OAF
1628	Application Development
1629	Leads
1630	Java Script
1631	Websockets
1632	Style Sheets
1633	Swift UI
1634	Swift 4
1635	Swift 5
1636	Push Notifications 
1637	UIKIT
1638	EBX
1639	TIBCO EBX
1640	Data Solutions
1641	Data Quality 
1642	Tuning
1643	Management Information
1644	Computer Management
1645	Data Management
1646	RMAN
1647	DB Design 
1648	developer
1649	PL/SQL
1650	Advertising
1651	Advertising Campaigns 
1652	Italian
1653	C1 
1654	Spanish
1655	Back End Developement
1656	HTTP
1657	Biztalk
1658	DEVOPS
1659	end 
1660	Objective 
1661	App
1662	Angular Js 1.5
1663	Angular 7+
1664	Angular CLI
1665	Java 8 
1666	VPS
1667	Template Engine 
1668	Time Management
1669	Microsoft Access
1670	Real Estate
1671	Presentation Skills
1672	Educational Products
1673	ZOHO
1674	Event Planning
1675	Media/Journalism/Publishing 
1676	MS Excel 
1677	Product Development
1678	System Admin
1679	Information Administration
1680	Servers
1681	SCADA
1682	PLC
1683	Instrumentation
1684	cybersecurity
1685	TypeScript 
1686	Stack
1687	Web Analytics 
1688	Digital
1689	Apex
1690	Oracle PL/SQL
1691	Oracle PL
1692	Females Preferred
1693	VR
1694	Virtual Reality
1695	Leap Motion
1696	AR
1697	Kinect
1698	Business Intelligence
1699	CS
1700	Odoo Programming
1701	Information Technology 
1702	Jetpack
1703	HTTP 
1704	Power BI
1705	OLAP
1706	Jquery
1707	Graphics
1708	Video
1709	Info-Graph
1710	SOA 
1711	MVI
1712	native 
1713	CRM 
1714	Customer Relations
1715	BOOTSTRAP
1716	Outdoor Sales
1717	Brand Awareness
1718	NuGet
1719	VP
1720	SCSS 
1721	Lync
1722	IOC
1723	Phoenix
1724	Ruby on Rails 
1725	Elixir
1726	Redis
1727	.NET Core 
1728	Air Conditioning
1729	BI technologies
1730	SQL queries
1731	Oracle BI
1732	SSIS
1733	Microsoft Power BI
1734	BI Developer
1735	ASP .Net
1736	Marketing Research
1737	Mobile Design
2603	DB
1738	UI / UX Design
1739	Packaging
1740	2D
1741	In design
1742	Building Material
1743	Engineering - Construction/Civil/Architecture
1744	Integrations
1745	Devops
1746	Financial Statements
1747	financial
1748	Genetic Labs
1749	Business Analysis 
1750	SAP B1
1751	Functional Documents 
1752	SAP B1 SDK
1753	X++
1754	Marketing Agency
1755	SW Development
1756	PMP 
1757	Instructor
1758	Human Resource
1759	ERP Configuration
1760	Website Testing
1761	QA Tester
1762	Pre
1763	Agile Methodology
1764	XP 
1765	Scrum Master
1766	microsoft
1767	.net
1768	Team Lead
1769	AutoCad
1770	Architectural
1771	Drawing
1772	Architectural Engineering
1773	Switching
1774	Cisco Solution 
1775	CCSP
1776	HRO
1777	Outsourcing
1778	RabbitMQ 
1779	Go Language
1780	Varnish
1781	Shell Script
1782	NGO
1783	Reporting
1784	Admin
1785	ODI
1786	UNIX 
1787	JIRA
1788	Marketing/PR/Advertising 
1789	Facebook
1790	Manual Testing
1791	Software QA
1792	QA Methodologies
1793	RFID
1794	QC Engineering
1795	QA 
1796	Software Testing 
1797	Systems 
1798	Solution Architecture
1799	Marketing Strategies
1800	Marketing Trends
1801	Marketing Channels 
1802	Online Marketing
1803	react native
1804	jQuery Framework
1805	IVR 
1806	USSD
1807	School
1808	MCITP
1809	LPIC
1810	CCE
1811	OCA
1812	E Learning
1813	Devops 
1814	Debugging
1815	analysis
1816	Coding Languages
1817	Adobe Photoshop 
1818	Full Stack 
1819	IOT
1820	Big Data
1821	GUI
1822	Agile Frameworks
1823	Cloud Systems 
1824	Teaching 
1825	instructor
1826	Product 
1827	ALM
1828	Team Foundation Server
1829	Lead
1830	Consultant
1831	Profound
1832	Load
1833	Load Testing
1834	IDS
1835	Cloud Security 
1836	SIEM
1837	Yarn
1838	Travic
1839	Circle
1840	Embedded
1841	Embedded Software
1842	Embedded Systems
1843	Oracle developer
1844	Database Adminstration 
1845	OCP
1846	Salesforce
1847	SaaS 
1848	Cloud Engineering
1849	Computer Engineeirng
1850	team leader
1851	Kendo
1852	Live Chat
1853	Software Devices
1854	Web Chat 
1855	CX
1856	Balsamiq
1857	Story Mapping
1858	Business Analyst
1859	Pentaho Development
1860	AD
1861	G/W
1862	Project Managment 
1863	Automated Testing
1864	GreatPlains 
1865	React.js 
1866	Business 
1867	Tax
1868	ACCA
1869	Analyst
1870	Git Source Control
1871	Testing Automation Engineering
1872	JMeter 
1873	WebRTC 
1874	CEO Assistant
1875	Interpersonal Skills
1876	OpenShift 
1877	Ansible
1878	TypeORM
1879	SequalizeJs
1880	NodeJs
1881	NestJs
1882	ExpressJs
1883	Functional Testing
1884	Budgeting
1885	PRINCE II
1886	Software Security
1887	Android Developer
1888	Mobile Software Engineer
1889	iOS Developer
1890	Ionic Mobile Developer
1891	ERP Sales
1892	Juniper
1893	CWNA 
1894	Healthcare Market
1895	Kanban 
1896	BDD
1897	SRS
1898	Software Documentation
1899	NLP Experience
1900	NLP 
1901	Automated Testing 
1902	JEE
1903	Product management
1904	Informations Technology
1905	Instructional Design
1906	Dreamwaver 
1907	Domain Control
1908	Control 
1909	Fire Wall
3379	BDM
1910	System Administrator
1911	vmware
1912	Windows servers
1913	Business Management
1914	#Xamarin 
1915	MS Sharepoint
1916	Inventory
1917	Cargo Management Software
1918	Shipment
1919	UI Design
1920	ESXI
1921	DRS
1922	SRM
1923	Presales Engineering
1924	Concrete
1925	Analytical Skills
1926	Civil Engineering 
1927	Construction Chemicals
1928	ACI
1929	Problem solving
1930	SDLC 
1931	Lead Generation 
1932	IT Services
1933	B2C
1934	Orders
1935	Logistics 
1936	Customer Orders
1937	Warehouse System
1938	Shipments
1939	Business Coordination
1940	Perfomance testing
1941	QSIT
1942	CloudOps
1943	EC2
1944	Cfengine
1945	FileNet
1946	Application Server
1947	ESCC
1948	NAT
1949	WINS
1950	LESS 
1951	SAAS
1952	IPV4 
1953	General Ledger
1954	Web Stack 
1955	Spring Stack
1956	Core
1957	Java programming
1958	REST API’s
1959	DBA
1960	digital advertising
1961	selling skills
1962	RED
1963	exploit
1964	penetration
1965	OSCP
1966	testing
1967	cyber
1968	engineer
1969	hack
1970	linux
1971	SOC
1972	Project Development
1973	Construction Chemicals 
1974	wireframe
1975	portfolio
1976	experience
1977	UI/UX 
1978	Training 
1979	Pre Sales
1980	Adobe Creative Suite
1981	ecommerce
1982	Adobe Creative
1983	emarketing agency 
1984	E
1985	Payments 
1986	Financial Sector
1987	SOAP 
1988	Industrial Manufacturing 
1989	Food & Beverage
1990	Kafka 
1991	PHP Developement
1992	User Research
1993	User Interface
1994	Design Software
1995	Comupter Vision
1996	Image Processing
1997	Applied Mathematics
1998	3D Graphics 
1999	PRD
2000	OpenGL
2001	OpenCV
2002	Robust
2003	Tensorflow 
2004	Mobile Image Processing
2005	E2E
2006	FICO
2007	BAPI
2008	ABAP
2009	Software Quality 
2010	Mobile Application Testing
2011	Virtualization
2012	Automation Anywhere 
2013	ERP Solutions
2014	Account Manager
2015	Graphql 
2016	AMP
2017	Siemon
2018	Nexans
2019	FTTH
2020	Netconnect
2021	Systimax
2022	CommScope
2023	Routing
2024	CCDA 
2025	Exchange
2026	Exchange Administration
2027	Lotus Notes 
2028	French 
2029	Kanaban
2030	FDD 
2031	Internal Audit
2032	Gitlab 
2033	Research 
2034	UXPin
2035	Groovy
2036	Monitoring
2037	Ant 
2038	Unix
2039	VSTS
2040	Sketch App
2041	Mac
2042	Sketch 
2043	Prototyping
2044	Usability
2045	UX/UI
2046	UX/UI Design
2047	Macintosh Computer
2048	DevPOS
2049	Software Industry
2050	Mobile App Development
2051	Golang
2052	ERP System
2053	OFS
2054	OFSC
2055	Supply
2056	WMS
2057	Fusion
2058	OTM
2059	Front Office
2060	Co-Working Space Adminstration
2061	Microsoft PowerPoint
2062	Solutions Architect
2063	Statistics
2064	Keras
2065	PyTorch 
2066	MS Visio
2067	Business Writing
2068	Micro Services
2069	YII 
2070	ERP Application 
2071	Business Application
2072	Telemarketing 
2073	UI Testing
2074	DB2
2075	Labor
2076	liferay
2077	QuickBooks
2078	Data Analysis
2079	Tableau
2080	Artificial intelligence
2081	Call Center
2082	Adobe 
2083	Photo Editing
2085	PMBOK 
2086	Agile Project Management
2087	IT Solutions 
2088	TSP
2089	Interface
2090	WAF
2091	DLP
2092	NGFW
2093	Cybersecurity
2094	EPP
2095	FIM
2096	Adobe Flash
2097	Free Drawing
2098	Networking 
2099	RedHat
2100	RHEV
2101	Red Hat
2102	Shell
2103	Digital Ocean
2104	Version Control
2105	K8s
2106	Load Balancing
2107	User Acceptance Testing
2108	Testing Engineering 
2109	Mockups
2110	Customer Care 
2111	HP
2112	Windows Systems
2113	Network Adminstartion
2114	Media Design
2115	Adobe Dreamweaver
2116	Bash
2117	Apache2
2118	Rundeck
2119	Zabbix
2120	ELK
2121	Centreon
2122	Wildfly
2123	Mercurial 
2124	Web Designer
2125	indoor sales
2126	customer oriented
2127	Stock Market
2128	Portfolio Management 
2129	Economics
2130	Fundamental
2131	Investment
2132	Domain Controller
2133	Customer Service/Support
2134	BPO
2135	SAP Business One
2136	CCDP
2137	WLAN
2138	OSPF
2139	Network Devices
2140	BGP
2141	Network Engineer
2142	Financial Reporting 
2143	Apollo
2144	Automation Sales
2145	Gas Analysis 
2146	Purchasing/Procurement 
2147	CNC
2148	Advertising Packages
2149	Cyber Security
2150	Database Administration 
2151	Mechatronics
2152	Lab
2153	Network Administrator
2154	Backbone.js
2155	Cabling
2156	Site Engineer
2157	PON
2158	Data center
2159	GPON
2160	EPON
2161	Automating
2162	PaaS
2163	Media 
2164	BTL
2165	ERP Applications 
2166	Cash Flow
2167	Treasury Accountant
2168	Treasury
2169	Computer Division 
2170	Arts
2171	UAT
2172	Incident Management
2173	Co-working Space Admin
2174	Admin 
2175	Admin Work
2176	Axure
2177	Prototyping 
2178	Tourism
2179	Stakeholder Management
2180	Travel
2181	Computer Products 
2182	HRM
2183	Website marketing
2184	commerce 
2185	SEM
2186	PPC
2187	Renewable Energy
2188	PV
2189	Commercial 
2190	PVsys
2191	PVSOL
2192	Solar
2193	TC
2194	Learning
2195	Mechanical Engineering 
2196	Cost Control
2197	Cost
2198	Cost Engineering 
2199	Primavera
2200	2D 
2201	Quality Assurance Engineer
2202	Fitness Classes Software Tester
2203	Fitness
2204	Fitness Training
2205	Oracle Database
2206	SQL Server Database
2207	Oracle SQL
2208	Artwork
2209	Adobe CC
2210	Illustrator 
2211	Pre Press
2212	SAP PS
2213	SAP FI
2214	HCM 
2215	SAP HCM
2216	SAP FICO
2217	SAP RE
2218	SAP Maintenance
2219	Lego
2220	Stem
2221	FLL
2222	Robot
2223	Robotics
2224	Microsoft Identity Manager
2225	MIM
2226	MS Lync 
2227	Microsoft Active Directory
2228	Legal
2229	Law
2230	Lawyer
2231	Creative Director
2232	InDesign 
2233	Digital Marketing 
2234	DreamWeaver 
2235	Office
2236	Switching 
2237	International School
2238	Cambridge Curriculum
2239	Web Administration
2240	Digital Marketing Sales
2241	PhotoShop
2242	Facility Management
2243	Cleaining
2244	Facilities Management
2245	People Skills
2246	Catering 
2247	relationship
2248	N+ 
2249	Online
2250	Motion
2251	Video Editing
2252	Editing 
2253	Architecture 
2254	Elastic Stack
2255	SIMATIC
2256	Factories
2257	Public Relations
2258	Graphic Designer
2259	Social
2260	Continuous Delivery
2261	Continuous Integration
2262	USAID funded Projects
2263	Architect
2264	Conservation
2265	USAID Funded Projects
2266	After Effects
2267	Adobe Premiere
2268	Video Editor
2269	Digital Technology 
2270	Internal Auditor
2271	Campaign
2272	Telemarketing
2273	SAN
2274	VSphere
2275	NAS
2276	Digital Products
2277	Visio
2278	ELK stack
2279	Spring Cloud
2280	Kibana
2281	Logstash
2282	Istio
2283	JenkinsX
2284	Grafana
2285	Alfresco
2286	kubernetes
2287	Rotating Equipment
2288	Monte Carlo Simulation
2289	Markoz Analysis
2290	Oil & Gas
2291	RBD
2292	Database Development
2293	Nano-Meter
2294	TCL
2295	PVS
2296	Cadence 
2297	AMS
2298	UGE
2299	LSF
2300	Finance 
2301	SCM
2302	Estimation
2303	Costing
2304	Cost Estimation
2305	User Research 
2306	Company Identity
2307	Technical Writing
2308	Content 
2309	IVR
2310	RBT
2311	SLA
2312	Windows Servers
2313	Firewall FortiGate
2314	Law Regulations
2315	HR Policies
2316	HR Management
2317	Benefits Management 
2318	Compensation & Benefits
2319	Writing/Editorial 
2320	Translation
2321	Auditor
2322	SME
2323	Inventory Control
2324	Stock Control
2325	Inventory Analyst
2326	Operation
2327	Courier
2328	Manager 
2329	Customer Service Management'
2330	Cosmtaic
2331	Dell
2332	Networking Solutions
2333	EMC
2334	Schneider
2335	English Teaching
2336	English Teacher
2337	Cables
2338	ICDL
2339	Systems Analyst
2340	Sales Strategy
2341	Sales Manager 
2342	Programming Languages
2343	Training Programs
2344	Financial
2345	Interior Design
2346	Furniture
2347	Social Software
2348	Video 
2349	Editing Software
2350	Premiere
2351	Electrical Substations
2352	CAD Software 
2353	Transmission Substations
2354	Online ordering 
2355	Content Writing
2356	ios
2357	xd
2358	android
2359	inVision
2360	ux design
2361	Solaris
2362	CentOS
2363	Access Control
2364	Fire Alarm
2365	Light Current
2366	Office Supplies
2367	Telecommunications
2368	Bookkeeping
2369	Manufacturing 
2370	Auto CAD
2371	Hand Sketching
2372	3D MAX
2373	Text Mining
2374	ElasticSearch
2375	Information Retrieval
2376	Auditing Standards
2377	Accounting Software 
2378	Mechatronics Engineering
2379	Hospital Projects
2380	HVAC Systems
2381	Revit
2382	Power
2383	Premiere Pro
2384	Figma 
2385	SAS
2386	executive director
2387	Public Relations 
2388	Chief Executive
2389	Managing Director
2390	ceo
2391	BA
2392	System Integrator
2393	technology
2394	Hyper V 
2395	3D Max
2396	Sketchup
2397	Decor
2398	Fashion 
2399	Designer
2400	Trends
2401	Dynamics AX Development
2402	AX2012R3
2403	Dynamics365
2404	Technical Architect
2405	AIF
2406	HR Diploma
2407	Egyptian Labor Law
2408	Social insurance
2409	Form6
2410	Form1
2411	NGINX
2412	CentOS 
2413	SAP Project Management
2414	CIMA
2415	Digital Media
2416	Marketing Strategy
2417	Marketing Plan
2418	Infor
2419	CSI
2420	EDI
2421	SyteLine
2422	JNCIA
2423	Internal Control
2424	VSS
2425	Office 360
2426	VOIP
2427	Citrix
2428	SRX
2429	FortiGate
2430	MCITP 
2431	Aruba Switching
2432	CAT
2433	Translator
2434	Localization
2435	Editorial
2436	Medicine
2437	Consumer
2438	Brand Management
2439	Brand 
2440	Veterinary Medicine
2441	R&D Senior engineer
2442	Lighting
2443	R&D/Science 
2444	LED
2445	Solidworks
2446	Odoo Training
2447	Odoo Implementation
2448	Odoo Functional Consultant
2449	Odoo Project Management
2450	Odoo Configuration 
2451	Computer Information Systems
2452	Payroll
2453	GL
2454	Microsoft Excel 
2455	GAAP
2456	Technical Knowledge
2457	Call Center 
2458	Technical Support Agent
2459	Sketch Up
2460	Graphic Software
2461	Auto Cad 2D
2462	Landscape Architecture
2463	Auto Cad 3D
2464	Sales Reports
2465	Courier Industry 
2466	IT Security 
2467	TCP
2468	MPLS
2469	GSM
2470	Product Design
2471	MIS 
2472	Ax
2473	SQL Server 
2474	OD
2475	Manufacturing/Production 
2476	Production
2477	CAD Software
2478	Executive Director
2479	Hospital Management
2480	Deputy Management
2481	3ds Max
2482	Flinto 
2483	ERP Implementations
2484	Electrical Design
2485	AutoCad 
2486	Skype
2487	Office 365 
2488	TEAMS
2489	Financial Institution
2490	SAS Fraud
2491	Fraud Solutions 
2492	Oracle HRMS
2493	IoT 
2494	DBMS
2495	AME
2496	OBIEE 
2497	BI XML
2498	OA
2499	Oracle Workflow
2500	AME 
2501	ERPs 
2502	EE
2503	Asterisk
2504	SIP
2505	CAPM
2506	FIDIC
2507	Subcontract
2508	Contract
2509	team
2510	Penetration
2511	Intrusion
2512	audit
2513	Splunk
2514	threat
2515	QRadar
2516	logs
2517	lead 
2518	Campaigns
2519	QuarkXPress
2520	CorelDRAW
2521	SOP
2522	Cosmetics
2523	Products
2524	Aluminum
2525	Lubricants
2526	Marketing Management
2527	VC
2528	Designer 
2529	Payable 
2530	Payables
2531	General Accounting
2532	Payment
2533	Accounts Paybale Accounting
2534	HDL
2535	Oracle Cloud
2536	TCC
2537	Core HR
2538	HCM
2539	Taleo
2540	Installations
2541	Graphic Designing 
2542	Strategy
2543	ObjC
2544	General Manager
2545	CRMM
2546	B2B Digital Agency
2547	Digital Content
2548	IT Infrastructure Sales
2549	Landscape
2550	MTO
2551	Contracting
2552	Adobe Illustrator 
2553	Failure Analysis
2554	PCBA
2555	Electronic Analysis Engineering
2556	Dynamics 365
2557	Client Relationships
2558	Graphic Design Software
2559	Apache Cordova
2560	PostCSS
2561	Lean
2562	Manufacturing/Production
2563	Six Segma
2564	Six Sigma
2565	Animator
2566	Metal
2567	Indesign 
2568	Sales- Buisness Development-
2569	Buisness Development
2570	Technology Strategy 
2571	Azure Fundamentals
2572	Printing 
2573	Web Chat
2574	Non Voice
2575	HCPs
2576	Biomedical
2577	Cochlear Implant
2578	Health Care
2579	Audiology 
2580	Social Media Marketing
2581	Social Media Production 
2582	Client Relationship
2583	Apple
2584	Scheduling 
2585	CICD
2586	Computer science
2587	Agile Environments
2588	MSMQ
2589	MEP
2590	Tendering
2591	Analytics Tools
2592	Webmaster
2593	Web Publishing
2594	PPC 
2595	Google Analytics
2596	CPIM
2597	Property Sales
2598	Sales Operations
2599	Outlook
2600	PowerPoint
2601	BigCommerce
2602	KTS 
2604	Erosion Control
2605	Grading
2606	Civil 3D 
2607	Utility Design
2608	Site Layout
2609	Order Processing
2610	Cash Flow Management
2611	Systems Analysis
2612	Hotel Management Systems
2613	SAP SD
2614	S/4 HANA
2615	SD
2616	SAP Certification
2617	Business Planning
2618	Communication Engineer
2619	Accountant
2620	Sales Buzz
2621	Microsoft Dynamics AX
2622	Analytics
2623	Bookkeeping Software
2624	Typing
2625	Problem Solving
2626	Business Data
2627	Sketch-up
2628	REVIT
2629	Landscape Design
2630	Employee Relations
2631	Outdoor Sales 
2632	Market
2633	Photography
2634	Social Media Platforms
2635	Media Buying
2636	marketing 
2637	Software Engeneering
2638	Polystyrene
2639	IT Skills 
2640	Financial Accounting
2641	Writing Skills
2642	Articles
2643	Corporate Contract
2644	Equipment
2645	Improvement 
2646	Industrial Engineering
2647	SketchUp
2648	Finishing
2649	3D Rendering
2650	Interior
2651	SoapUI
2652	Web Applications 
2653	3Dmax
2654	construction
2655	Facade Consultancy
2656	Facade
2657	Construction 
2658	Curtain Wall
2659	brand
2660	Project Coordinator
2661	Education Management
2662	PR
2663	Network Security 
2664	Inventory Management
2665	Framer
2666	Web Analytics Tools
2667	Health Insurance
2668	Fraud Projects
2669	Life Insurance
2670	Motor Insurance
2671	Systems Engineering
2672	CRM Software
2673	Automotive 
2674	Human Resource Management
2675	Management Skills
2676	Digital Product Design
2677	Adobe Suite
2678	Business requirements
2679	IS
2680	UCD 
2681	Brokerage
2682	Industrial Design
2683	3DMax
2684	Science 
2685	sales manager
2686	Media Planning
2687	Digital 
2688	Fine Arts 
2689	IT Administration
2690	Oracle E-business
2691	Microsoft 365
2692	Game Design
2693	Game Art
2694	Game Narrative
2695	Games
2696	IEC 27001
2697	NIST Assessor
2698	Cinema 4D
2699	Blender
2700	Final Cut/Nuke
2701	Motion Graphics 
2702	Procedures
2703	MSC
2704	VOIP Systems
2705	SIP 
2706	Creatives
2707	Tender
2708	Tender Engineer
2709	Furniture industry
2710	Foreign Purchasing
2711	Import
2712	Content Marketing
2713	ACA
2714	ACAA
2715	Marekting
2716	Switches
2717	Fortinet
2718	MS Dynamics AX
2719	AX Functional
2720	LLD
2721	HLD
2722	Data Center 
2723	DELL EMC Avamar
2724	Avamar
2725	EMC Solutions 
2726	Data Center
2727	DELL EMC
2728	Indoor Sales 
2729	Tax System 
2730	Interpersonal skills
2731	Area Management
2732	SAP business one
2733	learn SAP Business One
2734	Business One
2735	Human Resorce
2736	HIS
2737	Consulting
2738	Residential 
2739	IT Skills
2740	After Sales
2741	Drafting 
2742	Sheet Metal
2743	Talent Management
2744	Talent Acquisation
2745	RHCE
2746	MAC
2747	Orthodontics
2748	Negotiation Skills 
2749	Customer Satisfaction
2750	Database Modeling
2751	DWH
2752	Database warehousing
2753	Database engineer
2754	DB2 
2755	Data Architect
2756	Event Management
2757	FMCG 
2758	CCIE
2759	E-learning
2760	Political Science
2761	Saudi Market
2762	Local Purchasing
2763	Sales Engineering
2764	Commercial
2765	Clients Relations Support
2766	PP
2767	MM
2768	QM
2769	E2E SAP Implementation
2770	Co-founder
2771	Bucket
2772	Warehouse Management
2773	Supply Chain Management
2774	Supply 
2775	Financial Systems
2776	Design Solutions
2777	NSE
2778	BOM 
2779	CCDE
2780	WebEx 
2781	Collaboration
2782	Document Control
2783	Radiology
2784	Dental
2785	Dental Sales
2786	Writing/Editorial
2787	Creating Content
2788	Website Back Office
2789	Website
2790	CloudOPS
2791	Oil & Gas/Energy
2792	Purchasing Strategies
2793	Africa Market
2794	Creative Suite
2795	Creative 
2796	Motion Design
2797	Alsun
2798	Executive
2799	Structure
2800	CSi 
2801	Science Supervisor
2802	Demand Planning
2803	Home Appliance
2804	Google Adwords
2805	V-Ray
2806	3D Modeling
2807	Lighting 
2808	2D Modeling
2809	F5
2810	HR Generalist
2811	Human Resources Management
2812	Distribution
2813	SQL Server 2005
2814	CRM SDK
2815	ISV
2816	Iframe 
2817	AI
2818	Proposal
2819	Residential Projects
2820	Technical Office
2821	Agriproducts
2822	Agriculture
2823	Food
2824	Electrical Power Engineering
2825	Production Management
2826	Plastics
2827	TEFL
2828	IGCSE
2829	KG
2830	IELTS
2831	Kindergarten
2832	Analyst/Research
2833	Dye House 
2834	Textile
2835	Production Process
2836	Knitting
2837	Production Planning
2838	development sector 
2839	Programs Manager
2840	Strategic Planning
2841	Programs Management
2842	Real Estate Development
2843	Vet
2844	Medical Sales
2845	UCD
2846	Wireframe 
2847	Deployment 
2848	engineering
2849	STEM
2850	Arduino
2851	People Management 
2852	sales executive
2853	communication
2854	Freehand Drawing
2855	Lightroom
2856	Sales Supervision
2857	SharePoint Administration
2858	HTTPWatch 
2859	Partnerships
2860	Market Analysis
2861	Outreach
2862	AutoCAD 3D
2863	Research and Development
2864	IBM Tools
2865	ITI Security
2866	IBM AppScan
2867	IBM Qradar
2868	Information Technology(IT)
2869	Word 
2870	Trade
2871	Consumer Industry
2872	MS PowerPoint
2873	MS Word
2874	Offline Marketing
2875	Trade Marketing
2876	supply chain
2877	Negotiation 
2878	Group Commercial Director
2879	iOS SDK Debugging
2880	AWS S3
2881	Data Card
2882	Smar Cards Machines
2883	Maintaning
2884	Epicor
2885	Electronic Systems
2886	Adobe Creative Cloud
2887	Google Suite
2888	Digitization
2889	Autocad 2D
2890	Technical Drawing
2891	COO
2892	Customer Service Management
2893	Office Management 
2894	Architecture Engineering
2895	Pedia
2896	Gastro
2897	OTC
2898	Cardio
2899	Follow Up
2900	Skills 
2901	Math
2902	Parcel 
2903	Delivery
2904	Warehouse Operations
2905	MS VISIO
2906	CPA 
2907	Offshore Customer Service
2908	Inside Sales
2909	NSE4
2910	Oracle E-Business Suite
2911	SALESBUZZ 
2912	Coaching
2913	Relationship Management
2914	Leadership 
2915	CBAP
2916	Adminstration
2917	Academic
2918	Power Shell 
2919	Animation 
2920	Early Childhood
2921	Early Childhood Education
2922	Child Psychology
2923	Financial Systems 
2924	CRO 
2925	Content Creation
2926	Graphics 
2927	Behance
2928	Organizational skills
2929	Gender Equality
2930	English Language verbal and written skills
2931	Civil Society 
2932	Civil Society Capacity Building
2933	Solar Energy
2934	Technical Engineer
2935	Creative Design
2936	Adobe Premier
2937	Aftereffect
2938	Premier
2939	Adobe Aftereffect
2940	Spare Parts Sales 
2941	Auto Spare Parts
2942	Cars
2943	CFA
2944	IFRS
2945	CMA
2946	VMWare ESXi
2947	Firewalld 
2948	vCenter
2949	Linux Admin
2950	vSwitches
2951	Security Admin
2952	System Administation
2953	Web Administration 
2954	Email Marketing
2955	Digital Media Buying
2956	ROI
2957	Google Advertising
2958	MEP Draftsman
2959	Renting
2960	Renting Services
2961	Employee Relations 
2962	HR Systems
2963	Manpower Planning
2964	AdobeXD
2965	SQL DB
2966	Microsoft SQL DBA 
2967	AP
2968	Customer Management
2969	Sales Admin
2970	Sales Administration
2971	White Collars
2972	Blue Collars
2973	SWOT
2974	Online Strategies
2975	Communications 
2976	Fortinet Security Solutions
2977	CCNP Security
2978	UC 
2979	Collaboration Engineer
2980	CPG
2981	Cannabis
2982	Financial Analysis 
2983	AX2012
2984	Accounting 
2985	Fintech
2986	Quickbooks
2987	Google Ads
2988	CSA
2989	BCI
2990	Business Continuity Management
2991	COSO
2992	Risk Management
2993	Wood
2994	Writing Skills 
2995	Customer
2996	Modeling
2997	Content Development
2998	Analytical 
2999	Project Engineer
3000	Engineering Sales
3001	Architectural Design
3002	UART
3003	SPI
3004	PCB
3005	I2C
3006	SketchUp 
3007	MS Excel
3008	Unit Manager
3009	Planning 
3010	Business Unit
3011	Line Management
3012	Risk
3013	Microfinance
3014	Credit Risk
3015	Dialux
3016	Designing
3017	Engineering Consulting 
3018	Low Current
3019	Social Media Management
3020	teaching
3021	Education/Teaching
3022	EAR
3023	FMW
3024	WAR 
3025	JAR
3026	Computer Vision
3027	Deep Learning
3028	Artificial Intelligence
3029	Medical Devices
3030	Technical Engineering
3031	Accountant Receivable
3032	Excel 
3033	Molecular Biology
3034	Biomedical Science
3035	Laboratory
3036	Centrifuge
3037	Gel Electrophoresis
3038	Thermal Cycler
3039	Biology
3040	Electrical Manufacturing 
3041	Mass Communication
3042	Journalism
3043	Light Current Systems
3044	Machine Attendance
3045	Sales Hardware
3046	Local Procurement
3047	Ultrasonic 
3048	MCSE 
3049	Bidding
3050	Planning Engineering 
3051	BOM
3052	TeamCity
3053	ComScore
3054	DoubleClick 
3055	Biomedical Engineer
3056	Medical Equipment
3057	Sales Engineer
3058	Teacher
3059	HR Functions
3060	Selection
3061	Applicant Tracking 
3062	Recruiting
3063	Talent Acquisition
3064	Interviewing
3065	FI
3066	SAP Project 
3067	CO
3068	Risk Analysis
3069	HR Training
3070	Tokens
3071	Customer care
3072	Maria DB
3073	API Structure
3074	API Implementation
3075	Media Storage
3076	Search Engine
3077	Social Media 
3078	AdWords
3079	Google Search Console
3080	People Management
3081	Branch Management
3082	Category Management
3083	ECommerce
3084	Safety Management
3085	Health Safety & Environment
3086	Health and Safety
3087	Facebook Ads
3088	Content Creation 
3089	Ads
3090	Google Drive
3091	Content Marketing 
3092	inventory
3093	SNMP
3094	SMTP
3095	agriculture
3096	Level Executive/GM/Director 
3097	Marcomm
3098	EMEA
3099	Data Entry 
3100	Hospitals
3101	CAFM
3102	BMS 
3103	HSEQ
3104	CIA
3105	Plastic Pipes
3106	PowerBI
3403	VUE
3107	Communication & Creativity
3108	Excellent command of English language.
3109	Adobe After Effect
3110	Instructional Designer
3111	Hearing Aid
3112	GDSII Implementation flow
3113	IC Design
3114	ASIC
3115	RTL
3116	Digital implementation
3117	Place & Route 
3118	Physical Design
3119	Technical Training
3120	Auto Repair
3121	StockPricing
3122	Auto Parts
3123	Rent Property
3124	Property Counseling
3125	Contact Center
3126	COPC
3127	Drawings
3128	Shop Drawing
3129	Microsoft Products
3130	System Infrastructure
3131	Information systems
3132	MS Azure
3133	Kaspersky 
3134	EMIR
3135	Digital Design
3136	CISM 
3137	CBCP
3138	MS RMS
3139	Retail Management
3140	Oncology
3141	Representative
3142	Medicine 
3143	byd
3144	Campaigns 
3145	Material
3146	Industrial Refrigeration
3147	Refrigeration
3148	Structural Engineering
3149	Civil 
3150	Forecasting
3151	Stewardship Programs
3152	Writing 
3153	BSB Sales
3154	Retail Management,
3155	Supply Chain and logistics
3156	Sales planning
3157	SDA - MDA, Sales analysis
3158	Electronic Retail Business
3159	Quality Standards
3160	Vulnerability
3161	GAIC
3162	Citrix 
3163	Sourcing
3164	Talent Acquisition 
3165	Financial Planning
3166	Hospitality
3167	Real Estate Sales
3168	Telecom Engineering 
3169	Startups
3170	Digital Marketing Management
3171	Oracle EBS Techno-Functional
3172	Techno-Funcional
3173	lighting
3174	industrial
3175	Key Account
3176	Key Account Management
3177	Social Insurance
3178	HR Operations
3179	Hardware Design
3180	Mechanical Design
3181	CAD 
3182	Brand Manager
3183	Marketing Mix
3184	Assistant Brand Manager
3185	Copywriter
3186	Sales Targets
3187	Logistics Sales
3188	Freight
3189	Microsoft Outlook
3190	Client Handling
3191	vehicles
3192	Key Accounts 
3193	Advertising 
3194	Content Writer
3195	Secretary 
3196	Property Consultant
3197	Commercial Sales
3198	Sales Real Estate
3199	GRC
3200	ATS
3201	saudi soft
3202	mid localize 
3203	arabizer
3204	Control
3205	Statistical
3206	Adobe Premiere 
3207	Communication skills
3208	Agriculture Development
3209	Customer Experience
3210	Cisco SDA
3211	VMWare NSX
3212	Safety 
3213	QHSE
3214	Lean Six Sigma
3215	External Audit
3216	SVM
3217	Data Scientist
3218	Naive Bayes
3219	Health And Safety 
3220	SMM
3221	SMO
3222	Mass Hiring
3223	SS7
3224	GSM 
3225	MCC
3226	Low Voltage
3227	Editing Skills
3228	INTERNSHIP
3229	Zeplin 
3230	Maths
3231	Analog 
3232	Utilities
3233	Serial
3234	Diesel Generators
3235	Microcontrollers
3236	Zoho
3237	RDS
3238	VPC
3239	S3
3240	Figma
3241	management
3242	operation
3243	Content writing 
3244	Online Community Management
3245	manage work
3246	entry
3247	Hive
3248	Chartio
3249	Medical Insurance
3250	Accounting Systems 
3251	Financial Reports
3252	shipping
3253	customer support
3254	warehouse
3255	Oracle WebLogic
3256	Tomcat Server
3257	Web Server 
3258	Websphere
3259	Application Servers
3260	Apache Web Server
3261	Dairy
3262	Food Services
3263	VPN 
3264	Dynamics CRM
3265	Implementer
3266	OCR 
3267	IDPS
3268	PTP
3269	Penetration 
3270	PCI
3271	GSEC
3272	oscp
3273	Public Relation
3274	Celebrity
3410	TM
3275	Talent Acquisition Strategy
3276	Email Campaigns 
3277	Google AdWords
3278	Web Analytics
3279	SSAS
3280	Credit
3281	TMS
3282	Operations Management
3283	Network Solutions
3284	Internet of things
3285	Enterprise solution support 
3286	Virtual Machines
3287	Ad Networks
3288	Media Buyer
3289	Ad Exchanges
3290	Buyer
3291	Navision
3292	Sales System
3293	Furniture Sales
3294	Zoho solutions
3295	business applications technical consultant
3296	Business strategy
3297	Marketing Diploma 
3298	business
3299	E-Marketing
3300	Food Safety
3301	Food Processing
3302	ADA
3303	Studios lighting
3304	Lighting Design
3305	Façade lighting
3306	Light Systems
3307	Stage Lighting 
3308	light Designer
3309	Electrical 
3310	Service Engineer
3311	email 
3312	Outdoor
3313	Information Protection
3314	Data Sets
3315	Big data
3316	CTP
3317	cma
3318	Area Manager
3319	ux
3320	user-centric
3321	design
3322	wordpress
3323	Design Strategy
3324	Self starter 
3325	Content writing
3326	linkedin
3327	entrepreneurship
3328	Executive Assistant
3329	Smart Utilities
3330	Smart Meters
3331	Translation & Localization
3332	XML Technologies
3333	DATA CLEANSING ASSISTANT
3334	Data Quality Specialist
3335	MS-SQL
3336	JMS 
3337	Object-Oriented Programming
3338	6 Vacancies
3339	PyTorch
3340	Software Architecture 
3341	SME 
3342	Looker 
3343	UI/UX design 
3344	Mobile loT
3345	BitBucket 
3346	Maven 
3347	Javascript 
3348	Burp Suite
3349	SQL MAP 
3350	Machine Learning 
3351	P2P 
3352	Data 
3353	Data Backup 
3354	WHMCS 
3355	Coding 
3356	Tensorflow
3357	Web Site 
3358	Cadence
3359	Unix Shell 
3360	HIPAA 
3361	3D 
3362	3D Printing 
3363	Uipath
3364	Automation Anywhere
3365	BluePrism 
3366	MySQL. 
3367	Computer Maintenance 
3368	WBS
3369	Software Project Management
3370	RFI
3371	Game Testing
3372	Software Sales 
3373	Presales 
3374	Angular 7 
3375	Flutter Development
3376	IIB
3377	WSDL
3378	IIB Integration 
3380	Scholarship
3381	Java Lead 
3382	Technical Advice
3383	Operating System Software 
3384	CPanel
3385	Oracle BPM
3386	Aris
3387	Data Mining
3388	Automation Scripts 
3389	SDKs
3390	Mobile Applications 
3391	Automotive Sales
3392	Adobe InDesign
3393	Instulation
3394	SOAPXML
3395	java SE
3396	Motion 
3397	Social Media Channels
3398	Games 
3399	cross-platform development
3400	mobile development
3401	D365
3402	AX 2012
3404	programmer
3405	Oracle Financial
3406	Payable Supervisor
3407	user experience
3408	AngularJs
3409	Front End Developer
3411	PA
3412	ABAP HANA
3413	OSS
3414	XL
3415	OM
3416	IDOC
3417	PY
3418	SLCM
3419	Windows 2003/2008
3420	JavaScript, Python
3421	HTML/CSS
3422	PHP Laravel 
3423	Larvel
3424	DAX
3425	OmniGraffle
3426	Maya
3427	Lightwave
3428	Typographical
3429	Software Automation 
3430	Occlusion
3431	Medical 
3432	Dental Anatomy.
3433	Digital Smile Design
3434	Oral Dentistry
3435	Prosthetic
3436	Dental Implantation
3437	Digital Dentistry
3438	Virtual Waxups
3439	Project Coordination 
3440	video processing
3441	machine learning
3442	Online media
3443	BUSINESS DEVELOPMENT
3444	digital marketing
3445	Saas
3446	SOFTWARS
3447	Corporate Sales;
3448	presentations 
3449	Security Testing
3450	Asp.Net
3451	Zend
3452	CodeIgnitor 
3453	Events
3454	web logic
3455	Oracle DBA
3456	Back-end
3457	PHP Back-End
3458	Android UI Design 
3459	Sophos 
3460	business informatics
3461	accounting
3462	Business Information Systems
3463	sap
3464	oracle
3465	mis
3466	Veeam
3467	GPO
3468	SalesBuzz 
3469	Salesforce Automation Systems
3470	POS 
3471	Software Solutions 
3472	Avaya
3473	WFO
3474	UC
3475	Avaya UC
3476	Supervisor
3477	Vlookup
3478	HRIS
3479	Pivot Table
3480	Twitter
3481	Finance Software
3482	financial 
3483	RMS Program
3484	Financial Reporting
3485	Expenses
3486	Microsoft Dynamics AX 
3487	GL Accountant
3488	Cash management
3489	Account transactions
3490	Bank reconciliation
3491	S.A.P User
3492	Warehouse 
3493	Tax Transaction
3494	Beverage
3495	ERM
3496	Admin Assist
3497	Business Informatics
3498	Restaurant Management Software
3499	Food and Beverage
3500	POS
3501	Food Service Management
3502	SMEs
3503	E-payment
3504	SMEs Account Manager
3505	Admin Work 
3506	Enterprise Software
3507	eCommerce
3508	Marketing Strategy 
3509	Computing 
3510	Bank
3511	Woods
3512	Merchandising
3513	Home Appliances
3514	Marketing Coordination
3515	Property 
3516	automotive
3517	manufacturing
3518	factory 
3519	aftermarket
3520	geyushi
3521	marketing
3522	Sales Account Management
3523	Property
3524	Petroleum
3525	Hospitality/Hotels/Food Services
3526	HORECA
3527	Wholesales
3528	Selling Products
3529	Customer Complaints
3530	Industrial Automation
3531	Electric Automation
3532	Schneider Electric
3533	Automotive Spare Parts
3534	Sales Engineering 
3535	Retail Operations
3536	Sales Supervising
3537	Concealed
3538	Central DX
3539	Split Units
3540	Retail Distribution
3541	Sales Executive
3542	Showroom
3543	Retail 
3544	Account Executive
3545	Pipes
3546	Valves
3547	Actuators 
3548	Pumps
3549	Fire Fighting
3550	Control Valves 
3551	Tele Sales
3552	Bokerage
3553	Deal Architect 
3554	BD
3555	Broker
3556	Real Estate Agent
3557	Quotations
3558	Generators 
3559	Store Management
3560	Sports
3561	SPSS
3562	Data Collection
3563	Web analytics
3564	pre
3565	sales 
3566	woocommerce
3567	Computer System
3568	Q 
3569	MS SQL Server
3570	Spring boot
3571	Dynamics AX Developer
3572	AX Developer
3573	DBA 
3574	RAC
3575	Oracle RAC
3576	clinical research
3577	cro
3578	Clinical Research
3579	CRO
3580	Senior CRA
3581	pharmacist
3582	Hospital
3583	Billing
3584	Chemicals Sales
3585	Math Teaching
3586	Instructing
3587	Eduaction
3588	Graphic 
3589	Biology Teaching
3590	Eduacation
3591	BI Analyst
3592	Instagram 
3593	Computer Networking
3594	Data Integration
3595	Data Engineering 
3596	Consumer Marketing
3597	BI&Data Quality Analyst
3598	QA&QC Engineer
3599	Marketing Assistant
3600	ADSL Support
3601	Farm
3602	Agriculture Engineering
3603	Customer Relationship
3604	Cards
3605	Studio Lighting
3606	Videographer
3607	Videography
3608	Final Cut
3609	Marketing Planning
3610	Maintenance Management
3611	Fitting Pipes
3612	FMCG Sales
3613	contracting
3614	power generators
3615	energy
3746	ICU
3616	Online Media
3617	Salesforce 
3618	Business Functions
3619	Tax Reporting
3620	Budgeting 
3621	Taxation
3622	Tax Reports
3623	Tax Analyst
3624	light current
3625	Sales skills
3626	physical security
3627	R&D 
3628	Electro-mechanical
3629	ISTQB/CT-FL
3630	DOM
3631	Node.JS 
3632	WHMCS
3633	IIBA-AAC
3634	CCBA 
3635	Demand
3636	Cost Controlling
3637	Advertising Sales
3638	CLI
3639	J# 
3640	JScript.NET
3641	Accounting System
3642	Sales Process
3643	Computational Biology
3644	Bioinformatics
3645	Biotechnology
3646	Sales Plan 
3647	computer
3648	managment
3649	DELF
3650	Odoo Developer
3651	Receptionist
3652	performance marketing
3653	growth
3654	executive secretary
3655	office manager
3656	admin
3657	CEO personal assistant
3658	Sales Coordination
3659	Sales Support
3660	node
3661	node.js
3662	EngineeringEngineering
3663	BMS
3664	Financial 
3665	Cost Control 
3666	Fleet
3667	MongoDb
3668	back end developer 
3669	PHP developper
3670	VCP-DCV
3671	Warehouse Accountant
3672	account
3673	Storekeeping
3674	Governmental Sector
3675	VMWare 
3676	GO
3677	Credit Control
3678	legal
3679	contracts
3680	LRM
3681	Leasing
3682	PROGRAMS
3683	SOFTWARE
3684	TEAM LEADER
3685	EXPERT
3686	Flutter 
3687	Stores Management
3688	Channel Sales Terr
3689	territory manager
3690	Contracts
3691	restaurants
3692	Costs
3693	Cost Analyst
3694	Live Operations
3695	Solr
3696	Octopus Deploy
3697	Territory Sales
3698	stock control
3699	analyst
3700	Material Planning
3701	Materials
3702	DynamoDB
3703	Financial Entries
3704	Revenue Accounting
3705	Order Management
3706	Delivery 
3707	storkeeper
3708	Warehouse Manager
3709	Trader
3710	Social media
3711	Public relations skills
3712	Fashion Retail
3713	Store Mangement
3714	Reporting 
3715	Accounts
3716	Mobile development
3717	Dart
3718	Go
3719	web-socket
3720	English Language
3721	react.js
3722	RESTFULAPI
3723	mern stack
3724	REDUX
3725	php
3726	Axis
3727	Desktop Development
3728	Devexpress
3729	Office Applications
3730	Antivirus 
3731	Monitors 
3732	Printing
3733	Video Production
3734	Art Directing
3735	Art Management
3736	IT Information System
3737	real estate
3738	Order Management Specialist
3739	Order Processing Specialist 
3740	Supply Chain Specialist
3741	Supply Planner
3742	Supply Officer
3743	Procurement and Logistics Specialist
3744	مشرف توزيع و موزعين
3745	موزعين
3747	Web APIs
3748	Angular +2 
3749	Web Testing
3750	internship
3751	google
3752	intern
3753	technologu
3754	python
3755	SharePoint online 
3756	Backend Development
3757	GraphQL 
3758	CORE .Net
3759	ChartJS
3760	e-course
3761	Digital Transformations
3762	e-learning
3763	Android Developer 
3764	JQUERY
3765	FULL STACK
3766	DEVELOPER
3767	BACKEND
3768	Trello
3769	VueJs 
3770	Slack
3771	Angular5+
3772	Dynamics AX 2012
3773	CMS 
3774	MacOS
3775	Tomcat 
3776	Integration Development 
3777	XQuery
3778	Project Planning
3779	Design Software 
3780	Adobe After effects 
3781	Editing Software 
3782	technical
3783	SOLUTIONS
3784	DMS
3785	Educational Script
3786	Distance Learning Systems
3787	Educational Content
3788	Educational Programs Design
3789	UDP
3790	Microsoft Server
3791	SSL
3792	Systems
3793	Gitlab
3794	msca
3795	VDI
3796	Dutch
3797	solving
3798	development
3799	problem
3800	research
3801	language
3802	Payable
3803	Accounts Payable Accounting
3804	NAV
3805	Analyst 
3806	Facility Engineer
3807	GAAP 
3808	Process
3809	APICS
3810	CPT 
3811	Data Quality
3812	Cargo
3813	Fleet Management
3814	Bulk Vessel Shipping
3815	Bulk cargo
3816	Trucking
3817	menswear
3818	Suppliers
3819	Doctor 
3820	FMC
3821	Planning Budgeting
3822	procuremn
3823	Supply Chain Management 
3824	Financial Reports 
3825	Warehouse Keepering
3826	Manufacturing Resource Planning
3827	MRP
3828	Channel Sales
3829	Facility
3830	supplychain
3831	operations
3832	accountant
3833	Razor
3834	ADF Programing
3835	flutter
3836	Advertising Agency
3837	NPC
3838	Program Support
3839	MOHP
3840	business development
3841	system integrator
3842	electrical engineer
3843	senior sales
3844	Service Management
3845	EAI
3846	ETL 
3847	ESB Architecture
3848	EAI Middleware Engineering
3849	VMware vSphere 5 
3850	HP Servers
3851	Microsoft WSUS
3852	TQM
3853	administration
3854	operations.
3855	Office management;
3856	Payroll Software
3857	Taxes
3858	Delta Software
3859	Air Cargo 
3860	Order processing
3861	NgRx 
3862	NGX
3863	Autocad
3864	Cash Management
3865	Financial Statement
3866	Steel Structures
3867	Supermarket
3868	Balance Sheet
3869	Enterprise
3870	Business Selling
3871	Economics 
3872	Corporate Operations
3873	Furniture Industry
3874	Solid Works
3875	ERP Application
3876	Construction Procurement
3877	Dockers
3878	Trial Balance
3879	General Ledger 
3880	BOQ
3881	RFQ
3882	Market Research 
3883	YouTube
3884	Arch 
3885	Safety Stock
3886	Planning Engineer
3887	Odoo System
3888	Offshore Production
3889	Production Coordination
3890	Freight Operation
3891	Freight Logistics
3892	Marine Port Operations
3893	worlpress
3894	Codelgniter Framework 
3895	WooCommerce
3896	VCP
3897	Digital marketing
3898	Hootsuite
3899	Community Manager
3900	Cross Culture
3901	AX Dynamics
3902	Web Application Development
3903	software development
3904	microservice
3905	telecommunication
3906	SAP CX 
3907	implementation
3908	advertising
3909	Debugging 
3910	Network Administration 
3911	project management 
3912	Hospitality/Hotels/Food Services 
3913	Mechanical Engineering Design CAD SolidWorks Mechanical Design
3914	Financial Transactions
3915	Finance Analysis
3916	Crystal Report
3917	Labor Law 
3918	Warehouse Keeper
3919	Windows Forms 
3920	Demand Generation
3921	Marketing Growth Hacker
3922	Growth
3923	SEM 
3924	FRM
3925	Financial Risk Manager
3926	Certified Public Accountant 
3927	Banks
3928	Beauty
3929	Wellness
3930	Beauty Center
3931	Foreign
3932	Constraints
3933	Cash
3934	Product manager
3935	App Design
3936	Cost Analysis
3937	FrameMaker
3938	DTP
3939	Desktop Publishing
3940	Quarkxpress
3941	Wordfast
3942	Powerpoint
3943	Publishing
3944	Sales Account Manager
3945	fa
3946	facilities
3947	LaaS
3948	Soroco RPA
3949	WorkFusion IDP
3950	PassS
3951	Hybrid
3952	valuation
3953	investment
3954	Copywriting
4100	CA
3955	Public Relations PR
3956	Consolidation
3957	EAS
3958	PHP Lavarel
3959	Vtiger
3991	Risk Assessment
3992	Credit Rules
3993	Clerical Accounting
3994	tax
3995	Bank Relation
3996	OR
3997	Certified Internal Auditor
3998	Core Java
3999	External Auditing
4000	Woodwork
4001	Actuarial Science
4002	Big Data Management
4003	Strategic Marketing
4004	CLAC
4005	Furniture Design
4006	Accounts Receivables
4007	Journal Entries
4008	Trucks 
4009	Mobile Landscape 
4010	Work from home
4011	Work Station
4012	Project Accounting
4013	Facilities Director
4014	Time management 
4015	ios developer
4016	Management Information Systems
4017	Database Administrator
4018	Technical Reporting
4019	MSCE
4020	Surveillance Systems 
4021	SQLplus
4022	Navigator 
4023	TOAD
4024	Digital Agency
4025	Mikrotik
4026	Dynamics Nav CAL
4027	VB.net
4028	XRM
4029	Performance Management 
4030	Human Resources Information Systems HR Reports
4031	HR Reports
4032	BRM
4033	Credit Underwriter
4034	Credit Analyst
4035	Purchase Package
4036	AAST
4037	follow up
4038	prices
4039	site visits
4040	surveys
4041	writing
4042	presentations
4043	databases
4044	XRM 
4045	Video Editing Software
4046	PaloAlto
4047	IPSec
4048	Service Bus
4049	Data Marts 
4050	NO-SQL
4051	Query Languages
4052	Solution Own
4053	API Getaway
4054	Data Lakes
4055	MSBuild
4056	Exports
4057	Raw Material
4058	STLC
4059	Presentation Skills 
4060	fintech
4061	requirment elicitation
4062	Requirment analysis 
4063	Servers 
4064	Tax Regulations
4065	Cooking
4066	Chef
4067	Good beauty taste.
4068	Use PS well
4069	Software Sakes
4070	reporting
4071	Strategic
4072	Online Advertising
4073	costing
4074	Brand management 
4075	life ray
4129	elastic
4130	Sales Analysis
4078	finance
4079	electronics
4080	Sap 
4081	json
4082	api
4083	core
4084	Tax Accountant
4085	research and development
4086	content creator
4087	Strategy/Consulting
4088	Store
4089	mobile
4090	Store Manager
4091	Storkeeper
4092	collection
4093	collector
4094	Plumbing
4095	BIM Mobilization
4096	Mechanical, electrical and plumbing
4097	Springboot
4098	RAID
4099	Storage
4101	XCode
4102	Solution Designs
4103	GM
4104	Country manager
4105	Invoices
4106	Routers
4107	Workstations
4108	Pricing
4109	Senior Digital Marketing Specialist
4110	Partners' Accounts
4111	Hypermarket
4112	Local Items
4113	Accounting Principles
4114	Cash Management 
4115	Financial Risk Management
4116	Liquidity Risk
4117	Funding Management
4118	Bank Transactions
4119	Planning Skills
4120	Cost Analysis 
4121	Beverage 
4122	Sales Administrator
4123	Administrative
4124	Executive Secretary
4125	Word-press Developement
4126	G Suites
4127	Taxing
4128	Corporate Taxing
4131	SFE
4132	Sales Force Effectiveness
4133	Infinity
4134	NGRX
4135	adobe xd
4136	Graphics Software 
4137	Technical Project Management
4138	Italian 
4139	Plant
4140	Adobe Creative Suite 
4141	Stock
4142	Stock Controller
4143	Power Solutions 
4144	Lighting Systems
4145	Raw Materials
4146	Toll Manufacturing
4147	Pharmacy 
4148	Manualtesting
4149	Power BI 
4150	Linux System
4151	back-end
4152	Team lead
4153	front-end
4154	Tax Preparer
4210	MPS
4155	Bookkeeping 
4156	Tax Analysis
4157	Tax Accounting
4158	logistics
4159	Vendors
4160	Strategies
4161	Angular +2
4162	ES6 
4163	Payments
4164	e-commerce
4165	Finance Management
4166	Copywriting 
4167	Music
4168	software knowledge
4169	telemedicine
4170	telehealth
4171	Support 
4172	procurment
4173	Commodities
4174	supply Chain
4175	Futures
4176	trading
4177	Voltage
4178	LV
4179	Mobile Repair
4180	Iphone
4181	Iphone Hardware 
4182	Iphone Software
4183	Billing Accountant
4184	BIS 
4185	Receivable
4186	cost
4187	PHPUnit
4188	Gorilla Mux 
4189	Godep
4190	Software Developing
4191	Godoc
4192	Oracle Sales
4193	Sales Consultant
4194	Telecom Industries
4195	IP Camera
4196	hardware
4197	Auditing Reports
4198	Front end
4199	web
4200	Transportation
4201	Logistics Systems
4202	Imports
4203	Clearance
4204	Customs
4205	Customs Clearance
4206	JNCIP
4207	iOS SDK 
4208	Marble
4209	Granite
4211	web developer
4212	full stack
4213	back end
4214	back end developer
4215	Angular+ 2
4216	Xamarin 
4217	Proteus 
4218	Eagle
4219	Zemax
4220	Matlab
4221	PCB Design
4222	Dip Trace
4223	MSANs
4224	Steel
4225	3PL
4226	Indirect Material
4227	NopCommerce 
4228	Back end 
4229	Ci/CD
4230	OpenShift
4231	Mechanics
4232	Quick Books
4233	Salesforce Solutions
4234	Apex 
4235	Page Layouts
4236	Picklists
4237	Visualforce
4238	Maintnance
4239	Cucumber
4240	Confluence
4241	Zephyr
4242	Government Sales
4243	QA Engineer
4244	QC Engineer
4245	Process Improvement
4246	Artistic
4247	C# .NET
4248	Roaming
4249	telesales
4250	Online Channels 
4251	Computer Since
4252	A/R Accountant
4253	Receivable Accountant
4254	Account Receivable
4255	Die Casting 
4256	Tooling Design
4257	NX
4258	front office
4259	ITIL V3
4260	Cloud Architecture
4261	Farm Management
4262	Mechanical 
4263	Problem Solving 
4264	Labor Laws
4265	#RESTful
4266	#Java 
4267	# APIs
4268	#SDK
4269	# threading
4270	HR Officer
4271	Recruitment & Personnel
4272	Personnel 
4273	Social Insurance Law
4274	Tier 1 Mobile Operation
4275	Telecommunication Engineer
4276	MOS
4277	Internal Financial Auditing
4278	Financial Auditing
4279	Construction tools
4280	Consumer Electronics
4281	International Shipping Laws 
4282	JD Edwards
4283	VIPER
4284	Creative Art
4285	Visual Art
4286	Budgetary Management
4287	SpreadSheets
4288	Team Building Skills
4289	Coordination Skills
4290	Cash flow
4291	Cashflow Management
4292	Finance Manager
4293	Logistic Support
4294	Analyzing 
4295	Business Studies
4296	Optometrist
4297	Optical Sales
4298	Clinical Pathology
4299	Branch
4300	Pathology
4301	Food Production
4302	F&B
4303	Factory Management
4304	Patisserie
4305	Factory
4306	Warehouse keeper
4307	Post-Harvest
4308	Agricultural Consultancy
4309	Fruits
4310	Packhouse Management
4311	Football
4312	Entertainment 
4313	Quality Assurance 
4314	react js
4315	Bigdata
4316	excel
4317	construction accountant
4318	F&B Operations
4319	Commercial Real Estate
4320	Direct Sales
4321	Administrative 
4322	Sum IF
4323	Brand Design 
4324	ITIL Foundation 
4325	Angularjs
4326	HR 
4327	firewalls
4328	network
4329	ADSL
4330	Router
4331	VLAN
4332	Linux Systems
4333	Web Hosting
4334	XEN
4335	KVM
4336	Configurations 
4337	MSCA
4338	watches apps
4339	LS Central 
4340	Information Security 
4341	CNC Programming
4342	MS office
4343	Medical Technology
4344	CNC Engineering
4345	odoo
4346	Administrative Work
4347	Dcoument Control
4348	Angular 4
4349	Biomedical Engineering
4350	Oracle HCM
4351	Techno
4352	Proposal Engineer
4353	Assets
4354	English Commerce
4355	SAP Modules
4356	IT Director
4357	ITIL Certificate
4358	tester
4359	developers
4360	QC Tester
4361	CCNP (Collaboration)
4362	CCNA (Routing and Switching)
4363	CCNP (Service Provider)
4364	CCNP (Routing and Switching)
4365	presales
4366	Learning 
4367	Financial Modeling
4368	Value Added Tax 
4369	VAT Inspection
4370	VAT
4371	Sa
4372	JAVA
4373	J2EE 
4374	problem solving
4375	Word Press
4376	WM
4377	Veterinarian
4378	Accounting Management
4379	Receivable Accounting
4380	stock
4381	complianace
4382	Process Auditor
4383	process
4384	Creative thinking skills
4385	Problem-solving aptitude
4386	time management skills
4387	communication skills
4388	Product Specialist
4389	Target
4390	OR 
4391	Digital Transformation 
4392	Software Projects
4393	EMR
4394	Network Configuration
4395	Troublshooting
4396	Treasury 
4397	Cashflow
4398	FI-CA
4399	farm
4400	Indirect Material Procurement
4401	Accounting Procedures
4402	Azure 
4403	CommunicationsEngineer
4404	FOSS
4405	Microsoft Azure 
4406	Sensory Scientist
4407	Food Science
4408	Sensory Evaluation
4409	Product Guidance
4410	Banking Buildings
4411	banking
4412	Tourism 
4413	Quantity
4414	Quantity Surveying
4415	backend 
4416	Cross Platform 
4417	Online Platform
4418	Oracle EBS
4419	Oracle Financial Consultant
4420	Oracle Supply Chain Consultants
4421	Information
4422	Data Administration
4423	Disaster Recovery
4424	Faculty Of Commerce English SectionUniversity 
4425	Senior ERP Consultant
4426	ERP Conultant
4427	Human Capital Management
4428	Site Work
4429	Microsoft Project
4430	Site Supervision
4431	Applied Arts 
4432	Store Keeper
4433	Management Consulting
4434	Technology Solutions
4435	Solutions Architect Professional
4436	ERP Systems 
4437	Photocopying
4438	Digital Education
4439	Transactions
4440	Reports 
4441	Head Waiter
4442	Food&Beverage
4443	Catering
4444	hotels
4445	hospitality
4446	#sales
4447	#outdoor
4448	WSUS 
4449	Network Routers
4450	Technical Management
4451	Microsoft Servers
4452	SAP User
4453	Life coach
4454	Create 
4455	Banks Collection
4456	Cheques
4457	Collection Specialist
4458	Masters
4459	Proofreading
4460	Native Speakers
4461	Mongo BD
4462	C#.Net 
4463	Cost Management
4464	Volunteering
4465	Online Marketing 
4466	Supplier Operations Coordinating
4467	Importing
4468	Oracle Weblogic
4469	XAMARIN
4470	Executive Secretary,
4471	Executive Assistant,
4472	Office Manager
4473	Drawings 
4474	HVAC 
4475	Alarm Systems
4476	Site Engineering
4477	Stock Management
4478	hiring Software Engineers
4479	Freight Forwarder
4480	Heritage
\.


--
-- Data for Name: title; Type: TABLE DATA; Schema: public; Owner: fscjjarkblijha
--

COPY public.title (title_id, name) FROM stdin;
40	IT Admin
41	iOS Engineer - Alexandria
42	Application Support Engineer
43	E-Business Specialist
44	Junior Web Developer (Back-End) - Alexandria
45	Android Developer
46	Senior Sales Specialist -Software
47	UI / UX Designer
48	Software Quality Control Engineer
49	Senior IT Recruitment Specialist
50	Back End Wordpress Developer
51	Front End Wordpress Developer
52	Software Developer (WordPress & Shopify)
53	Full Stack WordPress Developer
54	Senior UI/UX Designer For Mobile Social App
55	Maintenance Manager
56	Back-End Software Engineer Intern - Alexandria
57	Front-End Developer
58	Sales Manager - Alexandria
59	Odoo Developer
60	Full Stack Developer
61	Senior Full-Stack PHP Developer
62	Pharmacist
63	Android Developer - Alexandria
64	iOS Developer - Alexandria
65	Junior Instrumentation Engineer - Alexandria
66	Collection Officer
67	Interior Designer - Alexandria
68	Database Developer - SQL - Alexandria
69	Windows Application Developer - Alexandria
70	Mobile Application Developer (Xamarin) -...
71	Logistics Sales Manager
72	Area Sales Executive - Alexandria
73	Oracle Application Developer
74	Systems Analyst
75	Software Solutions Architect - Alexandria
76	Sales Representative - Alexandria
77	Senior React Native Mobile Developer
78	Collection Specialist - Alexandria
79	Data Entry
80	Senior .Net Developer
81	Expert Software Engineer
82	Sales Area Manager
83	Chief Financial Officer (CFO) - Alexandria
84	PR & Sales Specialist
85	Internal Auditor
86	Construction Manager - Alexandria
87	Compliance Senior Specialist - Alexandria
88	Senior PHP Software Engineer
89	Software Engineer
90	Integration Manager - Alexandria
91	Quality Control Engineer
92	Pharmaceutical Section Head - Alexandria
93	Project Manager
94	Pre-Sales Engineer
95	FrontEnd Wordpress Developer
96	Advertising Account Manager - Alexandria Branch
97	Personal Assistant to Chairman - Alexandria
98	Financial Accountant
99	Product Manager
100	Chief Accountant
101	Front-End Developer Internship
102	Chief Technical Officer (CTO) Alexandria
103	Quality Assurance Tester - Alexandria
104	HR Specialist
105	HSE Engineer
106	School Facility Manager
107	Senior Human Resources Specialist - Alexandria
108	Supply Planner - Alexandria
109	UI/UX Designer - Alexandria
110	Store Keeper
111	Validation Senior Specialist - Alexandria
112	Gynecology Product Specialist - Pharmaceutical...
113	Marketing Executive - Alexandria
114	Senior Cost Accountant - Alexandria
115	Operation Manager Associate
116	Mechanical & Electrical Engineer
117	Marketing Manager
118	Export Manager - Pharmaceutical
119	Sales Manager- Alexandria
129	Project Manager - IT Software
130	Regional Sales Manager- Egypt
131	Senior Software Developer - Full Stack
132	IT Developer
133	Account Manager -Upper Egypt
134	Senior Software Developer
135	IT Supervisor & Developer
136	Senior IT Applications Developer - CRM
137	Business Development Executive (Software)
138	Senior Web Software Developer
139	Software Development Technical Head (.Net)
140	Senior E-Commerce Software Developer (Magento 2)
141	Commissioning Software Development Engineer
142	Head of Software Development -Java/Infra Expert
143	Junior Software Engineer .Net
144	Software & Mobile App Developer
145	Cloud Development Software Engineer - Cairo
146	Software Implementation Specialist
147	Software Development Team Leader
148	Senior Software Developer (.Net Core + React JS)
149	.NET Angular Software Developer
150	Senior Mobile Software Developer (Ionic 2 -...
151	Software Developer - Moodle
152	Software Developer (PHP)
153	Senior Software Developer - .Net
154	Sales Representative - Upper Egypt
155	Sr. Mobile Software Developer (React Native)
156	Senior Mobile Software Developer
157	Software Development Team Leader - Cairo
158	Magento Software Developer
159	Junior Software Developer
160	Software Development Team leader
161	Senior Software Developer (Embedded C++)
162	Senior Software Developer - Full Stack (Node.JS)
163	Senior Software Developer - Android
120	Graphic Designer
121	Electrical Power Engineer
1	IT Specialist
2	IT Manager
3	IT Help Desk Specialist - Alexandria
4	IT Technical Support Specialist
5	IT Network Technican
6	IT Help Desk Specialist
7	IT System Administration Engineer- Alexandria
8	Senior Corporate B2B Sales Representative
9	Senior Infrastructure Engineer - Alexandria
10	IT Help Desk Supervisor - Alexandria
11	Senior Application Deployment & Release...
12	Digital Project Officer - Alexandria
13	Ruby On Rails Developer
14	Sr. JavaScript Developer
15	Senior iOS Developer - Alexandria
16	.Net Developer - Alexandria
17	Software Quality Control Team Leader
18	Product Owner - Alexandria
19	Android Developer Team Lead - Alexandria
20	User Experience (UX) Designer
21	Senior Front-End Web Developer (Vue.js) -...
22	React Native Mobile Developer
23	Magneto Site Administrator
24	Senior Front End Developer - Alexandria
25	Computer Teacher - Alexandria
26	Senior UI\\UX Designer
27	Odoo Implementer
28	PHP Software Engineer - Alexandria
29	Front-End Web Developer
30	SAP Project Manager
31	Business Analyst - Freelancer
32	Software Developer
33	Senior. Net Application Developer
34	Senior Full Stack Developer (Angular & Ionic...
35	ERP Implementer - Alexandria
36	French Technical Support Consultant - Alexandria
37	Senior Backend Developer - Alexandria
38	Senior Front-End Developer - Alexandria
39	Senior UI/UX Designer
122	Junior Geomatics Engineer - Alexandria
123	Sales Executive
124	Senior Graphic Designer
125	Purchasing Manager (Hotels) - Alexandria
126	Computer Teacher
127	Civil Engineer
128	3D Artist - Alexandria
164	Senior Quality Control Engineer (Software...
165	IT Supervisor (Microsoft Dynamics AX Developer)
166	Software Developer - ASP.NET
167	Senior Full Stack Software Developer - .Net, React
168	Software Development Team Lead
169	Software Designer (Software Architect)
170	Software Development Manager
171	Senior Full Stack .Net Software Developer
172	Senior Back-End Software Engineer - (Java)
173	Senior Back End Developer/Software Engineer
174	Senior Software Engineer
175	Software Developer - CRM
176	Software Developer - Experienced
177	Senior Software Developer (Laravel & Vue.Js)
178	Lead Software Business Developer
179	Full Stack Software Engineer
180	Sales Manager (Background IT Integration...
181	Senior Full Stack Developer/Software Engineer
182	Senior Software Java Developer
183	Software Developer (Focusing on .NET)
184	Software Developer - ASP.Net
185	Senior Software Developer - (Full Stack -...
186	Senior Software Developer - Front-End
187	IT Support Engineer
188	IT Officer - Cairo
189	Senior Front End Software Engineer
190	Senior Full Stack Software Developer
191	Senior Software Support Engineer (Software...
192	Head Of Sales (IT Background)
193	IT Engineer
194	.Net Developer
195	Sales Account Manager - Software
196	IT Specialist - New Cairo
197	IT Help Desk Agent
198	Senior Full Stack Developer (Angular,.Net)
199	Senior Android Developer / React Native Developer
200	Huawei Ecosystem Business Development Manager
201	IT Executive (Network & Infrastructure)
202	Senior IT Specialist (Helpdesk)
203	IT Administrator
204	IT Application Support Specialist
205	Senior Full Stack Developer - .NET Angular
206	Java Developer
207	Software Sales Specialist
208	IT Leader
209	Senior Front-End Developer (Angular 2+)
210	Software Automation Tester
211	Software QC/QA Specialist
212	Export Development Specialist
213	Software System Analyst - Cairo
214	IT Supervisor
215	Software Business Analyst - Mansoura
216	IT Engineer - Al-Salam University
217	IT HelpDesk - Hurghada
218	Senior IT Helpdesk Specialist – Apple Mac (Giza)
219	IT Officer
220	Senior IT Specialist
221	Senior IT Infrastructure Engineer
222	IT Help Desk / Service Desk Specialist
223	IT Help Desk Specialist - Qena
224	IT Help Desk
225	Software Quality Engineer
226	Senior Software Tester Engineer
227	IT Technical Support
228	IT Network Engineer
229	Senior .Net Software Engineer
230	IT E- Commerce Application Manager (Online...
231	I.T Administrator
232	IT Infrastructure Engineer
233	Software Sales Account Manager
234	IT Security Specialist
235	IT Sales Engineer
236	IT Corporate Sales Executive
237	B2B Software Sales Account Manager
238	IT Help Desk Engineer
239	Software Tester
240	Software Tester (Automation)
241	Wordpress Developer (Remotely)
242	Software Business Analyst
243	Software Technical Lead (Microservices /...
244	IT Engineer Help Desk
245	Senior Software Architect / Project Manager
246	IT Technical Support Engineer
247	Sales Representative - Software Solutions
248	Senior Software Sales Professional
249	Junior Software Implementer
250	IT Engineer/System Administrator
251	Software Project Manager
252	Software Quality Assurance Manager
253	Software Project Coordinator
254	Sales Account Manager ( Hardware/Software)
255	Junior Software Engineer (.Net)
256	IT System Analyst - French Speaker
257	Associate Software Quality Engineer
258	Senior Software Quality Assurance
259	IT System Analyst - Banking
260	IT Specialist (Project Based)
261	Software Business Analyst - Full Time
262	IT Help Desk Officer
263	Senior Full-Stack Developer
264	IT Help Desk Agent - Sharqia
265	E-Commerce Software Implementer (WordPress)
266	Software Quality Testing Engineer
267	Sales Software - ERP
268	IT & 3D Technician - Dental Company
269	Software Tester and QA
270	Software Architecture Manager
271	Java Software Engineer
272	Tech Lead Full Stack Software Engineer
273	IT Support Engineer / L1 & L2
274	IT Senior Infrastructure Engineer
275	Enterprise Strategy Consultant - IT Service...
276	Senior Back End Software Engineer - Java
277	Senior Software Quality Control
278	Senior Software Engineer (Node.js)
279	Software Product Manager
280	Software Quality Control (Tester)
281	Senior Software Quality Engineer
282	Java Software Team Lead
283	Project Coordinator ( Software )
284	Scrum Master ( Software )
285	Software Presales Engineer
286	Associate Software Engineer
287	ICT Markets Development Director
288	IT Help Desk Specialist - Damietta
289	IT Help Desk Specialist - Suez
290	IT Technical Support Specialist - Sharqia
291	Software Engineer (Programmer)
292	IT Application Support Specialist - ASH
293	Software QC Engineer
294	Software Product Owner
295	Software Team Leader - UI
296	Software-Help Desk
297	Software Engineer (Frontend)
298	IT Technical Support and Help Desk
299	Senior Full Stack Ruby on Rails Developer
300	IT Systems Administration Specialist
301	Software Technical Support / Application Support
302	IT Administrator (Aswan)
303	Outsourced IT Services Officer
304	Senior Quality Assurance Specialist - Software
305	Senior Software Engineer (Sr. SDE)
306	Software Technical Support Agent
307	IT Senior System Engineer
308	Senior IT Specialist - Infrastructure
309	Experienced Magento Developer
310	Software Team Leader
311	OffShore Business Development Specialist -...
312	Software Team Leader - Full Stack (Node.JS)
313	Senior Software Engineer - Python Backend
314	IT Help Desk Specialist - Port Said
315	Senior ERP Software Tester (Automation)
316	Senior IOS Developer
317	Software Sales Engineer
318	Software Pre-Sales Agent - Cairo
319	Software Implementer
320	Junior Software Engineer (SDE)
321	Lead Full Stack Developer - .NET
322	Software Engineering Director
323	IT Infrastructure Consultant
324	IT Asset & Configuration Management Specialist
325	Senior Software QC Engineer
326	IT System Administrator
327	IBM BPM Software Engineer
328	Senior Full Stack Software Engineer
329	Senior Software Tester
330	Sr. Accountant - (Computer Software Industry)
331	IT System Specialist
332	Senior iOS Developer
333	Senior Software Testing Engineer
334	QC Team Lead Engineer - Software Testing
335	Senior Software Engineer (Backend)
336	Software Architect
337	Senior Java Developer
338	Junior Quality Control Engineer - Software Testing
339	PHP Developer (Mid-Level)
340	C++ Software Engineer - Computer Graphics
341	IT Help Desk Supervisor
342	Flutter Developer
343	Software Quality Tester - Banking
344	IT Support Specialist - Contracting Sector
345	Senior Software Quality Control Engineer
346	Senior Node.js Developer
347	Ruby ON Rails Developer
348	Backend Developer
349	Full Stack Developer - PHP (CodeIgniter) + Angular
350	Software Engineer - Android
351	Software Sales
352	Senior Software Business Analyst
353	IT Solutions Sales Manager
354	IT Manager - Alsalam university
355	PHP Developer - Plugins Development
356	Sr. Outdoor Software Sales Specialist – (ERP) &...
357	Senior Front End Developer
358	ERP Sales Account Manager
359	Junior Software Testing Engineer
360	Software QC Specialist
361	PHP Developer
362	ASP.Net Core Developer
363	IT Service Desk Engineer (Outsourcing)
364	Chemist / Outdoor Software Support Representative
365	Lead Developer - Solution Architect
366	Senior Software Engineer - Frontend
367	Software Technical Support Engineer
368	Front End Developer " React.JS"
369	Mobile App Developer
370	Junior IOS Developer
371	Senior Software Tester/Quality Control Engineer
372	Software Quality Lead
373	Back-End Developer
374	SharePoint Developer
375	Technical Support Engineer (Software)
376	Sales Manager - ERP Software
377	Senior PHP Developer
378	Full Stack Web Developer
379	Senior Full Stack Developer
380	ERP Software Implementer
381	Senior Back-End Software Engineer (NodeJS)
382	Mid Back End Developer
383	Senior Integration .NET Developer
384	.NET Developer (Desktop Application)
385	Senior Software Project Manager (Program Manager)
386	Senior Full Stack Developer (PHP Laravel & Vue.js)
387	Flutter Developer - Intern
388	Senior PHP Web Developer
389	Software Engineer (Machine Learning , Python...
390	Junior Java Back End Developer
391	PHP Laravel - Full Stack Developer
392	Senior Software Quality Assurance Engineer
393	Senior Android Developer
394	Senior MVC .NET Developer
395	Perl Developer
396	Software Tester Engineer
397	Front End Developer (Angular)
398	Full Stack Developer - PHP Laravel
399	Mobile Developer
400	Senior (SQA) Software Quality Assurance Engineer
401	Sales Specialist - Software
402	UI Developer Designer
403	Senior PHP Web Developer - Full Stack
404	Opencart Developer
405	Mobile Application Developer
406	React JS Developer
407	Sales & Marketing Manager
408	Software Application Support Engineer
409	Assistant Java Developer R1
410	Full-Stack .NET Web Developer
411	Senior Flutter Developer
412	Senior Back End Developer
413	IT Sales Account Manager - Security & Defence
414	IT Sales Account Manager - Oil & Gas
415	.NET Back-End Web Developer
416	NativeScript Mobile Developer
417	Back End ASP.Net Developer
418	GIS Developer
419	Senior MEAN Developer
420	Senior Full Stack Developer (PHP Laravel)
421	iOS Mobile Developer
422	Business Development Engineer
423	Backend Developer - Full Time
424	Full Stack Wordpress Developer
425	Sr. Front-End Developer (VueJs)
426	Frontend Vue JS / PHP Web Developer
427	React Native Developer - Cairo
428	Python Django Full Stack Developer
429	Senior Front End Mobile - React Native - Developer
430	Back End Developer
431	Dot Net Developer
432	Junior Web Developer Specialist
433	Senior Full Stack .Net Developer
434	Sales Executive - Edtech
435	PHP Developer - Intern
436	Mobile App. Senior Developer
437	IT Sales Representative
438	Senior Full Stack Java & React Developer.
439	Front-End React JS Developer
440	Java Spring Developer R2
441	Senior Drupal Developer
442	Senior Full-Stack Web Developer
443	IoT Product Web Portal & Mobile App Developer
444	Software Engineer - Backend
445	Software Engineer - Frontend
446	Senior Front-end Developer
447	Front End Angular Developer
448	Java/Rust Developer
449	Senior Oracle Adf Developer - Cairo
450	Senior .NET Developer
451	Senior Mean Stack Developer
452	Web Developer
453	Mobile Developer (IOS)
454	ASP.NET Full Stack Developer - Cairo
455	Full Stack Developer – "MERN Stack"
456	IT Manager - Oracle Manufacturing
457	Senior Backend Developer (PHP & Laravel)
458	Junior Full Stack Developer
459	Senior Software Sales Executive
460	Senior Full Stack Javascript Developer
461	ASP.Net Developer
462	Senior Full Stack Developer.
463	React Native Mobile Developer - Internship
464	Mobile Developer - Internship
465	Full-Stack Developer
466	Senior React Native Developer
467	RPA Developer
468	Senior Backend Developer
469	Senior Sales Executive
470	Odoo / ERP Functional Consultant
471	Sr. Mobile Apps Developer
472	Pentaho Developer - BI Skills.
473	Junior Front-end Developer
474	Senior Front End Developer - React
475	.NET Developer
476	Mobile Applications Development Lead
477	Junior Java Developer
478	PHP Developer - Codeigniter
479	Front End Developer
480	Mobile Development Technical Leader - Cairo
481	Senior Java Spring Developer
482	React Native App Developer (Internship)
483	Senior Full Stack Developer (MERN Stack)
484	React Native Developer
485	Backend Developer (Laravel)
486	Senior Front-End (React) Developer
487	Senior Python Developer
488	UI/ UX Developer
489	Blockchain Developer
490	IT Retail Specialist
491	IT Infrastructure Manager
492	Senior .NET Developer - Cairo
493	Magento Developer
494	Senior Workday Integration Developer - Maadi
495	Flutter Mobile Developer
496	Telesales Agent - Software Background
497	Angular & Spring Boot Java Developer - (DevOps)
498	Call Dispatcher ( IT Specialist )
499	Software Sales Executive
500	Senior Unity Developer
501	Senior .NET Full Stack Developer
502	Sales Supervisor (Software Industry)
503	Senior Full Stack Developer (Node & React)
504	Back End Developer ( PHP / Laravel )
505	Senior Odoo Developer
506	Sr .Net Developer
507	iOS Developer
508	IOS Developer
509	Senior Full Stack Java Developer (Lambda AWS)
510	Senior ReactJS / Angular Developer
511	Cross-Platform Mobile Apps Developer
512	Full-Stack Developer (Node.js /React.js / Angular)
513	.NET Developer (.Net Core + WPF) [VA]
514	Senior Software Quality Assurance Specialist
515	Senior JavaScript Developer
516	Senior Ruby on Rails Developer
517	Application Developer
518	PHP Developer - Tanta (WFH Till COVID-19 Ends)
519	Senior Php Developer
520	Web & Mob App Developer
521	Senior Front-End Developer
522	Senior Unity Game Developer
523	IT System Admin
524	Senior Full Stack .NET Developer
525	Senior Backend Developer - Java (Spring/ADF)
526	Website Developer
527	Mobile Developer (Android)
528	Full Stack .NET React Developer
529	Junior Backend Developer - Java
530	Node.js / React / Next.js & Liquid Developer
531	WordPress Developer
532	Vue JS Developer
533	React Native Mobile App Developer - Mansoura DK
534	Full Stack .Net Developer
535	Senior Full Stack Net Developer
536	C++/Rust Developer
537	.Net Developer "Medium Experience"
538	.Net Web Developer (ASP.Net Web Forms)
539	Senior Mobile Developer - Flutter
540	.NET Developer - Internship
541	Senior .Net Developer (.Net Core - Angular)
542	Python Flask Developer
543	Android Developer- Kotlin
544	Junior UI Developer
545	.NET Developer - Cairo
546	Sr. IT Technical Support Specialist
547	Junior Mobile Application Developer
548	Senior Web Developer
549	IT Backup Engineer
550	WordPress Developer - Full Tme
551	Senior Business Development Specialist
552	Senior Odoo Developer - Acting As A Team Leader
553	Senior Back-End Developer Node.JS - New Cairo
554	DevOps Developer R2
555	Back End Developer - ASP.NET
556	WordPress / PHP Developer
557	B2B Software Sales Representative
558	Junior Web Developer - Internship
559	Application IT Support
560	Senior.Net Developer - Support Team
561	Senior Full Stack Developer - Cairo
562	Senior Full Stack JavaScript Developer
563	Web User Interface Developer
564	Remote PHP Developer
565	IT Audit Manager [ Audit Firm/Banking Background ]
566	Senior Front-End Developer - Vue.js
567	IT Network & Systems Infrastructure Supervisor
568	SAP Digital Business Development Advisor
569	Xamarin Developer
570	Junior PHP Developer ( Back-End )
571	Senior SharePoint Developer
572	Senior Front End Developer (Ionic) - Remote
573	Full Stack Developer (.Net Core & Angular 9) -...
574	Full Stack Developer (.Net-Core + React-Native)
575	Sr. Flutter Developer
576	NetEDI JOB- Senior .Net Developer
577	Senior Full Stack Developer - Nasr City
578	IT Engineer & CRM
579	Senior ReactJs Developer
580	Mobile Developer - ReactNative
581	PHP Developer - intern
582	Php Backend developer
583	Senior Front-End Developer (Angular)
584	Senior Full-Stack Developer- 6th October/...
585	Database Developer
586	Java Backend Developer
587	Senior Mobile Developer - Android
588	Senior IT System Administrator
589	Senior .NET Developer Back-end
590	UI Developer / Designer
591	Senior ASP.NET Developer
592	IT Recruiter
593	Senior SharePoint Developer - Nintex Experience
594	Senior ASP.Net MVC Developer
595	Senior B2B Sales Specialist -Software
596	Full-Stack WordPress Developer
597	Back-End Web Application Developer
598	Marketing Intern
599	Senior Back-End Developer
600	Front-End Developer (React)
601	IT Technical Support Intern
602	Oracle Apps Developer
603	Senior Backend Developer - 6th October/ Sheikh...
604	Development Technical Lead
605	Senior IT System Admin
606	Angular & Spring Boot Java Developer ( DevOps )
607	Full-Stack PHP Developer
608	SAP Hybris Commerce Developer / Technical...
609	Business Development Specialist
610	Sales Software Specialist
611	Middleware Developer
612	.NET & Java Web Developer - Cairo
613	Junior Laravel Developer
614	Senior Backend Developer - Java
615	Senior Mobile Developer (Both iOS&Android)
616	Unity 3D Developer
617	Senior Dot Net Developer
618	Senior Web Developer (Full Stack)
619	Senior Full Stack Node.js Developer
620	Senior .Net Developer - Assiut
621	.Net Full-Stack Developer (.Net Core + React) [PM]
622	Back End Developer (PHP - Laravel)
623	Business Development Consultant
624	IT Solutions Specialist - FICO
625	PHP Laravel Developer/Tester
626	Senior Full Stack PHP Developer - 6th of...
627	Senior. Net Developer
628	IT Project Manager
629	iOS Mobile Developer - Tanta (WFH Till COVID-19...
630	IoT Application Developer
631	Senior Android developer
632	Front-End Web Developer (Angular)
633	Cross Platform Mobile Developer
634	Senior Full Stack Nodejs Developer
635	Senior Full-Stack Developer - PHP/ Laravel/Vue.js
636	Web Developer (Front-End & Back-End)
637	Business Developer Intern
638	PHP Developer - New Cairo
639	Microsoft Dynamics 365 Admin Developer
640	iOS Developer (Mid-Level)
641	IT Help Desk - Minya
642	Junior Angular Front-End Developer
643	Senior Net Developer
644	UI/UX Developer (PHP)
645	React Front End Developer
646	Senior Java-Liferay Developer
647	Android Mobile Developer
648	Senior International Marketing Specialist
649	Senior ASP.Net Developer
650	Senior .NET Core Developer
651	UI Designer/Developer
652	QA Engineer
653	Senior Mobile Apps Developer (React Native)
654	Business Development Executive
655	Senior .Net Core Developer
656	Full Stack Developer (.Net Core & Angular 9)
657	Unity Game Developer
658	Full Stack Developer (Node.Js/Angular) – Mansoura
659	Assistant Application Manager (Oracle Developer)
660	Python Full-Stack Developer
661	Technical Team leader
662	UI Designer & Developer
663	Senior Power BI Developer
664	Senior Magento Developer
665	Word Press Web Developer - Remotely
666	Senior Magento 2 Developer
667	Senior PHP Developer (Laravel)
668	Flutter Front End Developer - Intern
669	Magento Development Consultant
670	Senior Full Stack .NET Developer - Nasr City
671	Mobile Developer (React Native)
672	Senior Front-End Developer - Angular
673	IOS & Android Mobile Application Developer
674	Python / Network Developer
675	SAP Developer
676	PHP Full Stack Developer
677	Senior Mean Stack Node.js & Angular Developer
678	Senior PHP Developer - Cairo
679	Full stack Developer (PHP + React or Angular )
680	Full stack Developer (PHP + Angular js)
681	Senior CRM Developer
682	Front End Developer (React)
683	Full Stack Ionic Developer
684	Full Stack React Developer
685	Java Web Developer
686	.Net Core Developer - Nopcommerce
687	Sales Team Leader Software
688	Senior C# Web Application Developer
689	Senior Front End Developer - Full Time
690	Android & iOS Flutter Developer
691	Senior Frontend Developer
692	Junior Front-End Developer - Angular
693	German Business Development Executive...
694	ERP & Application Developer-Ax 2012
695	Senior Full Stack Developer | .Net
696	Senior Back End NodeJS Developer - Remote
697	System Administrator
698	Front End Developer - Angular
699	Senior SharePoint Developer - Nintex
700	Microsoft Dynamics AX Developer
701	SharePoint/Workflow Developer
702	Front End Developer Angular & Vue JS
703	PHP Web Developer
704	Embedded firmware developer C / C++
705	Senior BI Developer
706	Senior Front End Developer - React JS
707	Senior Data Developer-ETL
708	Senior Laravel Developer
709	Assistant Manager - Regulatory Compliance
710	Front End Developer - Hybrid (6 Months Project)
711	IOS Developer - Giza
712	.NET Backend Developer
713	iOS Swift Mobile Developer - Giza
714	Senior Back End Developer (Node.js)
715	Business Development Specialist - Al Mansoura
716	Senior Full-Stack Developer (React.js & Node.js)
717	Front-End Developer - Angular
718	UI Developer
719	EBX Developer
720	Senior Full Stack .NET Core Developer
721	Senior PHP / Laravel Developer
722	Senior RPA Developer
723	Junior Oracle Developer
724	Brand Manager
725	Italian Business Development Executive...
855	Senior Automation Testing Engineer
726	Spanish Business Development Executive...
727	Laravel & Vue.JS Developer
728	Senior Angular/Ionic Developer
729	BizTalk Developer
730	Word Press Developer
731	Backend Developer (WordPress)
732	IOS Developer Remote (Objective C, Swift)
733	Flutter Developer (iOS & Android)
734	Assistant Frontend Angular Developer R1
735	Java Developer - Entry level
736	Oracle SOA Integration Developer
737	PHP Developer - Opencart
738	UI/UX Developer
739	Business Development Manager
740	Senior .Net Developer - Cairo
741	Sales Manager Real Estate
742	Drupal Developer
743	PHP / Laravel Developer
744	Social Media Specialist And Event Coordinator...
745	Product Development Engineer
746	Technical Support Specialist
747	Wordpress Developer
748	Senior Front End Developer (React.JS)
749	PLC-SCADA Developer
750	Front End Web Developer
751	Account Manager - Digital Media & Marketing...
752	Senior Oracle Developer - Apex
753	HR Generalist
754	Unity VR / AR Developer
755	Ios Developer
756	Technical Engineer
757	Wordpress Woo-commerce Developer
758	Mobile Developer ( Android Native )
759	Sr. iOS Developer
760	SQL Developer - Experienced
761	Sr. Data Visualization and Development Engineer
762	Full Stack Developer (C#.Net Core)
763	Senior Key Account Manager
764	Operation Manager
765	PHP & WordPress Developer - Mansoura
766	Animation,Video & Info-Graphic Designer
767	Senior Vue Developer
768	Front End Angular Developer R2
769	Senior PHP / Laravel Developer - Mansoura DK
770	Key Accounts Sales Admin
771	Applications Sales Representative - Financial...
772	Senior WordPress Developer
773	ASP .Net Core Developer
774	Product Owner
775	System Administrator (Vulnerabilities Management)
776	WordPress Woo Commerce Developer
777	Elixir Developer
778	Air Conditioning Sales Manager
779	Service Desk Specialist
780	Full Stack Developer .Net
781	Wordpress Developer - Remotely
782	Ui Designer / Developer
783	Devops Engineer
784	Business Development Trainee
785	Sales Engineer Business Development Engineer/...
786	Chief Technology Officer (CTO)
787	Senior Financial Accountant
788	Senior Business Development Executive
789	Area Sales Manager - Cairo
790	Senior System Analyst
791	SAP B1 Developer
792	Senior UI Developer
793	AX Technical Developer
794	Business Development Specialist - Marketing Field
795	Training & Development Instructor
796	PHP (Laravel) Team Leader
797	Program Manager
798	SAP Application Support Specialist
799	Quality Assurance Analyst
800	Junior Scrum Master
801	Presales Engineer
802	Scrum Master
803	Full Stack Team Lead
804	Design Development Team Leader
805	Senior Network Engineer
806	iOS Engineer
807	Business Development Senior Executive
808	CRM Consultant
809	ERP Application Consultant
810	Senior DevOps Engineer
811	Senior Quality Control Engineer
812	Admin Assistant
813	Sr. Data Engineer (ODI)
814	Senior QC/QA Engineer
815	Account Manager -Qena
816	Digital Marketing Specialist
817	Angular OR Node Technical Team Lead
818	Chief Technology Officer CTO
819	Senior QC Engineer
820	Senior QC Engineer (Manual Tester) - Cairo
821	Testing Lead
822	DevOps Engineer
823	Solution Architect
824	Social Media Specialist
825	Dynamics CRM Technical Lead
826	Junior Solution Architect
827	Account Manager ( Canal)
828	Account Manager - Zagazig
829	Telecommunications Teacher
830	Senior Systems Officer
831	.NET Team Leader
832	Staff Backend Engineer - Python
833	Business System Analyst
834	Senior Creative UI/UX Designer
835	Sales Division Coordinator
836	.NET Team Leader - Cairo
837	Web Designer - Frontend
838	Web Designer - Backend
839	Senior Front End Engineer
840	Senior Test Automation Engineer
841	Project Manager – IoT .
842	GUI Engineer
843	Business Application Support Specialist - Damietta
844	Senior Devops Engineer
845	Online Full Stack PHP Instructor
846	Technical Team Leader
847	High School Computer Autocad & Sketching Teacher
848	Computer Science Teacher
849	UI/UX Design/Web Design
850	Senior ERP Financial Application Consultant...
851	DevOps Lead
852	Android Team Leader
853	Load Testing Engineer
854	Information Security Team Leader
856	Embedded Engineer
857	Senior Oracle Database Administrator (DBA)
858	Sales Account Executive
859	Senior Cloud Engineer
860	.Net Team Leader
861	SIS Implementation Engineer
862	Senior Frontend Engineer
863	Technical Support Representative - Live Chat...
864	Products Senior Specialist
865	Senior Business Analyst / Team Communicator
866	QA Automation Engineer
867	Data ETL Engineer [HS]
868	Technical Writer Team Leader
869	Technical Project Lead - Cairo
870	Technical Support Engineer
871	SAP Application Manager
872	CAD Engineer
873	Business Analyst / Product Owner
874	Senior Backend Engineer ( PHP Laravel )
875	Project Manager / Business Analyst
876	Business Tax - Senior Analyst
877	Design Manager
878	Web Designer
879	Senior Automation Testing Engineer-
880	Automation Tester Cegedim RX
881	Senior QA Engineer (Web Application Testing)
882	Java Technical Lead
883	Office Manager
884	Senior ERP Application Consultant - Implementation
885	Product Architect / Technical Lead
886	Senior QC Testing Engineer
887	Mobile Application Engineer
888	System Engineer
889	Back-End Engineering Lead
890	E-Commerce Application Support
891	ERP Sales Executive
892	Backend Team Lead - Java
893	Senior QC Test Engineer
894	Network Supervisor
895	[CGEG012] Product Owner.
896	Devops Engineer - (Part Time)
897	Senior Application Consultant
898	Senior Data Scientist
899	Scrum Master Project Coordinator
900	Associate TechOps & Support Engineer
901	Instructional Design lead
902	Sales Director
903	Mobile Application Team Leader
904	Backend Engineer
905	Sales Officer
906	Logistics Specialist Coordinator
907	Mobile Application Engineer (Android & IOS)
908	Junior Passive Network Engineer
909	Senior Back-End Engineer
910	Technical Services Manager - Admixture Systems
911	Business Analyst
912	Quality Control Engineer/ Testing Engineer
913	Sales Engineer
914	Infrastructure Team Leader
915	Business Coordinator (Logistics)
916	UI/UX Designer
917	Junior DevOps Engineer
918	[CGEG012] Product Owner
919	Systems Engineer
920	Information Security & Support Engineer
921	Front-End Team Lead
922	Junior Help Desk
923	Senior Accountant
924	Junior Project Manager
925	Senior Front End Engineer - Focus React
926	Database Admin
927	Digital Ads Sales Manager
928	Offensive Security Specialist
929	Front-End Lead (React JS)
930	Specification Manager
931	Oracle Service Cloud Consultant
932	Sr.Quality Control Consultant
933	Presales Consultant
934	Account Manager - Cairo
935	E-Commerce Sr. Project Manager
936	Web/ Graphic Designer
937	Senior Business Analyst
938	Java Team Leader
939	UI UX Designer
940	ERP Functional Consultant (Microsoft Dynamics...
941	Help Desk Specialist
942	Senior DevOps Engineer/ DevOps Lead - Maadi
943	Senior Back-End Engineer (PHP)
944	Back End Engineer
945	UX/UI Designer
946	Senior Computer Vision Engineer
947	ERP Specialist
948	Sr. Quality Assurance Documentation Specialist
949	Quality Assurance Engineer
950	Technical Support Specialist/ Infrastructure...
951	Sr. RPA Consultant
952	Senior Automation Tester Engineer
953	Sales Account Manager - Solutions
954	Systems Administrator Section Head
955	Front End Technical Team Lead
956	Senior Cabling Pre-Sales Engineer
957	Exchange Administrator
958	Project Coordinator ( Pharmaceutical/Medical )
959	Junior Technical Support Engineer
960	Technical Lead - Mean Stack
961	Product Designer (UX Designer)
962	Senior QA Automation Engineer
963	DevOps Team Lead
964	Computer Science Instructor - Steam
965	UI - UX Designer
966	Technical Support Agent (US Account)
967	Senior Quality Assurance Specialist
968	DevOps Senior Engineer
969	Sales Account Manager
970	Golang # Back-End Engineer
971	System Manager
972	Technical Support Operator
973	Oracle Supply Chain Functional Consultant
974	Senior Quality Assurance Engineer
975	Co-Working Space Admin - Ideaspace Assiut
976	Technical Support Manager - Drupal
977	Senior Solutions Architect - Java
978	Machine Learning Engineer
979	Front-End Team Lead - Angular
980	Application Consultant
981	ERP Supervisor
982	Data Analyst
983	Senior Product UI/UX Designer
984	Information Security Consultant
985	Architect
986	PHP Team Lead
987	Help Desk Engineer
988	Lead Generation Specialist
989	Telesales Representative
990	Quality Assurance Engineer - Internship
991	QA Specialist
992	HR Recruitment Specialist
993	Engineering Manager
994	Java-LifeRay Technical Lead
995	Technical Leader ( PHP + Node js )
996	ERP Functional Support (Finance)
997	Senior Data Analyst
998	Senior Quality Control Specialist
999	iOS Tech Lead
1000	Indoor Sales Consultant For International Markets
1001	Sales Representative
1002	React js Engineer
1003	Technical Team Lead
1004	Senior Information Security Engineer
1005	Junior Frontend Engineer
1006	Senior Technical Support Engineer
1007	Motion Designer/Video Editor (Internship)
1008	Technical Support
1009	Database Administrator
1010	Senior Network Administrator -Multinational...
1011	System Linux Engineer
1012	User Acceptance Testing Specialist
1013	Senior Communication Officer
1014	Senior UX Designer
1015	Technical Support Engineer (.Net)
1016	HP Presales Engineer
1017	[CGEG006] DevOps Engineer
1018	DevOps/ProdOps‎ Engineer
1019	UI UX Designer - Front End
1020	Online Android Instructor
1021	Enterprise Indoor Sales Account Manager
1022	ERP- Financial Consultant
1023	Assistant Portfolio Manager (Investment...
1024	Global Technical Account Manager
1025	SAP Manager
1026	E-commerce Digital Marketing Manager - Retail...
1027	External Audit Manager
1028	Junior Proposal Engineer
1029	Packaging Specialist (AutoCAD) - Cairo
1030	Office 365 & Azure Cloud Security Lead
1031	Senior Database Administrator
1032	Lab Engineer
1033	Accountant
1034	Network Administrator
1035	UI/UX Designs Engineer
1036	Data Cabling Site Engineer
1037	Sr. DevOps Consultant
1038	2D Graphic Designer
1039	Android Tech Lead
1040	Head of Product Team
1041	Technical Support Help Desk Representative /...
1042	ERP Functional Consultant
1043	Treasury Accountant
1044	Graphic Designer - Portsaid
1045	Graphic Designer - Cairo
1046	Banking Business Operations Support Engineer
1047	Space Admin - Ideaspace Heliopolis (Shift Based)
1048	UX Designer
1049	Senior Computer Vision Engineer (Machine Learning)
1050	Senior Technical Support Agent
1051	Communication Engineer
1052	HR Implementation Consultant
1053	Technical SME
1054	Technical Support Team Leader
1055	QC/QA Lead Engineer
1056	Senior Procurement Engineer
1057	Application Security & Performance Test Engineer
1058	Digital Marketing Executive
1059	Senior Solar Technical / Commercial Engineer
1060	Admin Coordinator Real Estate
1061	E-Learning Specialist
1062	Technical Sales Engineer
1063	Cost & Planning Engineer Team Leader
1064	Fitness Classes QA
1065	Talented UI/UX Designer
1066	Senior Data Platform Engineer
1067	Senior Project Manager
1068	Business Analyst - Fluent French Speaker
1069	Color Separation Specialist
1070	SAP PS Consultant
1071	Robotics Instructor - Steam
1072	Senior Operations Systems Engineer
1073	Associate Infrastructure Consultant (Identity...
1074	Legal Manager - Cairo
1075	Creative Director
1076	Digital Marketing Intern
1077	Sales Account Manager ( Outdoor )
1078	Web Designer "WordPress Elementor" - Remotely -...
1079	ICT Teacher
1080	Web Admin
1081	Digital Sales Executive
1082	Senior UX Engineer (Sr. UXE)
1083	Facilities Manager - Soft Services - 6th Of...
1084	Android Instructor
1085	Media Designer
1086	Electrical Engineer
1087	Marketing Social Media Specialist
1088	DevOps Expert
1089	Site Engineer (Conservator) - Luxor
1090	Video Editor
1091	Internal Audit Officer
1092	Senior System Admin Engineer
1093	UI/UX Designer - Cairo
1094	Senior Passive Network Pre-Sales Engineer
1095	Site Reliability Engineer - Rotating Equipment
1096	Odoo / Open ERP Functional Consultant
1097	Estimation Engineer
1098	Technical Writer
1099	Global OPS Project Manager
1100	First Line Technical Support Agent
1101	Senior System Admin
1102	People & Culture Manager
1103	Translator ( English - French )
1104	Information Security Engineer
1105	Inventory Manager
1106	Senior Tech Support Specialist (Second Line)
1107	UI Designer
1108	Hub Manager
1109	Customer Service Manager
1110	Senior Account Manager
1111	English Teacher
1112	Mechanical Maintenance Section Head - Cables...
1113	ICDL Trainer
1114	Sr. Business Systems Analyst
1115	Network Engineer
1116	Programming Trainer
1117	Financial Controller
1118	Quality Engineer
1119	Head of Digital Marketing
1120	Electrical Project Engineer
1121	Security Manager
1122	Online Sales Supervisor
1123	Content Writer
1124	High School Communications Teacher
1125	Senior NIX System Engineer
1126	Light Current Pre -Sales Engineer
1127	Purchasing Specialist
1128	SCCM Support Engineer with German/French
1129	Accounting Manager
1130	Industrial Design Engineer
1131	Senior Machine Learning Engineer (Python and NLP)
1132	HVAC Design Engineer
1133	UI/UX Designer For Video Chat / Livestream App
1134	Senior MIS Officer - Data Analyst
1135	Executive Director
1136	Senior Sales Account Manager
1137	Interior Designer
1138	Account Manager
1139	Chief Financial Officer - CFO
1140	Head Of Systems
1141	Architectural Engineer - Interior Design
1142	Technical Support Specialist - Bilingual German...
1143	Fashion Designer
1144	Technical Architect
1145	HR Officer - 6th Of October
1146	Linux System Administrator
1147	Chief Financial Officer
1148	Mechatronic Engineer
1149	Site Engineer
1150	E Commerce Technology Manager
1151	Graphic Design Specialist
1152	Marketing And Communication Manager
1153	Infor Syteline ERP Admin
1154	Network Administrator - Damietta
1155	Internal Control Officer
1156	ICT Commissioning Engineer
1157	Translation Project Manager
1158	Senior R&D Engineer (LED Lighting)
1159	Principal DevOps Engineer
1160	Data Scientist
1161	Java & Database Instructor
1162	Senior Systems Engineer
1163	Human Resources Manager
1164	Sales Specialist
1165	Senior GL Accountant
1166	Technical Support Agent
1167	Senior Landscape Designer
1168	Senior Interior Design
1169	.NET Technical Lead
1170	Sales Manager - Courier Company
1171	Senior Application Support Engineer (AX)
1172	Senior Application Support Engineer (Sales Buzz)
1173	Online Sales Specialist
1174	Senior Recruitment & OD Specialist
1175	Production Engineer
1176	Deputy Operation Manager
1177	Banking Sales Deputy Manager
1178	VP Of Engineering
1179	Accounting Communications Supervisor
1180	3D Max Designers
1181	Customer Support Specialist
1182	Senior Oracle EBS Supply Chain Consultant
1183	Senior Electrical Engineer
1184	Microsoft TEAMS App Helpdesk
1185	Techno Functional Consultant – Fraud
1186	Application Manager
1187	Sales Specialist-Solutions
1188	Solution Architect - BI & Data
1189	Senior Oracle Applications Technical Consultant
1190	Experienced Oracle Applications Technical...
1191	Oracle Applications Technical Consultant
1192	Junior Application Support Specialist
1193	Asterisk SIP Consultant
1194	Subcontract Manager
1195	Security Operation Center Delivery Lead (SOC Lead)
1196	Digital Advertising Account Executive
1197	Enterprise Sales Manager
1198	R&D Pharmacist Specialist
1199	Sales Engineer - Projects
1200	Server Administrator
1201	Production Engineer (Aluminum Windows)
1202	Marketing And Sales Manager - Cairo
1203	UI/UX Web Designer
1204	Senior Oracle HCM Consultant
1205	Installations Engineer
1206	Web Project Manager
1207	Junior Graphic Designer & Social Media Coordinator
1208	Sales Manager - Real Estate
1209	Accountant - Furniture Manufacturing
1210	Technology Consultant
1211	IOS Team Lead
1212	Executive Director - Business Association
1213	Graphic & UI Designer
1214	Junior Marketing Manager - Europe
1215	Service Desk Engineer
1216	Sr. Estimation Engineer
1217	UI/UX Designer - HTML
1218	Account Manager - Small And Medium Business
1219	Mobile Engineer
1220	Senior ERP Admin (Dynamics / AX)
1221	Senior Marketing Specialist - Cairo
1222	Training specialist / Client success
1223	.Net Core/ Angular Team Lead
1224	React Native Android & IOS/ Mid React JS Frontend
1225	HR & Administrative Manager
1226	Continuous Improvement Section Head (LEAN-Six...
1227	Animator
1228	Azure Sales Specialist
1229	Non-Voice Agent - Cairo
1230	Sales Team Leader- Maalem Group
1231	Cochlear Implant - Product Specialist - Sohag
1232	Video Team Leader
1233	Exhibition and Activation 3D Designer - Nasr City
1234	Sales Representative - Port Said
1235	Planning And Cost Control Engineer
1236	Corporate DevOps Engineer
1237	Mechanical Production Engineer
1238	Electrical Tender Team Leader Engineer
1239	SEO Specialist
1240	Procurement Planner
1241	Sales Operations Executive
1242	Partnership Associate
1243	Shopify Expert
1244	Site Civil Engineer - Located In Toshka
1245	Senior Order Processing Specialist
1246	Accounts Receivable Section Head
1247	Business/Systems Analyst
1248	Senior Pre Sales Engineer
1249	Quantity Surveyor Engineer مهندس حصر كميات و...
1250	SAP SD Consultant
1251	Export Supervisor
1252	Innovation Project Manager
1253	Sales Team Leader
1254	Physical Security Sales Manager
1255	Senior Inventory Controller
1256	Senior Marketing Executive - B2B
1257	Application Support Supervisor - Giza
1258	Sales Planning Manager
1259	Senior ERP Consultant
1260	Export Manager - Pharmaceutical - Cairo
1261	Accounts Receivable Accountant
1262	Planning Engineer
1263	Senior Financial Analyst
1264	BI-Data Analyst
1265	Landscape Design Manager
1266	HR & Administration Specialist
1267	Sales Manager
1268	Production Manager
1269	Sales Executive - Sharqia
1270	English Content Creator
1271	Corporate Contract (B2B Sales Executive)
1272	Illustrator (Freelance)
1273	Industrial Engineer
1274	Interior Architectural Designer
1275	Senior Quality Assurance Engineer - (Web...
1276	E-learning Project Manager
1277	Interior Designer Architect
1278	Technical Director
1279	Fashion Retail Brand Manager
1280	Project Coordinator - Education Sector
1281	UI/UX & Graphic Designer
1282	Network & Security Engineer
1283	Dispatch Manager
1284	UI/UX Designer (Web And Mobile)
1285	Digital Marketing Head
1286	Functional Consultant / Senior Business Analyst...
1287	Quality Assurance Tester
1288	Senior Network & Security Engineer
1289	Junior UI/UX Designer
1290	Sales Team Leader - Real Estate Brokerage
1291	Showroom Sales Representative
1292	Area Sales Executive - Cairo
1293	Product Design Engineer
1294	ES Service Desk Engineer (Spanish Speaker)
1295	Supply Chain Manager
1296	Area Sales Executive - Giza
1297	Sales Engineer (Civil & Architecture)
1298	Senior ERP Sales Executive
1299	Head of Customer Service Department
1300	Senior Digital Media Planner
1301	Web Graphic Designer
1302	Microsoft Programs Specialist
1303	ERP Senior Financials Consultant
1304	Game UI Designer
1305	Game Designer
1306	Enterprise Strategy Consultant - Information...
1307	Graphic Designer - 2D
1308	Marketing / Brand Manager
1309	Internal Audit
1310	Senior Products Delivery Manager
1311	Marketing Specialist
1312	Senior Voip Engineer
1313	Electrical Tender Engineer
1314	Foreign Purchasing Executive
1315	Marketing Manager & Content Creator
1316	Network and Security Administrator
1317	Junior AX Functional Consultant
1318	Senior Data Center Preparation Pre-Sales Engineer
1319	System Engineer (DELL EMC Networker Specialist)
1320	System Engineer (DELL EMC Avamar Specialist )
1321	Indoor Sales Account Manager
1322	Senior Interior Designer/Architect
1323	Civil Sales Engineer
1324	Administrative And Personal Assistant
1325	Sales Coordinator - Giza
1326	Area Manager
1327	Business One Consultant
1328	Human Recourse Manager
1329	Creative Senior UI/UX Graphic Designer
1330	Project Manager - Cairo
1331	Consulting Civil Engineer - Giza
1332	Installation & After Sales Engineer
1333	Industrialization Engineer (Production) - Sheet...
1334	Junior Payroll & OD Specialist - Cairo
1335	Technical Operations SME & Cloud Expert
1336	Senior Network Security Engineer
1337	Eritrean B2B Telesales Executive
1338	Product Team Leader
1339	Amharic B2B Telesales Executive
1340	French B2B Telesales Executive
1341	ERP Client Care Officer
1342	Database Warehousing Manager
1343	Network & Security Section Head
1344	Chemistry Teacher ( Hijaz Branch)
1345	Profile Specialist
1346	Oracle Database Admin
1347	Quality Assurance Associate (Fluent French...
1348	Logistics Assistant
1349	Communication Sales Engineer
1350	Freelance BTL Sales Account Manager
1351	Architectural Engineer
1352	Clients Relation Representative "Account Manager"
1353	SAP S/4HANA (PP , QM & MM) Modules Consultant...
1354	CTO / Co-Founder
1355	Sales Agent
1356	Warehouse Manager
1357	Financial Systems Implementer
1358	Senior Presales Network & Security Engineer
1359	Senior Collaboration Presales Engineer
1360	Secretary
1361	Site Accountant
1362	Area Sales Manager
1363	Payable Accountant
1364	Receivable Accountant
1365	Content Writer/Marketer
1366	Digital Marketing/Growth Specialist (Saas)
1367	CloudOps Engineer
1368	Projects Engineer
1369	Export Sales Manager - Africa Region
1370	Motion Graphic Designer
1371	Executive Secretary To The CEO
1372	UI UX Designer / Graphic Designer
1373	Lead Structural Design Engineer
1374	Electronics Engineer
1375	Science Supervisor
1376	Demand Planning Manager
1377	Senior Web Designer
1378	Senior Architect / Interior Designer (Working...
1379	Senior Network Security Engineer Alexandria
1380	HR Section Head
1381	International HR Generalist
1382	Logistics Specialist
1383	Technical Lead Dynamic CRM
1384	AI Pre-Sales Engineer
1385	Electrical & Network Site Engineer
1386	Export Sales Specialist – Agriculture Products...
1387	Tendering Engineer
1388	English Teacher - (British Section) - Tanta
1389	Senior Translator
1390	Senior Architect
1391	Social Media & Digital Marketing Specialist
1392	Sales Analyst
1393	Senior Database Analyst and Administrator
1394	Executive Secretary - New Alamein University
1395	Knitting And Dye House Planner
1396	Projects Lead
1397	Strategic Programs Team Manager
1398	Outdoor Medical Sales Representative - Part Time
1399	Senior Scrum Master
1400	Sales Account Manager - Monofia
1401	Outdoor Medical Sales Representative - Full Time
1402	STEM Teacher (Robotics Teacher)- Part Time
1403	Sales Manager (Real Estate)
1404	Sales Supervisor
1405	Junior Sales Executive
1406	Drawing Architect (Architecture & Interior Design)
1407	MS Dynamics AX Financial Consultant
1408	Pre-sales Manager
1409	Sharepoint Administrator
1410	Partnerships Executive
1411	R&D Engineer
1412	Documents Controller
1413	IBM Security Consultant
1414	Senior Local Purchasing Specialist
1415	Trade Marketing Manager
1416	Group Commercial Director - Sharqia
1417	Technical Support Engineer ( APIs)
1418	Senior UI/UX Graphic Designer
1419	Backend Lead
1420	Epicor ERP Administrator
1421	Data Specialist
1422	Interior Designer / Architect
1423	General Manager (Sales & Technical)
1424	Administration Secretary
1425	Senior Architectural Designer
1426	Senior Interior / Architectural Designer
1427	Medical Representative
1428	Sales Admin
1429	Head Of Math Department - Middle & High School
1430	Courier Operations Area Manager
1431	Supply Chain & Warehouse Specialist
1432	Network Pre-Sales Manager ( R&S Or Security...
1433	Inside Sales Specialist - Cisco
1434	Network And Security Engineer
1435	Oracle Application Manager
1436	Multichannel Marketing Specialist
1437	Real Estate Sales Manager
1438	System Analysis Project Lead
1439	Junior Academic Coordinator
1440	Microsoft System Engineer
1441	External & Internal Procurement Manager
1442	Graphic Design Instructor - STEAM
1443	Early Childhood Teacher
1444	Application Support (Finance Background)
1445	Lead Generation Team Leader
1446	Sales Engineer - Assuit
1447	Gender Officer - Civil Society Capacity...
1448	Electrical Engineer (Solar)
1449	Senior Video Editor
1450	Foreign Purchasing Specialist
1451	Warehouse Specialist
1452	Account Team Leader - German Speaker
1453	Web Admin / Digital Marketing Admin
1454	Telesales Agent - Real Estate
1455	Senior Digital Media Buyer
1456	Maintenance Manager (Large Factory)
1457	English Speaking Account Team Leader - Cairo
1458	Draftsman
1459	Renting Adviser - Real Estate
1460	Human Resources Director
1461	Web / Graphic Designer
1462	IPG Technical Support Specialist
1463	Technical Sales Executive
1464	Microsoft SQL Database Administrator
1465	Academic Coordinator
1466	Senior AP Accountant
1467	Oracle HCM Consultant
1468	HR Director (Med Size) World Class Manufacturer
1469	Social Media Marketing Specialist
1470	Sales Coordinator
1471	Senior Digital Marketing Specialist
1472	Marketing Technology Specialist
1473	Customer Service Supervisor
1474	Senior Security Engineer
1475	UC Senior Collaboration Engineer
1476	Retail Planning Analyst
1477	Microsoft Dynamics AX Consultant
1478	Senior Property Consultant
1479	Senior Marketing Specialist
1480	External Sales Specialist - Cairo
1481	Business Continuity Senior Supervisor
1482	Account Team Leader
1483	German B2B Telesales Executive
1484	Call Center Representative - Assiut
1485	Strategy Analyst
1486	Social Media Specialist - Tanta
1487	Graphic Designer & Motion Graphic Specialist
1488	Project Engineer
1489	Network Security Engineer
1490	Embedded R&D Engineer
1491	Junior Architect
1492	Hardware Specialist /Technician
1493	Business Unit Manager
1494	Head Of Risk Department
1495	Electrical Design Engineer
1496	English Instructor
1497	Senior Brand Consultant
1498	Oracle WebLogic Administrator
1499	Machine Learning Team Lead - (Computer Vision)
1500	Trade Marketing Specialist
1501	Senior Technical Support Engineer - Medical...
1624	Contract Support Specialist
1502	Biology Laboratory Specialist - Biomedical...
1503	Costing Chief Accountant
1504	Marketing Communications Specialist
1505	Commissioning Engineer
1506	Hardware Sales Associate
1507	Purchasing Executive (Packaging Material)
1508	Ultrasonic Engineer ( Electrical & Mechanical )
1509	Microsoft Systems Senior Engineer
1510	Bidding Specialist
1511	Senior Planning Engineer
1512	Senior Build Engineer
1513	Computer Vision Engineer - Based in Cairo
1514	Digital Media Buyer
1515	Product Specialist - Olympus Endoscopy (Sales)
1516	Computer Instructor
1517	Sales Account Manager - Tanta
1518	Talent Acquisition Specialist
1519	SAP Consultants (FICO, MM, SD, PP/QM)
1520	Risk Manager
1521	API Implementation Specialist - Cairo
1522	Media Storage Sales Manager
1523	Quality Assurance / Quality Control Specialist...
1524	Interior Designer & Architect
1525	Marketing Supervisor
1526	Branch Manager - Kafr Alsheikh
1527	Agriculture Category Manager
1528	English Technical Support Representative
1529	Health Safety & Environment Manager
1530	Head Of Marketing
1531	Analyst
1532	Service Delivery Manager
1533	Infrastructure Supervisor
1534	Category Manager - Agriculture
1535	Marketing Communications Director (Regional - C...
1536	CRM Administrator
1537	Digital Content Creator /Creative Strategist
1538	Facilities/MEP Manager
1539	Production Manager - Plastic Pipes
1540	Senior Business Intelligence Specialist
1541	Senior Application Support Engineer
1542	Student Wellness Coordinator
1543	Senior UI Designer
1544	Instructional Designer
1545	Project Sales Engineer
1546	Technical Support & Customer Service Engineer -...
1547	Outdoor Sales Engineer
1548	Account Manager - Fashion
1549	Senior Content Creator/ Copywriter
1550	ASIC Physical Design Engineer
1551	Vendor Operation Specialist
1552	Technical Trainer
1553	Vendor Acquisition Specialist
1554	Purchasing Supervisor
1555	Digital Marketing Manager
1556	Local Purchasing Manager
1557	Oracle NetSuite Implementation Consultant...
1558	Call Center Service Delivery Manager
1559	Site Architectural Engineer
1560	E-Commerce Logistics Specialist - Giza
1561	Senior Financial AX Functional Consultant
1562	System Admin
1563	Senior ASIC Physical Design Engineer
1564	Information Security Senior Specialist
1565	Marketing Account Manager
1566	Retail Sales Manager
1567	Data Analysis Team Leader (Data Analyst)
1568	Product Specialist - East Cairo
1569	Business By Design (ByD)
1570	French Technical Support
1571	Material Planning Specialist/Engineer
1572	Head Of Structural Design Department - Cairo
1573	Senior Financial Planning & Analyst
1574	Senior HR Specialist
1575	Project Management Specialist
1576	Vendor Management Team Leader
1577	Customer Care Supervisor ( Tanta & Mansoura )
1578	Wholesale Manager, White appliances / SDA / MDA...
1579	3PL Quality Assurance Officer
1580	Senior SOC Engineer
1581	Outdoor Sales Representative
1582	Recruitment Manager
1583	Chief Accountant - Hospitality
1584	French Senior Accountant
1585	Product Designer
1586	Application Content Manager
1587	UI/UX Designer - Mansoura
1588	Quality Control & Assurance Section Head - ( In...
1589	Real Estate Sales Specialist
1590	ERP & Application Implementer-AX 2012
1591	Senior System Administrator
1592	Senior Payroll & Personnel Specialist
1593	Oracle EBS Techno-Functional Consultant Section...
1594	Lighting Engineer
1595	Senior Sales Engineer - Cairo
1596	Key Account Manager
1597	Product Specialist - Delta
1598	HR Operation Supervisor
1599	Mechatronics Engineer
1600	STEM Teacher (Robotics Teacher)
1601	Brand Marketing Lead
1602	Senior Creative Copywriter
1603	Senior Key Account Executive ( Sr. Sales...
1604	Quality Control Team Leader
1605	ATM Incident Management Agent - French speakers
1606	Client Care Agent
1607	Sales Representative - Tanta
1608	Sales Representative - Mansoura
1609	Creative Content Writer English & Arabic
1610	Property Consultant - Sales Real Estate
1611	Human Resources Consultant
1612	Localization Project Manager
1613	Senior Localization Project Manager
1614	Customer Experience Section Head
1615	Internal Auditing Deputy Manager
1616	Quality Assurance Specialist
1617	Creative Director & Team Manager
1618	Resident Coordinator
1619	Director Of Engineering - Agriculture Machinery
1620	High School Networks Teacher
1621	Customer Experience Engineer
1622	Operations Manager
1623	E-Commerce Operation Specialist
1625	Head Of Quality
1626	Group Chief Internal Audit
1627	Data Scientist & Machine Learning Specialist
1628	Quality Assurance Specialist - Manufacturing
1629	Technical Operations L2 Support Specialist
1630	Content Creator
1631	UI / UX Designer Internship
1632	Math Teacher
1633	Utilities Maintenance Engineer- (SCADA)
1634	Sales Representative - Cairo
1635	Infrastructure AWS Engineer
1636	UX Designer For Mobile App.
1637	Administration Manager
1638	Senior Construction Accountant
1639	Quality Control Manager
1640	Operations Executive Remote Working
1641	Network Contracting Manager
1642	Financial Manager
1643	E-Commerce Logistic Specialist
1644	Senior Operations Leader (6th of October Hub...
1645	Senior Operations Leader (Heliopolis Hub Leader)
1646	Senior Network Administrator
1647	Microsoft Dynamics CRM Functional Consultant
1648	B2B Account Manager
1649	Information Security Senior Supervisor
1650	Pre Sales Engineer
1651	Information Security Specialist
1652	Celebrity Acquisition Lead
1653	BI Technical Lead
1654	Trade Activation Manager
1655	Banking Relations Specialist
1656	E-Commerce Moderator
1657	HSE Engineer - (Behera)
1658	Lawyer
1659	Business Solutions Technical Support Senior...
1660	Digital Media Buyer(Googleads- Twitter)
1661	Telesales Executive
1662	E-Commerce Associate
1663	Branch Manager - Furniture
1664	Zoho Technical Consultant
1665	Senior ERP Project Manager
1666	Marketing Manager - Nasr City
1667	Finance Business Partner (Financial Manager)
1668	Social Media Manager
1669	BIM Coordinator
1670	Senior Digital Marketing Project Manager –...
1671	Professional Light Systems Designer
1672	Air Compressors Service Manager
1673	ERP Sales Representative
1674	Information Protection Officer
1675	Junior Marketing Assistant
1676	Data Analytics Presales Consultant
1677	Accounting Technical Writer (English/Arabic)
1678	Budget and Treasury manager
1679	Indoor Sales Executive
1680	Area Manager Mega Retail Operations multiple...
1681	UX Designer and Wordpress
1682	UI and Graphic Designer - Intern
1683	Product Design Lead
1684	Junior Telesales Representative - Cairo
1685	Senior Executive Assistant
1686	Junior Localization Engineer
1687	Project Coordinator QSIT
1688	Data Cleansing Assistant.
1689	Tier 2 Technical Support Representative...
1690	Commissioning Leader
1691	Senior Customer Support Engineer
1692	Procurement Manager - Multinational
1693	Data Analyst - Internship
1694	Digital Data Specialist – Online Sales
1695	IT Help desk
1696	QC Software Testing Team Lead - Mansoura
1697	Software Quality Control Tester - Alexandria
1698	Medical Software Sales Engineer
1699	Senior .Net Full Stack Developer
1700	Senior ASP.NET Full Stack Developer
1701	Frontend React JS Developer
1702	Senior PHP Full Stack Developer
1703	IIB Integration Developer
1704	PHP (Laravel) Developer
1705	Senior Front-End Developer (React)
1706	Senior PHP Developer - Nasr City
1707	Business Development Specialist - Lighting Field
1708	Associate Quality Engineer
1709	Programmer
1710	Advising Program Officer
1711	Senior Network & System Administrator
1712	ERP SYSTEM Admin
1713	Design Engineer
1714	System Analyst
1715	Graphic Design & Media Intern
1716	QC Engineer Resource
1717	Corporate (B2B) Sales Specialist
1718	Bentley Automotive Sales Executive
1719	Graphic Designer - Maadi
1720	Service Reception Advisor
1721	Automotive Spare Parts Manager
1722	Senior Master Data Controller
1723	Oracle TOA Consultant
1724	Office Manager Executive Assistant
1725	Microsoft Dynamics AX Operation Manager
1726	Graphic Designer & Visual Content Creator
1727	Senior Content & Brand Strategist
1728	Service Reception Advisor 10th of Ramadan
1729	Senior Ax technical consultant
1730	Full Stack Developer (Internship)
1731	Quality Control Engineer - Software Testing
1732	Software Engineer (Full-Stack, VUEJS, LAMP,...
1733	UI/UX Designer - Project Based
1734	Career Opportunities for Persons with...
1735	Oracle Financial & Procurement Consultant
1736	Payable Accountant Supervisor
1737	Python Back End Developer
1738	Video editor & animator
1739	Android Ios Flutter Developer
1740	Senior QA Engineer
1741	SAP ABAP Consultant
1742	Senior MS Exchange Engineer
1743	Frontend Developer
1744	Power BI Developer
1745	Payable Senior Accountant
1746	Creative Content Writer
1747	Orthodontist
1748	chief of accounts
1749	Localization Project Coordinator
1750	Marketing Executive
1751	Interior Design Manager
1752	Senior Full Stack Engineer
1753	Commercial Executive (Anti-piracy SaaS)
1754	Scrum Master / Project manager
1755	B2B Corporate Sales Specialist
1756	Front-end Developer - Project Based & Full Time
1757	Senior.Net Developer
1758	Events Specialist
1759	Application Integration Engineer
1760	Math Teacher - Tanta (British Section)
1761	Mobile Development Lead - Android & iOS
1762	ERP Functional Support Specialist (Odoo)
1763	Academic Head
1764	Sales Force Automation
1765	Senior Solution Architect
1766	Avaya Engineer
1767	Hse Supervisor
1768	Android Developer / Alexandria
1769	Tax Supervisor
1770	HR Officer - Tanta
1771	Senior Media Buyer
1772	Oracle EBS Manufacturing Specialist
1773	Finance Manager
1774	Tax Manager
1775	Accountant - Sharqia
1776	Stock Controller / Inventory Accountant
1777	AR Accountant
1778	General Accountant
1779	Junior Accountant
1780	Stock Control Accountant
1781	Tax Accountant
1782	Cost Control Accountant - FMCG
1783	General Accountant - Giza
1784	Collection Specialist
1785	ERM Manager
1786	Food And Beverage Manager - Alexandria
1787	SMEs Account Manager
1788	Executive Secretary
1789	Operations Supervisor
1790	ERP Sales Manager - Saudi Market (Remote)
1791	Senior Marketing Manager
1792	Customer Support Supervisor (Sales Operations)
1793	Logistics Supervisor
1794	Warehouse Manager (Automotive)
1795	Purchasing Specialist - New Cairo
1796	Sales Executive (Mansoura)
1797	Procurement Specialist
1798	Application Development Specialist - Oracle...
1799	Export Manager
1800	Inventory Admin - Internship
1801	Merchandiser - Upper Egypt
1802	Aftermarket Spare Parts Section Head
1803	Telesales Associate
1804	Sales Representative - American Insurance Company
1805	Sales Specialist - New Cairo
1806	Online Sales Agent (E-commerce)
1807	Sales Property Advisor
1808	Property Sales Team Leader
1809	HORECA Sales Supervisor
1810	Senior Sales Representative - Cairo
1811	Sales Specialist - Cairo
1812	Sales Team Leader - Real Estate
1813	Real Estate Sales Agent
1814	Electric Automation Sales Engineer
1815	Sales Manager - Maadi Branch
1816	Sales Engineer - Automotive Spare Parts
1817	Sales Supervisor - Tanta
1818	Senior Sales Engineer
1819	Sales Specialist - Automotive Spare Parts
1820	Showroom Sales Executive - (Alexandria)
1821	Sales Representative for E-Commerce Site - New...
1822	Key Account Supervisor - FMCG
1823	Medical Advisor
1824	Usher - Merchandiser
1825	Merchandiser - Alexandria
1826	Merchandiser - Mansoura
1827	Merchandiser - Tanta
1828	Promoters Team Leader - Cairo
1829	Telesales Agent
1830	Junior Business Development Specialist
1831	Merchandiser - Giza
1832	Pharmacy Manager
1833	Admin / Customer Service Representative
1834	Senior Property Consultant - Real Estate
1835	Medical Representative (Downtown)
1836	Property Consultant
1837	Marketing & Business Development Manager
1838	Key Retail Supervisor
1839	Assistant Brand Manager
1840	Property Consultant / Real Estate Agent
1841	Generators Technical Office Engineer
1842	Marketing Specialist - New Cairo
1843	Store Manager
1844	Digital Marketing - Internship
1845	Business Development Coordinator
1846	Branch Manager (Ladies Fitness Center)
1847	Marketing Representative
1848	Market Research Analyst
1849	Resource Management Team Leader
1850	Senior Project Manager - (Software, Mobile...
1851	IT Specialist - Cairo
1852	Full Stack WordPress Web Developer
1853	Software Tester And QA
1854	Senior QC Software Engineer
1855	IT Help Desk - Team leader
1856	embedded software engineer
1857	Site Accountant - Construction
1858	Senior IT Sales Representative
1859	UX/UI department head
1860	MS Dynamics AX Developer
1861	Oracle Apps DBA
1862	Clinical operations Manager
1863	Senior CRA
1864	Digital Media Manager
1865	Site Civil Engineer
1866	Medical Billing Specialist
1867	Sector Sales Manager - Luxor
1868	Junior Business Development Engineer
1869	Site Civil Engineer -New Vally
1870	Math Teacher - Oman
1871	Science Teacher - Oman
1872	Biology Teacher - Oman
1873	BI Analyst - KSA
1874	Stock Control Manager
1875	Media Buyer
1876	Technical Support Engineer - Medical Software
1877	Warehouse Officer
1878	Senior Data Engineer " EDW " - KSA
1879	Consumer Marketing Manager
1880	Electronics engineer with C# experience.
1881	Sr Purchasing Specialist
1882	Data Quality Analyst
1883	Marketing Assistant
1884	IT & ERP System Manager
1885	Sales B2B Specialist
1886	Customer Service Agent
1887	Microsoft .NET Developer
1888	Site Accountant - Assuit
1889	Farm Manager
1890	Customer Service & After Sales Representative -...
1891	Videographer & Video Editor
1892	Marketing Specialist - Giza
1893	Maintenance Manager - Industrial
1894	Sales Representative (Home Care)
1895	Export Sales Executive
1896	Sr.Sales Executive
1897	Regional Sales Manager - Delta Region
1898	Admin Sales " Real Estate "
1899	Commercial Executive (Anti-piracy SaaS) - Zamalek
1900	Back-End (PHP) Developer - Alexandria
1901	Budget Controller
1902	Internal Audit Manager
1903	Indirect Sales Manager - Real Estate
1904	Odoo ERP Sales Account Manager
1905	Web Graphic /UX Designer
1906	Market Quality Engineer - Alexandria
1907	Chief Accountant - Hospitality- Resturants
1908	Software QC Tester Remotely
1909	Front End Developer - Alexandria
1910	Front-End Web Developer (Angular) Remotely
1911	Sales Representative (Mobile Lines) (Hurghada -...
1912	Sales Representative (Mobile Lines) (Luxor and...
1913	WHMCS and PHP expert
1914	HR Director -World Class Manufacturer
1915	Demand Planner
1916	Sales Manager Multinational Insurance Company
1917	Cost Controller
1918	Sales Executive Media Production
1919	Senior .NET Programmer / Developer
1920	Technical Sales Lead / Account Manager (Web +...
1921	Real Estate Sales Executive
1922	Bioinformatics internship
1923	Business Development Executive for Healthcare...
1924	IT Field Support Coordinator - Intern
1925	مطلوب نظم معلومات ادارية MIS
1926	French Teacher ( British section ) - Tanta
1927	ICT (Computer) Teacher - Tanta
1928	Senior Personnel & Payroll Specialist
1929	Automotive Salesperson
1930	Patients Accounting Manager
1931	Odoo Lead
1932	Customer Advisor
1933	CEO Personal Assistant
1934	Medical Sales Representative
1935	Real Estate Account Manager
1936	Furniture Sales Representative
1937	Sales Admin (Real Estate)
1938	Junior Node.js /Ionic Mobile Developer -...
1939	Senior BMS Sales Engineer
1940	Accounts Receivable Accountant(A/R Accountant)
1941	Senior Cost Control Engineer
1942	Fleet Section Head
1943	Javascript back-end developer
1944	Php Back End Developer
1945	IT Systems Administrator Supervisor
1946	Procurement Officer
1947	Senior Infrastructure Engineer - KSA
1948	SR Front End Developer (Angular)
1949	PHP Back End Developer
1950	French Teacher ( British Section ) - Tanta
1951	Accounts Receivable Accountant (A/R Accountant)
1952	محاسب عام
1953	Automotive Sales Executive
1954	Storekeeper
1955	Senior Front End Developer (Angular)
1956	Senior Full Stack Java Developer (AWS)
1957	Senior Product Development Engineer
1958	Admin Coordinator
1959	Warehouse Accountant
1960	Governmental sector OPS Deputy Manager
1961	Business Excellence Manager
1962	Payroll And Personnel Specialist
1963	Full Stack Developer (Go / JavaScript)
1964	Chief Credit Control
1965	Cost Accountant ( Food & Beverage )
1966	Senior Legal Advisor
1967	Leasing Relationship Management Executive (LRM)
1968	Governmental Sector OPS Deputy Manager
1969	Senior .Net Full Stack Developer (Angular -...
1970	IT Team Leader
1971	Supply Chain Engineer
1972	Vendor Management Coordinator
1973	Junior .Net Developer
1974	Territory Channels Sales Manager
1975	Procurement Manager
1976	Python Developer (Odoo)
1977	Mobile Developer ( Reactnative , Flutter)
1978	Accountant - KSA
1979	Cost Accountant - Alexandria
1980	Live Operations Specialist
1981	Technical Product Manager
1982	DevOps Engineers - Cairo
1983	Mobile Developer ( React Native - Flutter)
1984	DevOps Engineers - Alexandria
1985	Photographer
1986	Stock Control Section Head رئيس قسم مراقبة المخزون
1987	Material Planning Engineer
1988	Tech Lead Software Manager
1989	Revenue Accountant - Cairo
1990	Service Delivery Specialist
1991	Senior Dealer
1992	Marketing Officer - ASDP - Aswan
1993	Assistant Store Manager (Alexandria)
1994	Purchasing Engineer
1995	Technical System Consultant
1996	Logistics Specialist (Retail)
1997	IT Specialist (Fashion Retail)
1998	Logistics Specialist (Fashion Retail)
1999	Senior Web Designer - Developer
2000	Personnel & Payroll Specialist (Fashion Retail)
2001	IT Officer - Alexandria
2002	Full-Stack Web Developer (MERN stack)
2003	Management Information System ( MIS ) Developer
2004	php web developer
2005	Computer Science & Computer Engineering Fresh...
2006	CRM manager
2007	Cnc Programmer
2008	Senior .NET Developer (Desktop Application)
2009	Resident Engineer / Operator
2010	Product Manager - Monitors, Projectors, View...
2011	Senior Maintenance Engineer
2012	Art Director - Alexandria
2013	Executive Secretary to Chairman - Alexandria
2014	STEAM Instructor - Intern
2015	Order Handling Specialist
2016	Dental Clinic Manager
2017	مشرف توزيع ذو خبرة في المواد الغذائية
2018	IT Manager ( El Katib Hospital )
2019	IT Network Specialist
2020	Senior .Net Developer (Backend Developer)
2021	IT Sales Specialist
2022	Software Technical Lead
2023	Software Engineering Intern, PhD, 2021
2024	Pre-Sales Executive / IT Field
2025	Senior Microsoft Nav Developer
2026	Software Engineering or Site Reliability...
2027	Android Developer internship
2028	Senior .NET K2 Developer - KSA
2029	Junior iOS Developer
2030	ASP.Net Senior Developer
2031	Odoo Developer - Cairo
2032	Back End Developer - PHP Laravel
2033	E-content Developer
2034	Sr.NET Developer
2035	Front-End Developer (IOS & Android)
2036	BPM Developer
2037	AX Dynamics Developer
2038	.Net Technical Lead
2039	Lead Middleware Platform Engineer
2040	Senior Integration Engineer
2041	System Administrator/DevOps
2042	Project Coordinator
2043	Odoo ERP Senior Application Manager
2044	Products Sr. Specialist
2045	Automation Sales Manager - Cairo
2046	Customer Service Agent (Onshore Account)
2047	Application Support Specialist
2048	Senior MS Dynamics AX Technical Consultant
2049	In-House Graphic Designer
2050	Design Mechanical Engineer
2051	Documents Management System Project Manager
2052	T24 Senior Technical Consultant
2053	Purchasing Manager
2054	Senior Purchasing Specialist
2055	Senior Marketer
2056	Associate Systems Engineer
2057	Resident Engineer
2058	Dutch Technical Support Representative
2059	Research Intern, PhD, 2021
2060	Research Intern, MSc, 2021
2061	Accounting Manager - Alexandria
2062	Accounts Payable Accountant
2063	Cost Accountant
2064	Internal Audit Section Head
2065	Facility Engineer
2066	Senior Credit Data Analyst
2067	Feasibility Analyst
2068	Logistics & Customer Service Specialist (Domestic)
2069	Senior Financial Data Quality Specialist
2070	Fleet Sourcing Specialist
2071	Supply Chain Specialist
2072	Supply Chain Operation Manager
2073	FMC Manager - Retail Business up to 40 Branches...
2074	Junior Logistics Specialist
2075	Purchasing Officer
2076	Warehouse Keeping Supervisor
2077	Stores Supervisor/Inventory Controller
2078	Local Purchasing Specialist - Alexandria
2079	Production Planner
2080	Fleet & Administration Specialist
2081	Senior developer
2082	Hub Lead - Maadi- Nasr city- Hadayek Ahram, Ain...
2083	Expenses Accountant - محاسب مصروفات
2084	Mid-level Software Developer
2085	ADF Developer - Alexandria
2086	Accounting Specialist
2087	Art Director
2088	Unit Support Officer
2089	Manufacturing Production Manager - Pipes
2090	Sr. IT Help Desk
2091	Software Quality Tester
2092	Junior Software Engineer
2093	EAI Middleware Engineer (CHS)
2094	Associate System Engineer
2095	Quality Control Supervisor
2096	IP Core Network Engineer
2097	HR & Operations assistant
2098	Customer Order Specialist
2099	Front-End Angular Developer - Alexandria
2100	Senior Treasury & Budgeting Accountant - Suez City
2101	Construction Chief Accountant
2102	Supply Chain Manager (Medical)
2103	Supermarket Purchase Manager
2104	ERP Sales Manager - Saudi Market (Based in Cairo)
2105	Corporate Life Operations Specialist
2106	Logistics Sales Specialist
2107	Technical office Engineer
2108	Application Consultant (Microsoft Dynamics AX)
2109	HR Supervisor
2110	Software Engineer - C++
2111	Senior Procurement Engineer (Construction)
2112	ERP Application Manager
2113	YouTube Intern
2114	UI Designer (Web and Mobile)
2115	Senior Site Technical Office
2116	Supply & Demand Planning, Senior Executive
2117	Production Coordinator - Fashion
2118	Operation Specialist - Trucking
2119	Senior Full Stack Developer ( PHP Developer )
2120	Back-end Developer (WordPress/PHP)
2121	Advertising Sales / Account Executive
2122	Financial Analysis Manager
2123	ERP Developer (AX Dynamics) - Sadat City
2124	SR Ios Developer
2125	Sr. Android Developer
2126	Website Designer (Ecommerce)
2127	E-commerce Manager
2128	Developer
2129	Software Sales Representative
2130	Sales and marketing Manager
2131	Procurement and Operations Management Staff
2132	Personal Assistant TO CEO
2133	Sap CX Developer
2134	Sales Account Manager ( Outdoor ) - Mansoura...
2135	Store Secretary ( in Sabtia)
2136	Technical Analyst - ( Applications Support )
2137	Data Analytics & Insights
2138	Local Purchasing Specialist
2139	Executive Administrative Assistant
2140	ERP Consultant - Sadat City
2141	Business Analyst / Technical Writer
2142	Mechanical Design Engineer
2143	Head of Business Development
2144	ICT Services Delivery Manager
2145	IT Manager (Acting) - Multinational - Dubai(SAP...
2146	Senior Techno functional oracle erp consultant
2147	Site Accountant - Port Fouad
2148	Senior HR Generalist
2149	Warehouse Agent
2150	Software Developer - Intern
2151	Growth Marketing Manager
2152	Senior Risk Officer
2153	Credit & Marketing Officer (Head Office - Cairo)
2154	Operations Manager - Wellness Center Health...
2155	Application Consultant - Internship
2156	Purchasing Supervisor (Packaging Material)
2157	Business Analyst Product Owner
2158	SharePoint Lead
2159	Senior sales engineer
2160	Purchasing Manager - Hospitality / Restaurant
2161	Purchasing Specialist - Textiles
2162	Systems Administrator
2163	Desktop Publishing Specialist
2164	Senior Treasury Manager
2165	Network Administrator/Engineer
2166	Treasury Manager
2167	RPA Architect
2168	Valuation Analyst
2169	Copywriter
2170	Payroll Personnel Specialist
2171	Cost Controller/Accountant
2172	Banking Call Center Representative
2173	Marketing Communication Executive / Coordinator
2174	Senior Material Planner
2175	Graphic Designer - Printing Background is a must
2208	Social Media & Website Specialist
2209	Internal Audit Manager (Large Retail)
2210	IT Help Desk ( First line Support )
2211	Senior Backend Developer (Laravel)
2212	IT Site Section Head and Second Line Support
2213	Sales Operations specialist (IT)
2214	International Recruitment and Development Advisor
2215	Back-end Systems Solution Analyst/Programmer
2216	Stock Control Supervisor
2217	Senior Frontend Developer (Angular)
2218	Java Senior Technical Lead
2219	Customer Care Supervisor - Tanta & Mansoura
2220	Finance & Accounts Officer
2221	Senior Internal Audit Officer
2222	Quantity Surveyor
2223	Big Data Manager
2224	Procurement Engineer
2225	Devops/ProdOps‎ Engineer - Cairo
2226	Furniture Design Manager
2227	Trucks Sales Officer
2228	Senior Android Developer - Heliopolis
2229	Help Desk Specialist -Mansoura
2230	Analyst / Programmer
2231	Architect (Work from Home)
2232	Junior Accountant - Cairo
2233	Facilities Director - (Multinational- Regional)
2234	Office Administrator
2235	Trucks Sales Officer - Dakahlia
2236	iOS Developer - Remotely work
2237	Oracle Developer Lead
2238	IT Help Desk Specialist - HQ
2239	Oracle Developer
2240	Cost Accountant ( Industrial Sector)
2241	Senior Payable Accountant
2242	Android Application Developer - Remotely Work
2243	Technical Pre-Sales Consultant
2244	Costing & Budgeting Senior Accountant
2245	Property Advisor
2246	CRM Developer
2247	React JS Engineer
2248	Senior HR Officer - HRIS
2249	Sales Representative - Logistics
2250	Senior .NET Developer - Smart Village
2251	Technical Lead
2252	Data Center Specialist
2253	Junior Digital Media Buyer
2254	Credit Analyst - Underwriter
2255	Junior Purchasing Specialist
2256	Logistics Operations Specialist
2257	BI Developer
2258	Audience Development Specialist
2259	Solution Owner (Integration)
2260	Account Manager (Sales).
2261	IT programming with .Net in Seven - Uberlândia
2262	Accountant - Alexandria
2263	Export section Head (cosmetics )
2264	Software Testing Engineer
2265	Java Web Developer (Spring Framework)
2266	Java Android Developer (Algorithmic)
2267	Backend Engineering Lead
2268	Senior Finance (Fluent in German)
2269	Sous Chef
2270	Senior Android Mobile Developer (+Flutter...
2271	Operation Desinger
2272	Front end at Grupo TCS - Technologies
2273	Reporting and Budget , Financial analysis Manager
2274	Purchasing Section Head
2275	Quality Assurance Specialist "Software Tester"
2276	PHP Laravel Developer
2277	Costing Manager (Large Retail) Cairo Egypt
2278	iOS Developer Mansoura DK
2279	Import Accountant
2280	PR & Internal Communications Manager
2281	Accountant – محاسب
2282	Cost accounting Section Head - Borg El Arab
2283	Dot Net Full stack developer
2284	Business Developer for Interior Design Studio
2285	Admin Supervisor
2286	ESL content creator
2287	Store manager
2288	Warehouse Keeper
2289	Customer Care and Collection Manager
2290	BIM Mechanical/Electrical Engineer
2291	Java Spring Boot Developer
2292	Associate Business Research (French Account)
2293	Software QC Tester
2294	Data Center Operations Analyst
2295	Country Manager / GM
2296	Cashier
2297	Senior IT System Specialist
2298	Software Engineer in Backend [Python & Django]
2299	Pre-Sales Executive - Cairo
2300	Senior Pre-Sales Executive - Cairo
2301	Accountant & Secretary
2302	Associate Business Research
2303	Pricing Executive & Sales Support
2304	IT Audit Manager
2305	Sales Account Manager (Hardware)
2306	HR manager
2307	External Affairs Officer
2308	Treasury Supervisor
2309	Senior Sales Executive (Petroleum Services)
2310	Mechanical Technical Sales Engineer
2311	Accountant (FMCG)
2312	Network Instructor
2313	Merchandiser Planner
2314	Fleet Operations Supervisor
2315	Senior PHP Developer - Plugins Development
2316	Application developer
2317	Taxes Department Manager
2318	Website Designer (E-commerce)
2319	Treasury Section Head
2320	Software Engineer (Elastic Search Developer)
2321	JavaScript Developer
2322	SFE Specialist
2323	CRM Specialist
2324	Receptionist / Branch Manager
2325	Software Technical Lead/Principal Software...
2326	Technical Project Manager
2327	Senior Network and Security Admin
2328	Export Coordinator
2329	Plant Manager
2330	Stock Controller
2331	Purchasing Specialist / Engineer
2332	Administrative Officer
2333	Stock Planner & Stock Control / Pharmacist
2334	Toll Manufacturing Specialist
2335	Senior PHP Laravel Developer -Full Stack...
2336	Microsoft Business Intelligence Developer
2337	Senior Tax Accountant
2338	Business Development & Logistics Specialist
2339	Odoo Back End Developer
2340	Head of Strategies
2341	Odoo Front End Developer
2342	Junior Mean Stack Developer (Nodejs)
2343	Senior Full Stack Java Developer
2344	Merchant Acquisition Specialist
2345	Content Developer
2346	PR & Internal Communications specialist
2347	Website Administrator & Project Coordinator
2348	Telemedicine / Telehealth Specialist
2349	3D Max Designer- Display stand- booths
2350	Senior Front End Developer Needed
2351	Trade Support Specialist
2352	Sales Panel engineer
2353	Fresh Accountant
2354	Head of Finance
2355	Accountant -Saudi Arabia
2356	Iphone Technician - UAE
2357	iOS developer
2358	Web Designer (E-commerce)
2359	Billing Accountant - Ismailia
2360	Product Manager - Women's Healthcare
2361	Odoo Implementation Consultant ( Part Time )
2362	Accountant - Cairo
2363	Parts Sales Executive - Outdoor - Giza
2364	Senior PHP Developer (From Home Optional)
2365	GoLang Developer
2366	Oracle Sales Consultant
2367	StoreKeeper
2368	Purchasing Executive
2369	Senior Q.C Software Tester
2370	Microsoft Dynamics AX Functional Team Lead
2371	Payroll Specialist
2372	Logistics Manager- Alexandria
2373	Customs Clearance Broker - مستخلص جمركى
2374	IT Technical Sales Representative
2375	iOS Mobile Developer - Mansoura
2376	Quality Control Specialist
2377	Banking customer care Representative
2378	Master Production Planning Section Head
2379	Back end developer
2380	Xamarin Team Leader
2381	Junior R&D Engineer
2382	Telesales Team Leader(Real Estate)
2383	Communication Technical Sales Representative
2384	Accountant - Obour City
2385	Team Leader - Mansoura
2386	3PL Manager
2387	Local Procurement Section Head (Indirect...
2388	NopCommerce Web Application Support Engineer
2389	Technical Team Lead .NET
2390	Customer Experience Manager
2391	Senior React Frontend Developer
2392	Sr. DevOps Engineer
2393	Payable Accountant - New Cairo.
2394	Mechanical Engineer
2395	Senior Accountant Payable
2396	Senior Treasury Accountant
2397	Senior Export Sales Specialist - Logistics
2398	Salesforce Developer / Admin
2399	Application Support Specialist– Sales Buzz
2400	Manual Quality Analyst
2401	Procurement Section Head
2402	Full Stack Software Developer
2403	Android Software Engineer
2404	QA Process Improvement Engineer
2405	Programmer (Application Developer)
2406	Senior Roaming Specialist
2407	Online / Inside Sales Executive
2408	WHMCS and PHP Expert
2409	Receivable Accountant (A/R Accountant)
2410	3D Interior Designer/ Visualizer
2411	Export & Operation Manager ( Pharmaceutical...
2412	Tooling Design Section Head - Sharqia
2413	Junior HR Payroll &personal Specialist - Cairo
2414	IT Operations Team Leader
2415	Infrastructure Automation Developer
2416	Industrial Cost Controller
2417	Senior Procurement & Tender Engineer
2418	Warehouse & Logistics Supervisor
2419	Operation Specialist -Shipping
2420	Shipping Operation Manager / Alexandria
2421	Human Resources Specialist
2422	IT Help Desk Representative
2423	HR Officer ( Alex Branch)
2424	Retail Training Manager - Non Food Business 40...
2425	Technical Engineer (Firmware Upgrade & CDCN...
2426	Internal Financial Auditor (Construction)
2427	Project Accountant
2428	Sales Account Manager - Consumer Electronics
2429	JD Edwards Technical Consultant
2430	Software Presales Engineer - Cairo
2431	iOS/Android Developer Freelance
2432	JD Edwards Functional Consultant
2433	Assistant Financial Planning Manager
2434	Localization Project Coordinator - Fresh Graduates
2435	Supply Chain Manager - Furniture
2436	Finance Manager - Furniture
2437	Logistics Coordinator (Logistic SAP Support)
2438	Happy Vision Store Manager
2439	Eyewear Store Manager
2440	Medical Labs Area Manager
2441	Factory Manager (Patisserie)
2442	Warehouse Supervisor
2443	IT Assistant Manager
2444	Junior Technical Support Engineer - Upper Egypt
2445	Back from School German Teacher
2446	Fruit Post-Harvest Consultant
2447	Labs Operations Area Manager - Mohandssin
2448	Javascript Back-End Developer - Dokki
2449	Backend Developer (Node.Js)
2450	Marketing Accounts Manager
2451	Senior Software Automation Tester - Cairo
2452	Junior Mean Stack Developer
2453	Full Stack Developer (Mern Stack)
2454	Warehouse Section Head
2455	Warehouse Manager (Medical)
2456	Senior Front End Developer React JS
2457	Blockchain Instructor
2458	Business Intelligence Instructor (Power BI /...
2459	construction accountant
2460	Maitre D'Hotel (Egyptian Or Foreigner) -...
2461	odoo Techno Functional
2462	Senior Forecasting & Analysis
2463	Office Manager & HR Admin
2464	IOS Software Engineer
2465	Network and Security Administrator - Damietta
2466	Linux Administrator - (Remote)
2467	Odoo ERP System Administrator
2468	Mobile Developer ( Android Watch )
2469	Telecom - Solution Engineer
2470	ERP Business Consultant - (HR Consultant)
2471	Pre-Sales Engineer - Network & Security
2472	CNC Programming Engineer
2473	Unpaid accounting scholarship
2474	Administration Officer
2475	Document Control Helper
2476	Senior MEAN Stack Developer
2477	iOS/Android Developer - Fulltime
2478	Head of Information Technology
2479	Oracle HCM cloud techno functional Consultant
2480	Telecom - Proposal Engineer
2481	Finance Intern
2482	Chief Financial Officer (CFO)
2483	Inventory Accountant (Stock Controller)
2484	Accountant - Fixed Assets
2485	Treasury officer
2486	Production Director
2487	Senior Account Manager-
2488	Custom clearance coordinator
2489	IT Director
2490	Software QC Tester - Remotely
2491	Back-end Developer/PHP/JAVA - Remotely work
2492	Supervisor Network Engineer - Giza
2493	Sales Engineer - Architect
2494	Senior Sales Manager - French Speaking
2495	Chief Commercial Officer (COO)
2496	Senior Pre Sales Executive - Cairo
2497	Sales Engineer - Furniture
2498	Financial Analyst
2499	Vat & Tax Manager
2500	Logistics Sales Specialist - International Trade
2501	Real Estate sales Agent (Banking sales)
2502	CFO Assistant
2503	Senior Material Planner - GBPOLO
2504	System Integration Analyst
2505	Product Specialist
2506	PHP Full Stack Developer / Laravel
2507	UI/UX Front-End - WordPress Developer
2508	Senior ERP SAP Support Specialist
2509	Senior Help Desk Specialist
2510	Purchasing Representative
2511	Technical Support Engineer (Outsourcing)
2512	Marketing Associate
2513	Associate Presales Engineer
2514	Sr. Quality Control
2515	محاسبة - Accountant
2516	Accounts Receivable Manager - Real Estate
2517	Stock exchange employee
2518	Process improvement Specialist
2519	Inventory Controller
2520	Senior Product Owner
2521	IT Manager/ Project Manager
2522	IT Help Desk Team Leader
2523	Network Security Admin - Cairo
2524	Treasury Analyst
2525	General Accountant "AR & AP"
2526	SAP FI-CA Consultant
2527	Farm Manager (Dairy Farm)
2528	Transportation Specialist
2529	Sourcing Engineer
2530	Open Source System Engineer
2531	Windows System Engineer
2532	Sensory & Product Guidance Specialist
2533	MEP Area Manager(Construction)
2534	Purchase Order Coordinator
2535	Assistant Food And Beverage Manager - Alexandria
2536	CCNA Instructor
2537	Quantity Surveyor Engineer
2538	Senior Full Stack Web Developer (Laravel) -...
2539	Program Manager - IT Multinational
2540	Full Stack Web Developer - for E-commerce websites
2541	Flutter Mobile apps Developer
2542	Full Stack Web Developer For E Commerce Websites
2543	Marketing & Graphic Designing - Intern - India
2544	Marketing Director (Regional) Multinational
2545	Oracle Financial Consultants / Oracle EBS
2546	Oracle Supply Chain Consultants / Oracle EBS
2547	IT & Odoo Specialist
2548	Warehouses Manager (Construction)
2549	Oracle Human Capital Management (HCM)...
2550	Sr. Human Resources
2551	Customer Service Agent - Fluent English
2552	Senior Leasing Key Account Executive
2553	Oracle Supply Chain Consultant / Oracle EBS
2554	Leasing Coordinator
2555	Projects Manager
2556	ETL Consultant
2557	Senior Sales Executive (Luxor)
2558	Technical Office Engineer
2559	Senior Telesales Executive
2560	HR officer
2561	Accounting Manager (مدير حسابات)
2562	Corporate Development Manager
2563	Senior Personnel Specialist
2564	Accounting Associate
2565	Accounting Officer
2566	Office Administrative Assistant
2567	Junior Web Developer
2568	Senior Sales Executive (10th Of Ramadan City)
2569	Head Waiter in K.S.A
2570	Senior Sales Executive (15th of May City)
2571	Group IT Manager
2572	Cost Accounting Manager
2573	Cost Control Manager
2574	Travel Consultant (Team Leader Trainee)
2575	Senior Automation Engineer
2576	Creative Content Creator
2577	Data collector
2578	IT Helpdesk Engineer
2579	System Administrator (Outsource)
2580	Business Continuity Supervisor
2581	Senior Business Operations Executive - (Fawry Pay)
2582	Publishing Manager Assistant
2583	Senior Front-End Developer (React JS)
2584	Senior Payroll Specialist
2585	Export Sales Manager
2586	Senior Python Django Backend Developer
2587	Junior Associate Business Research
2588	Supplier Operations Coordinator
2589	Export Specialist
2590	Agile Development Team Lead
2591	B2B Sales Representative
2592	Senior Xamarin Cross Platform Mobile Apps...
2593	Workflow Guru (Administrative Assistant)
2594	Mechanical Technical Office Engineer
2595	Site Mechanical Engineer
2596	Online Operations Specialist
2597	Administrative Assistant
2598	HR Specialist Recruitment
2599	Indoor Sales Representative
2600	Conservation & Adaptive Reuse Project Manager...
2601	Senior Operations Specialist
\.


--
-- Name: accounting_finance_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.accounting_finance_job_id_seq', 463, true);


--
-- Name: accounting_finance_job_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.accounting_finance_job_tags_id_seq', 3520, true);


--
-- Name: alexandria_jobs_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.alexandria_jobs_job_id_seq', 1, false);


--
-- Name: alexandria_jobs_job_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.alexandria_jobs_job_tags_id_seq', 1, false);


--
-- Name: company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.company_id_seq', 1782, true);


--
-- Name: it_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.it_job_id_seq', 125, true);


--
-- Name: it_job_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.it_job_tags_id_seq', 1168, true);


--
-- Name: it_software_development_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.it_software_development_job_id_seq', 661, true);


--
-- Name: it_software_development_job_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.it_software_development_job_tags_id_seq', 5859, true);


--
-- Name: it_software_development_jobs_in_egypt_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.it_software_development_jobs_in_egypt_job_id_seq', 1, false);


--
-- Name: it_software_development_jobs_in_egypt_job_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.it_software_development_jobs_in_egypt_job_tags_id_seq', 1, false);


--
-- Name: job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.job_id_seq', 1, false);


--
-- Name: job_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.job_tags_id_seq', 1, false);


--
-- Name: klf; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.klf', 1, false);


--
-- Name: python_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.python_job_id_seq', 1, false);


--
-- Name: python_job_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.python_job_tags_id_seq', 1, false);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.tags_id_seq', 4480, true);


--
-- Name: title_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.title_id_seq', 2601, true);


--
-- Name: type_of_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fscjjarkblijha
--

SELECT pg_catalog.setval('public.type_of_job_id_seq', 22, true);


--
-- Name: accounting_finance_job_tags accounting_finance_job_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.accounting_finance_job_tags
    ADD CONSTRAINT accounting_finance_job_tags_pkey PRIMARY KEY (job_tags_id);


--
-- Name: accounting_finance accounting_finance_pkey; Type: CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.accounting_finance
    ADD CONSTRAINT accounting_finance_pkey PRIMARY KEY (job_id);


--
-- Name: alexandria_jobs_job_tags alexandria_jobs_job_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.alexandria_jobs_job_tags
    ADD CONSTRAINT alexandria_jobs_job_tags_pkey PRIMARY KEY (job_tags_id);


--
-- Name: alexandria_jobs alexandria_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.alexandria_jobs
    ADD CONSTRAINT alexandria_jobs_pkey PRIMARY KEY (job_id);


--
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (company_id);


--
-- Name: it_software_development_job_tags it_software_development_job_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.it_software_development_job_tags
    ADD CONSTRAINT it_software_development_job_tags_pkey PRIMARY KEY (job_tags_id);


--
-- Name: it_software_development_jobs_in_egypt it_software_development_jobs_in_egypt_pkey; Type: CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.it_software_development_jobs_in_egypt
    ADD CONSTRAINT it_software_development_jobs_in_egypt_pkey PRIMARY KEY (job_id);


--
-- Name: it_software_development it_software_development_pkey; Type: CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.it_software_development
    ADD CONSTRAINT it_software_development_pkey PRIMARY KEY (job_id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (tag_id);


--
-- Name: title title_pkey; Type: CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.title
    ADD CONSTRAINT title_pkey PRIMARY KEY (title_id);


--
-- Name: tags unique_tag; Type: CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT unique_tag UNIQUE (tag);


--
-- Name: it_software_development fk_company; Type: FK CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.it_software_development
    ADD CONSTRAINT fk_company FOREIGN KEY (company_id) REFERENCES public.company(company_id);


--
-- Name: it_software_development_jobs_in_egypt fk_company; Type: FK CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.it_software_development_jobs_in_egypt
    ADD CONSTRAINT fk_company FOREIGN KEY (company_id) REFERENCES public.company(company_id);


--
-- Name: accounting_finance fk_company; Type: FK CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.accounting_finance
    ADD CONSTRAINT fk_company FOREIGN KEY (company_id) REFERENCES public.company(company_id);


--
-- Name: alexandria_jobs fk_company; Type: FK CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.alexandria_jobs
    ADD CONSTRAINT fk_company FOREIGN KEY (company_id) REFERENCES public.company(company_id);


--
-- Name: accounting_finance_job_tags fk_job; Type: FK CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.accounting_finance_job_tags
    ADD CONSTRAINT fk_job FOREIGN KEY (job_id) REFERENCES public.accounting_finance(job_id);


--
-- Name: it_software_development_job_tags fk_job; Type: FK CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.it_software_development_job_tags
    ADD CONSTRAINT fk_job FOREIGN KEY (job_id) REFERENCES public.it_software_development(job_id);


--
-- Name: alexandria_jobs_job_tags fk_job; Type: FK CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.alexandria_jobs_job_tags
    ADD CONSTRAINT fk_job FOREIGN KEY (job_id) REFERENCES public.alexandria_jobs(job_id);


--
-- Name: accounting_finance_job_tags fk_tag; Type: FK CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.accounting_finance_job_tags
    ADD CONSTRAINT fk_tag FOREIGN KEY (tag_id) REFERENCES public.tags(tag_id);


--
-- Name: it_software_development_job_tags fk_tag; Type: FK CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.it_software_development_job_tags
    ADD CONSTRAINT fk_tag FOREIGN KEY (tag_id) REFERENCES public.tags(tag_id);


--
-- Name: alexandria_jobs_job_tags fk_tag; Type: FK CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.alexandria_jobs_job_tags
    ADD CONSTRAINT fk_tag FOREIGN KEY (tag_id) REFERENCES public.tags(tag_id);


--
-- Name: it_software_development fk_title; Type: FK CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.it_software_development
    ADD CONSTRAINT fk_title FOREIGN KEY (title_id) REFERENCES public.title(title_id);


--
-- Name: it_software_development_jobs_in_egypt fk_title; Type: FK CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.it_software_development_jobs_in_egypt
    ADD CONSTRAINT fk_title FOREIGN KEY (title_id) REFERENCES public.title(title_id);


--
-- Name: accounting_finance fk_title; Type: FK CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.accounting_finance
    ADD CONSTRAINT fk_title FOREIGN KEY (title_id) REFERENCES public.title(title_id);


--
-- Name: alexandria_jobs fk_title; Type: FK CONSTRAINT; Schema: public; Owner: fscjjarkblijha
--

ALTER TABLE ONLY public.alexandria_jobs
    ADD CONSTRAINT fk_title FOREIGN KEY (title_id) REFERENCES public.title(title_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: fscjjarkblijha
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO fscjjarkblijha;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO fscjjarkblijha;


--
-- Name: TABLE accounting_finance; Type: ACL; Schema: public; Owner: fscjjarkblijha
--

REVOKE ALL ON TABLE public.accounting_finance FROM fscjjarkblijha;
GRANT SELECT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.accounting_finance TO fscjjarkblijha;


--
-- Name: TABLE accounting_finance_job_tags; Type: ACL; Schema: public; Owner: fscjjarkblijha
--

REVOKE ALL ON TABLE public.accounting_finance_job_tags FROM fscjjarkblijha;
GRANT SELECT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.accounting_finance_job_tags TO fscjjarkblijha;


--
-- Name: TABLE alexandria_jobs; Type: ACL; Schema: public; Owner: fscjjarkblijha
--

REVOKE ALL ON TABLE public.alexandria_jobs FROM fscjjarkblijha;
GRANT SELECT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.alexandria_jobs TO fscjjarkblijha;


--
-- Name: TABLE alexandria_jobs_job_tags; Type: ACL; Schema: public; Owner: fscjjarkblijha
--

REVOKE ALL ON TABLE public.alexandria_jobs_job_tags FROM fscjjarkblijha;
GRANT SELECT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.alexandria_jobs_job_tags TO fscjjarkblijha;


--
-- Name: TABLE company; Type: ACL; Schema: public; Owner: fscjjarkblijha
--

REVOKE ALL ON TABLE public.company FROM fscjjarkblijha;
GRANT SELECT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.company TO fscjjarkblijha;


--
-- Name: TABLE it_software_development; Type: ACL; Schema: public; Owner: fscjjarkblijha
--

REVOKE ALL ON TABLE public.it_software_development FROM fscjjarkblijha;
GRANT SELECT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.it_software_development TO fscjjarkblijha;


--
-- Name: TABLE it_software_development_job_tags; Type: ACL; Schema: public; Owner: fscjjarkblijha
--

REVOKE ALL ON TABLE public.it_software_development_job_tags FROM fscjjarkblijha;
GRANT SELECT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.it_software_development_job_tags TO fscjjarkblijha;


--
-- Name: TABLE it_software_development_jobs_in_egypt; Type: ACL; Schema: public; Owner: fscjjarkblijha
--

REVOKE ALL ON TABLE public.it_software_development_jobs_in_egypt FROM fscjjarkblijha;
GRANT SELECT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.it_software_development_jobs_in_egypt TO fscjjarkblijha;


--
-- Name: TABLE tags; Type: ACL; Schema: public; Owner: fscjjarkblijha
--

REVOKE ALL ON TABLE public.tags FROM fscjjarkblijha;
GRANT SELECT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.tags TO fscjjarkblijha;


--
-- Name: TABLE title; Type: ACL; Schema: public; Owner: fscjjarkblijha
--

REVOKE ALL ON TABLE public.title FROM fscjjarkblijha;
GRANT SELECT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.title TO fscjjarkblijha;


--
-- PostgreSQL database dump complete
--

