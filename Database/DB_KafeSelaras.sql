--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-11-30 22:53:52 WIB

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16774)
-- Name: jabatan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jabatan (
    id_jabatan integer NOT NULL,
    keterangan character varying(50),
    gajiperjam double precision
);


ALTER TABLE public.jabatan OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16773)
-- Name: jabatan_id_jabatan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jabatan_id_jabatan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jabatan_id_jabatan_seq OWNER TO postgres;

--
-- TOC entry 3637 (class 0 OID 0)
-- Dependencies: 215
-- Name: jabatan_id_jabatan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jabatan_id_jabatan_seq OWNED BY public.jabatan.id_jabatan;


--
-- TOC entry 218 (class 1259 OID 16781)
-- Name: kecamatan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kecamatan (
    id_kecamatan integer NOT NULL,
    nama character varying(50)
);


ALTER TABLE public.kecamatan OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16780)
-- Name: kecamatan_id_kecamatan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kecamatan_id_kecamatan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.kecamatan_id_kecamatan_seq OWNER TO postgres;

--
-- TOC entry 3638 (class 0 OID 0)
-- Dependencies: 217
-- Name: kecamatan_id_kecamatan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kecamatan_id_kecamatan_seq OWNED BY public.kecamatan.id_kecamatan;


--
-- TOC entry 223 (class 1259 OID 16828)
-- Name: kehadiran; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kehadiran (
    id_kehadiran integer NOT NULL,
    nohp character varying(20),
    waktudatang timestamp without time zone,
    waktupulang timestamp without time zone,
    statusgaji bit(1)
);


ALTER TABLE public.kehadiran OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16827)
-- Name: kehadiran_id_kehadiran_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kehadiran_id_kehadiran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.kehadiran_id_kehadiran_seq OWNER TO postgres;

--
-- TOC entry 3639 (class 0 OID 0)
-- Dependencies: 222
-- Name: kehadiran_id_kehadiran_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kehadiran_id_kehadiran_seq OWNED BY public.kehadiran.id_kehadiran;


--
-- TOC entry 220 (class 1259 OID 16788)
-- Name: kelurahan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kelurahan (
    id_kelurahan integer NOT NULL,
    nama character varying(50),
    id_kecamatan integer
);


ALTER TABLE public.kelurahan OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16787)
-- Name: kelurahan_id_kelurahan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kelurahan_id_kelurahan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.kelurahan_id_kelurahan_seq OWNER TO postgres;

--
-- TOC entry 3640 (class 0 OID 0)
-- Dependencies: 219
-- Name: kelurahan_id_kelurahan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kelurahan_id_kelurahan_seq OWNED BY public.kelurahan.id_kelurahan;


--
-- TOC entry 221 (class 1259 OID 16799)
-- Name: pegawai; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pegawai (
    nohp character varying(20) NOT NULL,
    nama_depan character varying(25),
    nama_belakang character varying(25),
    email character varying(50),
    alamat character varying(50),
    id_kelurahan integer,
    id_jabatan integer,
    statusaktif bit(1)
);


ALTER TABLE public.pegawai OWNER TO postgres;

--
-- TOC entry 3462 (class 2604 OID 16777)
-- Name: jabatan id_jabatan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jabatan ALTER COLUMN id_jabatan SET DEFAULT nextval('public.jabatan_id_jabatan_seq'::regclass);


--
-- TOC entry 3463 (class 2604 OID 16784)
-- Name: kecamatan id_kecamatan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kecamatan ALTER COLUMN id_kecamatan SET DEFAULT nextval('public.kecamatan_id_kecamatan_seq'::regclass);


--
-- TOC entry 3465 (class 2604 OID 16831)
-- Name: kehadiran id_kehadiran; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kehadiran ALTER COLUMN id_kehadiran SET DEFAULT nextval('public.kehadiran_id_kehadiran_seq'::regclass);


--
-- TOC entry 3464 (class 2604 OID 16791)
-- Name: kelurahan id_kelurahan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kelurahan ALTER COLUMN id_kelurahan SET DEFAULT nextval('public.kelurahan_id_kelurahan_seq'::regclass);


--
-- TOC entry 3624 (class 0 OID 16774)
-- Dependencies: 216
-- Data for Name: jabatan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jabatan (id_jabatan, keterangan, gajiperjam) FROM stdin;
1	Manajer	25000
2	Kepala koki	20000
3	Koki	12500
4	Pelayan	12000
5	Bartender	12500
6	Kasir	11000
7	Cleaning service	10000
\.


--
-- TOC entry 3626 (class 0 OID 16781)
-- Dependencies: 218
-- Data for Name: kecamatan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kecamatan (id_kecamatan, nama) FROM stdin;
1	Andir
2	Astana Anyar
3	Antapani
4	Arcamanik
5	Babakan Ciparay
6	Bandung Kidul
7	Bandung Kulon
8	Bandung Wetan
9	Batununggal
10	Bojongloa Kaler
11	Bojongloa Kidul
12	Buahbatu
13	Cibeunying Kaler
14	Cibeunying Kidul
15	Cibiru
16	Cicendo
17	Cidadap
18	Cinambo
19	Coblong
20	Gedebage
21	Kiaracondong
22	Lengkong
23	Mandala Jati
24	Panyileukan
25	Rancasari
26	Regol
27	Sukajadi
28	Sukasari
29	Sumur Bandung
30	Ujungberung
\.


--
-- TOC entry 3631 (class 0 OID 16828)
-- Dependencies: 223
-- Data for Name: kehadiran; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kehadiran (id_kehadiran, nohp, waktudatang, waktupulang, statusgaji) FROM stdin;
1	086182201001	2024-05-23 07:58:00	2024-05-23 18:05:00	1
2	086182201002	2024-05-23 08:43:34	2024-05-23 19:32:22	1
3	086182201003	2024-05-23 07:42:54	2024-05-23 18:32:29	1
4	086182201004	2024-05-23 07:32:43	2024-05-23 17:43:55	1
5	086182201005	2024-05-23 07:34:42	2024-05-23 18:45:00	1
6	086182201006	2024-05-23 08:59:11	2024-05-23 19:32:45	1
7	086182201007	2024-05-23 09:38:54	2024-05-23 18:19:29	1
8	086182201008	2024-05-23 07:47:43	2024-05-23 17:43:55	1
9	086182201009	2024-05-23 07:48:00	2024-05-23 18:38:00	1
10	086182201001	2024-05-24 07:58:00	2024-05-24 18:05:00	1
11	086182201002	2024-05-24 08:43:34	2024-05-24 19:32:22	1
12	086182201003	2024-05-24 07:42:54	2024-05-24 18:32:29	1
13	086182201004	2024-05-24 07:32:43	2024-05-24 17:43:55	1
14	086182201005	2024-05-24 07:34:42	2024-05-24 18:45:00	1
15	086182201006	2024-05-24 08:59:11	2024-05-24 19:32:45	1
16	086182201007	2024-05-24 09:38:54	2024-05-24 18:19:29	1
17	086182201008	2024-05-24 07:47:43	2024-05-24 17:43:55	1
18	086182201009	2024-05-24 07:48:00	2024-05-24 18:38:00	1
19	086182201001	2024-05-25 07:58:00	2024-05-25 18:05:00	1
20	086182201002	2024-05-25 08:43:34	2024-05-25 19:32:22	1
21	086182201003	2024-05-25 07:42:54	2024-05-25 18:32:29	1
22	086182201004	2024-05-25 07:32:43	2024-05-25 17:43:55	1
23	086182201005	2024-05-25 07:34:42	2024-05-25 18:45:00	1
24	086182201006	2024-05-25 08:59:11	2024-05-25 19:32:45	1
25	086182201007	2024-05-25 09:38:54	2024-05-25 18:19:29	1
26	086182201008	2024-05-25 07:47:43	2024-05-25 17:43:55	1
27	086182201009	2024-05-25 07:48:00	2024-05-25 18:38:00	1
28	086182201001	2024-05-26 07:58:00	2024-05-26 18:05:00	1
29	086182201002	2024-05-26 08:43:34	2024-05-26 19:32:22	1
30	086182201003	2024-05-26 07:42:54	2024-05-26 18:32:29	1
31	086182201004	2024-05-26 07:32:43	2024-05-26 17:43:55	1
32	086182201005	2024-05-26 07:34:42	2024-05-26 18:45:00	1
33	086182201006	2024-05-26 08:59:11	2024-05-26 19:32:45	1
34	086182201007	2024-05-26 09:38:54	2024-05-26 18:19:29	1
35	086182201008	2024-05-26 07:47:43	2024-05-26 17:43:55	1
36	086182201009	2024-05-26 07:48:00	2024-05-26 18:38:00	1
37	086182201001	2024-05-27 07:58:00	2024-05-27 18:05:00	1
38	086182201002	2024-05-27 08:43:34	2024-05-27 19:32:22	1
39	086182201003	2024-05-27 07:42:54	2024-05-27 18:32:29	1
40	086182201004	2024-05-27 07:32:43	2024-05-27 17:43:55	1
41	086182201005	2024-05-27 07:34:42	2024-05-27 18:45:00	1
42	086182201006	2024-05-27 08:59:11	2024-05-27 19:32:45	1
43	086182201007	2024-05-27 09:38:54	2024-05-27 18:19:29	1
44	086182201008	2024-05-27 07:47:43	2024-05-27 17:43:55	1
45	086182201009	2024-05-27 07:48:00	2024-05-27 18:38:00	1
46	086182201001	2024-05-28 07:58:00	2024-05-28 18:05:00	1
47	086182201002	2024-05-28 08:43:34	2024-05-28 19:32:22	1
48	086182201003	2024-05-28 07:42:54	2024-05-28 18:32:29	1
49	086182201004	2024-05-28 07:32:43	2024-05-28 17:43:55	1
50	086182201005	2024-05-28 07:34:42	2024-05-28 18:45:00	1
51	086182201006	2024-05-28 08:59:11	2024-05-28 19:32:45	1
52	086182201007	2024-05-28 09:38:54	2024-05-28 18:19:29	1
53	086182201008	2024-05-28 07:47:43	2024-05-28 17:43:55	1
54	086182201009	2024-05-28 07:48:00	2024-05-28 18:38:00	1
55	086182201001	2024-05-29 07:58:00	2024-05-29 18:05:00	1
56	086182201002	2024-05-29 08:43:34	2024-05-29 19:32:22	1
57	086182201003	2024-05-29 07:42:54	2024-05-29 18:32:29	1
58	086182201004	2024-05-29 07:32:43	2024-05-29 17:43:55	1
59	086182201005	2024-05-29 07:34:42	2024-05-29 18:45:00	1
60	086182201006	2024-05-29 08:59:11	2024-05-29 19:32:45	1
61	086182201007	2024-05-29 09:38:54	2024-05-29 18:19:29	1
62	086182201008	2024-05-29 07:47:43	2024-05-29 17:43:55	1
63	086182201009	2024-05-29 07:48:00	2024-05-29 18:38:00	1
64	086182201001	2024-05-30 07:58:00	2024-05-30 18:05:00	0
65	086182201002	2024-05-30 08:43:34	2024-05-30 19:32:22	0
66	086182201003	2024-05-30 07:42:54	2024-05-30 18:32:29	0
67	086182201004	2024-05-30 07:32:43	2024-05-30 17:43:55	0
68	086182201005	2024-05-30 07:34:42	2024-05-30 18:45:00	0
69	086182201006	2024-05-30 08:59:11	2024-05-30 19:32:45	0
70	086182201007	2024-05-30 09:38:54	2024-05-30 18:19:29	0
71	086182201008	2024-05-30 07:47:43	2024-05-30 17:43:55	0
72	086182201009	2024-05-30 07:48:00	2024-05-30 18:38:00	0
73	086182201001	2024-05-31 07:58:00	2024-05-31 18:05:00	0
74	086182201002	2024-05-31 08:43:34	2024-05-31 19:32:22	0
75	086182201003	2024-05-31 07:42:54	2024-05-31 18:32:29	0
76	086182201004	2024-05-31 07:32:43	2024-05-31 17:43:55	0
77	086182201005	2024-05-31 07:34:42	2024-05-31 18:45:00	0
78	086182201006	2024-05-31 08:59:11	2024-05-31 19:32:45	0
79	086182201007	2024-05-31 09:38:54	2024-05-31 18:19:29	0
80	086182201008	2024-05-31 07:47:43	2024-05-31 17:43:55	0
81	086182201009	2024-05-31 07:48:00	2024-05-31 18:38:00	0
82	086182201001	2024-06-01 07:58:00	2024-06-01 18:05:00	0
83	086182201002	2024-06-01 08:43:34	2024-06-01 19:32:22	0
84	086182201003	2024-06-01 07:42:54	2024-06-01 18:32:29	0
85	086182201004	2024-06-01 07:32:43	2024-06-01 17:43:55	0
86	086182201005	2024-06-01 07:34:42	2024-06-01 18:45:00	0
87	086182201006	2024-06-01 08:59:11	2024-06-01 19:32:45	0
88	086182201007	2024-06-01 09:38:54	2024-06-01 18:19:29	0
89	086182201008	2024-06-01 07:47:43	2024-06-01 17:43:55	0
90	086182201009	2024-06-01 07:48:00	2024-06-01 18:38:00	0
91	086182201001	2024-06-02 07:58:00	2024-06-02 18:05:00	0
92	086182201002	2024-06-02 08:43:34	2024-06-02 19:32:22	0
93	086182201003	2024-06-02 07:42:54	2024-06-02 18:32:29	0
94	086182201004	2024-06-02 07:32:43	2024-06-02 17:43:55	0
95	086182201005	2024-06-02 07:34:42	2024-06-02 18:45:00	0
96	086182201006	2024-06-02 08:59:11	2024-06-02 19:32:45	0
97	086182201007	2024-06-02 09:38:54	2024-06-02 18:19:29	0
98	086182201008	2024-06-02 07:47:43	2024-06-02 17:43:55	0
99	086182201009	2024-06-02 07:48:00	2024-06-02 18:38:00	0
100	086182201001	2024-06-03 07:58:00	2024-06-03 18:05:00	0
101	086182201002	2024-06-03 08:43:34	2024-06-03 19:32:22	0
102	086182201003	2024-06-03 07:42:54	2024-06-03 18:32:29	0
103	086182201004	2024-06-03 07:32:43	2024-06-03 17:43:55	0
104	086182201005	2024-06-03 07:34:42	2024-06-03 18:45:00	0
105	086182201006	2024-06-03 08:59:11	2024-06-03 19:32:45	0
106	086182201007	2024-06-03 09:38:54	2024-06-03 18:19:29	0
107	086182201008	2024-06-03 07:47:43	2024-06-03 17:43:55	0
108	086182201009	2024-06-03 07:48:00	2024-06-03 18:38:00	0
109	086182201001	2024-06-04 07:58:00	2024-06-04 18:05:00	0
110	086182201002	2024-06-04 08:43:34	2024-06-04 19:32:22	0
111	086182201003	2024-06-04 07:42:54	2024-06-04 18:32:29	0
112	086182201004	2024-06-04 07:32:43	2024-06-04 17:43:55	0
113	086182201005	2024-06-04 07:34:42	2024-06-04 18:45:00	0
114	086182201006	2024-06-04 08:59:11	2024-06-04 19:32:45	0
115	086182201007	2024-06-04 09:38:54	2024-06-04 18:19:29	0
116	086182201008	2024-06-04 07:47:43	2024-06-04 17:43:55	0
117	086182201009	2024-06-04 07:48:00	2024-06-04 18:38:00	0
118	086182201001	2024-06-05 07:58:00	2024-06-05 18:05:00	0
119	086182201002	2024-06-05 08:43:34	2024-06-05 19:32:22	0
120	086182201003	2024-06-05 07:42:54	2024-06-05 18:32:29	0
121	086182201004	2024-06-05 07:32:43	2024-06-05 17:43:55	0
122	086182201005	2024-06-05 07:34:42	2024-06-05 18:45:00	0
123	086182201006	2024-06-05 08:59:11	2024-06-05 19:32:45	0
124	086182201007	2024-06-05 09:38:54	2024-06-05 18:19:29	0
125	086182201008	2024-06-05 07:47:43	2024-06-05 17:43:55	0
126	086182201009	2024-06-05 07:48:00	2024-06-05 18:38:00	0
127	086182201001	2024-06-06 07:58:00	2024-06-06 18:05:00	0
128	086182201002	2024-06-06 08:43:34	2024-06-06 19:32:22	0
129	086182201003	2024-06-06 07:42:54	2024-06-06 18:32:29	0
130	086182201004	2024-06-06 07:32:43	2024-06-06 17:43:55	0
131	086182201005	2024-06-06 07:34:42	2024-06-06 18:45:00	0
132	086182201006	2024-06-06 08:59:11	2024-06-06 19:32:45	0
133	086182201007	2024-06-06 09:38:54	2024-06-06 18:19:29	0
134	086182201008	2024-06-06 07:47:43	2024-06-06 17:43:55	0
\.


--
-- TOC entry 3628 (class 0 OID 16788)
-- Dependencies: 220
-- Data for Name: kelurahan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kelurahan (id_kelurahan, nama, id_kecamatan) FROM stdin;
1	Campaka	1
2	Ciroyom	1
3	Dunguscariang	1
4	Garuda	1
5	Kebonjeruk	1
6	Maleber	1
7	Cibadak	2
8	Karanganyar	2
9	Karasak	2
10	Nyengseret	2
11	Panjunan	2
12	Pelindunghewan	2
13	Antapani Kidul	3
14	Antapani Kulon	3
15	Antapani Tengah	3
16	Antapani Wetan	3
17	Cisarenten Bina Harapan	4
18	Cisarenten Endah	4
19	Cisarenten Kulon	4
20	Sukamiskin	4
21	Babakan	5
22	Babakanciparay	5
23	Cirangrang	5
24	Margahayu Utara	5
25	Margasuka	5
26	Sukahaji	5
27	Batununggal	6
28	Kujangsari	6
29	Mengger	6
30	Wates	6
31	Caringin	7
32	Cibuntu	7
33	Cigondewah Kaler	7
34	Cigondewah Kidul	7
35	Cigondewah Rahayu	7
36	Cijerah	7
37	Gempolsari	7
38	Warungmuncang	7
39	Cihapit	8
40	Citarum	8
41	Tamansari	8
42	Binong	9
43	Cibangkong	9
44	Gumuruh	9
45	Kacapiring	9
46	Kebongedang	9
47	Kebonwaru	9
48	Maleer	9
49	Samoja	9
50	Babakan Asih	10
51	Babakan Tarogong	10
52	Jamika	10
53	Kopo	10
54	Suka Asih	10
55	Cibaduyut	11
56	Cibaduyut Kidul	11
57	Cibaduyut Wetan	11
58	Kebon Lega	11
59	Mekarwangi	11
60	Situsaeur	11
61	Cijawura	12
62	Jatisari	12
63	Margasari	12
64	Sekejati	12
65	Cigadung	13
66	Cihaurgeulis	13
67	Neglasari	13
68	Sukaluyu	13
69	Cicadas	14
70	Cikutra	14
71	Padasuka	14
72	Pasirlayung	14
73	Sukamaju	14
74	Sukapada	14
75	Cipadung	15
76	Cisurupan	15
77	Palasari	15
78	Pasirbiru	15
79	Arjuna	16
80	Husen Sastranegara	16
81	Pajajaran	16
82	Pamoyanan	16
83	Pasirkaliki	16
84	Sukaraja	16
85	Ciumbuleuit	17
86	Hegarmanah	17
87	Ledeng	17
88	Babakan Penghulu	18
89	Cisarenten Wetan	18
90	Pakemitan	18
91	Sukamulya	18
92	Cipaganti	19
93	Dago	19
94	Lebakgede	19
95	Lebaksiliwangi	19
96	Sadangserang	19
97	Sekeloa	19
98	Cimincrang	20
99	Cisarenten Kidul	20
100	Rancabolang	20
101	Rancanumpang	20
102	Babakansari	21
103	Babakansurabaya	21
104	Cicaheum	21
105	Kebonkangkung	21
106	Kebunjayanti	21
107	Sukapura	21
108	Burangrang	22
109	Cijagra	22
110	Cikawao	22
111	Lingkar Selatan	22
112	Malabar	22
113	Paledang	22
114	Turangga	22
115	Jatihandap	23
116	Karangpamulang	23
117	Pasir Impun	23
118	Sindangjaya	23
119	Cipadung Kidul	24
120	Cipadung Kulon	24
121	Cipadung Wetan	24
122	Mekarmulya	24
123	Cipamokolan	25
124	Darwati	25
125	Manjahlega	25
126	Mekar Jaya	25
127	Ancol	26
128	Balonggede	26
129	Ciateul	26
130	Cigereleng	26
131	Ciseureuh	26
132	Pasirluyu	26
133	Pungkur	26
134	Cipedes	27
135	Pasteur	27
136	Sukabungah	27
137	Sukagalih	27
138	Sukawarna	27
139	Gegerkalong	28
140	Isola	28
141	Sarijadi	28
142	Sukarasa	28
143	Babakanciamis	29
144	Braga	29
145	Kebonpisang	29
146	Merdeka	29
147	Cigending	30
148	Pasanggrahan	30
149	Pasirendah	30
150	Pasirjati	30
151	Pasirwangi	30
\.


--
-- TOC entry 3629 (class 0 OID 16799)
-- Dependencies: 221
-- Data for Name: pegawai; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pegawai (nohp, nama_depan, nama_belakang, email, alamat, id_kelurahan, id_jabatan, statusaktif) FROM stdin;
086182201000	Andi	Kurniawan	andiKur@gmail.com	Jl. Muhammad Toha No. 5	133	1	1
086182201001	Andi	Jamal	andiJam@gmail.com	Jl. Soekarno Hatta No. 7A	131	2	1
086182201002	Caca	Marica	caca@gmail.com	Jl. Ciumbuleuit No. 115	85	3	1
086182201003	Dodo	Wombat	dodo@gmail.com	Jl. Pasundan No. 43	128	3	1
086182201004	Elsa	Anna	elsa@gmail.com	Jl. Husein Sastranegara No. 22	80	4	1
086182201005	Fizi	Ehsan	fizi@gmail.com	Jl. Kebon Jati No. 71	5	4	1
086182201006	Gani	Fida	gani@gmail.com	Jl. Veteran No. 22	145	4	1
086182201007	Hami	Kenzor	hami@gmail.com	Jl. Pasir Koja No. 98	11	5	1
086182201008	Ipin	Upin	ipin@gmail.com	Jl. Muhammad Toha No. 31	133	6	1
086182201009	Jaka	Tingkir	jaka@gmail.com	Jl. Ciumbuleuit No. 51	85	7	1
\.


--
-- TOC entry 3641 (class 0 OID 0)
-- Dependencies: 215
-- Name: jabatan_id_jabatan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jabatan_id_jabatan_seq', 7, true);


--
-- TOC entry 3642 (class 0 OID 0)
-- Dependencies: 217
-- Name: kecamatan_id_kecamatan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kecamatan_id_kecamatan_seq', 30, true);


--
-- TOC entry 3643 (class 0 OID 0)
-- Dependencies: 222
-- Name: kehadiran_id_kehadiran_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kehadiran_id_kehadiran_seq', 134, true);


--
-- TOC entry 3644 (class 0 OID 0)
-- Dependencies: 219
-- Name: kelurahan_id_kelurahan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kelurahan_id_kelurahan_seq', 151, true);


--
-- TOC entry 3467 (class 2606 OID 16779)
-- Name: jabatan jabatan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jabatan
    ADD CONSTRAINT jabatan_pkey PRIMARY KEY (id_jabatan);


--
-- TOC entry 3469 (class 2606 OID 16786)
-- Name: kecamatan kecamatan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kecamatan
    ADD CONSTRAINT kecamatan_pkey PRIMARY KEY (id_kecamatan);


--
-- TOC entry 3475 (class 2606 OID 16833)
-- Name: kehadiran kehadiran_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kehadiran
    ADD CONSTRAINT kehadiran_pkey PRIMARY KEY (id_kehadiran);


--
-- TOC entry 3471 (class 2606 OID 16793)
-- Name: kelurahan kelurahan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kelurahan
    ADD CONSTRAINT kelurahan_pkey PRIMARY KEY (id_kelurahan);


--
-- TOC entry 3473 (class 2606 OID 16803)
-- Name: pegawai pegawai_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pegawai
    ADD CONSTRAINT pegawai_pkey PRIMARY KEY (nohp);


--
-- TOC entry 3479 (class 2606 OID 16834)
-- Name: kehadiran fk_kehadiran_pegawai; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kehadiran
    ADD CONSTRAINT fk_kehadiran_pegawai FOREIGN KEY (nohp) REFERENCES public.pegawai(nohp);


--
-- TOC entry 3476 (class 2606 OID 16794)
-- Name: kelurahan fk_kelurahan_kecamatan; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kelurahan
    ADD CONSTRAINT fk_kelurahan_kecamatan FOREIGN KEY (id_kecamatan) REFERENCES public.kecamatan(id_kecamatan);


--
-- TOC entry 3477 (class 2606 OID 16809)
-- Name: pegawai fk_pegawai_jabatan; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pegawai
    ADD CONSTRAINT fk_pegawai_jabatan FOREIGN KEY (id_jabatan) REFERENCES public.jabatan(id_jabatan);


--
-- TOC entry 3478 (class 2606 OID 16804)
-- Name: pegawai fk_pegawai_kelurahan; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pegawai
    ADD CONSTRAINT fk_pegawai_kelurahan FOREIGN KEY (id_kelurahan) REFERENCES public.kelurahan(id_kelurahan);


-- Completed on 2024-11-30 22:53:52 WIB

--
-- PostgreSQL database dump complete
--

