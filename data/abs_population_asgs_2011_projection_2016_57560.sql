--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.9
-- Dumped by pg_dump version 9.6.9

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: abs_population_asgs_2011_projection_2016_57560; Type: TABLE; Schema: public; Owner: dewoller
--

CREATE TABLE public.abs_population_asgs_2011_projection_2016_57560 (
    supply_year character(4) NOT NULL,
    lga character varying(10) NOT NULL,
    age_group5 character varying(20) NOT NULL,
    sex character(1) NOT NULL,
    population numeric(10,0),
    age character varying(10)
);


ALTER TABLE public.abs_population_asgs_2011_projection_2016_57560 OWNER TO dewoller;

--
-- Data for Name: abs_population_asgs_2011_projection_2016_57560; Type: TABLE DATA; Schema: public; Owner: dewoller
--

COPY public.abs_population_asgs_2011_projection_2016_57560 (supply_year, lga, age_group5, sex, population, age) FROM stdin;
2016	57560	0 - 4	F	159	0-19
2016	57560	0 - 4	M	176	0-19
2016	57560	10 - 14	F	114	0-19
2016	57560	10 - 14	M	108	0-19
2016	57560	15 - 19	F	123	0-19
2016	57560	15 - 19	M	126	0-19
2016	57560	20 - 24	F	113	20-44
2016	57560	20 - 24	M	299	20-44
2016	57560	25 - 29	F	244	20-44
2016	57560	25 - 29	M	597	20-44
2016	57560	30 - 34	F	204	20-44
2016	57560	30 - 34	M	748	20-44
2016	57560	35 - 39	F	192	20-44
2016	57560	35 - 39	M	589	20-44
2016	57560	40 - 44	F	175	20-44
2016	57560	40 - 44	M	590	20-44
2016	57560	45 - 49	F	126	45-64
2016	57560	45 - 49	M	516	45-64
2016	57560	5 - 9	F	121	0-19
2016	57560	5 - 9	M	166	0-19
2016	57560	50 - 54	F	171	45-64
2016	57560	50 - 54	M	492	45-64
2016	57560	55 - 59	F	101	45-64
2016	57560	55 - 59	M	358	45-64
2016	57560	60 - 64	F	57	45-64
2016	57560	60 - 64	M	212	45-64
2016	57560	65 - 69	F	6	65+
2016	57560	65 - 69	M	128	65+
2016	57560	70 - 74	F	14	65+
2016	57560	70 - 74	M	17	65+
2016	57560	75 - 79	F	8	65+
2016	57560	75 - 79	M	26	65+
2016	57560	80 - 84	F	10	65+
2016	57560	80 - 84	M	14	65+
2016	57560	85 and over	F	7	65+
2016	57560	85 and over	M	5	65+
2011	57560	0 - 4	M	186	0-19
2012	57560	0 - 4	M	185	0-19
2013	57560	0 - 4	M	188	0-19
2014	57560	0 - 4	M	181	0-19
2015	57560	0 - 4	M	176	0-19
2011	57560	5 - 9	M	176	0-19
2012	57560	5 - 9	M	164	0-19
2013	57560	5 - 9	M	163	0-19
2014	57560	5 - 9	M	173	0-19
2015	57560	5 - 9	M	167	0-19
2011	57560	10 - 14	M	180	0-19
2012	57560	10 - 14	M	168	0-19
2013	57560	10 - 14	M	145	0-19
2014	57560	10 - 14	M	131	0-19
2015	57560	10 - 14	M	128	0-19
2011	57560	15 - 19	M	209	0-19
2012	57560	15 - 19	M	186	0-19
2013	57560	15 - 19	M	167	0-19
2014	57560	15 - 19	M	149	0-19
2015	57560	15 - 19	M	150	0-19
2011	57560	20 - 24	M	328	20-44
2012	57560	20 - 24	M	331	20-44
2013	57560	20 - 24	M	336	20-44
2014	57560	20 - 24	M	313	20-44
2015	57560	20 - 24	M	300	20-44
2011	57560	25 - 29	M	544	20-44
2012	57560	25 - 29	M	586	20-44
2013	57560	25 - 29	M	611	20-44
2014	57560	25 - 29	M	594	20-44
2015	57560	25 - 29	M	567	20-44
2011	57560	30 - 34	M	480	20-44
2012	57560	30 - 34	M	544	20-44
2013	57560	30 - 34	M	607	20-44
2014	57560	30 - 34	M	643	20-44
2015	57560	30 - 34	M	689	20-44
2011	57560	35 - 39	M	426	20-44
2012	57560	35 - 39	M	462	20-44
2013	57560	35 - 39	M	502	20-44
2014	57560	35 - 39	M	520	20-44
2015	57560	35 - 39	M	556	20-44
2011	57560	40 - 44	M	466	20-44
2012	57560	40 - 44	M	547	20-44
2013	57560	40 - 44	M	583	20-44
2014	57560	40 - 44	M	563	20-44
2015	57560	40 - 44	M	541	20-44
2011	57560	45 - 49	M	413	45-64
2012	57560	45 - 49	M	418	45-64
2013	57560	45 - 49	M	424	45-64
2014	57560	45 - 49	M	455	45-64
2015	57560	45 - 49	M	514	45-64
2011	57560	50 - 54	M	362	45-64
2012	57560	50 - 54	M	418	45-64
2013	57560	50 - 54	M	452	45-64
2014	57560	50 - 54	M	454	45-64
2015	57560	50 - 54	M	451	45-64
2011	57560	55 - 59	M	240	45-64
2012	57560	55 - 59	M	239	45-64
2013	57560	55 - 59	M	278	45-64
2014	57560	55 - 59	M	301	45-64
2015	57560	55 - 59	M	340	45-64
2011	57560	60 - 64	M	170	45-64
2012	57560	60 - 64	M	178	45-64
2013	57560	60 - 64	M	184	45-64
2014	57560	60 - 64	M	193	45-64
2015	57560	60 - 64	M	206	45-64
2011	57560	65 - 69	M	63	65+
2012	57560	65 - 69	M	78	65+
2013	57560	65 - 69	M	96	65+
2014	57560	65 - 69	M	107	65+
2015	57560	65 - 69	M	111	65+
2011	57560	70 - 74	M	32	65+
2012	57560	70 - 74	M	30	65+
2013	57560	70 - 74	M	31	65+
2014	57560	70 - 74	M	24	65+
2015	57560	70 - 74	M	18	65+
2011	57560	75 - 79	M	21	65+
2012	57560	75 - 79	M	28	65+
2013	57560	75 - 79	M	23	65+
2014	57560	75 - 79	M	23	65+
2015	57560	75 - 79	M	27	65+
2011	57560	80 - 84	M	3	65+
2012	57560	80 - 84	M	3	65+
2013	57560	80 - 84	M	7	65+
2014	57560	80 - 84	M	9	65+
2015	57560	80 - 84	M	12	65+
2011	57560	85 and over	M	3	65+
2012	57560	85 and over	M	6	65+
2013	57560	85 and over	M	4	65+
2014	57560	85 and over	M	5	65+
2015	57560	85 and over	M	4	65+
2011	57560	0 - 4	F	170	0-19
2012	57560	0 - 4	F	177	0-19
2013	57560	0 - 4	F	161	0-19
2014	57560	0 - 4	F	154	0-19
2015	57560	0 - 4	F	169	0-19
2011	57560	5 - 9	F	183	0-19
2012	57560	5 - 9	F	155	0-19
2013	57560	5 - 9	F	151	0-19
2014	57560	5 - 9	F	147	0-19
2015	57560	5 - 9	F	133	0-19
2011	57560	10 - 14	F	178	0-19
2012	57560	10 - 14	F	169	0-19
2013	57560	10 - 14	F	151	0-19
2014	57560	10 - 14	F	139	0-19
2015	57560	10 - 14	F	128	0-19
2011	57560	15 - 19	F	134	0-19
2012	57560	15 - 19	F	138	0-19
2013	57560	15 - 19	F	132	0-19
2014	57560	15 - 19	F	129	0-19
2015	57560	15 - 19	F	124	0-19
2011	57560	20 - 24	F	173	20-44
2012	57560	20 - 24	F	138	20-44
2013	57560	20 - 24	F	135	20-44
2014	57560	20 - 24	F	134	20-44
2015	57560	20 - 24	F	127	20-44
2011	57560	25 - 29	F	252	20-44
2012	57560	25 - 29	F	252	20-44
2013	57560	25 - 29	F	250	20-44
2014	57560	25 - 29	F	244	20-44
2015	57560	25 - 29	F	247	20-44
2011	57560	30 - 34	F	212	20-44
2012	57560	30 - 34	F	203	20-44
2013	57560	30 - 34	F	212	20-44
2014	57560	30 - 34	F	203	20-44
2015	57560	30 - 34	F	207	20-44
2011	57560	35 - 39	F	216	20-44
2012	57560	35 - 39	F	215	20-44
2013	57560	35 - 39	F	200	20-44
2014	57560	35 - 39	F	202	20-44
2015	57560	35 - 39	F	198	20-44
2011	57560	40 - 44	F	211	20-44
2012	57560	40 - 44	F	202	20-44
2013	57560	40 - 44	F	194	20-44
2014	57560	40 - 44	F	188	20-44
2015	57560	40 - 44	F	183	20-44
2011	57560	45 - 49	F	195	45-64
2012	57560	45 - 49	F	177	45-64
2013	57560	45 - 49	F	160	45-64
2014	57560	45 - 49	F	147	45-64
2015	57560	45 - 49	F	145	45-64
2011	57560	50 - 54	F	166	45-64
2012	57560	50 - 54	F	168	45-64
2013	57560	50 - 54	F	182	45-64
2014	57560	50 - 54	F	175	45-64
2015	57560	50 - 54	F	163	45-64
2011	57560	55 - 59	F	107	45-64
2012	57560	55 - 59	F	106	45-64
2013	57560	55 - 59	F	105	45-64
2014	57560	55 - 59	F	101	45-64
2015	57560	55 - 59	F	104	45-64
2011	57560	60 - 64	F	66	45-64
2012	57560	60 - 64	F	68	45-64
2013	57560	60 - 64	F	59	45-64
2014	57560	60 - 64	F	58	45-64
2015	57560	60 - 64	F	62	45-64
2011	57560	65 - 69	F	30	65+
2012	57560	65 - 69	F	20	65+
2013	57560	65 - 69	F	20	65+
2014	57560	65 - 69	F	16	65+
2015	57560	65 - 69	F	10	65+
2011	57560	70 - 74	F	16	65+
2012	57560	70 - 74	F	19	65+
2013	57560	70 - 74	F	16	65+
2014	57560	70 - 74	F	15	65+
2015	57560	70 - 74	F	14	65+
2011	57560	75 - 79	F	9	65+
2012	57560	75 - 79	F	6	65+
2013	57560	75 - 79	F	9	65+
2014	57560	75 - 79	F	7	65+
2015	57560	75 - 79	F	8	65+
2011	57560	80 - 84	F	0	65+
2012	57560	80 - 84	F	3	65+
2013	57560	80 - 84	F	6	65+
2014	57560	80 - 84	F	7	65+
2015	57560	80 - 84	F	7	65+
2011	57560	85 and over	F	7	65+
2012	57560	85 and over	F	6	65+
2013	57560	85 and over	F	7	65+
2014	57560	85 and over	F	6	65+
2015	57560	85 and over	F	7	65+
\.


--
-- Name: abs_population_asgs_2011_projection_2016_57560 abs_population_asgs_2011_projection_2016_57560_pkey; Type: CONSTRAINT; Schema: public; Owner: dewoller
--

ALTER TABLE ONLY public.abs_population_asgs_2011_projection_2016_57560
    ADD CONSTRAINT abs_population_asgs_2011_projection_2016_57560_pkey PRIMARY KEY (supply_year, lga, age_group5, sex);


--
-- PostgreSQL database dump complete
--

