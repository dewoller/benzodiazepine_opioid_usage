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
-- Name: item_ome; Type: TABLE; Schema: continuing; Owner: dewoller
--

CREATE TABLE continuing.item_ome (
    "row.names" text,
    atc text,
    generic_name text,
    item_code text,
    item_form text,
    pbs_route text,
    standard_pack_size integer,
    ddd_mg_factor double precision,
    unit_wt double precision,
    units text,
    item_form_real text,
    days_multiplier integer,
    type_code double precision,
    new_days_multiplier double precision,
    drug text,
    ome_mg_factor double precision,
    ashton_mg_factor double precision
);


ALTER TABLE continuing.item_ome OWNER TO dewoller;

--
-- Data for Name: item_ome; Type: TABLE DATA; Schema: continuing; Owner: dewoller
--

COPY continuing.item_ome ("row.names", atc, generic_name, item_code, item_form, pbs_route, standard_pack_size, ddd_mg_factor, unit_wt, units, item_form_real, days_multiplier, type_code, new_days_multiplier, drug, ome_mg_factor, ashton_mg_factor) FROM stdin;
1	N02AE01	Buprenorphine (Plc)	10948F	10mcg/Hour Patch, 2 (Ph=1mth) -Q4 	PATCH	2	1.19999999999999996	1.67999999999999994	mg	\N	7	7	7	Buprenorphine	208.333333333333002	\N
2	N02AE01	Buprenorphine (Plc)	10949G	30mcg/Hour Patch, 2 (Ph=1mth) -Q4 	PATCH	2	1.19999999999999996	5.04000000000000004	mg	\N	7	7	7	Buprenorphine	208.333333333333002	\N
3	N02AE01	Buprenorphine (Plc)	10953L	15mcg/Hour Patch, 2 (Ph=1mth) -Q4 	PATCH	2	1.19999999999999996	2.52000000000000002	mg	\N	7	7	7	Buprenorphine	208.333333333333002	\N
4	N02AE01	Buprenorphine (Plc)	10957Q	5mcg/Hour Patch, 2 (Ph=1mth) -Q4 	PATCH	2	1.19999999999999996	0.839999999999999969	mg	\N	7	7	7	Buprenorphine	208.333333333333002	\N
5	N02AE01	Buprenorphine (Plc)	10959T	40mcg/Hour Patch, 2 (Ph=1mth) -Q4 	PATCH	2	1.19999999999999996	6.71999999999999975	mg	\N	7	7	7	Buprenorphine	208.333333333333002	\N
6	N02AE01	Buprenorphine (Plc)	10964C	25mcg/Hour Patch, 2 (Ph=1mth) -Q4 	PATCH	2	1.19999999999999996	4.20000000000000018	mg	\N	7	7	7	Buprenorphine	208.333333333333002	\N
7	N02AE01	Buprenorphine (Plc)	10970J	20mcg/Hour Patch, 2 (Ph=1mth) -Q4 	PATCH	2	1.19999999999999996	3.35999999999999988	mg	\N	7	7	7	Buprenorphine	208.333333333333002	\N
8	N02AE01	Buprenorphine	08865N	5mcg/Hour Patch, 2 	PATCH	14	1.19999999999999996	0.839999999999999969	mg	\N	7	7	7	Buprenorphine	208.333333333333002	\N
9	N02AE01	Buprenorphine	08866P	10mcg/Hour Patch, 2 	PATCH	14	1.19999999999999996	1.67999999999999994	mg	\N	7	7	7	Buprenorphine	208.333333333333002	\N
10	N02AE01	Buprenorphine	08867Q	20mcg/Hour Patch, 2 	PATCH	14	1.19999999999999996	3.35999999999999988	mg	\N	7	7	7	Buprenorphine	208.333333333333002	\N
11	N02AE01	Buprenorphine	10746N	40mcg/Hour Patch, 2 	PATCH	14	1.19999999999999996	6.71999999999999975	mg	\N	7	7	7	Buprenorphine	208.333333333333002	\N
12	N02AE01	Buprenorphine	10755C	30mcg/Hour Patch, 2 	PATCH	14	1.19999999999999996	5.04000000000000004	mg	\N	7	7	7	Buprenorphine	208.333333333333002	\N
13	N02AE01	Buprenorphine	10756D	25mcg/Hour Patch, 2 	PATCH	14	1.19999999999999996	4.20000000000000018	mg	\N	7	7	7	Buprenorphine	208.333333333333002	\N
14	N02AE01	Buprenorphine	10770W	15mcg/Hour Patch, 2 	PATCH	14	1.19999999999999996	2.52000000000000002	mg	\N	7	7	7	Buprenorphine	208.333333333333002	\N
15	N02AA	Codeine	05063L	30mg Tablet Phosphate, 20 -Dent 	TABLET	20	100	30	mg	\N	1	5	0	Codeine	0.130000000000000004	\N
16	N02AC04	Digesic Tablet, 20	91194Q	Not Approved Unless Rprc Ip $13 	TABLET	20	200	32.5	mg	Digesic tablet, 20	1	11	0	Digesic	\N	\N
17	N02AB03	Fentanyl (Bio)	05265D	12mcg/Hour Patch, 5 (1.28mg) 	PATCH	15	1.19999999999999996	0.86399999999999999	mg	\N	3	3	3	Fentanyl	250	\N
18	N02AB03	Fentanyl (Bio)	05277R	25mcg/Hour Patch, 5 (2.55mg) 	PATCH	15	1.19999999999999996	1.80000000000000004	mg	\N	3	3	3	Fentanyl	250	\N
19	N02AB03	Fentanyl (Plc) (Init) (No R Inc)	10697B	200mcg Tablet Orally Dis, 4 -Q8 	SUBLINGUAL	4	0.599999999999999978	0.200000000000000011	mg	\N	1	3	1	Fentanyl	100	\N
20	N02AB03	Fentanyl (Plc) (Init) (No R Inc)	10729Q	100mcg Tablet Orally Dis, 4 -Q8 	SUBLINGUAL	4	0.599999999999999978	0.100000000000000006	mg	\N	1	3	1	Fentanyl	100	\N
21	N02AB03	Fentanyl (Plc) (Init) (No R Incr)	10600X	200mcg Tablet Sublingual, 10 	SUBLINGUAL	10	0.599999999999999978	0.200000000000000011	mg	\N	1	3	1	Fentanyl	100	\N
22	N02AB03	Fentanyl (Plc) (Init) (No R Incr)	10601Y	100mcg Tablet Sublingual, 10 	SUBLINGUAL	10	0.599999999999999978	0.100000000000000006	mg	\N	1	3	1	Fentanyl	100	\N
23	N02AB03	Fentanyl (Plc) (Init) (No R Incr)	10603C	400mcg Tablet Sublingual, 10 	SUBLINGUAL	10	0.599999999999999978	0.400000000000000022	mg	\N	1	3	1	Fentanyl	100	\N
24	N02AB03	Fentanyl (Plc) (Ph=1mth)	10684H	100mcg Tablet Orally Dis, 28 -Q56 	SUBLINGUAL	28	0.599999999999999978	0.100000000000000006	mg	\N	1	3	1	Fentanyl	100	\N
25	N02AB03	Fentanyl (Plc) (No R Inc) -Initial	05401G	Lozenge 200mcg (Citrate), 9 -Ro 	LOZENGE	9	0.599999999999999978	0.200000000000000011	mg	\N	1	3	1	Fentanyl	100	\N
26	N02AB03	Fentanyl (Plc) (No R Inc) -Initial	05402H	Lozenge 400mcg (Citrate), 9 -Ro 	LOZENGE	9	0.599999999999999978	0.400000000000000022	mg	\N	1	3	1	Fentanyl	100	\N
27	N02AB03	Fentanyl (Plc) (No R Inc) -Initial	05403J	Lozenge 600mcg (Citrate), 9 -Ro 	LOZENGE	9	0.599999999999999978	0.599999999999999978	mg	\N	1	3	1	Fentanyl	100	\N
28	N02AB03	Fentanyl (Plc) (No R Inc) -Initial	05404K	Lozenge 800mcg (Citrate), 9 -Ro 	LOZENGE	9	0.599999999999999978	0.800000000000000044	mg	\N	1	3	1	Fentanyl	100	\N
29	N02AB03	Fentanyl (Plc) (No R Inc) -Initial	05405L	Lozenge 1200mcg (Citrate), 9 -Ro 	LOZENGE	9	0.599999999999999978	1.19999999999999996	mg	\N	1	3	1	Fentanyl	100	\N
30	N02AB03	Fentanyl (Plc)(Ph=1mth)	05411T	Lozenge 1200mcg (Citrate), 30 -Q60 	LOZENGE	30	0.599999999999999978	1.19999999999999996	mg	\N	1	3	1	Fentanyl	100	\N
31	N02AB03	Fentanyl (Plc)(Ph=1mth)	05409Q	Lozenge 600mcg (Citrate), 30 -Q60 	LOZENGE	30	0.599999999999999978	0.599999999999999978	mg	\N	1	3	1	Fentanyl	100	\N
32	N02AB03	Fentanyl (Plc)(Ph=1mth)	05410R	Lozenge 800mcg (Citrate), 30 -Q60 	LOZENGE	30	0.599999999999999978	0.800000000000000044	mg	\N	1	3	1	Fentanyl	100	\N
33	N02AB03	Fentanyl (Plc)(Ph=1mth)	05412W	Lozenge 1600mcg (Citrate), 30 -Q60 	LOZENGE	30	0.599999999999999978	1.60000000000000009	mg	\N	1	3	1	Fentanyl	100	\N
34	N02AB03	Fentanyl (Plc)(Ph=1mth)	10602B	100mcg Tablet Sublingual, 30 -Q60 	SUBLINGUAL	30	0.599999999999999978	0.100000000000000006	mg	\N	1	3	1	Fentanyl	100	\N
35	N02AB03	Fentanyl (Plc)(Ph=1mth)	10607G	200mcg Tablet Sublingual, 30 -Q60 	SUBLINGUAL	30	0.599999999999999978	0.200000000000000011	mg	\N	1	3	1	Fentanyl	100	\N
36	N02AB03	Fentanyl (Plc)(Ph=1mth)	10608H	400mcg Tablet Sublingual, 30 -Q60 	SUBLINGUAL	30	0.599999999999999978	0.400000000000000022	mg	\N	1	3	1	Fentanyl	100	\N
37	N02AB03	Fentanyl (Plc)(Ph=1mth)	10610K	300mcg Tablet Sublingual, 30 -Q60 	SUBLINGUAL	30	0.599999999999999978	0.299999999999999989	mg	\N	1	3	1	Fentanyl	100	\N
38	N02AB03	Fentanyl (Bio)	05278T	50mcg/Hour Patch, 5 (5.10mg) 	PATCH	15	1.19999999999999996	3.60000000000000009	mg	\N	3	3	3	Fentanyl	250	\N
39	N02AB03	Fentanyl (Bio)	05279W	75mcg/Hour Patch, 5 (7.65mg) 	PATCH	15	1.19999999999999996	5.40000000000000036	mg	\N	3	3	3	Fentanyl	250	\N
40	N02AB03	Fentanyl (Bio)	05280X	100mcg/Hour Patch, 5 (10.20mg) 	PATCH	15	1.19999999999999996	7.20000000000000018	mg	\N	3	3	3	Fentanyl	250	\N
41	N02AB03	Fentanyl (Bio)	05437E	12mcg/Hour Patch, 5 (2.063mg) 	PATCH	15	1.19999999999999996	0.86399999999999999	mg	\N	3	3	3	Fentanyl	250	\N
42	N02AB03	Fentanyl (Bio)	05438F	25mcg/Hour Patch, 5 (4.125mg) 	PATCH	15	1.19999999999999996	1.80000000000000004	mg	\N	3	3	3	Fentanyl	250	\N
43	N02AB03	Fentanyl (Bio)	05439G	50mcg/Hour Patch, 5 (8.25mg) 	PATCH	15	1.19999999999999996	3.60000000000000009	mg	\N	3	3	3	Fentanyl	250	\N
44	N02AB03	Fentanyl (Bio)	05440H	75mcg/Hour Patch, 5 (12.375mg) 	PATCH	15	1.19999999999999996	5.40000000000000036	mg	\N	3	3	3	Fentanyl	250	\N
45	N02AB03	Fentanyl (Bio)	05441J	100mcg/Hour Patch, 5 (16.5mg) 	PATCH	15	1.19999999999999996	7.20000000000000018	mg	\N	3	3	3	Fentanyl	250	\N
46	N02AB03	Fentanyl (Bio)	08878G	12mcg/Hour Patch, 5 (2.1mg) 	PATCH	15	1.19999999999999996	0.86399999999999999	mg	\N	3	3	3	Fentanyl	250	\N
47	N02AB03	Fentanyl (Bio)	08891Y	25mcg/Hour Patch, 5 (4.2mg) 	PATCH	15	1.19999999999999996	1.80000000000000004	mg	\N	3	3	3	Fentanyl	250	\N
48	N02AB03	Fentanyl (Bio)	08892B	50mcg/Hour Patch, 5 (8.4mg) 	PATCH	15	1.19999999999999996	3.60000000000000009	mg	\N	3	3	3	Fentanyl	250	\N
49	N02AB03	Fentanyl (Bio)	08893C	75mcg/Hour Patch, 5 (12.6mg) 	PATCH	15	1.19999999999999996	5.40000000000000036	mg	\N	3	3	3	Fentanyl	250	\N
50	N02AB03	Fentanyl (Plc)(Ph=1mth)	10611L	800mcg Tablet Sublingual, 30 -Q60 	SUBLINGUAL	30	0.599999999999999978	0.800000000000000044	mg	\N	1	3	1	Fentanyl	100	\N
51	N02AB03	Fentanyl (Plc)(Ph=1mth)	10613N	600mcg Tablet Sublingual, 30 -Q60 	SUBLINGUAL	30	0.599999999999999978	0.599999999999999978	mg	\N	1	3	1	Fentanyl	100	\N
52	N02AB03	Fentanyl (Plc) (Ph=1mth)	10698C	200mcg Tablet Orally Dis, 28 -Q56 	SUBLINGUAL	28	0.599999999999999978	0.200000000000000011	mg	\N	1	3	1	Fentanyl	100	\N
53	N02AB03	Fentanyl (Plc)(Ph=1mth)	05407N	Lozenge 200mcg (Citrate), 30 -Q60 	LOZENGE	30	0.599999999999999978	0.200000000000000011	mg	\N	1	3	1	Fentanyl	100	\N
54	N02AB03	Fentanyl (Plc)(Ph=1mth)	05408P	Lozenge 400mcg (Citrate), 30 -Q60 	LOZENGE	30	0.599999999999999978	0.400000000000000022	mg	\N	1	3	1	Fentanyl	100	\N
55	N02AB03	Fentanyl (Bio)	08894D	100mcg/Hour Patch, 5 (16.8mg) 	PATCH	15	1.19999999999999996	7.20000000000000018	mg	\N	3	3	3	Fentanyl	250	\N
56	N02AB03	Fentanyl (Plc) (Init) (No R Incr)	10604D	600mcg Tablet Sublingual, 10 	SUBLINGUAL	10	0.599999999999999978	0.599999999999999978	mg	\N	1	3	1	Fentanyl	100	\N
57	N02AB03	Fentanyl (Plc) (Init) (No R Incr)	10606F	300mcg Tablet Sublingual, 10 	SUBLINGUAL	10	0.599999999999999978	0.299999999999999989	mg	\N	1	3	1	Fentanyl	100	\N
58	N02AB03	Fentanyl (Plc) (Init) (No R Incr)	10612M	800mcg Tablet Sublingual, 10 	SUBLINGUAL	10	0.599999999999999978	0.800000000000000044	mg	\N	1	3	1	Fentanyl	100	\N
59	N02AA03	Hydromorphone	08542N	4mg Tablet Hcl, 20 -Doct 	TABLET	20	20	4	mg	\N	1	8	0	Hydromorphone	5	\N
60	N02AA03	Hydromorphone	08543P	8mg Tablet Hcl, 20 -Doct 	TABLET	20	20	8	mg	\N	1	8	0	Hydromorphone	5	\N
61	N02AA03	Hydromorphone	09299K	4mg Tab Mod Rel Hcl, 14 Tabs -Doct 	TABLET	14	20	4	mg	\N	1	8	0	Hydromorphone	5	\N
62	N02AA03	Hydromorphone	08424J	1mg/Ml Oral Liquid Hcl, 473ml -Doct 	ORAL LIQUID or SACH	20	20	473	mg	\N	20	8	20	Hydromorphone	5	\N
63	N02AA03	Hydromorphone	09406C	8mg Tab Mod Rel Hcl, 14 Tabs -Doct 	TABLET	14	20	8	mg	\N	1	8	0	Hydromorphone	5	\N
64	N02AA03	Hydromorphone	09407D	16mg Tab Mod Rel Hcl, 14 Tabs -Doct 	TABLET	14	20	16	mg	\N	1	8	0	Hydromorphone	5	\N
65	N02AA03	Hydromorphone	09408E	32mg Tab Mod Rel Hcl, 14 Tabs -Doct 	TABLET	14	20	32	mg	\N	1	8	0	Hydromorphone	5	\N
66	N02AA03	Hydromorphone	09409F	64mg Tab Mod Rel Hcl, 14 Tabs -Doct 	TABLET	14	20	64	mg	\N	1	8	0	Hydromorphone	5	\N
67	N02AA03	Hydromorphone	08541M	2mg Tablet Hcl, 20 -Doct 	TABLET	20	20	2	mg	\N	1	8	0	Hydromorphone	5	\N
68	N02AA03	Hydromorphone	08420E	2mg/Ml Inj Hcl, 5 X 1ml Amps -Doct 	INJECTION	5	4	2	mg	\N	1	8	1	Hydromorphone	15	\N
69	N02AA03	Hydromorphone	08421F	10mg/Ml Inj Hcl, 5 X 1ml Amps -Doct 	INJECTION	5	4	10	mg	\N	1	8	1	Hydromorphone	15	\N
70	N02AA03	Hydromorphone	08422G	50mg/5ml Inj Hcl, 5 X 5ml Amps -Doct 	INJECTION	5	4	50	mg	\N	1	8	1	Hydromorphone	15	\N
71	N02AA03	Hydromorphone	08423H	500mg/50ml Inj Hcl,1 X50ml Vial-Doct 	INJECTION	5	4	500	mg	\N	1	8	1	Hydromorphone	15	\N
72	N02AC	Methadone (Plc)(5399e)(Ph=1mth)	05399E	5mg/Ml Oral Liquid Hcl, 200ml -Q1,r2 	ORAL LIQUID or SACH	20	25	1000	mg	\N	20	6	20	Methadone	4.70000000000000018	\N
73	N02AC	Methadone	01609Q	10mg Tablet Hcl, 20 	TABLET	20	25	10	mg	\N	1	6	0	Methadone	4.70000000000000018	\N
74	N02AC	Methadone (Plc)(5400f)(Ph=1mth)	05400F	5mg/Ml Oral Liquid Hcl, 200ml -Q1,r0 	ORAL LIQUID or SACH	20	25	1000	mg	\N	20	6	20	Methadone	4.70000000000000018	\N
75	N02AC	Methadone	01606M	10mg/Ml Inj Hcl, 5 X 1ml Ampoules 	INJECTION	5	25	10	mg	\N	1	6	1	Methadone	13.5	\N
76	N02AA01	Morphine	08035X	5mg Tab Mod Rel Sulf, 28 Tabs -Doct 	TABLET	28	100	5	mg	\N	1	4	0	Morphine	1	\N
77	N02AA01	Morphine	08489T	15mg Tab Mod Rel Sulf, 28 Tabs -Doct 	TABLET	28	100	15	mg	\N	1	4	0	Morphine	1	\N
78	N02AA01	Morphine (Pbs)	08453X	200mg Tab Mod Rel Sulfate, 28 Tabs 	TABLET	28	100	200	mg	\N	1	4	0	Morphine	1	\N
79	N02AA01	Morphine (Pbs)	08669G	10mg Tablet Sulfate, 20 -Doct 	TABLET	20	100	10	mg	\N	1	4	0	Morphine	1	\N
80	N02AA01	Morphine (Pbs)	08670H	20mg Tablet Sulfate, 20 -Doct 	TABLET	20	100	20	mg	\N	1	4	0	Morphine	1	\N
81	N02AA01	Morphine	10869C	50mg/5ml Inj Hcl, 5 X 5ml Ampoules 	INJECTION	5	30	50	mg	\N	1	4	1	Morphine	3	\N
82	N02AA01	Morphine	10874H	20mg/Ml Inj Hcl, 5 X 1ml Amps -Doct 	INJECTION	5	30	20	mg	\N	1	4	1	Morphine	3	\N
83	N02AA01	Morphine	10878M	100mg/5ml Inj Hcl, 5 X 5ml Ampoules 	INJECTION	5	30	100	mg	\N	1	4	1	Morphine	3	\N
84	N02AA01	Morphine (Bio)	10864T	10mg/Ml Inj Hcl, 5 X 1ml Amps -Doct 	INJECTION	5	30	10	mg	\N	1	4	1	Morphine	3	\N
85	N02AA01	Morphine (Sulfate)	01647Q	30mg/Ml Inj, 5 X 1ml Ampoules -Doct 	INJECTION	5	30	30	mg	\N	1	4	1	Morphine	3	\N
86	N02AA01	Morphine (Sulphate) **refer To Pa**	02332R	10mg/Ml Inj (Prsv),10 X1ml Amps-Doct 	INJECTION	5	30	10	mg	\N	1	4	1	Morphine	3	\N
87	N02AA01	Morphine (Tartrate)	01607N	120mg/1.5ml Inj, 5 X 1.5ml Ampoules 	INJECTION	5	30	120	mg	\N	1	4	1	Morphine	3	\N
88	N02AA01	Morphine	01646P	30mg Tablet Sulfate, 20 -Doct 	TABLET	20	100	30	mg	\N	1	4	0	Morphine	1	\N
89	N02AA01	Morphine	01653B	10mg Tab Mod Rel Sulf, 28 Tabs -Doct 	TABLET	28	100	10	mg	\N	1	4	0	Morphine	1	\N
90	N02AA01	Morphine	01654C	30mg Tab Mod Rel Sulf, 28 Tabs -Doct 	TABLET	28	100	30	mg	\N	1	4	0	Morphine	1	\N
91	N02AA01	Morphine	01655D	60mg Tab Mod Rel Sulf, 28 Tabs -Doct 	TABLET	28	100	60	mg	\N	1	4	0	Morphine	1	\N
92	N02AA01	Morphine	01656E	100mg Tab Mod Rel Sulf, 28 Tabs-Doct 	TABLET	28	100	100	mg	\N	1	4	0	Morphine	1	\N
93	N02AA01	Morphine (Plc)	05391R	200mg Tab Mr Sulf 28 Tabs (Ph=1mth) 	TABLET	20	100	200	mg	\N	1	4	0	Morphine	1	\N
94	N02AA01	Morphine (Plc)	05393W	10mg Tablet Sulfate, 20 (Ph=1mth) 	TABLET	20	100	10	mg	\N	1	4	0	Morphine	1	\N
95	N02AA01	Morphine (Plc)	05394X	20mg Tablet Sulfate, 20 (Ph=1mth) 	TABLET	20	100	20	mg	\N	1	4	0	Morphine	1	\N
96	N02AA01	Morphine (Rpbs)	04349X	200mg Tab Mod Rel Sulf, 28 Tabs 	TABLET	28	100	200	mg	\N	1	4	0	Morphine	1	\N
97	N02AA01	Morphine	02122Q	2mg/Ml Oral Liquid Hcl, 200ml -Doct 	ORAL LIQUID or SACH	3	100	400	mg	\N	1	4	1	Morphine	1	\N
98	N02AA01	Morphine	02123R	5mg/Ml Oral Liquid Hcl, 200ml -Doct 	ORAL LIQUID or SACH	8	100	1000	mg	\N	1	4	1	Morphine	1	\N
99	N02AA01	Morphine	02124T	10mg/Ml Oral Liquid Hcl, 200ml -Doct 	ORAL LIQUID or SACH	17	100	2000	mg	\N	1	4	1	Morphine	1	\N
100	N02AA01	Morphine	05238Q	5mg/Ml Oral Liquid Hcl, 200ml -Dent 	ORAL LIQUID or SACH	8	100	1000	mg	\N	1	4	1	Morphine	1	\N
101	N02AA01	Morphine	02839K	Capsule 20mg (Cont Sr Pellets), 28 	CAPSULE	28	100	20	mg	\N	1	4	1	Morphine	1	\N
102	N02AA01	Morphine	02840L	Capsule 50mg (Cont Sr Pellets), 28 	CAPSULE	28	100	50	mg	\N	1	4	1	Morphine	1	\N
103	N02AA01	Morphine	02841M	Capsule 100mg (Cont Sr Pellets), 28 	CAPSULE	28	100	100	mg	\N	1	4	1	Morphine	1	\N
104	N02AA01	Morphine (Plc)(5392t)	05392T	200mg *do Not Approve From 1/6/16* 	TABLET	28	100	200	mg	Tablet 200 mg (controlled release), 28	1	4	0	Morphine	1	\N
105	N02AA01	Morphine (Plc)(5395y)	05395Y	10mg *do Not Approve From 1/6/16* 	TABLET	20	100	10	mg	Tablet 10 mg, 20	1	4	0	Morphine	1	\N
106	N02AA01	Morphine (Plc)(5396b)	05396B	20mg *do Not Approve From 1/6/16* 	TABLET	20	100	20	mg	Tablet 20 mg, 20	1	4	0	Morphine	1	\N
107	N02AA01	Morphine	08146R	Sach Cr Grans,oral Susp,30mg/Sach,28 	ORAL LIQUID or SACH	28	100	30	mg	\N	1	4	1	Morphine	1	\N
108	N02AA01	Morphine	08305D	Sach Cr Grans,oral Susp 60mg/Sach,28 	ORAL LIQUID or SACH	28	100	60	mg	\N	1	4	1	Morphine	1	\N
109	N02AA01	Morphine	08306E	100mg Grans Mod Rel Sulf 28 Sachets 	SACHET	28	100	100	mg	\N	1	4	1	Morphine	1	\N
110	N02AA01	Morphine	08349K	Capsule 10mg (Cont Sr Pellets), 28 	CAPSULE	28	100	10	mg	\N	1	4	1	Morphine	1	\N
111	N02AA01	Morphine	08454Y	200mg Grans Mod Rel Sulf 28 Sachets 	SACHET	28	100	200	mg	\N	1	4	1	Morphine	1	\N
112	N02AA01	Morphine	08490W	20mg Grans Mod Rel Sulf 28 Sachets 	SACHET	28	100	20	mg	\N	1	4	1	Morphine	1	\N
113	N02AA01	Morphine (Sulfate)	01645N	15mg/Ml Inj, 5 X 1ml Ampoules -Doct 	INJECTION	5	30	15	mg	\N	1	4	1	Morphine	3	\N
114	N02AA01	Morphine	08491X	30mg Cap Mod Rel Sulfate, 14 Caps 	CAPSULE	14	100	30	mg	\N	1	4	1	Morphine	1	\N
115	N02AA01	Morphine	08492Y	60mg Cap Mod Rel Sulfate, 14 Caps 	CAPSULE	14	100	60	mg	\N	1	4	1	Morphine	1	\N
116	N02AA01	Morphine	08493B	90mg Cap Mod Rel Sulfate, 14 Caps 	CAPSULE	14	100	90	mg	\N	1	4	1	Morphine	1	\N
117	N02AA01	Morphine	08494C	120mg Cap Mod Rel Sulfate, 14 Caps 	CAPSULE	14	100	120	mg	\N	1	4	1	Morphine	1	\N
118	N02AA01	Morphine (Bio)	01644M	10mg/Ml Inj Sulf, 5 X 1ml Amps -Doct 	INJECTION	5	30	10	mg	\N	1	4	1	Morphine	3	\N
119	N02AA55	Oxycodone + Naloxone	08935G	20mg + 10mg Tab Mod Rel Hcl, 28 Tabs 	TABLET	28	75	20	mg	\N	1	1	0	Oxycodone	1.5	\N
120	N02AA05	Oxycodone	09400R	30mg Tab Mod Rel Hcl, 28 Tabs -Doct 	TABLET	28	75	30	mg	\N	1	1	0	Oxycodone	1.5	\N
121	N02AA55	Oxycodone + Naloxone	08000C	5mg + 2.5mg Tab Mod Rel Hcl, 28 Tabs 	TABLET	28	75	5	mg	\N	1	1	0	Oxycodone	1.5	\N
122	N02AA55	Oxycodone + Naloxone	08934F	10mg + 5mg Tab Mod Rel Hcl, 28 Tabs 	TABLET	28	75	10	mg	\N	1	1	0	Oxycodone	1.5	\N
123	N02AA55	Oxycodone + Naloxone	10758F	30mg + 15mg Tab Mod Rel Hcl, 28 Tabs 	TABLET	28	75	30	mg	\N	1	1	0	Oxycodone	1.5	\N
124	N02AA55	Oxycodone + Naloxone	08936H	40mg + 20mg Tab Mod Rel Hcl, 28 Tabs 	TABLET	28	75	40	mg	\N	1	1	0	Oxycodone	1.5	\N
125	N02AA55	Oxycodone + Naloxone	10757E	15mg + 7.5mg Tab Mod Rel Hcl,28 Tabs 	TABLET	28	75	15	mg	\N	1	1	0	Oxycodone	1.5	\N
126	N02AA55	Oxycodone + Naloxone	10776E	2.5mg + 1.25mg Tab Mod Rel, 28 Tabs 	TABLET	28	75	2.5	mg	\N	1	1	0	Oxycodone	1.5	\N
127	N02AA05	Oxycodone	05190E	1mg/Ml Oral Liq Hcl, 250ml -Dent 	ORAL LIQUID or SACH	20	75	250	mg	\N	20	1	20	Oxycodone	1.5	\N
128	N02AA05	Oxycodone	08644Y	1mg/Ml Oral Liq Hcl, 250ml -Doct 	ORAL LIQUID or SACH	20	75	250	mg	\N	20	1	20	Oxycodone	1.5	\N
129	N02AA05	Oxycodone	05195K	5mg Tablet Hcl, 20 -Dent 	TABLET	20	75	5	mg	\N	1	1	0	Oxycodone	1.5	\N
130	N02AA05	Oxycodone	02481N	30mg Suppository, 12 -Doct 	SUPPOSITORY	12	30	30	mg	\N	1	1	1	Oxycodone	1.5	\N
131	N02AA05	Oxycodone	05191F	5mg Capsule Hcl, 20 -Dent 	CAPSULE	20	75	5	mg	\N	1	1	1	Oxycodone	1.5	\N
132	N02AA05	Oxycodone	05197M	10mg Capsule Hcl, 20 -Dent 	CAPSULE	20	75	10	mg	\N	1	1	1	Oxycodone	1.5	\N
133	N02AA05	Oxycodone	02622B	5mg Tablet Hcl, 20 -Doct 	TABLET	20	75	5	mg	\N	1	1	0	Oxycodone	1.5	\N
134	N02AA05	Oxycodone	08464L	5mg Capsule Hcl, 20 -Doct 	CAPSULE	20	75	5	mg	\N	1	1	1	Oxycodone	1.5	\N
135	N02AA05	Oxycodone	08501K	10mg Capsule Hcl, 20 -Doct 	CAPSULE	20	75	10	mg	\N	1	1	1	Oxycodone	1.5	\N
136	N02AA05	Oxycodone	08502L	20mg Capsule Hcl, 20 -Doct 	CAPSULE	20	75	20	mg	\N	1	1	1	Oxycodone	1.5	\N
137	N02AA05	Oxycodone	08385H	10mg Tab Mod Rel Hcl, 28 Tabs -Doct 	TABLET	28	75	10	mg	\N	1	1	0	Oxycodone	1.5	\N
138	N02AA05	Oxycodone	08386J	20mg Tab Mod Rel Hcl, 28 Tabs -Doct 	TABLET	28	75	20	mg	\N	1	1	0	Oxycodone	1.5	\N
139	N02AA05	Oxycodone	08387K	40mg Tab Mod Rel Hcl, 28 Tabs -Doct 	TABLET	28	75	40	mg	\N	1	1	0	Oxycodone	1.5	\N
140	N02AA05	Oxycodone	08388L	80mg Tab Mod Rel Hcl, 28 Tabs -Doct 	TABLET	28	75	80	mg	\N	1	1	0	Oxycodone	1.5	\N
141	N02AA05	Oxycodone	08681X	5mg Tab Mod Rel Hcl, 28 Tabs -Doct 	TABLET	28	75	5	mg	\N	1	1	0	Oxycodone	1.5	\N
142	N02AA05	Oxycodone	09399Q	15mg Tab Mod Rel Hcl, 28 Tabs -Doct 	TABLET	28	75	15	mg	\N	1	1	0	Oxycodone	1.5	\N
143	N02AA59	Paracetamol + Codeine	03316M	Tab 30mg Codeine+500mg Para, 20-Dent 	TABLET	20	100	30	mg	\N	1	5	0	Paracetamol	0.130000000000000004	\N
144	N02AA59	Paracetamol + Codeine -Doct	01215Y	Tab 30mg Code+500mg Para, 20(No Inc) 	TABLET	20	100	30	mg	\N	1	5	0	Paracetamol	0.130000000000000004	\N
145	N02AA59	Paracetamol + Codeine -Doct	08785J	Tab 30mg-500mg,20(Mq240/Mth,mr5)-Q60 	TABLET	20	100	30	mg	\N	1	5	0	Paracetamol	0.130000000000000004	\N
146	N02AX06	Tapentadol	10091D	200mg Tablet Modified Release, 28 	TABLET	28	400	200	mg	\N	1	9	0	Tapentadol	0.400000000000000022	\N
147	N02AX06	Tapentadol	10092E	250mg Tablet Modified Release, 28 	TABLET	28	400	250	mg	\N	1	9	0	Tapentadol	0.400000000000000022	\N
148	N02AX06	Tapentadol	10094G	100mg Tablet Modified Release, 28 	TABLET	28	400	100	mg	\N	1	9	0	Tapentadol	0.400000000000000022	\N
149	N02AX06	Tapentadol	10096J	50mg Tablet Modified Release, 28 	TABLET	28	400	50	mg	\N	1	9	0	Tapentadol	0.400000000000000022	\N
150	N02AX06	Tapentadol	10100N	150mg Tablet Modified Release, 28 	TABLET	28	400	150	mg	\N	1	9	0	Tapentadol	0.400000000000000022	\N
151	N02AX02	Tramadol	05150C	100mg/Ml Oral Liquid Hcl, 10ml -Dent 	ORAL LIQUID or SACH	2	300	1000	mg	\N	1	2	1	Tramadol	0.200000000000000011	\N
152	N02AX02	Tramadol	05232J	50mg Capsule Hcl, 20 -Dent 	CAPSULE	20	300	50	mg	\N	1	2	1	Tramadol	0.200000000000000011	\N
153	N02AX02	Tramadol	08455B	50mg Capsule Hcl, 20 (No Incr) -Doct 	CAPSULE	20	300	50	mg	\N	1	2	1	Tramadol	0.200000000000000011	\N
154	N02AX02	Tramadol	02527B	50mg Tab Mod Rel Hcl, 20 Tabs -Doct 	TABLET	20	300	50	mg	\N	1	2	0	Tramadol	0.200000000000000011	\N
155	N02AX02	Tramadol	08523N	100mg Tab Mod Rel Hcl, 20 Tabs -Doct 	TABLET	20	300	100	mg	\N	1	2	0	Tramadol	0.200000000000000011	\N
156	N02AX02	Tramadol	08843K	100mg/Ml Oral Liquid Hcl, 10ml -Doct 	ORAL LIQUID or SACH	8	300	1000	mg	\N	1	2	1	Tramadol	0.200000000000000011	\N
157	N02AX02	Tramadol	08611F	50mg Caps Hcl, 20 (No Incr)-R2 -Doct 	CAPSULE	20	300	50	mg	\N	1	2	1	Tramadol	0.200000000000000011	\N
158	N02AX02	Tramadol (No Incr)	08582Q	100mg/2ml Inj Hcl, 5 X 2ml Amps-Doct 	INJECTION	5	300	100	mg	\N	1	2	1	Tramadol	0.16700000000000001	\N
159	N02AX02	Tramadol	08525Q	200mg Tab Mod Rel Hcl, 20 Tabs -Doct 	TABLET	20	300	200	mg	\N	1	2	0	Tramadol	0.200000000000000011	\N
160	N02AX02	Tramadol	08524P	150mg Tab Mod Rel Hcl, 20 Tabs -Doct 	TABLET	20	300	150	mg	\N	1	2	0	Tramadol	0.200000000000000011	\N
161	N05BA12	Alprazolam	02132F	1mg Tablet, 50 (No R Incr) -Q10 	TABLET	50	1	1	mg	\N	1	10	0	Alprazolam	\N	0.5
162	N05BA12	Alprazolam	08118G	2mg Tablet, 50 	TABLET	50	1	2	mg	\N	1	10	0	Alprazolam	\N	0.5
163	N05BA12	Alprazolam	02130D	250mcg Tablet, 50 (No R Incr) -Q10 	TABLET	50	1	0.25	mg	\N	1	10	0	Alprazolam	\N	0.5
164	N05BA12	Alprazolam	02131E	500mcg Tablet, 50 (No R Incr) -Q10 	TABLET	50	1	0.5	mg	\N	1	10	0	Alprazolam	\N	0.5
165	N05BA08	Bromazepam	04150K	3mg Tablet, 30 -Q60 	TABLET	30	10	3	mg	\N	1	10	0	Bromazepam	\N	5
166	N05BA08	Bromazepam	04151L	6mg Tablet, 30 -Q60 	TABLET	30	10	6	mg	\N	1	10	0	Bromazepam	\N	5
167	N03AE01	Clonazepam	01807D	1mg/Ml Inj [5]& Dilu[5 Amps],1 Pk-Q5 	INJECTION	5	8	1	mg	\N	1	10	1	Clonazepam	\N	0.5
168	N03AE01	Clonazepam (Pbs)	01806C	2mg Tablet, 100 -Q200 	TABLET	100	8	2	mg	\N	1	10	0	Clonazepam	\N	0.5
169	N03AE01	Clonazepam (Plc)	05338Y	2mg Tablet, 100 (No R Incr) 	TABLET	100	8	2	mg	\N	1	10	0	Clonazepam	\N	0.5
170	N03AE01	Clonazepam (Plc)(5341d)	05341D	2mg Tab *do No Approve From 1/6/16* 	TABLET	1	8	2	mg	\N	1	10	0	Clonazepam	\N	0.5
171	N03AE01	Clonazepam (Pbs)	01805B	500mcg Tablet, 100 -Q200 	TABLET	100	8	0.5	mg	\N	1	10	0	Clonazepam	\N	0.5
172	N03AE01	Clonazepam (Plc)	05337X	500mcg Tablet, 100 (No R Incr) 	TABLET	100	8	0.5	mg	\N	1	10	0	Clonazepam	\N	0.5
173	N03AE01	Clonazepam (Pbs)	01808E	2.5mg/Ml Oral Liquid, 10ml -Q2 	ORAL LIQUID or SACH	1	8	25	mg	\N	20	10	20	Clonazepam	\N	0.5
174	N03AE01	Clonazepam (Plc)(No R Incr)	05339B	2.5mg/Ml Oral Liquid, 10ml -Q2 	ORAL LIQUID or SACH	1	8	25	mg	\N	20	10	20	Clonazepam	\N	0.5
175	N03AE01	Clonazepam (Plc)(5340c)	05340C	500mcg *do Not Approve From 1/6/16* 	TABLET	1	8	0.5	mg	Tablet 500 micrograms, 100	1	10	0	Clonazepam	\N	0.5
176	N03AE01	Clonazepam (Plc)(5342e)	05342E	2.5mg/Ml*do Not Approve From 1/6/16* 	ORAL LIQUID or SACH	1	8	25	mg	Oral liquid 2.5 mg per mL, 10 mL, 2	25	10	25	Clonazepam	\N	0.5
177	N05BA01	Diazepam	02558P	10mg/2ml Inj, 5 X 2ml Ampoules -Doct 	INJECTION	5	10	10	mg	\N	1	10	1	Diazepam	\N	10
178	N05BA01	Diazepam	03162K	5mg Tablet, 50 -Doct 	TABLET	50	10	5	mg	\N	1	10	0	Diazepam	\N	10
179	N05BA01	Diazepam	02669L	1mg/Ml Oral Liquid, 100ml -Q1 	ORAL LIQUID or SACH	1	10	100	mg	\N	20	10	20	Diazepam	\N	10
180	N05BA01	Diazepam	05071X	2mg Tablet, 50 -Dent 	TABLET	50	10	2	mg	\N	1	10	0	Diazepam	\N	10
181	N05BA01	Diazepam	05072Y	5mg Tablet, 50 -Dent 	TABLET	50	10	5	mg	\N	1	10	0	Diazepam	\N	10
182	N05BA01	Diazepam	03161J	2mg Tablet, 50 -Doct 	TABLET	50	10	2	mg	\N	1	10	0	Diazepam	\N	10
183	N05BA01	Diazepam (Plc)	05355W	2mg Tablet, 50 (No R Incr) 	TABLET	50	10	2	mg	\N	1	10	0	Diazepam	\N	10
184	N05BA01	Diazepam (Plc)	05356X	5mg Tablet, 50 (No R Incr) 	TABLET	50	10	5	mg	\N	1	10	0	Diazepam	\N	10
185	N05BA01	Diazepam (Plc)(5357y)	05357Y	2mg Tab *do Not Approve From 1/6/16* 	TABLET	1	10	2	mg	\N	1	10	0	Diazepam	\N	10
186	N05BA01	Diazepam (Plc)(5358b)	05358B	5mg Tab *do Not Approve From 1/6/16* 	TABLET	1	10	5	mg	\N	1	10	0	Diazepam	\N	10
187	N05CD03	Flunitrazepam	04216X	1mg Tablet, 30 	TABLET	30	1	1	mg	\N	1	10	0	Flunitrazepam	\N	1
188	N05CD02	Nitrazepam (Auth)	02732T	5mg Tablet, 25 -Q50,r5 	TABLET	25	5	5	mg	\N	1	10	0	Nitrazepam	\N	10
189	N05CD02	Nitrazepam	05189D	5mg Tablet, 25 -Dent 	TABLET	25	5	5	mg	\N	1	10	0	Nitrazepam	\N	10
190	N05CD02	Nitrazepam (Plc)(5360d)	05360D	5mg Tab *do Not Approve From 1/6/16* 	TABLET	1	5	5	mg	\N	1	10	0	Nitrazepam	\N	10
191	N05CD02	Nitrazepam (Plc)	05359C	5mg Tablet, 25 (No R Incr) -Q50 	TABLET	25	5	5	mg	\N	1	10	0	Nitrazepam	\N	10
192	N05CD02	Nitrazepam (Unrest)	02723H	5mg Tablet, 25 (No Incr) -Doct 	TABLET	25	5	5	mg	\N	1	10	0	Nitrazepam	\N	10
193	N05BA04	Oxazepam (Plc)(5374w)	05374W	30mg Tab*do Not Approve From 1/6/16* 	TABLET	1	50	30	mg	Tablet 30 mg, 50	1	10	0	Oxazepam	\N	20
194	N05BA04	Oxazepam (Auth)	03135B	30mg Tablet, 25 -Q50,r5 	TABLET	25	50	30	mg	\N	1	10	0	Oxazepam	\N	20
195	N05BA04	Oxazepam (Plc)	05371Q	15mg Tablet, 25 (No R Incr) -Q50,r3 	TABLET	25	50	15	mg	\N	1	10	0	Oxazepam	\N	20
196	N05BA04	Oxazepam (Plc)	05372R	30mg Tablet, 25 (No R Incr) -Q50,r3 	TABLET	25	50	30	mg	\N	1	10	0	Oxazepam	\N	20
197	N05BA04	Oxazepam (Unrest)	03132W	15mg Tablet, 25 (No Incr) -Doct 	TABLET	25	50	15	mg	\N	1	10	0	Oxazepam	\N	20
198	N05BA04	Oxazepam (Unrest)	03133X	30mg Tablet, 25 (No Incr) -Doct 	TABLET	25	50	30	mg	\N	1	10	0	Oxazepam	\N	20
199	N05BA04	Oxazepam	05193H	30mg Tablet, 25 -Dent 	TABLET	25	50	30	mg	\N	1	10	0	Oxazepam	\N	20
200	N05BA04	Oxazepam (Auth)	03134Y	15mg Tablet, 25 -Q50,r5 	TABLET	25	50	15	mg	\N	1	10	0	Oxazepam	\N	20
201	N05BA04	Oxazepam (Plc)(5373t)	05373T	15mg Tab*do Not Approve From 1/6/16* 	TABLET	1	50	15	mg	Tablet 15 mg, 50	1	10	0	Oxazepam	\N	20
202	N05BA04	Oxazepam	05192G	15mg Tablet, 25 -Dent 	TABLET	25	50	15	mg	\N	1	10	0	Oxazepam	\N	20
203	N05CF02	Stilnox 10mg Tablet, 14	97997R	Zolpidem Ip $29 	TABLET	14	10	10	mg	Tablet 10mg, 14	1	10	0	Stilnox	\N	20
204	N05CD07	Temazepam -Dent	05221T	10mg Tablet, 25 	TABLET	25	20	10	mg	\N	1	10	0	Temazepam	\N	20
205	N05CD07	Temazepam (Plc)(5376y)	05376Y	10mg Tab*do Not Approve From 1/6/16* 	TABLET	1	20	10	mg	Tablet 10 mg, 50	1	10	0	Temazepam	\N	20
206	N05CD07	Temazepam (Auth)	02088X	10mg Tablet, 25 -Q50,r5 	TABLET	25	20	10	mg	\N	1	10	0	Temazepam	\N	20
207	N05CD07	Temazepam (Plc)	05375X	10mg Tablet, 25 (No R Incr) -Q50,r3 	TABLET	25	20	10	mg	\N	1	10	0	Temazepam	\N	20
208	N05CD07	Temazepam (Unrest) -Doct	02089Y	10mg Tablet, 25 (No Incr) 	TABLET	25	20	10	mg	\N	1	10	0	Temazepam	\N	20
209	N05CF01	Zopiclone	04522B	7.5mg Tablet, 30 	TABLET	30	7.5	7.5	mg	\N	1	10	0	Zopiclone	\N	15
\.


--
-- PostgreSQL database dump complete
--

