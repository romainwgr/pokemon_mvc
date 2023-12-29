--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: pokemons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemons (
    id integer,
    name character varying(50),
    form character varying(50),
    type1 character varying(20),
    type2 character varying(20),
    total integer,
    hp integer,
    attack integer,
    defense integer,
    sp_atk integer,
    sp_def integer,
    speed integer,
    generation integer
);


ALTER TABLE public.pokemons OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(500) NOT NULL,
    prenom character varying(255)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: pokemons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemons (id, name, form, type1, type2, total, hp, attack, defense, sp_atk, sp_def, speed, generation) FROM stdin;
1	Bulbasaur	\N	Grass	Poison	318	45	49	49	65	65	45	1
2	Ivysaur	\N	Grass	Poison	405	60	62	63	80	80	60	1
3	Venusaur	\N	Grass	Poison	525	80	82	83	100	100	80	1
4	Charmander	\N	Fire	\N	309	39	52	43	60	50	65	1
5	Charmeleon	\N	Fire	\N	405	58	64	58	80	65	80	1
6	Charizard	\N	Fire	Flying	534	78	84	78	109	85	100	1
7	Squirtle	\N	Water	\N	314	44	48	65	50	64	43	1
8	Wartortle	\N	Water	\N	405	59	63	80	65	80	58	1
9	Blastoise	\N	Water	\N	530	79	83	100	85	105	78	1
10	Caterpie	\N	Bug	\N	195	45	30	35	20	20	45	1
11	Metapod	\N	Bug	\N	205	50	20	55	25	25	30	1
12	Butterfree	\N	Bug	Flying	395	60	45	50	90	80	70	1
13	Weedle	\N	Bug	Poison	195	40	35	30	20	20	50	1
14	Kakuna	\N	Bug	Poison	205	45	25	50	25	25	35	1
15	Beedrill	\N	Bug	Poison	395	65	90	40	45	80	75	1
16	Pidgey	\N	Normal	Flying	251	40	45	40	35	35	56	1
17	Pidgeotto	\N	Normal	Flying	349	63	60	55	50	50	71	1
18	Pidgeot	\N	Normal	Flying	479	83	80	75	70	70	101	1
19	Rattata	\N	Normal	\N	253	30	56	35	25	35	72	1
20	Raticate	\N	Normal	\N	413	55	81	60	50	70	97	1
21	Spearow	\N	Normal	Flying	262	40	60	30	31	31	70	1
22	Fearow	\N	Normal	Flying	442	65	90	65	61	61	100	1
23	Ekans	\N	Poison	\N	288	35	60	44	40	54	55	1
24	Arbok	\N	Poison	\N	448	60	95	69	65	79	80	1
25	Pikachu	\N	Electric	\N	320	35	55	40	50	50	90	1
26	Raichu	\N	Electric	\N	485	60	90	55	90	80	110	1
27	Sandshrew	\N	Ground	\N	300	50	75	85	20	30	40	1
28	Sandslash	\N	Ground	\N	450	75	100	110	45	55	65	1
29	Nidoran	Female	Poison	\N	275	55	47	52	40	40	41	1
30	Nidorina	\N	Poison	\N	365	70	62	67	55	55	56	1
31	Nidoqueen	\N	Poison	Ground	505	90	92	87	75	85	76	1
32	Nidoran	Male	Poison	\N	273	46	57	40	40	40	50	1
33	Nidorino	\N	Poison	\N	365	61	72	57	55	55	65	1
34	Nidoking	\N	Poison	Ground	505	81	102	77	85	75	85	1
35	Clefairy	\N	Fairy	\N	323	70	45	48	60	65	35	1
36	Clefable	\N	Fairy	\N	483	95	70	73	95	90	60	1
37	Vulpix	\N	Fire	\N	299	38	41	40	50	65	65	1
38	Ninetales	\N	Fire	\N	505	73	76	75	81	100	100	1
39	Jigglypuff	\N	Normal	Fairy	270	115	45	20	45	25	20	1
40	Wigglytuff	\N	Normal	Fairy	435	140	70	45	85	50	45	1
41	Zubat	\N	Poison	Flying	245	40	45	35	30	40	55	1
42	Golbat	\N	Poison	Flying	455	75	80	70	65	75	90	1
43	Oddish	\N	Grass	Poison	320	45	50	55	75	65	30	1
44	Gloom	\N	Grass	Poison	395	60	65	70	85	75	40	1
45	Vileplume	\N	Grass	Poison	490	75	80	85	110	90	50	1
46	Paras	\N	Bug	Grass	285	35	70	55	45	55	25	1
47	Parasect	\N	Bug	Grass	405	60	95	80	60	80	30	1
48	Venonat	\N	Bug	Poison	305	60	55	50	40	55	45	1
49	Venomoth	\N	Bug	Poison	450	70	65	60	90	75	90	1
50	Diglett	\N	Ground	\N	265	10	55	25	35	45	95	1
51	Dugtrio	\N	Ground	\N	425	35	100	50	50	70	120	1
52	Meowth	\N	Normal	\N	290	40	45	35	40	40	90	1
53	Persian	\N	Normal	\N	440	65	70	60	65	65	115	1
54	Psyduck	\N	Water	\N	320	50	52	48	65	50	55	1
55	Golduck	\N	Water	\N	500	80	82	78	95	80	85	1
56	Mankey	\N	Fighting	\N	305	40	80	35	35	45	70	1
57	Primeape	\N	Fighting	\N	455	65	105	60	60	70	95	1
58	Growlithe	\N	Fire	\N	350	55	70	45	70	50	60	1
59	Arcanine	\N	Fire	\N	555	90	110	80	100	80	95	1
60	Poliwag	\N	Water	\N	300	40	50	40	40	40	90	1
61	Poliwhirl	\N	Water	\N	385	65	65	65	50	50	90	1
62	Poliwrath	\N	Water	Fighting	510	90	95	95	70	90	70	1
63	Abra	\N	Psychic	\N	310	25	20	15	105	55	90	1
64	Kadabra	\N	Psychic	\N	400	40	35	30	120	70	105	1
65	Alakazam	\N	Psychic	\N	500	55	50	45	135	95	120	1
66	Machop	\N	Fighting	\N	305	70	80	50	35	35	35	1
67	Machoke	\N	Fighting	\N	405	80	100	70	50	60	45	1
68	Machamp	\N	Fighting	\N	505	90	130	80	65	85	55	1
69	Bellsprout	\N	Grass	Poison	300	50	75	35	70	30	40	1
70	Weepinbell	\N	Grass	Poison	390	65	90	50	85	45	55	1
71	Victreebel	\N	Grass	Poison	490	80	105	65	100	70	70	1
72	Tentacool	\N	Water	Poison	335	40	40	35	50	100	70	1
73	Tentacruel	\N	Water	Poison	515	80	70	65	80	120	100	1
74	Geodude	\N	Rock	Ground	300	40	80	100	30	30	20	1
75	Graveler	\N	Rock	Ground	390	55	95	115	45	45	35	1
76	Golem	\N	Rock	Ground	495	80	120	130	55	65	45	1
77	Ponyta	\N	Fire	\N	410	50	85	55	65	65	90	1
78	Rapidash	\N	Fire	\N	500	65	100	70	80	80	105	1
79	Slowpoke	\N	Water	Psychic	315	90	65	65	40	40	15	1
80	Slowbro	\N	Water	Psychic	490	95	75	110	100	80	30	1
81	Magnemite	\N	Electric	Steel	325	25	35	70	95	55	45	1
82	Magneton	\N	Electric	Steel	465	50	60	95	120	70	70	1
83	Farfetch'd	\N	Normal	Flying	377	52	90	55	58	62	60	1
84	Doduo	\N	Normal	Flying	310	35	85	45	35	35	75	1
85	Dodrio	\N	Normal	Flying	470	60	110	70	60	60	110	1
86	Seel	\N	Water	\N	325	65	45	55	45	70	45	1
87	Dewgong	\N	Water	Ice	475	90	70	80	70	95	70	1
88	Grimer	\N	Poison	\N	325	80	80	50	40	50	25	1
89	Muk	\N	Poison	\N	500	105	105	75	65	100	50	1
90	Shellder	\N	Water	\N	305	30	65	100	45	25	40	1
91	Cloyster	\N	Water	Ice	525	50	95	180	85	45	70	1
92	Gastly	\N	Ghost	Poison	310	30	35	30	100	35	80	1
93	Haunter	\N	Ghost	Poison	405	45	50	45	115	55	95	1
94	Gengar	\N	Ghost	Poison	500	60	65	60	130	75	110	1
95	Onix	\N	Rock	Ground	385	35	45	160	30	45	70	1
96	Drowzee	\N	Psychic	\N	328	60	48	45	43	90	42	1
97	Hypno	\N	Psychic	\N	483	85	73	70	73	115	67	1
98	Krabby	\N	Water	\N	325	30	105	90	25	25	50	1
99	Kingler	\N	Water	\N	475	55	130	115	50	50	75	1
100	Voltorb	\N	Electric	\N	330	40	30	50	55	55	100	1
101	Electrode	\N	Electric	\N	490	60	50	70	80	80	150	1
102	Exeggcute	\N	Grass	Psychic	325	60	40	80	60	45	40	1
103	Exeggutor	\N	Grass	Psychic	530	95	95	85	125	75	55	1
104	Cubone	\N	Ground	\N	320	50	50	95	40	50	35	1
105	Marowak	\N	Ground	\N	425	60	80	110	50	80	45	1
106	Hitmonlee	\N	Fighting	\N	455	50	120	53	35	110	87	1
107	Hitmonchan	\N	Fighting	\N	455	50	105	79	35	110	76	1
108	Lickitung	\N	Normal	\N	385	90	55	75	60	75	30	1
109	Koffing	\N	Poison	\N	340	40	65	95	60	45	35	1
110	Weezing	\N	Poison	\N	490	65	90	120	85	70	60	1
111	Rhyhorn	\N	Ground	Rock	345	80	85	95	30	30	25	1
112	Rhydon	\N	Ground	Rock	485	105	130	120	45	45	40	1
113	Chansey	\N	Normal	\N	450	250	5	5	35	105	50	1
114	Tangela	\N	Grass	\N	435	65	55	115	100	40	60	1
115	Kangaskhan	\N	Normal	\N	490	105	95	80	40	80	90	1
116	Horsea	\N	Water	\N	295	30	40	70	70	25	60	1
117	Seadra	\N	Water	\N	440	55	65	95	95	45	85	1
118	Goldeen	\N	Water	\N	320	45	67	60	35	50	63	1
119	Seaking	\N	Water	\N	450	80	92	65	65	80	68	1
120	Staryu	\N	Water	\N	340	30	45	55	70	55	85	1
121	Starmie	\N	Water	Psychic	520	60	75	85	100	85	115	1
122	Mr. Mime	\N	Psychic	Fairy	460	40	45	65	100	120	90	1
123	Scyther	\N	Bug	Flying	500	70	110	80	55	80	105	1
124	Jynx	\N	Ice	Psychic	455	65	50	35	115	95	95	1
125	Electabuzz	\N	Electric	\N	490	65	83	57	95	85	105	1
126	Magmar	\N	Fire	\N	495	65	95	57	100	85	93	1
127	Pinsir	\N	Bug	\N	500	65	125	100	55	70	85	1
128	Tauros	\N	Normal	\N	490	75	100	95	40	70	110	1
129	Magikarp	\N	Water	\N	200	20	10	55	15	20	80	1
130	Gyarados	\N	Water	Flying	540	95	125	79	60	100	81	1
131	Lapras	\N	Water	Ice	535	130	85	80	85	95	60	1
132	Ditto	\N	Normal	\N	288	48	48	48	48	48	48	1
133	Eevee	\N	Normal	\N	325	55	55	50	45	65	55	1
134	Vaporeon	\N	Water	\N	525	130	65	60	110	95	65	1
135	Jolteon	\N	Electric	\N	525	65	65	60	110	95	130	1
136	Flareon	\N	Fire	\N	525	65	130	60	95	110	65	1
137	Porygon	\N	Normal	\N	395	65	60	70	85	75	40	1
138	Omanyte	\N	Rock	Water	355	35	40	100	90	55	35	1
139	Omastar	\N	Rock	Water	495	70	60	125	115	70	55	1
140	Kabuto	\N	Rock	Water	355	30	80	90	55	45	55	1
141	Kabutops	\N	Rock	Water	495	60	115	105	65	70	80	1
142	Aerodactyl	\N	Rock	Flying	515	80	105	65	60	75	130	1
143	Snorlax	\N	Normal	\N	540	160	110	65	65	110	30	1
144	Articuno	\N	Ice	Flying	580	90	85	100	95	125	85	1
145	Zapdos	\N	Electric	Flying	580	90	90	85	125	90	100	1
146	Moltres	\N	Fire	Flying	580	90	100	90	125	85	90	1
147	Dratini	\N	Dragon	\N	300	41	64	45	50	50	50	1
148	Dragonair	\N	Dragon	\N	420	61	84	65	70	70	70	1
149	Dragonite	\N	Dragon	Flying	600	91	134	95	100	100	80	1
150	Mewtwo	\N	Psychic	\N	680	106	110	90	154	90	130	1
151	Mew	\N	Psychic	\N	600	100	100	100	100	100	100	1
152	Chikorita	\N	Grass	\N	318	45	49	65	49	65	45	2
153	Bayleef	\N	Grass	\N	405	60	62	80	63	80	60	2
154	Meganium	\N	Grass	\N	525	80	82	100	83	100	80	2
155	Cyndaquil	\N	Fire	\N	309	39	52	43	60	50	65	2
156	Quilava	\N	Fire	\N	405	58	64	58	80	65	80	2
157	Typhlosion	\N	Fire	\N	534	78	84	78	109	85	100	2
158	Totodile	\N	Water	\N	314	50	65	64	44	48	43	2
159	Croconaw	\N	Water	\N	405	65	80	80	59	63	58	2
160	Feraligatr	\N	Water	\N	530	85	105	100	79	83	78	2
161	Sentret	\N	Normal	\N	215	35	46	34	35	45	20	2
162	Furret	\N	Normal	\N	415	85	76	64	45	55	90	2
163	Hoothoot	\N	Normal	Flying	262	60	30	30	36	56	50	2
164	Noctowl	\N	Normal	Flying	452	100	50	50	86	96	70	2
165	Ledyba	\N	Bug	Flying	265	40	20	30	40	80	55	2
166	Ledian	\N	Bug	Flying	390	55	35	50	55	110	85	2
167	Spinarak	\N	Bug	Poison	250	40	60	40	40	40	30	2
168	Ariados	\N	Bug	Poison	400	70	90	70	60	70	40	2
169	Crobat	\N	Poison	Flying	535	85	90	80	70	80	130	2
170	Chinchou	\N	Water	Electric	330	75	38	38	56	56	67	2
171	Lanturn	\N	Water	Electric	460	125	58	58	76	76	67	2
172	Pichu	\N	Electric	\N	205	20	40	15	35	35	60	2
173	Cleffa	\N	Fairy	\N	218	50	25	28	45	55	15	2
174	Igglybuff	\N	Normal	Fairy	210	90	30	15	40	20	15	2
175	Togepi	\N	Fairy	\N	245	35	20	65	40	65	20	2
176	Togetic	\N	Fairy	Flying	405	55	40	85	80	105	40	2
177	Natu	\N	Psychic	Flying	320	40	50	45	70	45	70	2
178	Xatu	\N	Psychic	Flying	470	65	75	70	95	70	95	2
179	Mareep	\N	Electric	\N	280	55	40	40	65	45	35	2
180	Flaaffy	\N	Electric	\N	365	70	55	55	80	60	45	2
181	Ampharos	\N	Electric	\N	510	90	75	85	115	90	55	2
182	Bellossom	\N	Grass	\N	490	75	80	95	90	100	50	2
183	Marill	\N	Water	Fairy	250	70	20	50	20	50	40	2
184	Azumarill	\N	Water	Fairy	420	100	50	80	60	80	50	2
185	Sudowoodo	\N	Rock	\N	410	70	100	115	30	65	30	2
186	Politoed	\N	Water	\N	500	90	75	75	90	100	70	2
187	Hoppip	\N	Grass	Flying	250	35	35	40	35	55	50	2
188	Skiploom	\N	Grass	Flying	340	55	45	50	45	65	80	2
189	Jumpluff	\N	Grass	Flying	460	75	55	70	55	95	110	2
190	Aipom	\N	Normal	\N	360	55	70	55	40	55	85	2
191	Sunkern	\N	Grass	\N	180	30	30	30	30	30	30	2
192	Sunflora	\N	Grass	\N	425	75	75	55	105	85	30	2
193	Yanma	\N	Bug	Flying	390	65	65	45	75	45	95	2
194	Wooper	\N	Water	Ground	210	55	45	45	25	25	15	2
195	Quagsire	\N	Water	Ground	430	95	85	85	65	65	35	2
196	Espeon	\N	Psychic	\N	525	65	65	60	130	95	110	2
197	Umbreon	\N	Dark	\N	525	95	65	110	60	130	65	2
198	Murkrow	\N	Dark	Flying	405	60	85	42	85	42	91	2
199	Slowking	\N	Water	Psychic	490	95	75	80	100	110	30	2
200	Misdreavus	\N	Ghost	\N	435	60	60	60	85	85	85	2
201	Unown	\N	Psychic	\N	336	48	72	48	72	48	48	2
202	Wobbuffet	\N	Psychic	\N	405	190	33	58	33	58	33	2
203	Girafarig	\N	Normal	Psychic	455	70	80	65	90	65	85	2
204	Pineco	\N	Bug	\N	290	50	65	90	35	35	15	2
205	Forretress	\N	Bug	Steel	465	75	90	140	60	60	40	2
206	Dunsparce	\N	Normal	\N	415	100	70	70	65	65	45	2
207	Gligar	\N	Ground	Flying	430	65	75	105	35	65	85	2
208	Steelix	\N	Steel	Ground	510	75	85	200	55	65	30	2
209	Snubbull	\N	Fairy	\N	300	60	80	50	40	40	30	2
210	Granbull	\N	Fairy	\N	450	90	120	75	60	60	45	2
211	Qwilfish	\N	Water	Poison	440	65	95	85	55	55	85	2
212	Scizor	\N	Bug	Steel	500	70	130	100	55	80	65	2
213	Shuckle	\N	Bug	Rock	505	20	10	230	10	230	5	2
214	Heracross	\N	Bug	Fighting	500	80	125	75	40	95	85	2
215	Sneasel	\N	Dark	Ice	430	55	95	55	35	75	115	2
216	Teddiursa	\N	Normal	\N	330	60	80	50	50	50	40	2
217	Ursaring	\N	Normal	\N	500	90	130	75	75	75	55	2
218	Slugma	\N	Fire	\N	250	40	40	40	70	40	20	2
219	Magcargo	\N	Fire	Rock	430	60	50	120	90	80	30	2
220	Swinub	\N	Ice	Ground	250	50	50	40	30	30	50	2
221	Piloswine	\N	Ice	Ground	450	100	100	80	60	60	50	2
222	Corsola	\N	Water	Rock	410	65	55	95	65	95	35	2
223	Remoraid	\N	Water	\N	300	35	65	35	65	35	65	2
224	Octillery	\N	Water	\N	480	75	105	75	105	75	45	2
225	Delibird	\N	Ice	Flying	330	45	55	45	65	45	75	2
226	Mantine	\N	Water	Flying	485	85	40	70	80	140	70	2
227	Skarmory	\N	Steel	Flying	465	65	80	140	40	70	70	2
228	Houndour	\N	Dark	Fire	330	45	60	30	80	50	65	2
229	Houndoom	\N	Dark	Fire	500	75	90	50	110	80	95	2
230	Kingdra	\N	Water	Dragon	540	75	95	95	95	95	85	2
231	Phanpy	\N	Ground	\N	330	90	60	60	40	40	40	2
232	Donphan	\N	Ground	\N	500	90	120	120	60	60	50	2
233	Porygon2	\N	Normal	\N	515	85	80	90	105	95	60	2
234	Stantler	\N	Normal	\N	465	73	95	62	85	65	85	2
235	Smeargle	\N	Normal	\N	250	55	20	35	20	45	75	2
236	Tyrogue	\N	Fighting	\N	210	35	35	35	35	35	35	2
237	Hitmontop	\N	Fighting	\N	455	50	95	95	35	110	70	2
238	Smoochum	\N	Ice	Psychic	305	45	30	15	85	65	65	2
239	Elekid	\N	Electric	\N	360	45	63	37	65	55	95	2
240	Magby	\N	Fire	\N	365	45	75	37	70	55	83	2
241	Miltank	\N	Normal	\N	490	95	80	105	40	70	100	2
242	Blissey	\N	Normal	\N	540	255	10	10	75	135	55	2
243	Raikou	\N	Electric	\N	580	90	85	75	115	100	115	2
244	Entei	\N	Fire	\N	580	115	115	85	90	75	100	2
245	Suicune	\N	Water	\N	580	100	75	115	90	115	85	2
246	Larvitar	\N	Rock	Ground	300	50	64	50	45	50	41	2
247	Pupitar	\N	Rock	Ground	410	70	84	70	65	70	51	2
248	Tyranitar	\N	Rock	Dark	600	100	134	110	95	100	61	2
249	Lugia	\N	Psychic	Flying	680	106	90	130	90	154	110	2
250	Ho-oh	\N	Fire	Flying	680	106	130	90	110	154	90	2
251	Celebi	\N	Psychic	Grass	600	100	100	100	100	100	100	2
252	Treecko	\N	Grass	\N	310	40	45	35	65	55	70	3
253	Grovyle	\N	Grass	\N	405	50	65	45	85	65	95	3
254	Sceptile	\N	Grass	\N	530	70	85	65	105	85	120	3
255	Torchic	\N	Fire	\N	310	45	60	40	70	50	45	3
256	Combusken	\N	Fire	Fighting	405	60	85	60	85	60	55	3
257	Blaziken	\N	Fire	Fighting	530	80	120	70	110	70	80	3
258	Mudkip	\N	Water	\N	310	50	70	50	50	50	40	3
259	Marshtomp	\N	Water	Ground	405	70	85	70	60	70	50	3
260	Swampert	\N	Water	Ground	535	100	110	90	85	90	60	3
261	Poochyena	\N	Dark	\N	220	35	55	35	30	30	35	3
262	Mightyena	\N	Dark	\N	420	70	90	70	60	60	70	3
263	Zigzagoon	\N	Normal	\N	240	38	30	41	30	41	60	3
264	Linoone	\N	Normal	\N	420	78	70	61	50	61	100	3
265	Wurmple	\N	Bug	\N	195	45	45	35	20	30	20	3
266	Silcoon	\N	Bug	\N	205	50	35	55	25	25	15	3
267	Beautifly	\N	Bug	Flying	395	60	70	50	100	50	65	3
268	Cascoon	\N	Bug	\N	205	50	35	55	25	25	15	3
269	Dustox	\N	Bug	Poison	385	60	50	70	50	90	65	3
270	Lotad	\N	Water	Grass	220	40	30	30	40	50	30	3
271	Lombre	\N	Water	Grass	340	60	50	50	60	70	50	3
272	Ludicolo	\N	Water	Grass	480	80	70	70	90	100	70	3
273	Seedot	\N	Grass	\N	220	40	40	50	30	30	30	3
274	Nuzleaf	\N	Grass	Dark	340	70	70	40	60	40	60	3
275	Shiftry	\N	Grass	Dark	480	90	100	60	90	60	80	3
276	Taillow	\N	Normal	Flying	270	40	55	30	30	30	85	3
277	Swellow	\N	Normal	Flying	455	60	85	60	75	50	125	3
278	Wingull	\N	Water	Flying	270	40	30	30	55	30	85	3
279	Pelipper	\N	Water	Flying	440	60	50	100	95	70	65	3
280	Ralts	\N	Psychic	Fairy	198	28	25	25	45	35	40	3
281	Kirlia	\N	Psychic	Fairy	278	38	35	35	65	55	50	3
282	Gardevoir	\N	Psychic	Fairy	518	68	65	65	125	115	80	3
283	Surskit	\N	Bug	Water	269	40	30	32	50	52	65	3
284	Masquerain	\N	Bug	Flying	454	70	60	62	100	82	80	3
285	Shroomish	\N	Grass	\N	295	60	40	60	40	60	35	3
286	Breloom	\N	Grass	Fighting	460	60	130	80	60	60	70	3
287	Slakoth	\N	Normal	\N	280	60	60	60	35	35	30	3
288	Vigoroth	\N	Normal	\N	440	80	80	80	55	55	90	3
289	Slaking	\N	Normal	\N	670	150	160	100	95	65	100	3
290	Nincada	\N	Bug	Ground	266	31	45	90	30	30	40	3
291	Ninjask	\N	Bug	Flying	456	61	90	45	50	50	160	3
292	Shedinja	\N	Bug	Ghost	236	1	90	45	30	30	40	3
293	Whismur	\N	Normal	\N	240	64	51	23	51	23	28	3
294	Loudred	\N	Normal	\N	360	84	71	43	71	43	48	3
295	Exploud	\N	Normal	\N	490	104	91	63	91	73	68	3
296	Makuhita	\N	Fighting	\N	237	72	60	30	20	30	25	3
297	Hariyama	\N	Fighting	\N	474	144	120	60	40	60	50	3
298	Azurill	\N	Normal	Fairy	190	50	20	40	20	40	20	3
299	Nosepass	\N	Rock	\N	375	30	45	135	45	90	30	3
300	Skitty	\N	Normal	\N	260	50	45	45	35	35	50	3
301	Delcatty	\N	Normal	\N	400	70	65	65	55	55	90	3
302	Sableye	\N	Dark	Ghost	380	50	75	75	65	65	50	3
303	Mawile	\N	Steel	Fairy	380	50	85	85	55	55	50	3
304	Aron	\N	Steel	Rock	330	50	70	100	40	40	30	3
305	Lairon	\N	Steel	Rock	430	60	90	140	50	50	40	3
306	Aggron	\N	Steel	Rock	530	70	110	180	60	60	50	3
307	Meditite	\N	Fighting	Psychic	280	30	40	55	40	55	60	3
308	Medicham	\N	Fighting	Psychic	410	60	60	75	60	75	80	3
309	Electrike	\N	Electric	\N	295	40	45	40	65	40	65	3
310	Manectric	\N	Electric	\N	475	70	75	60	105	60	105	3
311	Plusle	\N	Electric	\N	405	60	50	40	85	75	95	3
312	Minun	\N	Electric	\N	405	60	40	50	75	85	95	3
313	Volbeat	\N	Bug	\N	430	65	73	75	47	85	85	3
314	Illumise	\N	Bug	\N	430	65	47	75	73	85	85	3
315	Roselia	\N	Grass	Poison	400	50	60	45	100	80	65	3
316	Gulpin	\N	Poison	\N	302	70	43	53	43	53	40	3
317	Swalot	\N	Poison	\N	467	100	73	83	73	83	55	3
318	Carvanha	\N	Water	Dark	305	45	90	20	65	20	65	3
319	Sharpedo	\N	Water	Dark	460	70	120	40	95	40	95	3
320	Wailmer	\N	Water	\N	400	130	70	35	70	35	60	3
321	Wailord	\N	Water	\N	500	170	90	45	90	45	60	3
322	Numel	\N	Fire	Ground	305	60	60	40	65	45	35	3
323	Camerupt	\N	Fire	Ground	460	70	100	70	105	75	40	3
324	Torkoal	\N	Fire	\N	470	70	85	140	85	70	20	3
325	Spoink	\N	Psychic	\N	330	60	25	35	70	80	60	3
326	Grumpig	\N	Psychic	\N	470	80	45	65	90	110	80	3
327	Spinda	\N	Normal	\N	360	60	60	60	60	60	60	3
328	Trapinch	\N	Ground	\N	290	45	100	45	45	45	10	3
329	Vibrava	\N	Ground	Dragon	340	50	70	50	50	50	70	3
330	Flygon	\N	Ground	Dragon	520	80	100	80	80	80	100	3
331	Cacnea	\N	Grass	\N	335	50	85	40	85	40	35	3
332	Cacturne	\N	Grass	Dark	475	70	115	60	115	60	55	3
333	Swablu	\N	Normal	Flying	310	45	40	60	40	75	50	3
334	Altaria	\N	Dragon	Flying	490	75	70	90	70	105	80	3
335	Zangoose	\N	Normal	\N	458	73	115	60	60	60	90	3
336	Seviper	\N	Poison	\N	458	73	100	60	100	60	65	3
337	Lunatone	\N	Rock	Psychic	460	90	55	65	95	85	70	3
338	Solrock	\N	Rock	Psychic	460	90	95	85	55	65	70	3
339	Barboach	\N	Water	Ground	288	50	48	43	46	41	60	3
340	Whiscash	\N	Water	Ground	468	110	78	73	76	71	60	3
341	Corphish	\N	Water	\N	308	43	80	65	50	35	35	3
342	Crawdaunt	\N	Water	Dark	468	63	120	85	90	55	55	3
343	Baltoy	\N	Ground	Psychic	300	40	40	55	40	70	55	3
344	Claydol	\N	Ground	Psychic	500	60	70	105	70	120	75	3
345	Lileep	\N	Rock	Grass	355	66	41	77	61	87	23	3
346	Cradily	\N	Rock	Grass	495	86	81	97	81	107	43	3
347	Anorith	\N	Rock	Bug	355	45	95	50	40	50	75	3
348	Armaldo	\N	Rock	Bug	495	75	125	100	70	80	45	3
349	Feebas	\N	Water	\N	200	20	15	20	10	55	80	3
350	Milotic	\N	Water	\N	540	95	60	79	100	125	81	3
351	Castform	\N	Normal	\N	420	70	70	70	70	70	70	3
351	Castform	Sunny Form	Fire	\N	420	70	70	70	70	70	70	3
351	Castform	Rainy Form	Water	\N	420	70	70	70	70	70	70	3
351	Castform	Snowy Form	Ice	\N	420	70	70	70	70	70	70	3
352	Kecleon	\N	Normal	\N	440	60	90	70	60	120	40	3
353	Shuppet	\N	Ghost	\N	295	44	75	35	63	33	45	3
354	Banette	\N	Ghost	\N	455	64	115	65	83	63	65	3
355	Duskull	\N	Ghost	\N	295	20	40	90	30	90	25	3
356	Dusclops	\N	Ghost	\N	455	40	70	130	60	130	25	3
357	Tropius	\N	Grass	Flying	460	99	68	83	72	87	51	3
358	Chimecho	\N	Psychic	\N	455	75	50	80	95	90	65	3
359	Absol	\N	Dark	\N	465	65	130	60	75	60	75	3
360	Wynaut	\N	Psychic	\N	260	95	23	48	23	48	23	3
361	Snorunt	\N	Ice	\N	300	50	50	50	50	50	50	3
362	Glalie	\N	Ice	\N	480	80	80	80	80	80	80	3
363	Spheal	\N	Ice	Water	290	70	40	50	55	50	25	3
364	Sealeo	\N	Ice	Water	410	90	60	70	75	70	45	3
365	Walrein	\N	Ice	Water	530	110	80	90	95	90	65	3
366	Clamperl	\N	Water	\N	345	35	64	85	74	55	32	3
367	Huntail	\N	Water	\N	485	55	104	105	94	75	52	3
368	Gorebyss	\N	Water	\N	485	55	84	105	114	75	52	3
369	Relicanth	\N	Water	Rock	485	100	90	130	45	65	55	3
370	Luvdisc	\N	Water	\N	330	43	30	55	40	65	97	3
371	Bagon	\N	Dragon	\N	300	45	75	60	40	30	50	3
372	Shelgon	\N	Dragon	\N	420	65	95	100	60	50	50	3
373	Salamence	\N	Dragon	Flying	600	95	135	80	110	80	100	3
374	Beldum	\N	Steel	Psychic	300	40	55	80	35	60	30	3
375	Metang	\N	Steel	Psychic	420	60	75	100	55	80	50	3
376	Metagross	\N	Steel	Psychic	600	80	135	130	95	90	70	3
377	Regirock	\N	Rock	\N	580	80	100	200	50	100	50	3
378	Regice	\N	Ice	\N	580	80	50	100	100	200	50	3
379	Registeel	\N	Steel	\N	580	80	75	150	75	150	50	3
380	Latias	\N	Dragon	Psychic	600	80	80	90	110	130	110	3
381	Latios	\N	Dragon	Psychic	600	80	90	80	130	110	110	3
382	Kyogre	\N	Water	\N	670	100	100	90	150	140	90	3
383	Groudon	\N	Ground	\N	670	100	150	140	100	90	90	3
384	Rayquaza	\N	Dragon	Flying	680	105	150	90	150	90	95	3
385	Jirachi	\N	Steel	Psychic	600	100	100	100	100	100	100	3
386	Deoxys	Normal Forme	Psychic	\N	600	50	150	50	150	50	150	3
386	Deoxys	Attack Forme	Psychic	\N	600	50	180	20	180	20	150	3
386	Deoxys	Defense Forme	Psychic	\N	600	50	70	160	70	160	90	3
386	Deoxys	Speed Forme	Psychic	\N	600	50	95	90	95	90	180	3
387	Turtwig	\N	Grass	\N	318	55	68	64	45	55	31	4
388	Grotle	\N	Grass	\N	405	75	89	85	55	65	36	4
389	Torterra	\N	Grass	Ground	525	95	109	105	75	85	56	4
390	Chimchar	\N	Fire	\N	309	44	58	44	58	44	61	4
391	Monferno	\N	Fire	Fighting	405	64	78	52	78	52	81	4
392	Infernape	\N	Fire	Fighting	534	76	104	71	104	71	108	4
393	Piplup	\N	Water	\N	314	53	51	53	61	56	40	4
394	Prinplup	\N	Water	\N	405	64	66	68	81	76	50	4
395	Empoleon	\N	Water	Steel	530	84	86	88	111	101	60	4
396	Starly	\N	Normal	Flying	245	40	55	30	30	30	60	4
397	Staravia	\N	Normal	Flying	340	55	75	50	40	40	80	4
398	Staraptor	\N	Normal	Flying	485	85	120	70	50	60	100	4
399	Bidoof	\N	Normal	\N	250	59	45	40	35	40	31	4
400	Bibarel	\N	Normal	Water	410	79	85	60	55	60	71	4
401	Kricketot	\N	Bug	\N	194	37	25	41	25	41	25	4
402	Kricketune	\N	Bug	\N	384	77	85	51	55	51	65	4
403	Shinx	\N	Electric	\N	263	45	65	34	40	34	45	4
404	Luxio	\N	Electric	\N	363	60	85	49	60	49	60	4
405	Luxray	\N	Electric	\N	523	80	120	79	95	79	70	4
406	Budew	\N	Grass	Poison	280	40	30	35	50	70	55	4
407	Roserade	\N	Grass	Poison	515	60	70	65	125	105	90	4
408	Cranidos	\N	Rock	\N	350	67	125	40	30	30	58	4
409	Rampardos	\N	Rock	\N	495	97	165	60	65	50	58	4
410	Shieldon	\N	Rock	Steel	350	30	42	118	42	88	30	4
411	Bastiodon	\N	Rock	Steel	495	60	52	168	47	138	30	4
412	Burmy	Plant Cloak	Bug	\N	224	40	29	45	29	45	36	4
412	Burmy	Sandy Cloak	Bug	\N	224	40	29	45	29	45	36	4
412	Burmy	Trash Cloak	Bug	\N	224	40	29	45	29	45	36	4
413	Wormadam	Plant Cloak	Bug	Grass	424	60	59	85	79	105	36	4
413	Wormadam	Sandy Cloak	Bug	Ground	424	60	79	105	59	85	36	4
413	Wormadam	Trash Cloak	Bug	Steel	424	60	69	95	69	95	36	4
414	Mothim	\N	Bug	Flying	424	70	94	50	94	50	66	4
415	Combee	\N	Bug	Flying	244	30	30	42	30	42	70	4
416	Vespiquen	\N	Bug	Flying	474	70	80	102	80	102	40	4
417	Pachirisu	\N	Electric	\N	405	60	45	70	45	90	95	4
418	Buizel	\N	Water	\N	330	55	65	35	60	30	85	4
419	Floatzel	\N	Water	\N	495	85	105	55	85	50	115	4
420	Cherubi	\N	Grass	\N	275	45	35	45	62	53	35	4
421	Cherrim	\N	Grass	\N	450	70	60	70	87	78	85	4
422	Shellos	\N	Water	\N	325	76	48	48	57	62	34	4
423	Gastrodon	\N	Water	Ground	475	111	83	68	92	82	39	4
424	Ambipom	\N	Normal	\N	482	75	100	66	60	66	115	4
425	Drifloon	\N	Ghost	Flying	348	90	50	34	60	44	70	4
426	Drifblim	\N	Ghost	Flying	498	150	80	44	90	54	80	4
427	Buneary	\N	Normal	\N	350	55	66	44	44	56	85	4
428	Lopunny	\N	Normal	\N	480	65	76	84	54	96	105	4
429	Mismagius	\N	Ghost	\N	495	60	60	60	105	105	105	4
430	Honchkrow	\N	Dark	Flying	505	100	125	52	105	52	71	4
431	Glameow	\N	Normal	\N	310	49	55	42	42	37	85	4
432	Purugly	\N	Normal	\N	452	71	82	64	64	59	112	4
433	Chingling	\N	Psychic	\N	285	45	30	50	65	50	45	4
434	Stunky	\N	Poison	Dark	329	63	63	47	41	41	74	4
435	Skuntank	\N	Poison	Dark	479	103	93	67	71	61	84	4
436	Bronzor	\N	Steel	Psychic	300	57	24	86	24	86	23	4
437	Bronzong	\N	Steel	Psychic	500	67	89	116	79	116	33	4
438	Bonsly	\N	Rock	\N	290	50	80	95	10	45	10	4
439	Mime Jr.	\N	Psychic	Fairy	310	20	25	45	70	90	60	4
440	Happiny	\N	Normal	\N	220	100	5	5	15	65	30	4
441	Chatot	\N	Normal	Flying	411	76	65	45	92	42	91	4
442	Spiritomb	\N	Ghost	Dark	485	50	92	108	92	108	35	4
443	Gible	\N	Dragon	Ground	300	58	70	45	40	45	42	4
444	Gabite	\N	Dragon	Ground	410	68	90	65	50	55	82	4
445	Garchomp	\N	Dragon	Ground	600	108	130	95	80	85	102	4
446	Munchlax	\N	Normal	\N	390	135	85	40	40	85	5	4
447	Riolu	\N	Fighting	\N	285	40	70	40	35	40	60	4
448	Lucario	\N	Fighting	Steel	525	70	110	70	115	70	90	4
449	Hippopotas	\N	Ground	\N	330	68	72	78	38	42	32	4
450	Hippowdon	\N	Ground	\N	525	108	112	118	68	72	47	4
451	Skorupi	\N	Poison	Bug	330	40	50	90	30	55	65	4
452	Drapion	\N	Poison	Dark	500	70	90	110	60	75	95	4
453	Croagunk	\N	Poison	Fighting	300	48	61	40	61	40	50	4
454	Toxicroak	\N	Poison	Fighting	490	83	106	65	86	65	85	4
455	Carnivine	\N	Grass	\N	454	74	100	72	90	72	46	4
456	Finneon	\N	Water	\N	330	49	49	56	49	61	66	4
457	Lumineon	\N	Water	\N	460	69	69	76	69	86	91	4
458	Mantyke	\N	Water	Flying	345	45	20	50	60	120	50	4
459	Snover	\N	Grass	Ice	334	60	62	50	62	60	40	4
460	Abomasnow	\N	Grass	Ice	494	90	92	75	92	85	60	4
461	Weavile	\N	Dark	Ice	510	70	120	65	45	85	125	4
462	Magnezone	\N	Electric	Steel	535	70	70	115	130	90	60	4
463	Lickilicky	\N	Normal	\N	515	110	85	95	80	95	50	4
464	Rhyperior	\N	Ground	Rock	535	115	140	130	55	55	40	4
465	Tangrowth	\N	Grass	\N	535	100	100	125	110	50	50	4
466	Electivire	\N	Electric	\N	540	75	123	67	95	85	95	4
467	Magmortar	\N	Fire	\N	540	75	95	67	125	95	83	4
468	Togekiss	\N	Fairy	Flying	545	85	50	95	120	115	80	4
469	Yanmega	\N	Bug	Flying	515	86	76	86	116	56	95	4
470	Leafeon	\N	Grass	\N	525	65	110	130	60	65	95	4
471	Glaceon	\N	Ice	\N	525	65	60	110	130	95	65	4
472	Gliscor	\N	Ground	Flying	510	75	95	125	45	75	95	4
473	Mamoswine	\N	Ice	Ground	530	110	130	80	70	60	80	4
474	Porygon-Z	\N	Normal	\N	535	85	80	70	135	75	90	4
475	Gallade	\N	Psychic	Fighting	518	68	125	65	65	115	80	4
476	Probopass	\N	Rock	Steel	525	60	55	145	75	150	40	4
477	Dusknoir	\N	Ghost	\N	525	45	100	135	65	135	45	4
478	Froslass	\N	Ice	Ghost	480	70	80	70	80	70	110	4
479	Rotom	\N	Electric	Ghost	440	50	50	77	95	77	91	4
479	Rotom	Heat Rotom	Electric	Fire	520	50	65	107	105	107	86	4
479	Rotom	Wash Rotom	Electric	Water	520	50	65	107	105	107	86	4
479	Rotom	Frost Rotom	Electric	Ice	520	50	65	107	105	107	86	4
479	Rotom	Fan Rotom	Electric	Flying	520	50	65	107	105	107	86	4
479	Rotom	Mow Rotom	Electric	Grass	520	50	65	107	105	107	86	4
480	Uxie	\N	Psychic	\N	580	75	75	130	75	130	95	4
481	Mesprit	\N	Psychic	\N	580	80	105	105	105	105	80	4
482	Azelf	\N	Psychic	\N	580	75	125	70	125	70	115	4
483	Dialga	\N	Steel	Dragon	680	100	120	120	150	100	90	4
484	Palkia	\N	Water	Dragon	680	90	120	100	150	120	100	4
485	Heatran	\N	Fire	Steel	600	91	90	106	130	106	77	4
486	Regigigas	\N	Normal	\N	670	110	160	110	80	110	100	4
487	Giratina	Altered Forme	Ghost	Dragon	680	150	100	120	100	120	90	4
487	Giratina	Origin Forme	Ghost	Dragon	680	150	120	100	120	100	90	4
488	Cresselia	\N	Psychic	\N	580	120	70	110	75	120	85	4
489	Phione	\N	Water	\N	480	80	80	80	80	80	80	4
490	Manaphy	\N	Water	\N	600	100	100	100	100	100	100	4
491	Darkrai	\N	Dark	\N	600	70	90	90	135	90	125	4
492	Shaymin	Land Forme	Grass	\N	600	100	100	100	100	100	100	4
492	Shaymin	Sky Forme	Grass	Flying	600	100	103	75	120	75	127	4
493	Arceus	\N	Normal	\N	720	120	120	120	120	120	120	4
494	Victini	\N	Psychic	Fire	600	100	100	100	100	100	100	5
495	Snivy	\N	Grass	\N	308	45	45	55	45	55	63	5
496	Servine	\N	Grass	\N	413	60	60	75	60	75	83	5
497	Serperior	\N	Grass	\N	528	75	75	95	75	95	113	5
498	Tepig	\N	Fire	\N	308	65	63	45	45	45	45	5
499	Pignite	\N	Fire	Fighting	418	90	93	55	70	55	55	5
500	Emboar	\N	Fire	Fighting	528	110	123	65	100	65	65	5
501	Oshawott	\N	Water	\N	308	55	55	45	63	45	45	5
502	Dewott	\N	Water	\N	413	75	75	60	83	60	60	5
503	Samurott	\N	Water	\N	528	95	100	85	108	70	70	5
504	Patrat	\N	Normal	\N	255	45	55	39	35	39	42	5
505	Watchog	\N	Normal	\N	420	60	85	69	60	69	77	5
506	Lillipup	\N	Normal	\N	275	45	60	45	25	45	55	5
507	Herdier	\N	Normal	\N	370	65	80	65	35	65	60	5
508	Stoutland	\N	Normal	\N	500	85	110	90	45	90	80	5
509	Purrloin	\N	Dark	\N	281	41	50	37	50	37	66	5
510	Liepard	\N	Dark	\N	446	64	88	50	88	50	106	5
511	Pansage	\N	Grass	\N	316	50	53	48	53	48	64	5
512	Simisage	\N	Grass	\N	498	75	98	63	98	63	101	5
513	Pansear	\N	Fire	\N	316	50	53	48	53	48	64	5
514	Simisear	\N	Fire	\N	498	75	98	63	98	63	101	5
515	Panpour	\N	Water	\N	316	50	53	48	53	48	64	5
516	Simipour	\N	Water	\N	498	75	98	63	98	63	101	5
517	Munna	\N	Psychic	\N	292	76	25	45	67	55	24	5
518	Musharna	\N	Psychic	\N	487	116	55	85	107	95	29	5
519	Pidove	\N	Normal	Flying	264	50	55	50	36	30	43	5
520	Tranquill	\N	Normal	Flying	358	62	77	62	50	42	65	5
521	Unfezant	\N	Normal	Flying	488	80	115	80	65	55	93	5
522	Blitzle	\N	Electric	\N	295	45	60	32	50	32	76	5
523	Zebstrika	\N	Electric	\N	497	75	100	63	80	63	116	5
524	Roggenrola	\N	Rock	\N	280	55	75	85	25	25	15	5
525	Boldore	\N	Rock	\N	390	70	105	105	50	40	20	5
526	Gigalith	\N	Rock	\N	515	85	135	130	60	80	25	5
527	Woobat	\N	Psychic	Flying	323	65	45	43	55	43	72	5
528	Swoobat	\N	Psychic	Flying	425	67	57	55	77	55	114	5
529	Drilbur	\N	Ground	\N	328	60	85	40	30	45	68	5
530	Excadrill	\N	Ground	Steel	508	110	135	60	50	65	88	5
531	Audino	\N	Normal	\N	445	103	60	86	60	86	50	5
532	Timburr	\N	Fighting	\N	305	75	80	55	25	35	35	5
533	Gurdurr	\N	Fighting	\N	405	85	105	85	40	50	40	5
534	Conkeldurr	\N	Fighting	\N	505	105	140	95	55	65	45	5
535	Tympole	\N	Water	\N	294	50	50	40	50	40	64	5
536	Palpitoad	\N	Water	Ground	384	75	65	55	65	55	69	5
537	Seismitoad	\N	Water	Ground	509	105	95	75	85	75	74	5
538	Throh	\N	Fighting	\N	465	120	100	85	30	85	45	5
539	Sawk	\N	Fighting	\N	465	75	125	75	30	75	85	5
540	Sewaddle	\N	Bug	Grass	310	45	53	70	40	60	42	5
541	Swadloon	\N	Bug	Grass	380	55	63	90	50	80	42	5
542	Leavanny	\N	Bug	Grass	500	75	103	80	70	80	92	5
543	Venipede	\N	Bug	Poison	260	30	45	59	30	39	57	5
544	Whirlipede	\N	Bug	Poison	360	40	55	99	40	79	47	5
545	Scolipede	\N	Bug	Poison	485	60	100	89	55	69	112	5
546	Cottonee	\N	Grass	Fairy	280	40	27	60	37	50	66	5
547	Whimsicott	\N	Grass	Fairy	480	60	67	85	77	75	116	5
548	Petilil	\N	Grass	\N	280	45	35	50	70	50	30	5
549	Lilligant	\N	Grass	\N	480	70	60	75	110	75	90	5
550	Basculin	Red-Striped Form	Water	\N	460	70	92	65	80	55	98	5
550	Basculin	Blue-Striped Form	Water	\N	460	70	92	65	80	55	98	5
551	Sandile	\N	Ground	Dark	292	50	72	35	35	35	65	5
552	Krokorok	\N	Ground	Dark	351	60	82	45	45	45	74	5
553	Krookodile	\N	Ground	Dark	519	95	117	80	65	70	92	5
554	Darumaka	\N	Fire	\N	315	70	90	45	15	45	50	5
555	Darmanitan	Standard Mode	Fire	\N	480	105	140	55	30	55	95	5
555	Darmanitan	Zen Mode	Fire	Psychic	540	105	30	105	140	105	55	5
556	Maractus	\N	Grass	\N	461	75	86	67	106	67	60	5
557	Dwebble	\N	Bug	Rock	325	50	65	85	35	35	55	5
558	Crustle	\N	Bug	Rock	485	70	105	125	65	75	45	5
559	Scraggy	\N	Dark	Fighting	348	50	75	70	35	70	48	5
560	Scrafty	\N	Dark	Fighting	488	65	90	115	45	115	58	5
561	Sigilyph	\N	Psychic	Flying	490	72	58	80	103	80	97	5
562	Yamask	\N	Ghost	\N	303	38	30	85	55	65	30	5
563	Cofagrigus	\N	Ghost	\N	483	58	50	145	95	105	30	5
564	Tirtouga	\N	Water	Rock	355	54	78	103	53	45	22	5
565	Carracosta	\N	Water	Rock	495	74	108	133	83	65	32	5
566	Archen	\N	Rock	Flying	401	55	112	45	74	45	70	5
567	Archeops	\N	Rock	Flying	567	75	140	65	112	65	110	5
568	Trubbish	\N	Poison	\N	329	50	50	62	40	62	65	5
569	Garbodor	\N	Poison	\N	474	80	95	82	60	82	75	5
570	Zorua	\N	Dark	\N	330	40	65	40	80	40	65	5
571	Zoroark	\N	Dark	\N	510	60	105	60	120	60	105	5
572	Minccino	\N	Normal	\N	300	55	50	40	40	40	75	5
573	Cinccino	\N	Normal	\N	470	75	95	60	65	60	115	5
574	Gothita	\N	Psychic	\N	290	45	30	50	55	65	45	5
575	Gothorita	\N	Psychic	\N	390	60	45	70	75	85	55	5
576	Gothitelle	\N	Psychic	\N	490	70	55	95	95	110	65	5
577	Solosis	\N	Psychic	\N	290	45	30	40	105	50	20	5
578	Duosion	\N	Psychic	\N	370	65	40	50	125	60	30	5
579	Reuniclus	\N	Psychic	\N	490	110	65	75	125	85	30	5
580	Ducklett	\N	Water	Flying	305	62	44	50	44	50	55	5
581	Swanna	\N	Water	Flying	473	75	87	63	87	63	98	5
582	Vanillite	\N	Ice	\N	305	36	50	50	65	60	44	5
583	Vanillish	\N	Ice	\N	395	51	65	65	80	75	59	5
584	Vanilluxe	\N	Ice	\N	535	71	95	85	110	95	79	5
585	Deerling	\N	Normal	Grass	335	60	60	50	40	50	75	5
586	Sawsbuck	\N	Normal	Grass	475	80	100	70	60	70	95	5
587	Emolga	\N	Electric	Flying	428	55	75	60	75	60	103	5
588	Karrablast	\N	Bug	\N	315	50	75	45	40	45	60	5
589	Escavalier	\N	Bug	Steel	495	70	135	105	60	105	20	5
590	Foongus	\N	Grass	Poison	294	69	55	45	55	55	15	5
591	Amoonguss	\N	Grass	Poison	464	114	85	70	85	80	30	5
592	Frillish	\N	Water	Ghost	335	55	40	50	65	85	40	5
593	Jellicent	\N	Water	Ghost	480	100	60	70	85	105	60	5
594	Alomomola	\N	Water	\N	470	165	75	80	40	45	65	5
595	Joltik	\N	Bug	Electric	319	50	47	50	57	50	65	5
596	Galvantula	\N	Bug	Electric	472	70	77	60	97	60	108	5
597	Ferroseed	\N	Grass	Steel	305	44	50	91	24	86	10	5
598	Ferrothorn	\N	Grass	Steel	489	74	94	131	54	116	20	5
599	Klink	\N	Steel	\N	300	40	55	70	45	60	30	5
600	Klang	\N	Steel	\N	440	60	80	95	70	85	50	5
601	Klinklang	\N	Steel	\N	520	60	100	115	70	85	90	5
602	Tynamo	\N	Electric	\N	275	35	55	40	45	40	60	5
603	Eelektrik	\N	Electric	\N	405	65	85	70	75	70	40	5
604	Eelektross	\N	Electric	\N	515	85	115	80	105	80	50	5
605	Elgyem	\N	Psychic	\N	335	55	55	55	85	55	30	5
606	Beheeyem	\N	Psychic	\N	485	75	75	75	125	95	40	5
607	Litwick	\N	Ghost	Fire	275	50	30	55	65	55	20	5
608	Lampent	\N	Ghost	Fire	370	60	40	60	95	60	55	5
609	Chandelure	\N	Ghost	Fire	520	60	55	90	145	90	80	5
610	Axew	\N	Dragon	\N	320	46	87	60	30	40	57	5
611	Fraxure	\N	Dragon	\N	410	66	117	70	40	50	67	5
612	Haxorus	\N	Dragon	\N	540	76	147	90	60	70	97	5
613	Cubchoo	\N	Ice	\N	305	55	70	40	60	40	40	5
614	Beartic	\N	Ice	\N	505	95	130	80	70	80	50	5
615	Cryogonal	\N	Ice	\N	515	80	50	50	95	135	105	5
616	Shelmet	\N	Bug	\N	305	50	40	85	40	65	25	5
617	Accelgor	\N	Bug	\N	495	80	70	40	100	60	145	5
618	Stunfisk	\N	Ground	Electric	471	109	66	84	81	99	32	5
619	Mienfoo	\N	Fighting	\N	350	45	85	50	55	50	65	5
620	Mienshao	\N	Fighting	\N	510	65	125	60	95	60	105	5
621	Druddigon	\N	Dragon	\N	485	77	120	90	60	90	48	5
622	Golett	\N	Ground	Ghost	303	59	74	50	35	50	35	5
623	Golurk	\N	Ground	Ghost	483	89	124	80	55	80	55	5
624	Pawniard	\N	Dark	Steel	340	45	85	70	40	40	60	5
625	Bisharp	\N	Dark	Steel	490	65	125	100	60	70	70	5
626	Bouffalant	\N	Normal	\N	490	95	110	95	40	95	55	5
627	Rufflet	\N	Normal	Flying	350	70	83	50	37	50	60	5
628	Braviary	\N	Normal	Flying	510	100	123	75	57	75	80	5
629	Vullaby	\N	Dark	Flying	370	70	55	75	45	65	60	5
630	Mandibuzz	\N	Dark	Flying	510	110	65	105	55	95	80	5
631	Heatmor	\N	Fire	\N	484	85	97	66	105	66	65	5
632	Durant	\N	Bug	Steel	484	58	109	112	48	48	109	5
633	Deino	\N	Dark	Dragon	300	52	65	50	45	50	38	5
634	Zweilous	\N	Dark	Dragon	420	72	85	70	65	70	58	5
635	Hydreigon	\N	Dark	Dragon	600	92	105	90	125	90	98	5
636	Larvesta	\N	Bug	Fire	360	55	85	55	50	55	60	5
637	Volcarona	\N	Bug	Fire	550	85	60	65	135	105	100	5
638	Cobalion	\N	Steel	Fighting	580	91	90	129	90	72	108	5
639	Terrakion	\N	Rock	Fighting	580	91	129	90	72	90	108	5
640	Virizion	\N	Grass	Fighting	580	91	90	72	90	129	108	5
641	Tornadus	Incarnate Forme	Flying	\N	580	79	115	70	125	80	111	5
641	Tornadus	Therian Forme	Flying	\N	580	79	100	80	110	90	121	5
642	Thundurus	Incarnate Forme	Electric	Flying	580	79	115	70	125	80	111	5
642	Thundurus	Therian Forme	Electric	Flying	580	79	105	70	145	80	101	5
643	Reshiram	\N	Dragon	Fire	680	100	120	100	150	120	90	5
644	Zekrom	\N	Dragon	Electric	680	100	150	120	120	100	90	5
645	Landorus	Incarnate Forme	Ground	Flying	600	89	125	90	115	80	101	5
645	Landorus	Therian Forme	Ground	Flying	600	89	145	90	105	80	91	5
646	Kyurem	\N	Dragon	Ice	660	125	130	90	130	90	95	5
646	Kyurem	White Kyurem	Dragon	Ice	700	125	120	90	170	100	95	5
646	Kyurem	Black Kyurem	Dragon	Ice	700	125	170	100	120	90	95	5
647	Keldeo	Ordinary Form	Water	Fighting	580	91	72	90	129	90	108	5
647	Keldeo	Resolute Form	Water	Fighting	580	91	72	90	129	90	108	5
648	Meloetta	Aria Forme	Normal	Psychic	600	100	77	77	128	128	90	5
648	Meloetta	Pirouette Forme	Normal	Fighting	600	100	128	90	77	77	128	5
649	Genesect	\N	Bug	Steel	600	71	120	95	120	95	99	5
3	Venusaur	Mega Venusaur	Grass	Poison	625	80	100	123	122	120	80	6
6	Charizard	Mega Charizard X	Fire	Dragon	634	78	130	111	130	85	100	6
6	Charizard	Mega Charizard Y	Fire	Flying	634	78	104	78	159	115	100	6
9	Blastoise	Mega Blastoise	Water	\N	630	79	103	120	135	115	78	6
15	Beedrill	Mega Beedrill	Bug	Poison	495	65	150	40	15	80	145	6
18	Pidgeot	Mega Pidgeot	Normal	Flying	579	83	80	80	135	80	121	6
65	Alakazam	Mega Alakazam	Psychic	\N	600	55	50	65	175	105	150	6
80	Slowbro	Mega Slowbro	Water	Psychic	590	95	75	180	130	80	30	6
94	Gengar	Mega Gengar	Ghost	Poison	600	60	65	80	170	95	130	6
115	Kangaskhan	Mega Kangaskhan	Normal	\N	590	105	125	100	60	100	100	6
127	Pinsir	Mega Pinsir	Bug	Flying	600	65	155	120	65	90	105	6
130	Gyarados	Mega Gyarados	Water	Dark	640	95	155	109	70	130	81	6
142	Aerodactyl	Mega Aerodactyl	Rock	Flying	615	80	135	85	70	95	150	6
150	Mewtwo	Mega Mewtwo X	Psychic	Fighting	780	106	190	100	154	100	130	6
150	Mewtwo	Mega Mewtwo Y	Psychic	\N	780	106	150	70	194	120	140	6
181	Ampharos	Mega Ampharos	Electric	Dragon	610	90	95	105	165	110	45	6
208	Steelix	Mega Steelix	Steel	Ground	610	75	125	230	55	95	30	6
212	Scizor	Mega Scizor	Bug	Steel	600	70	150	140	65	100	75	6
214	Heracross	Mega Heracross	Bug	Fighting	600	80	185	115	40	105	75	6
229	Houndoom	Mega Houndoom	Dark	Fire	600	75	90	90	140	90	115	6
248	Tyranitar	Mega Tyranitar	Rock	Dark	700	100	164	150	95	120	71	6
254	Sceptile	Mega Sceptile	Grass	Dragon	630	70	110	75	145	85	145	6
257	Blaziken	Mega Blaziken	Fire	Fighting	630	80	160	80	130	80	100	6
260	Swampert	Mega Swampert	Water	Ground	635	100	150	110	95	110	70	6
282	Gardevoir	Mega Gardevoir	Psychic	Fairy	618	68	85	65	165	135	100	6
302	Sableye	Mega Sableye	Dark	Ghost	480	50	85	125	85	115	20	6
303	Mawile	Mega Mawile	Steel	Fairy	480	50	105	125	55	95	50	6
306	Aggron	Mega Aggron	Steel	\N	630	70	140	230	60	80	50	6
308	Medicham	Mega Medicham	Fighting	Psychic	510	60	100	85	80	85	100	6
310	Manectric	Mega Manectric	Electric	\N	575	70	75	80	135	80	135	6
319	Sharpedo	Mega Sharpedo	Water	Dark	560	70	140	70	110	65	105	6
323	Camerupt	Mega Camerupt	Fire	Ground	560	70	120	100	145	105	20	6
334	Altaria	Mega Altaria	Dragon	Fairy	590	75	110	110	110	105	80	6
354	Banette	Mega Banette	Ghost	\N	555	64	165	75	93	83	75	6
359	Absol	Mega Absol	Dark	\N	565	65	150	60	115	60	115	6
362	Glalie	Mega Glalie	Ice	\N	580	80	120	80	120	80	100	6
373	Salamence	Mega Salamence	Dragon	Flying	700	95	145	130	120	90	120	6
376	Metagross	Mega Metagross	Steel	Psychic	700	80	145	150	105	110	110	6
380	Latias	Mega Latias	Dragon	Psychic	700	80	100	120	140	150	110	6
381	Latios	Mega Latios	Dragon	Psychic	700	80	130	100	160	120	110	6
382	Kyogre	Primal Kyogre	Water	\N	770	100	150	90	180	160	90	6
383	Groudon	Primal Groudon	Ground	Fire	770	100	180	160	150	90	90	6
384	Rayquaza	Mega Rayquaza	Dragon	Flying	780	105	180	100	180	100	115	6
428	Lopunny	Mega Lopunny	Normal	Fighting	580	65	136	94	54	96	135	6
445	Garchomp	Mega Garchomp	Dragon	Ground	700	108	170	115	120	95	92	6
448	Lucario	Mega Lucario	Fighting	Steel	625	70	145	88	140	70	112	6
460	Abomasnow	Mega Abomasnow	Grass	Ice	594	90	132	105	132	105	30	6
475	Gallade	Mega Gallade	Psychic	Fighting	618	68	165	95	65	115	110	6
531	Audino	Mega Audino	Normal	Fairy	545	103	60	126	80	126	50	6
650	Chespin	\N	Grass	\N	313	56	61	65	48	45	38	6
651	Quilladin	\N	Grass	\N	405	61	78	95	56	58	57	6
652	Chesnaught	\N	Grass	Fighting	530	88	107	122	74	75	64	6
653	Fennekin	\N	Fire	\N	307	40	45	40	62	60	60	6
654	Braixen	\N	Fire	\N	409	59	59	58	90	70	73	6
655	Delphox	\N	Fire	Psychic	534	75	69	72	114	100	104	6
656	Froakie	\N	Water	\N	314	41	56	40	62	44	71	6
657	Frogadier	\N	Water	\N	405	54	63	52	83	56	97	6
658	Greninja	\N	Water	Dark	530	72	95	67	103	71	122	6
659	Bunnelby	\N	Normal	\N	237	38	36	38	32	36	57	6
660	Diggersby	\N	Normal	Ground	423	85	56	77	50	77	78	6
661	Fletchling	\N	Normal	Flying	278	45	50	43	40	38	62	6
662	Fletchinder	\N	Fire	Flying	382	62	73	55	56	52	84	6
663	Talonflame	\N	Fire	Flying	499	78	81	71	74	69	126	6
664	Scatterbug	\N	Bug	\N	200	38	35	40	27	25	35	6
665	Spewpa	\N	Bug	\N	213	45	22	60	27	30	29	6
666	Vivillon	\N	Bug	Flying	411	80	52	50	90	50	89	6
667	Litleo	\N	Fire	Normal	369	62	50	58	73	54	72	6
668	Pyroar	\N	Fire	Normal	507	86	68	72	109	66	106	6
669	FlabÃ©bÃ©	\N	Fairy	\N	303	44	38	39	61	79	42	6
670	Floette	\N	Fairy	\N	371	54	45	47	75	98	52	6
671	Florges	\N	Fairy	\N	552	78	65	68	112	154	75	6
672	Skiddo	\N	Grass	\N	350	66	65	48	62	57	52	6
673	Gogoat	\N	Grass	\N	531	123	100	62	97	81	68	6
674	Pancham	\N	Fighting	\N	348	67	82	62	46	48	43	6
675	Pangoro	\N	Fighting	Dark	495	95	124	78	69	71	58	6
676	Furfrou	\N	Normal	\N	472	75	80	60	65	90	102	6
677	Espurr	\N	Psychic	\N	355	62	48	54	63	60	68	6
678	Meowstic	Male	Psychic	\N	466	74	48	76	83	81	104	6
678	Meowstic	Female	Psychic	\N	466	74	48	76	83	81	104	6
679	Honedge	\N	Steel	Ghost	325	45	80	100	35	37	28	6
680	Doublade	\N	Steel	Ghost	448	59	110	150	45	49	35	6
681	Aegislash	Shield Forme	Steel	Ghost	500	60	50	140	50	140	60	6
681	Aegislash	Blade Forme	Steel	Ghost	500	60	140	50	140	50	60	6
682	Spritzee	\N	Fairy	\N	341	78	52	60	63	65	23	6
683	Aromatisse	\N	Fairy	\N	462	101	72	72	99	89	29	6
684	Swirlix	\N	Fairy	\N	341	62	48	66	59	57	49	6
685	Slurpuff	\N	Fairy	\N	480	82	80	86	85	75	72	6
686	Inkay	\N	Dark	Psychic	288	53	54	53	37	46	45	6
687	Malamar	\N	Dark	Psychic	482	86	92	88	68	75	73	6
688	Binacle	\N	Rock	Water	306	42	52	67	39	56	50	6
689	Barbaracle	\N	Rock	Water	500	72	105	115	54	86	68	6
690	Skrelp	\N	Poison	Water	320	50	60	60	60	60	30	6
691	Dragalge	\N	Poison	Dragon	494	65	75	90	97	123	44	6
692	Clauncher	\N	Water	\N	330	50	53	62	58	63	44	6
693	Clawitzer	\N	Water	\N	500	71	73	88	120	89	59	6
694	Helioptile	\N	Electric	Normal	289	44	38	33	61	43	70	6
695	Heliolisk	\N	Electric	Normal	481	62	55	52	109	94	109	6
696	Tyrunt	\N	Rock	Dragon	362	58	89	77	45	45	48	6
697	Tyrantrum	\N	Rock	Dragon	521	82	121	119	69	59	71	6
698	Amaura	\N	Rock	Ice	362	77	59	50	67	63	46	6
699	Aurorus	\N	Rock	Ice	521	123	77	72	99	92	58	6
700	Sylveon	\N	Fairy	\N	525	95	65	65	110	130	60	6
701	Hawlucha	\N	Fighting	Flying	500	78	92	75	74	63	118	6
702	Dedenne	\N	Electric	Fairy	431	67	58	57	81	67	101	6
703	Carbink	\N	Rock	Fairy	500	50	50	150	50	150	50	6
704	Goomy	\N	Dragon	\N	300	45	50	35	55	75	40	6
705	Sliggoo	\N	Dragon	\N	452	68	75	53	83	113	60	6
706	Goodra	\N	Dragon	\N	600	90	100	70	110	150	80	6
707	Klefki	\N	Steel	Fairy	470	57	80	91	80	87	75	6
708	Phantump	\N	Ghost	Grass	309	43	70	48	50	60	38	6
709	Trevenant	\N	Ghost	Grass	474	85	110	76	65	82	56	6
710	Pumpkaboo	Average Size	Ghost	Grass	335	49	66	70	44	55	51	6
710	Pumpkaboo	Small Size	Ghost	Grass	335	44	66	70	44	55	56	6
710	Pumpkaboo	Large Size	Ghost	Grass	335	54	66	70	44	55	46	6
710	Pumpkaboo	Super Size	Ghost	Grass	335	59	66	70	44	55	41	6
711	Gourgeist	Average Size	Ghost	Grass	494	65	90	122	58	75	84	6
711	Gourgeist	Small Size	Ghost	Grass	494	55	85	122	58	75	99	6
711	Gourgeist	Large Size	Ghost	Grass	494	75	95	122	58	75	69	6
711	Gourgeist	Super Size	Ghost	Grass	494	85	100	122	58	75	54	6
712	Bergmite	\N	Ice	\N	304	55	69	85	32	35	28	6
713	Avalugg	\N	Ice	\N	514	95	117	184	44	46	28	6
714	Noibat	\N	Flying	Dragon	245	40	30	35	45	40	55	6
715	Noivern	\N	Flying	Dragon	535	85	70	80	97	80	123	6
716	Xerneas	\N	Fairy	\N	680	126	131	95	131	98	99	6
717	Yveltal	\N	Dark	Flying	680	126	131	95	131	98	99	6
718	Zygarde50% Forme	\N	Dragon	Ground	600	108	100	121	81	95	95	6
719	Diancie	\N	Rock	Fairy	600	50	100	150	100	150	50	6
719	Diancie	Mega Diancie	Rock	Fairy	700	50	160	110	160	110	110	6
720	Hoopa	Hoopa Confined	Psychic	Ghost	600	80	110	60	150	130	70	6
720	Hoopa	Hoopa Unbound	Psychic	Dark	680	80	160	60	170	130	80	6
721	Volcanion	\N	Fire	Water	600	80	110	120	130	90	70	6
19	Rattata	Alolan Rattata	Dark	Normal	253	30	56	35	25	35	72	7
20	Raticate	Alolan Raticate	Dark	Normal	413	75	71	70	40	80	77	7
25	Pikachu	Partner Pikachu	Electric	\N	430	45	80	50	75	60	120	7
26	Raichu	Alolan Raichu	Electric	Psychic	485	60	85	50	95	85	110	7
27	Sandshrew	Alolan Sandshrew	Ice	Steel	300	50	75	90	10	35	40	7
28	Sandslash	Alolan Sandslash	Ice	Steel	450	75	100	120	25	65	65	7
37	Vulpix	Alolan Vulpix	Ice	\N	299	38	41	40	50	65	65	7
38	Ninetales	Alolan Ninetales	Ice	Fairy	505	73	67	75	81	100	109	7
50	Diglett	Alolan Diglett	Ground	Steel	265	10	55	30	35	45	90	7
51	Dugtrio	Alolan Dugtrio	Ground	Steel	425	35	100	60	50	70	110	7
52	Meowth	Alolan Meowth	Dark	\N	290	40	35	35	50	40	90	7
53	Persian	Alolan Persian	Dark	\N	440	65	60	60	75	65	115	7
74	Geodude	Alolan Geodude	Rock	Electric	300	40	80	100	30	30	20	7
75	Graveler	Alolan Graveler	Rock	Electric	390	55	95	115	45	45	35	7
76	Golem	Alolan Golem	Rock	Electric	495	80	120	130	55	65	45	7
88	Grimer	Alolan Grimer	Poison	Dark	325	80	80	50	40	50	25	7
89	Muk	Alolan Muk	Poison	Dark	500	105	105	75	65	100	50	7
103	Exeggutor	Alolan Exeggutor	Grass	Dragon	530	95	105	85	125	75	45	7
105	Marowak	Alolan Marowak	Fire	Ghost	425	60	80	110	50	80	45	7
133	Eevee	Partner Eevee	Normal	\N	435	65	75	70	65	85	75	7
658	Greninja	Ash-Greninja	Water	Dark	640	72	145	67	153	71	132	7
718	Zygarde10% Forme	\N	Dragon	Ground	486	54	100	71	61	85	115	7
718	Zygarde	Complete Forme	Dragon	Ground	708	216	100	121	91	95	85	7
722	Rowlet	\N	Grass	Flying	320	68	55	55	50	50	42	7
723	Dartrix	\N	Grass	Flying	420	78	75	75	70	70	52	7
724	Decidueye	\N	Grass	Ghost	530	78	107	75	100	100	70	7
725	Litten	\N	Fire	\N	320	45	65	40	60	40	70	7
726	Torracat	\N	Fire	\N	420	65	85	50	80	50	90	7
727	Incineroar	\N	Fire	Dark	530	95	115	90	80	90	60	7
728	Popplio	\N	Water	\N	320	50	54	54	66	56	40	7
729	Brionne	\N	Water	\N	420	60	69	69	91	81	50	7
730	Primarina	\N	Water	Fairy	530	80	74	74	126	116	60	7
731	Pikipek	\N	Normal	Flying	265	35	75	30	30	30	65	7
732	Trumbeak	\N	Normal	Flying	355	55	85	50	40	50	75	7
733	Toucannon	\N	Normal	Flying	485	80	120	75	75	75	60	7
734	Yungoos	\N	Normal	\N	253	48	70	30	30	30	45	7
735	Gumshoos	\N	Normal	\N	418	88	110	60	55	60	45	7
736	Grubbin	\N	Bug	\N	300	47	62	45	55	45	46	7
737	Charjabug	\N	Bug	Electric	400	57	82	95	55	75	36	7
738	Vikavolt	\N	Bug	Electric	500	77	70	90	145	75	43	7
739	Crabrawler	\N	Fighting	\N	338	47	82	57	42	47	63	7
740	Crabominable	\N	Fighting	Ice	478	97	132	77	62	67	43	7
741	Oricorio	Baile Style	Fire	Flying	476	75	70	70	98	70	93	7
741	Oricorio	Pom-Pom Style	Electric	Flying	476	75	70	70	98	70	93	7
741	Oricorio	Pa'u Style	Psychic	Flying	476	75	70	70	98	70	93	7
741	Oricorio	Sensu Style	Ghost	Flying	476	75	70	70	98	70	93	7
742	Cutiefly	\N	Bug	Fairy	304	40	45	40	55	40	84	7
743	Ribombee	\N	Bug	Fairy	464	60	55	60	95	70	124	7
744	Rockruff	\N	Rock	\N	280	45	65	40	30	40	60	7
744	Rockruff	Own Tempo Rockruff	Rock	\N	280	45	65	40	30	40	60	7
745	Lycanroc	Midday Form	Rock	\N	487	75	115	65	55	65	112	7
745	Lycanroc	Midnight Form	Rock	\N	487	85	115	75	55	75	82	7
745	Lycanroc	Dusk Form	Rock	\N	487	75	117	65	55	65	110	7
746	Wishiwashi	Solo Form	Water	\N	175	45	20	20	25	25	40	7
746	Wishiwashi	School Form	Water	\N	620	45	140	130	140	135	30	7
747	Mareanie	\N	Poison	Water	305	50	53	62	43	52	45	7
748	Toxapex	\N	Poison	Water	495	50	63	152	53	142	35	7
749	Mudbray	\N	Ground	\N	385	70	100	70	45	55	45	7
750	Mudsdale	\N	Ground	\N	500	100	125	100	55	85	35	7
751	Dewpider	\N	Water	Bug	269	38	40	52	40	72	27	7
752	Araquanid	\N	Water	Bug	454	68	70	92	50	132	42	7
753	Fomantis	\N	Grass	\N	250	40	55	35	50	35	35	7
754	Lurantis	\N	Grass	\N	480	70	105	90	80	90	45	7
755	Morelull	\N	Grass	Fairy	285	40	35	55	65	75	15	7
756	Shiinotic	\N	Grass	Fairy	405	60	45	80	90	100	30	7
757	Salandit	\N	Poison	Fire	320	48	44	40	71	40	77	7
758	Salazzle	\N	Poison	Fire	480	68	64	60	111	60	117	7
759	Stufful	\N	Normal	Fighting	340	70	75	50	45	50	50	7
760	Bewear	\N	Normal	Fighting	500	120	125	80	55	60	60	7
761	Bounsweet	\N	Grass	\N	210	42	30	38	30	38	32	7
762	Steenee	\N	Grass	\N	290	52	40	48	40	48	62	7
763	Tsareena	\N	Grass	\N	510	72	120	98	50	98	72	7
764	Comfey	\N	Fairy	\N	485	51	52	90	82	110	100	7
765	Oranguru	\N	Normal	Psychic	490	90	60	80	90	110	60	7
766	Passimian	\N	Fighting	\N	490	100	120	90	40	60	80	7
767	Wimpod	\N	Bug	Water	230	25	35	40	20	30	80	7
768	Golisopod	\N	Bug	Water	530	75	125	140	60	90	40	7
769	Sandygast	\N	Ghost	Ground	320	55	55	80	70	45	15	7
770	Palossand	\N	Ghost	Ground	480	85	75	110	100	75	35	7
771	Pyukumuku	\N	Water	\N	410	55	60	130	30	130	5	7
772	Type: Null	\N	Normal	\N	534	95	95	95	95	95	59	7
773	Silvally	\N	Normal	\N	570	95	95	95	95	95	95	7
774	Minior	Meteor Form	Rock	Flying	440	60	60	100	60	100	60	7
774	Minior	Core Form	Rock	Flying	500	60	100	60	100	60	120	7
775	Komala	\N	Normal	\N	480	65	115	65	75	95	65	7
776	Turtonator	\N	Fire	Dragon	485	60	78	135	91	85	36	7
777	Togedemaru	\N	Electric	Steel	435	65	98	63	40	73	96	7
778	Mimikyu	\N	Ghost	Fairy	476	55	90	80	50	105	96	7
779	Bruxish	\N	Water	Psychic	475	68	105	70	70	70	92	7
780	Drampa	\N	Normal	Dragon	485	78	60	85	135	91	36	7
781	Dhelmise	\N	Ghost	Grass	517	70	131	100	86	90	40	7
782	Jangmo-o	\N	Dragon	\N	300	45	55	65	45	45	45	7
783	Hakamo-o	\N	Dragon	Fighting	420	55	75	90	65	70	65	7
784	Kommo-o	\N	Dragon	Fighting	600	75	110	125	100	105	85	7
785	Tapu Koko	\N	Electric	Fairy	570	70	115	85	95	75	130	7
786	Tapu Lele	\N	Psychic	Fairy	570	70	85	75	130	115	95	7
787	Tapu Bulu	\N	Grass	Fairy	570	70	130	115	85	95	75	7
788	Tapu Fini	\N	Water	Fairy	570	70	75	115	95	130	85	7
789	Cosmog	\N	Psychic	\N	200	43	29	31	29	31	37	7
790	Cosmoem	\N	Psychic	\N	400	43	29	131	29	131	37	7
791	Solgaleo	\N	Psychic	Steel	680	137	137	107	113	89	97	7
792	Lunala	\N	Psychic	Ghost	680	137	113	89	137	107	97	7
793	Nihilego	\N	Rock	Poison	570	109	53	47	127	131	103	7
794	Buzzwole	\N	Bug	Fighting	570	107	139	139	53	53	79	7
795	Pheromosa	\N	Bug	Fighting	570	71	137	37	137	37	151	7
796	Xurkitree	\N	Electric	\N	570	83	89	71	173	71	83	7
797	Celesteela	\N	Steel	Flying	570	97	101	103	107	101	61	7
798	Kartana	\N	Grass	Steel	570	59	181	131	59	31	109	7
799	Guzzlord	\N	Dark	Dragon	570	223	101	53	97	53	43	7
800	Necrozma	\N	Psychic	\N	600	97	107	101	127	89	79	7
800	Necrozma	Dusk Mane Necrozma	Psychic	Steel	680	97	157	127	113	109	77	7
800	Necrozma	Dawn Wings Necrozma	Psychic	Ghost	680	97	113	109	157	127	77	7
800	Necrozma	Ultra Necrozma	Psychic	Dragon	754	97	167	97	167	97	129	7
801	Magearna	\N	Steel	Fairy	600	80	95	115	130	115	65	7
802	Marshadow	\N	Fighting	Ghost	600	90	125	80	90	90	125	7
803	Poipole	\N	Poison	\N	420	67	73	67	73	67	73	7
804	Naganadel	\N	Poison	Dragon	540	73	73	73	127	73	121	7
805	Stakataka	\N	Rock	Steel	570	61	131	211	53	101	13	7
806	Blacephalon	\N	Fire	Ghost	570	53	127	53	151	79	107	7
807	Zeraora	\N	Electric	\N	600	88	112	75	102	80	143	7
808	Meltan	\N	Steel	\N	300	46	65	65	55	35	34	7
809	Melmetal	\N	Steel	\N	600	135	143	143	80	65	34	7
52	Meowth	Galarian Meowth	Steel	\N	290	50	65	55	40	40	40	8
58	Growlithe	Hisuian Growlithe	Fire	Rock	350	60	75	45	65	50	55	8
59	Arcanine	Hisuian Arcanine	Fire	Rock	555	95	115	80	95	80	90	8
77	Ponyta	Galarian Ponyta	Psychic	\N	410	50	85	55	65	65	90	8
78	Rapidash	Galarian Rapidash	Psychic	Fairy	500	65	100	70	80	80	105	8
79	Slowpoke	Galarian Slowpoke	Psychic	\N	315	90	65	65	40	40	15	8
80	Slowbro	Galarian Slowbro	Poison	Psychic	490	95	100	95	100	70	30	8
83	Farfetch'd	Galarian Farfetch'd	Fighting	\N	377	52	95	55	58	62	55	8
100	Voltorb	Hisuian Voltorb	Electric	Grass	330	40	30	50	55	55	100	8
101	Electrode	Hisuian Electrode	Electric	Grass	490	60	50	70	80	80	150	8
110	Weezing	Galarian Weezing	Poison	Fairy	490	65	90	120	85	70	60	8
122	Mr. Mime	Galarian Mr. Mime	Ice	Psychic	460	50	65	65	90	90	100	8
144	Articuno	Galarian Articuno	Psychic	Flying	580	90	85	85	125	100	95	8
145	Zapdos	Galarian Zapdos	Fighting	Flying	580	90	125	90	85	90	100	8
146	Moltres	Galarian Moltres	Dark	Flying	580	90	85	90	100	125	90	8
157	Typhlosion	Hisuian Typhlosion	Fire	Ghost	534	73	84	78	119	85	95	8
199	Slowking	Galarian Slowking	Poison	Psychic	490	95	65	80	110	110	30	8
211	Qwilfish	Hisuian Qwilfish	Dark	Poison	440	65	95	85	55	55	85	8
215	Sneasel	Hisuian Sneasel	Fighting	Poison	430	55	95	55	35	75	115	8
222	Corsola	Galarian Corsola	Ghost	\N	410	60	55	100	65	100	30	8
263	Zigzagoon	Galarian Zigzagoon	Dark	Normal	240	38	30	41	30	41	60	8
264	Linoone	Galarian Linoone	Dark	Normal	420	78	70	61	50	61	100	8
483	Dialga	Origin Forme	Steel	Dragon	680	100	100	120	150	120	90	8
484	Palkia	Origin Forme	Water	Dragon	680	90	100	100	150	120	120	8
503	Samurott	Hisuian Samurott	Water	Dark	528	90	108	80	100	65	85	8
549	Lilligant	Hisuian Lilligant	Grass	Fighting	480	70	105	75	50	75	105	8
550	Basculin	White-Striped Form	Water	\N	460	70	92	65	80	55	98	8
554	Darumaka	Galarian Darumaka	Ice	\N	315	70	90	45	15	45	50	8
555	Darmanitan	Galarian Standard Mode	Ice	\N	480	105	140	55	30	55	95	8
555	Darmanitan	Galarian Zen Mode	Ice	Fire	540	105	160	55	30	55	135	8
562	Yamask	Galarian Yamask	Ground	Ghost	303	38	55	85	30	65	30	8
570	Zorua	Hisuian Zorua	Normal	Ghost	330	35	60	40	85	40	70	8
571	Zoroark	Hisuian Zoroark	Normal	Ghost	510	60	105	60	120	60	105	8
618	Stunfisk	Galarian Stunfisk	Ground	Steel	471	109	81	99	66	84	32	8
628	Braviary	Hisuian Braviary	Psychic	Flying	510	110	83	70	112	70	65	8
705	Sliggoo	Hisuian Sliggoo	Steel	Dragon	452	58	75	83	83	113	40	8
706	Goodra	Hisuian Goodra	Steel	Dragon	600	80	100	100	110	150	60	8
713	Avalugg	Hisuian Avalugg	Ice	Rock	514	95	127	184	34	36	38	8
724	Decidueye	Hisuian Decidueye	Grass	Fighting	530	88	112	80	95	95	60	8
810	Grookey	\N	Grass	\N	310	50	65	50	40	40	65	8
811	Thwackey	\N	Grass	\N	420	70	85	70	55	60	80	8
812	Rillaboom	\N	Grass	\N	530	100	125	90	60	70	85	8
813	Scorbunny	\N	Fire	\N	310	50	71	40	40	40	69	8
814	Raboot	\N	Fire	\N	420	65	86	60	55	60	94	8
815	Cinderace	\N	Fire	\N	530	80	116	75	65	75	119	8
816	Sobble	\N	Water	\N	310	50	40	40	70	40	70	8
817	Drizzile	\N	Water	\N	420	65	60	55	95	55	90	8
818	Inteleon	\N	Water	\N	530	70	85	65	125	65	120	8
819	Skwovet	\N	Normal	\N	275	70	55	55	35	35	25	8
820	Greedent	\N	Normal	\N	460	120	95	95	55	75	20	8
821	Rookidee	\N	Flying	\N	245	38	47	35	33	35	57	8
822	Corvisquire	\N	Flying	\N	365	68	67	55	43	55	77	8
823	Corviknight	\N	Flying	Steel	495	98	87	105	53	85	67	8
824	Blipbug	\N	Bug	\N	180	25	20	20	25	45	45	8
825	Dottler	\N	Bug	Psychic	335	50	35	80	50	90	30	8
826	Orbeetle	\N	Bug	Psychic	505	60	45	110	80	120	90	8
827	Nickit	\N	Dark	\N	245	40	28	28	47	52	50	8
828	Thievul	\N	Dark	\N	455	70	58	58	87	92	90	8
829	Gossifleur	\N	Grass	\N	250	40	40	60	40	60	10	8
830	Eldegoss	\N	Grass	\N	460	60	50	90	80	120	60	8
831	Wooloo	\N	Normal	\N	270	42	40	55	40	45	48	8
832	Dubwool	\N	Normal	\N	490	72	80	100	60	90	88	8
833	Chewtle	\N	Water	\N	284	50	64	50	38	38	44	8
834	Drednaw	\N	Water	Rock	485	90	115	90	48	68	74	8
835	Yamper	\N	Electric	\N	270	59	45	50	40	50	26	8
836	Boltund	\N	Electric	\N	490	69	90	60	90	60	121	8
837	Rolycoly	\N	Rock	\N	240	30	40	50	40	50	30	8
838	Carkol	\N	Rock	Fire	410	80	60	90	60	70	50	8
839	Coalossal	\N	Rock	Fire	510	110	80	120	80	90	30	8
840	Applin	\N	Grass	Dragon	260	40	40	80	40	40	20	8
841	Flapple	\N	Grass	Dragon	485	70	110	80	95	60	70	8
842	Appletun	\N	Grass	Dragon	485	110	85	80	100	80	30	8
843	Silicobra	\N	Ground	\N	315	52	57	75	35	50	46	8
844	Sandaconda	\N	Ground	\N	510	72	107	125	65	70	71	8
845	Cramorant	\N	Flying	Water	475	70	85	55	85	95	85	8
846	Arrokuda	\N	Water	\N	280	41	63	40	40	30	66	8
847	Barraskewda	\N	Water	\N	490	61	123	60	60	50	136	8
848	Toxel	\N	Electric	Poison	242	40	38	35	54	35	40	8
849	Toxtricity	Amped Form	Electric	Poison	502	75	98	70	114	70	75	8
849	Toxtricity	Low Key Form	Electric	Poison	502	75	98	70	114	70	75	8
850	Sizzlipede	\N	Fire	Bug	305	50	65	45	50	50	45	8
851	Centiskorch	\N	Fire	Bug	525	100	115	65	90	90	65	8
852	Clobbopus	\N	Fighting	\N	310	50	68	60	50	50	32	8
853	Grapploct	\N	Fighting	\N	480	80	118	90	70	80	42	8
854	Sinistea	\N	Ghost	\N	308	40	45	45	74	54	50	8
855	Polteageist	\N	Ghost	\N	508	60	65	65	134	114	70	8
856	Hatenna	\N	Psychic	\N	265	42	30	45	56	53	39	8
857	Hattrem	\N	Psychic	\N	370	57	40	65	86	73	49	8
858	Hatterene	\N	Psychic	Fairy	510	57	90	95	136	103	29	8
859	Impidimp	\N	Dark	Fairy	265	45	45	30	55	40	50	8
860	Morgrem	\N	Dark	Fairy	370	65	60	45	75	55	70	8
861	Grimmsnarl	\N	Dark	Fairy	510	95	120	65	95	75	60	8
862	Obstagoon	\N	Dark	Normal	520	93	90	101	60	81	95	8
863	Perrserker	\N	Steel	\N	440	70	110	100	50	60	50	8
864	Cursola	\N	Ghost	\N	510	60	95	50	145	130	30	8
865	Sirfetch'd	\N	Fighting	\N	507	62	135	95	68	82	65	8
866	Mr. Rime	\N	Ice	Psychic	520	80	85	75	110	100	70	8
867	Runerigus	\N	Ground	Ghost	483	58	95	145	50	105	30	8
868	Milcery	\N	Fairy	\N	270	45	40	40	50	61	34	8
869	Alcremie	\N	Fairy	\N	495	65	60	75	110	121	64	8
870	Falinks	\N	Fighting	\N	470	65	100	100	70	60	75	8
871	Pincurchin	\N	Electric	\N	435	48	101	95	91	85	15	8
872	Snom	\N	Ice	Bug	185	30	25	35	45	30	20	8
873	Frosmoth	\N	Ice	Bug	475	70	65	60	125	90	65	8
874	Stonjourner	\N	Rock	\N	470	100	125	135	20	20	70	8
875	Eiscue	Ice Face	Ice	\N	470	75	80	110	65	90	50	8
875	Eiscue	Noice Face	Ice	\N	470	75	80	70	65	50	130	8
876	Indeedee	Male	Psychic	Normal	475	60	65	55	105	95	95	8
876	Indeedee	Female	Psychic	Normal	475	70	55	65	95	105	85	8
877	Morpeko	Full Belly Mode	Electric	Dark	436	58	95	58	70	58	97	8
877	Morpeko	Hangry Mode	Electric	Dark	436	58	95	58	70	58	97	8
878	Cufant	\N	Steel	\N	330	72	80	49	40	49	40	8
879	Copperajah	\N	Steel	\N	500	122	130	69	80	69	30	8
880	Dracozolt	\N	Electric	Dragon	505	90	100	90	80	70	75	8
881	Arctozolt	\N	Electric	Ice	505	90	100	90	90	80	55	8
882	Dracovish	\N	Water	Dragon	505	90	90	100	70	80	75	8
883	Arctovish	\N	Water	Ice	505	90	90	100	80	90	55	8
884	Duraludon	\N	Steel	Dragon	535	70	95	115	120	50	85	8
885	Dreepy	\N	Dragon	Ghost	270	28	60	30	40	30	82	8
886	Drakloak	\N	Dragon	Ghost	410	68	80	50	60	50	102	8
887	Dragapult	\N	Dragon	Ghost	600	88	120	75	100	75	142	8
888	Zacian	Hero of Many Battles	Fairy	\N	660	92	120	115	80	115	138	8
888	Zacian	Crowned Sword	Fairy	Steel	700	92	150	115	80	115	148	8
889	Zamazenta	Hero of Many Battles	Fighting	\N	660	92	120	115	80	115	138	8
889	Zamazenta	Crowned Shield	Fighting	Steel	700	92	120	140	80	140	128	8
890	Eternatus	\N	Poison	Dragon	690	140	85	95	145	95	130	8
890	Eternatus	Eternamax	Poison	Dragon	1125	255	115	250	125	250	130	8
891	Kubfu	\N	Fighting	\N	385	60	90	60	53	50	72	8
892	Urshifu	Single Strike Style	Fighting	Dark	550	100	130	100	63	60	97	8
892	Urshifu	Rapid Strike Style	Fighting	Water	550	100	130	100	63	60	97	8
893	Zarude	\N	Dark	Grass	600	105	120	105	70	95	105	8
894	Regieleki	\N	Electric	\N	580	80	100	50	100	50	200	8
895	Regidrago	\N	Dragon	\N	580	200	100	50	100	50	80	8
896	Glastrier	\N	Ice	\N	580	100	145	130	65	110	30	8
897	Spectrier	\N	Ghost	\N	580	100	65	60	145	80	130	8
898	Calyrex	\N	Psychic	Grass	500	100	80	80	80	80	80	8
898	Calyrex	Ice Rider	Psychic	Ice	680	100	165	150	85	130	50	8
898	Calyrex	Shadow Rider	Psychic	Ghost	680	100	85	80	165	100	150	8
899	Wyrdeer	\N	Normal	Psychic	525	103	105	72	105	75	65	8
900	Kleavor	\N	Bug	Rock	500	70	130	95	45	75	85	8
901	Ursaluna	\N	Ground	Normal	550	130	140	105	45	80	50	8
902	Basculegion	Male	Water	Ghost	530	120	112	65	80	75	78	8
902	Basculegion	Female	Water	Ghost	530	120	92	65	100	75	78	8
903	Sneasler	\N	Fighting	Poison	510	80	130	60	40	80	120	8
904	Overqwil	\N	Dark	Poison	510	85	115	95	65	65	85	8
905	Enamorus	Incarnate Forme	Fairy	Flying	580	74	115	70	135	80	106	8
905	Enamorus	Therian Forme	Fairy	Flying	580	74	115	110	135	100	46	8
128	Tauros	Combat Breed	Fighting	\N	490	75	110	105	30	70	100	9
128	Tauros	Blaze Breed	Fighting	Fire	490	75	110	105	30	70	100	9
128	Tauros	Aqua Breed	Fighting	Water	490	75	110	105	30	70	100	9
194	Wooper	Paldean Wooper	Poison	Ground	210	55	45	45	25	25	15	9
906	Sprigatito	\N	Grass	\N	310	40	61	54	45	45	65	9
907	Floragato	\N	Grass	\N	410	61	80	63	60	63	83	9
908	Meowscarada	\N	Grass	Dark	530	76	110	70	81	70	123	9
909	Fuecoco	\N	Fire	\N	310	67	45	59	63	40	36	9
910	Crocalor	\N	Fire	\N	411	81	55	78	90	58	49	9
911	Skeledirge	\N	Fire	Ghost	530	104	75	100	110	75	66	9
912	Quaxly	\N	Water	\N	310	55	65	45	50	45	50	9
913	Quaxwell	\N	Water	\N	410	70	85	65	65	60	65	9
914	Quaquaval	\N	Water	Fighting	530	85	120	80	85	75	85	9
915	Lechonk	\N	Normal	\N	254	54	45	40	35	45	35	9
916	Oinkologne	Male	Normal	\N	489	110	100	75	59	80	65	9
916	Oinkologne	Female	Normal	\N	489	115	90	70	59	90	65	9
917	Tarountula	\N	Bug	\N	210	35	41	45	29	40	20	9
918	Spidops	\N	Bug	\N	404	60	79	92	52	86	35	9
919	Nymble	\N	Bug	\N	210	33	46	40	21	25	45	9
920	Lokix	\N	Bug	Dark	450	71	102	78	52	55	92	9
921	Pawmi	\N	Electric	\N	240	45	50	20	40	25	60	9
922	Pawmo	\N	Electric	Fighting	350	60	75	40	50	40	85	9
923	Pawmot	\N	Electric	Fighting	490	70	115	70	70	60	105	9
924	Tandemaus	\N	Normal	\N	305	50	50	45	40	45	75	9
925	Maushold	Family of Four	Normal	\N	470	74	75	70	65	75	111	9
925	Maushold	Family of Three	Normal	\N	470	74	75	70	65	75	111	9
926	Fidough	\N	Fairy	\N	312	37	55	70	30	55	65	9
927	Dachsbun	\N	Fairy	\N	477	57	80	115	50	80	95	9
928	Smoliv	\N	Grass	Normal	260	41	35	45	58	51	30	9
929	Dolliv	\N	Grass	Normal	354	52	53	60	78	78	33	9
930	Arboliva	\N	Grass	Normal	510	78	69	90	125	109	39	9
931	Squawkabilly	Green Plumage	Normal	Flying	417	82	96	51	45	51	92	9
931	Squawkabilly	Blue Plumage	Normal	Flying	417	82	96	51	45	51	92	9
931	Squawkabilly	Yellow Plumage	Normal	Flying	417	82	96	51	45	51	92	9
931	Squawkabilly	White Plumage	Normal	Flying	417	82	96	51	45	51	92	9
932	Nacli	\N	Rock	\N	280	55	55	75	35	35	25	9
933	Naclstack	\N	Rock	\N	355	60	60	100	35	65	35	9
934	Garganacl	\N	Rock	\N	500	100	100	130	45	90	35	9
935	Charcadet	\N	Fire	\N	255	40	50	40	50	40	35	9
936	Armarouge	\N	Fire	Psychic	525	85	60	100	125	80	75	9
937	Ceruledge	\N	Fire	Ghost	525	75	125	80	60	100	85	9
938	Tadbulb	\N	Electric	\N	272	61	31	41	59	35	45	9
939	Bellibolt	\N	Electric	\N	495	109	64	91	103	83	45	9
940	Wattrel	\N	Electric	Flying	280	40	40	35	55	40	70	9
941	Kilowattrel	\N	Electric	Flying	490	70	70	60	105	60	125	9
942	Maschiff	\N	Dark	\N	340	60	78	60	40	51	51	9
943	Mabosstiff	\N	Dark	\N	505	80	120	90	60	70	85	9
944	Shroodle	\N	Poison	Normal	290	40	65	35	40	35	75	9
945	Grafaiai	\N	Poison	Normal	485	63	95	65	80	72	110	9
946	Bramblin	\N	Grass	Ghost	275	40	65	30	45	35	60	9
947	Brambleghast	\N	Grass	Ghost	480	55	115	70	80	70	90	9
948	Toedscool	\N	Ground	Grass	335	40	40	35	50	100	70	9
949	Toedscruel	\N	Ground	Grass	515	80	70	65	80	120	100	9
950	Klawf	\N	Rock	\N	450	70	100	115	35	55	75	9
951	Capsakid	\N	Grass	\N	304	50	62	40	62	40	50	9
952	Scovillain	\N	Grass	Fire	486	65	108	65	108	65	75	9
953	Rellor	\N	Bug	\N	270	41	50	60	31	58	30	9
954	Rabsca	\N	Bug	Psychic	470	75	50	85	115	100	45	9
955	Flittle	\N	Psychic	\N	255	30	35	30	55	30	75	9
956	Espathra	\N	Psychic	\N	481	95	60	60	101	60	105	9
957	Tinkatink	\N	Fairy	Steel	297	50	45	45	35	64	58	9
958	Tinkatuff	\N	Fairy	Steel	380	65	55	55	45	82	78	9
959	Tinkaton	\N	Fairy	Steel	506	85	75	77	70	105	94	9
960	Wiglett	\N	Water	\N	245	10	55	25	35	25	95	9
961	Wugtrio	\N	Water	\N	425	35	100	50	50	70	120	9
962	Bombirdier	\N	Flying	Dark	485	70	103	85	60	85	82	9
963	Finizen	\N	Water	\N	315	70	45	40	45	40	75	9
964	Palafin	Zero Form	Water	\N	457	100	70	72	53	62	100	9
964	Palafin	Hero Form	Water	\N	650	100	160	97	106	87	100	9
965	Varoom	\N	Steel	Poison	300	45	70	63	30	45	47	9
966	Revavroom	\N	Steel	Poison	500	80	119	90	54	67	90	9
967	Cyclizar	\N	Dragon	Normal	501	70	95	65	85	65	121	9
968	Orthworm	\N	Steel	\N	480	70	85	145	60	55	65	9
969	Glimmet	\N	Rock	Poison	350	48	35	42	105	60	60	9
970	Glimmora	\N	Rock	Poison	525	83	55	90	130	81	86	9
971	Greavard	\N	Ghost	\N	290	50	61	60	30	55	34	9
972	Houndstone	\N	Ghost	\N	488	72	101	100	50	97	68	9
973	Flamigo	\N	Flying	Fighting	500	82	115	74	75	64	90	9
974	Cetoddle	\N	Ice	\N	334	108	68	45	30	40	43	9
975	Cetitan	\N	Ice	\N	521	170	113	65	45	55	73	9
976	Veluza	\N	Water	Psychic	478	90	102	73	78	65	70	9
977	Dondozo	\N	Water	\N	530	150	100	115	65	65	35	9
978	Tatsugiri	Curly Form	Dragon	Water	475	68	50	60	120	95	82	9
978	Tatsugiri	Droopy Form	Dragon	Water	475	68	50	60	120	95	82	9
978	Tatsugiri	Stretchy Form	Dragon	Water	475	68	50	60	120	95	82	9
979	Annihilape	\N	Fighting	Ghost	535	110	115	80	50	90	90	9
980	Clodsire	\N	Poison	Ground	430	130	75	60	45	100	20	9
981	Farigiraf	\N	Normal	Psychic	520	120	90	70	110	70	60	9
982	Dudunsparce	Two-Segment Form	Normal	\N	520	125	100	80	85	75	55	9
982	Dudunsparce	Three-Segment Form	Normal	\N	520	125	100	80	85	75	55	9
983	Kingambit	\N	Dark	Steel	550	100	135	120	60	85	50	9
984	Great Tusk	\N	Ground	Fighting	570	115	131	131	53	53	87	9
985	Scream Tail	\N	Fairy	Psychic	570	115	65	99	65	115	111	9
986	Brute Bonnet	\N	Grass	Dark	570	111	127	99	79	99	55	9
987	Flutter Mane	\N	Ghost	Fairy	570	55	55	55	135	135	135	9
988	Slither Wing	\N	Bug	Fighting	570	85	135	79	85	105	81	9
989	Sandy Shocks	\N	Electric	Ground	570	85	81	97	121	85	101	9
990	Iron Treads	\N	Ground	Steel	570	90	112	120	72	70	106	9
991	Iron Bundle	\N	Ice	Water	570	56	80	114	124	60	136	9
992	Iron Hands	\N	Fighting	Electric	570	154	140	108	50	68	50	9
993	Iron Jugulis	\N	Dark	Flying	570	94	80	86	122	80	108	9
994	Iron Moth	\N	Fire	Poison	570	80	70	60	140	110	110	9
995	Iron Thorns	\N	Rock	Electric	570	100	134	110	70	84	72	9
996	Frigibax	\N	Dragon	Ice	320	65	75	45	35	45	55	9
997	Arctibax	\N	Dragon	Ice	423	90	95	66	45	65	62	9
998	Baxcalibur	\N	Dragon	Ice	600	115	145	92	75	86	87	9
999	Gimmighoul	Chest Form	Ghost	\N	300	45	30	70	75	70	10	9
999	Gimmighoul	Roaming Form	Ghost	\N	300	45	30	25	75	45	80	9
1000	Gholdengo	\N	Steel	Ghost	550	87	60	95	133	91	84	9
1001	Wo-Chien	\N	Dark	Grass	570	85	85	100	95	135	70	9
1002	Chien-Pao	\N	Dark	Ice	570	80	120	80	90	65	135	9
1003	Ting-Lu	\N	Dark	Ground	570	155	110	125	55	80	45	9
1004	Chi-Yu	\N	Dark	Fire	570	55	80	80	135	120	100	9
1005	Roaring Moon	\N	Dragon	Dark	590	105	139	71	55	101	119	9
1006	Iron Valiant	\N	Fairy	Fighting	590	74	130	90	120	60	116	9
1007	Koraidon	\N	Fighting	Dragon	670	100	135	115	85	100	135	9
1008	Miraidon	\N	Electric	Dragon	670	100	85	100	135	115	135	9
1009	Walking Wake	\N	Water	Dragon	590	99	83	91	125	83	109	9
1010	Iron Leaves	\N	Grass	Psychic	590	90	130	88	70	108	104	9
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password, prenom) FROM stdin;
1	romain@gmail.com	123456789	romain
5	azer@gmail.com		roma
6	azear@gmail.com		romain
12	azr@gmail.com	B3cSoYcZ1m7GQvvLUg9RMeiE9pHqC3CzS88Yif7qUW6HM3Xt4OI+lvP6ySxpCP3G0Y5ChwERL4F7BG5p1FFgMCrW9UVsuco724TkaoUPwxaKffq9Sq5zpHWFavsMOrg1z+RbuuwNFSlJfaq5vUzZxvMTney0vPpnvbV4IVUlcznGxANvIvMTV4xeMeNnpE2X6W7x8Yik+O5GuDy8Mvjyhbx/AEL95Hi7r5YoKJWMHySscqplLj5sbPQViHQHwVXjGs0RZ1+mK8oxBLArzyOmNRRdjPIJKEaFl+rOKgZ6qDPeOfDR4gJXOzCAbK3oH3qUIDwKq21gFNMqZWzf59M3yg==	azer
16	romain1@gmail.com	fNFNpIVuahvBGeto0WQhD1QurDO2U5Pb/44PY2bSy5lVPHCgUVJysN+Dft+MG0Wij6JfjLLLYZqptAc/NClDZ5aI7w2NRjkv7sLCHMEvZlTwJUIkAxRa5mUYn/qoQ4zf3GWpXwMbPffNC3XuHmFUmPLUzKsjd44qfh6gznotC9lqvMV9sYUoo8CcwV4JTmf8gIP344uExQ5+AiLYMOLJTtH5tv7q/F7pl8XkIQLfg9XorLAfNuZSu/LtTYbjMgHOl7bzRhicynHL6z0BscR51nPedoLQXHkYgO3RF+42vqedKPmfBEMbmka0f54+mq2UfRjnuhV9doIo8TPnlz7W8w==	romain
17	azaer@gmail.com	Oe9w6CP17F5nsbnVoLE1aGChMHotWev2UDM/s3zBweVOzy5DrV4OaeRN2ptbqqaRJNGCt2ue/0H4Zo9atXkpS71N6wAjpcECCjDVV+u7quxGkJn8EUxpNyUeQ0JmpUsJVMJFi/YeLcjZ6HanR0vtv77uGvxBTIvHNUFDlGCZxhBd1Rw0k/Tu2YUreA/qBqVjnMcRr1b2lN52u6hzDtBZE81guuphjAITvmzb8ilEJGWAtbzKdnVeqYzXVA9oNEBDTE5bGfz4TpcKu/0PhqrG8dchq//sCFqO723bXD6cmhgW1u0Nudw79Xln+ooH7zdsq2oiEssYM8mzjm0kCJPTHg==	romain
18	azz@gmail.com	fKUPzFMw8erFSjCSb8OVusynYa1b3bUi694hUuvvayPBBQ7ildD23Dr8Uoc3htYXBsKhVggbOgSCMdA43iOhYLk6jn5OiEk+BiDsVzDSvc/HqLTUMJ+LFmsHUvre/Rjs633Zbeb9uzSWnfhRKxV0oioQrrxDknypvRcDlNaJjb3vK5jMUcwhNMayc7+Pj2VtlZrv0o2VDgHU7rWyYvqJKBUeoQyLQXG7VdRcQKSM2G6fgqkTgtZ1V7MbD3LlAvsF/NDpGGXHLu7AGt3E7PcinIXd9dcA3h3wlzyaNruRLVkr1LPcLSR2csLLXj/lxDrNk39ZExoD0QAPPrGmUei4NQ==	romain
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 18, true);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

