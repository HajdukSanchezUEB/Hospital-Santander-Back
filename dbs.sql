--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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
-- Name: agenda; Type: TABLE; Schema: public; Owner: jorgedevops
--

CREATE TABLE public.agenda (
    cod_agenda integer NOT NULL,
    fecha_agenda date
);


ALTER TABLE public.agenda OWNER TO jorgedevops;

--
-- Name: agenda_medico; Type: TABLE; Schema: public; Owner: jorgedevops
--

CREATE TABLE public.agenda_medico (
    cod_medico integer NOT NULL,
    cod_agenda integer NOT NULL
);


ALTER TABLE public.agenda_medico OWNER TO jorgedevops;

--
-- Name: consultorio; Type: TABLE; Schema: public; Owner: jorgedevops
--

CREATE TABLE public.consultorio (
    cod_consultorio integer NOT NULL,
    nom_consultorio character varying(100)
);


ALTER TABLE public.consultorio OWNER TO jorgedevops;

--
-- Name: detalle_agenda; Type: TABLE; Schema: public; Owner: jorgedevops
--

CREATE TABLE public.detalle_agenda (
    cod_horario integer NOT NULL,
    cod_agenda integer NOT NULL
);


ALTER TABLE public.detalle_agenda OWNER TO jorgedevops;

--
-- Name: detalle_especialidad; Type: TABLE; Schema: public; Owner: jorgedevops
--

CREATE TABLE public.detalle_especialidad (
    cod_especialidad integer NOT NULL,
    cod_medico integer NOT NULL
);


ALTER TABLE public.detalle_especialidad OWNER TO jorgedevops;

--
-- Name: especialidad; Type: TABLE; Schema: public; Owner: jorgedevops
--

CREATE TABLE public.especialidad (
    cod_especialidad integer NOT NULL,
    nom_especialidad character varying(45)
);


ALTER TABLE public.especialidad OWNER TO jorgedevops;

--
-- Name: horario; Type: TABLE; Schema: public; Owner: jorgedevops
--

CREATE TABLE public.horario (
    cod_horario integer NOT NULL,
    hora_inicio timestamp without time zone,
    hora_fin timestamp without time zone
);


ALTER TABLE public.horario OWNER TO jorgedevops;

--
-- Name: medico; Type: TABLE; Schema: public; Owner: jorgedevops
--

CREATE TABLE public.medico (
    cod_usuario integer NOT NULL,
    cod_consultorio integer NOT NULL
);


ALTER TABLE public.medico OWNER TO jorgedevops;

--
-- Name: usuario; Type: TABLE; Schema: public; Owner: jorgedevops
--

CREATE TABLE public.usuario (
    cod_usuario integer NOT NULL,
    nom_usuario character varying(45),
    apellido_usuario character varying(45),
    alias_usuario character varying(45),
    clave_usuario character varying(45)
);


ALTER TABLE public.usuario OWNER TO jorgedevops;

--
-- Data for Name: agenda; Type: TABLE DATA; Schema: public; Owner: jorgedevops
--

COPY public.agenda (cod_agenda, fecha_agenda) FROM stdin;
1	2022-01-01
2	2022-02-01
3	2022-03-01
4	2022-04-01
5	2022-05-01
6	2022-06-01
7	2022-07-01
8	2022-08-01
9	2022-09-01
10	2022-10-01
11	2022-11-01
12	2022-12-01
\.


--
-- Data for Name: agenda_medico; Type: TABLE DATA; Schema: public; Owner: jorgedevops
--

COPY public.agenda_medico (cod_medico, cod_agenda) FROM stdin;
2	3
3	2
4	1
5	5
6	8
7	5
8	2
9	1
10	3
\.


--
-- Data for Name: consultorio; Type: TABLE DATA; Schema: public; Owner: jorgedevops
--

COPY public.consultorio (cod_consultorio, nom_consultorio) FROM stdin;
1	CONSULTORIO MEDICINA INTERNA  1-A 
2	CONSULTORIO ENDOCRINOLOGÍA  1-A 
3	CONSULTORIO UROLOGÍA  1-A 
4	CONSULTORIO REUMATOLOGÍA  1-A 
5	CONSULTORIO NEUROLOGÍA  1-A 
6	CONSULTORIO ANESTESIA (CITA PREANESTÉSICA)  1-A 
7	CONSULTORIO HEMATOLOGÍA  1-A 
8	CONSULTORIO HEPATOLOGÍA  1-A 
9	CONSULTORIO ONCOLOGÍA ADULTOS  1-A 
10	CONSULTORIO CIRUGÍA DE MAMA Y TEJIDOS BLANDOS  1-A 
11	CONSULTORIO GINECOLOGÍA ONCOLÓGICA  1-A 
12	CONSULTORIO DOLOR Y CUIDADOS PALIATIVOS  1-A 
13	CONSULTORIO UROLOGÍA ONCOLÓGICA  1-A 
14	CONSULTORIO PEDIATRÍA  1-A 
15	CONSULTORIO NEFROLOGÍA PEDIÁTRICA  1-A 
16	CONSULTORIO NEUMOLOGÍA PEDIÁTRICA  1-A 
17	CONSULTORIO REUMATOLOGÍA PEDIÁTRICA  1-A 
18	CONSULTORIO GASTROENTEROLOGÍA PEDIÁTRICA  1-A 
19	CONSULTORIO ANESTESIA (CITA PREANESTÉSICA)  1-A 
20	CONSULTORIO URODINAMIA 1-A 
21	CONSULTORIO UROFLUJOMETRÍA 1-A 
22	CONSULTORIO RETIRO Y COLOCACIÓN DE SONDA VESICAL 1-A 
23	CONSULTORIO RETIRO DE CATÉTER DOBLE J 1-A 
24	CONSULTORIO CRIOTERAPIA GENITAL 1-A 
25	CONSULTORIO MEDICINA INTERNA  2-B 
26	CONSULTORIO ENDOCRINOLOGÍA  2-B 
27	CONSULTORIO UROLOGÍA  2-B 
28	CONSULTORIO REUMATOLOGÍA  2-B 
29	CONSULTORIO NEUROLOGÍA  2-B 
30	CONSULTORIO ANESTESIA (CITA PREANESTÉSICA)  2-B 
31	CONSULTORIO HEMATOLOGÍA  2-B 
32	CONSULTORIO HEPATOLOGÍA  2-B 
33	CONSULTORIO ONCOLOGÍA ADULTOS  2-B 
34	CONSULTORIO CIRUGÍA DE MAMA Y TEJIDOS BLANDOS  2-B 
35	CONSULTORIO GINECOLOGÍA ONCOLÓGICA  2-B 
36	CONSULTORIO DOLOR Y CUIDADOS PALIATIVOS  2-B 
37	CONSULTORIO UROLOGÍA ONCOLÓGICA  2-B 
38	CONSULTORIO PEDIATRÍA  2-B 
39	CONSULTORIO NEFROLOGÍA PEDIÁTRICA  2-B 
40	CONSULTORIO NEUMOLOGÍA PEDIÁTRICA  2-B 
41	CONSULTORIO REUMATOLOGÍA PEDIÁTRICA  2-B 
42	CONSULTORIO GASTROENTEROLOGÍA PEDIÁTRICA  2-B 
43	CONSULTORIO ANESTESIA (CITA PREANESTÉSICA)  2-B 
44	CONSULTORIO URODINAMIA 2-B 
45	CONSULTORIO UROFLUJOMETRÍA 2-B 
46	CONSULTORIO RETIRO Y COLOCACIÓN DE SONDA VESICAL 2-B 
47	CONSULTORIO RETIRO DE CATÉTER DOBLE J 2-B 
48	CONSULTORIO CRIOTERAPIA GENITAL 2-B 
49	CONSULTORIO MEDICINA INTERNA  3-C 
50	CONSULTORIO ENDOCRINOLOGÍA  3-C 
51	CONSULTORIO UROLOGÍA  3-C 
52	CONSULTORIO REUMATOLOGÍA  3-C 
53	CONSULTORIO NEUROLOGÍA  3-C 
54	CONSULTORIO ANESTESIA (CITA PREANESTÉSICA)  3-C 
55	CONSULTORIO HEMATOLOGÍA  3-C 
56	CONSULTORIO HEPATOLOGÍA  3-C 
57	CONSULTORIO ONCOLOGÍA ADULTOS  3-C 
58	CONSULTORIO CIRUGÍA DE MAMA Y TEJIDOS BLANDOS  3-C 
59	CONSULTORIO GINECOLOGÍA ONCOLÓGICA  3-C 
60	CONSULTORIO DOLOR Y CUIDADOS PALIATIVOS  3-C 
61	CONSULTORIO UROLOGÍA ONCOLÓGICA  3-C 
62	CONSULTORIO PEDIATRÍA  3-C 
63	CONSULTORIO NEFROLOGÍA PEDIÁTRICA  3-C 
64	CONSULTORIO NEUMOLOGÍA PEDIÁTRICA  3-C 
65	CONSULTORIO REUMATOLOGÍA PEDIÁTRICA  3-C 
66	CONSULTORIO GASTROENTEROLOGÍA PEDIÁTRICA  3-C 
67	CONSULTORIO ANESTESIA (CITA PREANESTÉSICA)  3-C 
68	CONSULTORIO URODINAMIA 3-C 
69	CONSULTORIO UROFLUJOMETRÍA 3-C 
70	CONSULTORIO RETIRO Y COLOCACIÓN DE SONDA VESICAL 3-C 
71	CONSULTORIO RETIRO DE CATÉTER DOBLE J 3-C 
72	CONSULTORIO CRIOTERAPIA GENITAL 3-C 
73	CONSULTORIO MEDICINA INTERNA  4-D 
74	CONSULTORIO ENDOCRINOLOGÍA  4-D 
75	CONSULTORIO UROLOGÍA  4-D 
76	CONSULTORIO REUMATOLOGÍA  4-D 
77	CONSULTORIO NEUROLOGÍA  4-D 
78	CONSULTORIO ANESTESIA (CITA PREANESTÉSICA)  4-D 
79	CONSULTORIO HEMATOLOGÍA  4-D 
80	CONSULTORIO HEPATOLOGÍA  4-D 
81	CONSULTORIO ONCOLOGÍA ADULTOS  4-D 
82	CONSULTORIO CIRUGÍA DE MAMA Y TEJIDOS BLANDOS  4-D 
83	CONSULTORIO GINECOLOGÍA ONCOLÓGICA  4-D 
84	CONSULTORIO DOLOR Y CUIDADOS PALIATIVOS  4-D 
85	CONSULTORIO UROLOGÍA ONCOLÓGICA  4-D 
86	CONSULTORIO PEDIATRÍA  4-D 
87	CONSULTORIO NEFROLOGÍA PEDIÁTRICA  4-D 
88	CONSULTORIO NEUMOLOGÍA PEDIÁTRICA  4-D 
89	CONSULTORIO REUMATOLOGÍA PEDIÁTRICA  4-D 
90	CONSULTORIO GASTROENTEROLOGÍA PEDIÁTRICA  4-D 
91	CONSULTORIO ANESTESIA (CITA PREANESTÉSICA)  4-D 
92	CONSULTORIO URODINAMIA 4-D 
93	CONSULTORIO UROFLUJOMETRÍA 4-D 
94	CONSULTORIO RETIRO Y COLOCACIÓN DE SONDA VESICAL 4-D 
95	CONSULTORIO RETIRO DE CATÉTER DOBLE J 4-D 
96	CONSULTORIO CRIOTERAPIA GENITAL 4-D 
97	CONSULTORIO MEDICINA INTERNA  5-E 
98	CONSULTORIO ENDOCRINOLOGÍA  5-E 
99	CONSULTORIO UROLOGÍA  5-E 
100	CONSULTORIO REUMATOLOGÍA  5-E 
101	CONSULTORIO NEUROLOGÍA  5-E 
102	CONSULTORIO ANESTESIA (CITA PREANESTÉSICA)  5-E 
103	CONSULTORIO HEMATOLOGÍA  5-E 
104	CONSULTORIO HEPATOLOGÍA  5-E 
105	CONSULTORIO ONCOLOGÍA ADULTOS  5-E 
106	CONSULTORIO CIRUGÍA DE MAMA Y TEJIDOS BLANDOS  5-E 
107	CONSULTORIO GINECOLOGÍA ONCOLÓGICA  5-E 
108	CONSULTORIO DOLOR Y CUIDADOS PALIATIVOS  5-E 
109	CONSULTORIO UROLOGÍA ONCOLÓGICA  5-E 
110	CONSULTORIO PEDIATRÍA  5-E 
111	CONSULTORIO NEFROLOGÍA PEDIÁTRICA  5-E 
112	CONSULTORIO NEUMOLOGÍA PEDIÁTRICA  5-E 
113	CONSULTORIO REUMATOLOGÍA PEDIÁTRICA  5-E 
114	CONSULTORIO GASTROENTEROLOGÍA PEDIÁTRICA  5-E 
115	CONSULTORIO ANESTESIA (CITA PREANESTÉSICA)  5-E 
116	CONSULTORIO URODINAMIA 5-E 
117	CONSULTORIO UROFLUJOMETRÍA 5-E 
118	CONSULTORIO RETIRO Y COLOCACIÓN DE SONDA VESICAL 5-E 
119	CONSULTORIO RETIRO DE CATÉTER DOBLE J 5-E 
120	CONSULTORIO CRIOTERAPIA GENITAL 5-E 
121	CONSULTORIO MEDICINA INTERNA  6-F 
122	CONSULTORIO ENDOCRINOLOGÍA  6-F 
123	CONSULTORIO UROLOGÍA  6-F 
124	CONSULTORIO REUMATOLOGÍA  6-F 
125	CONSULTORIO NEUROLOGÍA  6-F 
126	CONSULTORIO ANESTESIA (CITA PREANESTÉSICA)  6-F 
127	CONSULTORIO HEMATOLOGÍA  6-F 
128	CONSULTORIO HEPATOLOGÍA  6-F 
129	CONSULTORIO ONCOLOGÍA ADULTOS  6-F 
130	CONSULTORIO CIRUGÍA DE MAMA Y TEJIDOS BLANDOS  6-F 
131	CONSULTORIO GINECOLOGÍA ONCOLÓGICA  6-F 
132	CONSULTORIO DOLOR Y CUIDADOS PALIATIVOS  6-F 
133	CONSULTORIO UROLOGÍA ONCOLÓGICA  6-F 
134	CONSULTORIO PEDIATRÍA  6-F 
135	CONSULTORIO NEFROLOGÍA PEDIÁTRICA  6-F 
136	CONSULTORIO NEUMOLOGÍA PEDIÁTRICA  6-F 
137	CONSULTORIO REUMATOLOGÍA PEDIÁTRICA  6-F 
138	CONSULTORIO GASTROENTEROLOGÍA PEDIÁTRICA  6-F 
139	CONSULTORIO ANESTESIA (CITA PREANESTÉSICA)  6-F 
140	CONSULTORIO URODINAMIA 6-F 
141	CONSULTORIO UROFLUJOMETRÍA 6-F 
142	CONSULTORIO RETIRO Y COLOCACIÓN DE SONDA VESICAL 6-F 
143	CONSULTORIO RETIRO DE CATÉTER DOBLE J 6-F 
144	CONSULTORIO CRIOTERAPIA GENITAL 6-F 
\.


--
-- Data for Name: detalle_agenda; Type: TABLE DATA; Schema: public; Owner: jorgedevops
--

COPY public.detalle_agenda (cod_horario, cod_agenda) FROM stdin;
3	1
1	2
2	3
3	4
2	5
2	6
1	7
3	8
3	9
1	10
\.


--
-- Data for Name: detalle_especialidad; Type: TABLE DATA; Schema: public; Owner: jorgedevops
--

COPY public.detalle_especialidad (cod_especialidad, cod_medico) FROM stdin;
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
11	11
12	12
13	13
14	14
15	15
16	16
17	17
18	18
19	19
20	20
21	21
22	22
23	23
24	24
25	25
26	26
27	27
28	28
29	29
30	30
31	31
32	32
33	33
34	34
35	35
2	37
3	38
4	39
5	40
6	41
7	42
8	43
9	44
11	46
12	47
13	48
14	49
15	50
16	51
17	52
18	53
19	54
20	55
21	56
22	57
23	58
24	59
25	60
26	61
27	62
28	63
29	64
30	65
31	66
32	67
33	68
34	69
35	70
2	72
3	73
4	74
5	75
6	76
7	77
8	78
9	79
11	81
12	82
13	83
14	84
15	85
16	86
17	87
18	88
19	89
20	90
21	91
22	92
23	93
24	94
25	95
26	96
27	97
28	98
29	99
30	100
2	1
2	1
3	1
\.


--
-- Data for Name: especialidad; Type: TABLE DATA; Schema: public; Owner: jorgedevops
--

COPY public.especialidad (cod_especialidad, nom_especialidad) FROM stdin;
1	Pediatría
2	Nutriología
3	Dermatología
4	Alergología
5	Neurología
6	Psiquiatría
7	Ginecología
8	Oftamología
9	Otorrinolaringología
11	Medicina Interna 
12	Endocrinología 
13	Urología 
14	Reumatología 
15	Neurología 
16	Anestesia (cita preanestésica) 
17	Hematología 
18	Hepatología 
19	Oncología adultos 
20	Cirugía de mama y tejidos blandos 
21	Ginecología oncológica 
22	Dolor y cuidados paliativos 
23	Urología oncológica 
24	Pediatría 
25	Nefrología Pediátrica 
26	Neumología Pediátrica 
27	Reumatología Pediátrica 
28	Gastroenterología Pediátrica 
29	Anestesia (cita preanestésica) 
30	Urodinamia 
31	Uroflujometría 
32	Retiro y colocación de sonda vesical 
33	Retiro de catéter doble J 
34	Crioterapia genital 
35	Disfunción eréctil 
\.


--
-- Data for Name: horario; Type: TABLE DATA; Schema: public; Owner: jorgedevops
--

COPY public.horario (cod_horario, hora_inicio, hora_fin) FROM stdin;
1	2022-01-01 07:00:00	2022-01-01 09:00:00
2	2022-01-01 09:00:00	2022-01-01 12:00:00
3	2022-01-01 01:00:00	2022-01-01 15:00:00
4	2022-01-01 01:00:00	2022-01-01 18:00:00
\.


--
-- Data for Name: medico; Type: TABLE DATA; Schema: public; Owner: jorgedevops
--

COPY public.medico (cod_usuario, cod_consultorio) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
12	12
13	13
14	14
15	15
16	16
17	17
18	18
19	19
20	20
21	21
22	22
23	23
24	24
25	25
26	26
27	27
28	28
29	29
30	30
31	31
32	32
33	33
34	34
35	35
36	36
37	37
38	38
39	39
40	40
41	41
42	42
43	43
44	44
45	45
46	46
47	47
48	48
49	49
50	50
51	51
52	52
53	53
54	54
55	55
56	56
57	57
58	58
59	59
60	60
61	61
62	62
63	63
64	64
65	65
66	66
67	67
68	68
69	69
70	70
71	71
72	72
73	73
74	74
75	75
76	76
77	77
78	78
79	79
80	80
81	81
82	82
83	83
84	84
85	85
86	86
87	87
88	88
89	89
90	90
91	91
92	92
93	93
94	94
95	95
96	96
97	97
98	98
99	99
100	100
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: jorgedevops
--

COPY public.usuario (cod_usuario, nom_usuario, apellido_usuario, alias_usuario, clave_usuario) FROM stdin;
1	Zena	Nuscha	znuscha0	qdwPE6ZYhisz
2	Gilli	Oldrey	goldrey1	y9ZuOHOMN2T5
3	Franchot	Corzor	fcorzor2	NOgBu8
4	Agathe	Flores	aflores3	IXCNCd
5	Kinna	Drewell	kdrewell4	Mk2N7ZWS8pWE
6	Hershel	Brearton	hbrearton5	rHYiZc0276
7	Gusta	Pettipher	gpettipher6	H35HPwRY
8	Abigael	Karolczyk	akarolczyk7	3x8Pc0Sh
9	Bjorn	Santo	bsanto8	WEYsS5
10	Sunny	Wigmore	swigmore9	YLQYUi8I
11	Brant	Glander	bglandera	l7CtnW2rzO
12	Frederica	Steen	fsteenb	gfWNFuykH3nm
13	Sonnie	Wayon	swayonc	rPBribvpoi
14	Tildy	Shiers	tshiersd	yPc3rwXEWCy
15	Prescott	Malitrott	pmalitrotte	2p5yBG
16	Eloise	Robbings	erobbingsf	sF1u0pGUg
17	Ramsey	Bennit	rbennitg	eJ0cfw
18	Jenica	Laugheran	jlaugheranh	ez8agxn8H7tw
19	Guillema	Linnit	glinniti	zZhL0thwS
20	Wilmette	Wilsher	wwilsherj	56KIkQpP
21	Ailee	Featherston	afeatherstonk	Vhtf4V
22	Arny	Weems	aweemsl	EDZh3KfvAeBw
23	Scarlet	Sanford	ssanfordm	0s1wsG7X
24	Kalle	Ditchburn	kditchburnn	I1rdsV5
25	Conroy	Kollaschek	ckollascheko	Tx0V5TxGClb
26	Caro	McCole	cmccolep	tzy5r3bzTZ
27	Francois	Casetti	fcasettiq	Zi2IJc4
28	Jacquenetta	Bodicam	jbodicamr	LEoSldxId
29	Row	Andrasch	randraschs	2JclrwlK89x
30	Ferd	O'Cullinane	focullinanet	l3W2Ozp01
31	Monique	Maving	mmavingu	ypFgYjU8
32	Giustina	Lafrentz	glafrentzv	6G6XJZXKwvN
33	Caressa	Blackater	cblackaterw	NQ3Q2HzIVyOd
34	Doug	Wiltshaw	dwiltshawx	UbObvexL6p
35	Roz	Poynor	rpoynory	xarODmnel
36	Gus	Boniface	gbonifacez	H54iqkDDEj2W
37	Angeline	Kingman	akingman10	vUhyvll2v
38	Wainwright	Brindle	wbrindle11	wpXjM2
39	Pepi	Pariso	ppariso12	5GALmV3LBKY
40	Cullan	Mallya	cmallya13	egg6gDSA8Z3b
41	Goober	Pauer	gpauer14	3IroRw
42	Drusy	Oxteby	doxteby15	HtEcKRn
43	Pietra	Cheeseman	pcheeseman16	AiuRyl8
44	Betsey	Derrick	bderrick17	mPvTwTOPme3
45	Merwyn	Malloch	mmalloch18	o7KkSOp
46	Robinet	Westgarth	rwestgarth19	RBJJnhLTZ
47	Ileane	Sirr	isirr1a	BaHn1K
48	Basile	Bennough	bbennough1b	H6RZypCGQGCw
49	Cordy	Ricart	cricart1c	ixND4S
50	Nadeen	Chadderton	nchadderton1d	594G0WEn
51	Marina	Scoffham	mscoffham1e	09DdYNvB7
52	Kessia	Pearce	kpearce1f	lcKfBMhFX
53	Barbee	Brechin	bbrechin1g	NTZFN6cn2j
54	Olwen	McKinna	omckinna1h	wTJ2f4zWRS
55	Tammie	Geerits	tgeerits1i	Wqbg1LLglI2
56	Carrol	Ramelet	cramelet1j	52dptHidHu
57	Geordie	Bleue	gbleue1k	rANr4em
58	Tyrus	Brainsby	tbrainsby1l	NirShjsUU
59	Cammie	Levins	clevins1m	Qowi3T0qma4G
60	Marin	Bunney	mbunney1n	Jw5n08rmz
61	Lurleen	Ricciardi	lricciardi1o	Tun6I6
62	Alf	Simenet	asimenet1p	7EcmzeQRmR
63	Barr	Hallows	bhallows1q	HX1dS6
64	Hardy	Skellorne	hskellorne1r	npofbxem
65	Rosabel	Phizacklea	rphizacklea1s	VU7irnq878p
66	Lida	Ducker	lducker1t	nbaOjs9irs
67	Willey	Hatterslay	whatterslay1u	VcEVhhO
68	Reube	de Marco	rdemarco1v	Jeawshl
69	Chery	Keating	ckeating1w	5L0Tvnbxj3
70	Gusella	Sproule	gsproule1x	ejWsvYVAob
71	Shaina	Eldritt	seldritt1y	8P3Xdyu
72	Wilburt	Goodayle	wgoodayle1z	lPrrWc
73	Angel	Polkinghorne	apolkinghorne20	q6O9dX8Ex6cx
74	Clementina	Denny	cdenny21	k9OXbb5FnLA
75	Taryn	Condell	tcondell22	x0fUdLnBTwr
76	Danie	Donett	ddonett23	s1ArJvQ
77	Gregor	Delyth	gdelyth24	mfk9paDT4N
78	Nancy	Mullineux	nmullineux25	aIwXsF
79	Wendie	Kloska	wkloska26	XCWhQsOO4
80	Marleah	Turnock	mturnock27	gntfdmZe71l
81	Josi	Jedrys	jjedrys28	3M8hqu
82	Purcell	Willavize	pwillavize29	USk9jG
83	Darby	Worts	dworts2a	JYFfYhdBmx7t
84	Joel	Geeraert	jgeeraert2b	cdNZk5Ze
85	Zak	Audas	zaudas2c	Ku4au2a2t9uV
86	Prue	Burwell	pburwell2d	HJXZ4nwT47
87	Jacklin	Ellens	jellens2e	Xduzwq
88	Lira	Whittingham	lwhittingham2f	SlQ9rZJ
89	Doralia	Herity	dherity2g	Hwrh873LMQQ
90	Cynthie	Sheehan	csheehan2h	LHXKicv4y
91	Irving	Sprull	isprull2i	g8CBtMvc1L
92	Sebastiano	Napoli	snapoli2j	jA9VNuY3Op
93	Whitby	Michallat	wmichallat2k	TzRxJa
94	Karole	Allner	kallner2l	4vAOY8A
95	Melly	Hoofe	mhoofe2m	pdrEcKGabWgB
96	Massimiliano	Miebes	mmiebes2n	jH64ZMRn
97	Ingeberg	Yukhin	iyukhin2o	EzoA7xHI
98	Edmund	Neild	eneild2p	UaC4j3xq
99	Valdemar	Krienke	vkrienke2q	EAGhfEDXOd
100	Shane	Urling	surling2r	6SXMS7mUFk
\.


--
-- Name: agenda_medico agenda_medico_pk; Type: CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.agenda_medico
    ADD CONSTRAINT agenda_medico_pk PRIMARY KEY (cod_medico, cod_agenda);


--
-- Name: agenda agenda_pk; Type: CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.agenda
    ADD CONSTRAINT agenda_pk PRIMARY KEY (cod_agenda);


--
-- Name: consultorio consultorio_pk; Type: CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.consultorio
    ADD CONSTRAINT consultorio_pk PRIMARY KEY (cod_consultorio);


--
-- Name: detalle_agenda detalle_ag_pk; Type: CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.detalle_agenda
    ADD CONSTRAINT detalle_ag_pk PRIMARY KEY (cod_horario, cod_agenda);


--
-- Name: especialidad especialidad_pk; Type: CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.especialidad
    ADD CONSTRAINT especialidad_pk PRIMARY KEY (cod_especialidad);


--
-- Name: horario horario_dispo_pk; Type: CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_dispo_pk PRIMARY KEY (cod_horario);


--
-- Name: medico medico_pk; Type: CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.medico
    ADD CONSTRAINT medico_pk PRIMARY KEY (cod_usuario);


--
-- Name: usuario usuario_pk; Type: CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pk PRIMARY KEY (cod_usuario);


--
-- Name: agenda_medico agenda_m_fk1; Type: FK CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.agenda_medico
    ADD CONSTRAINT agenda_m_fk1 FOREIGN KEY (cod_medico) REFERENCES public.medico(cod_usuario);


--
-- Name: agenda_medico agenda_m_fk2; Type: FK CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.agenda_medico
    ADD CONSTRAINT agenda_m_fk2 FOREIGN KEY (cod_agenda) REFERENCES public.agenda(cod_agenda);


--
-- Name: detalle_agenda detalle_a_fk1; Type: FK CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.detalle_agenda
    ADD CONSTRAINT detalle_a_fk1 FOREIGN KEY (cod_horario) REFERENCES public.horario(cod_horario);


--
-- Name: detalle_agenda detalle_a_fk2; Type: FK CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.detalle_agenda
    ADD CONSTRAINT detalle_a_fk2 FOREIGN KEY (cod_agenda) REFERENCES public.agenda(cod_agenda);


--
-- Name: detalle_especialidad detalle_fk1; Type: FK CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.detalle_especialidad
    ADD CONSTRAINT detalle_fk1 FOREIGN KEY (cod_especialidad) REFERENCES public.especialidad(cod_especialidad);


--
-- Name: detalle_especialidad detalle_fk2; Type: FK CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.detalle_especialidad
    ADD CONSTRAINT detalle_fk2 FOREIGN KEY (cod_medico) REFERENCES public.medico(cod_usuario);


--
-- Name: medico medico_fk1; Type: FK CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.medico
    ADD CONSTRAINT medico_fk1 FOREIGN KEY (cod_usuario) REFERENCES public.usuario(cod_usuario);


--
-- Name: medico medico_fk2; Type: FK CONSTRAINT; Schema: public; Owner: jorgedevops
--

ALTER TABLE ONLY public.medico
    ADD CONSTRAINT medico_fk2 FOREIGN KEY (cod_consultorio) REFERENCES public.consultorio(cod_consultorio);


--
-- PostgreSQL database dump complete
--

