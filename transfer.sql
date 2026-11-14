--
-- PostgreSQL database dump
--

\restrict 5lf5E31ZqsJqLChBu28nFGUsFHbYQxcI22h3w5qevgYfTCtgacDkmRJyo0QhYTJ

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: passengers; Type: TABLE; Schema: titanic_project; Owner: -
--

CREATE TABLE titanic_project.passengers (
    passenger_id integer NOT NULL,
    name text NOT NULL,
    sex character varying(10),
    age double precision
);


--
-- Name: survival_details; Type: TABLE; Schema: titanic_project; Owner: -
--

CREATE TABLE titanic_project.survival_details (
    passenger_id integer NOT NULL,
    sibsp integer,
    parch integer,
    pclass integer,
    survived integer,
    CONSTRAINT survival_details_survived_check CHECK ((survived = ANY (ARRAY[0, 1])))
);


--
-- Name: travel_details; Type: TABLE; Schema: titanic_project; Owner: -
--

CREATE TABLE titanic_project.travel_details (
    passenger_id integer NOT NULL,
    ticket text,
    fare double precision,
    cabin text,
    embarked character varying(1)
);


--
-- Data for Name: passengers; Type: TABLE DATA; Schema: titanic_project; Owner: -
--

COPY titanic_project.passengers (passenger_id, name, sex, age) FROM stdin;
1	Braund, Mr. Owen Harris	male	22
2	Cumings, Mrs. John Bradley (Florence Briggs Thayer)	female	38
3	Heikkinen, Miss. Laina	female	26
4	Futrelle, Mrs. Jacques Heath (Lily May Peel)	female	35
5	Allen, Mr. William Henry	male	35
6	Moran, Mr. James	male	\N
7	McCarthy, Mr. Timothy J	male	54
8	Palsson, Master. Gosta Leonard	male	2
9	Johnson, Mrs. Oscar W (Elisabeth Vilhelmina Berg)	female	27
10	Nasser, Mrs. Nicholas (Adele Achem)	female	14
11	Sandstrom, Miss. Marguerite Rut	female	4
12	Bonnell, Miss. Elizabeth	female	58
13	Saundercock, Mr. William Henry	male	20
14	Andersson, Mr. Anders Johan	male	39
15	Vestrom, Miss. Hulda Amanda Adolfina	female	14
16	Hewlett, Mrs. (Mary D Kingcome) 	female	55
17	Rice, Master. Eugene	male	2
18	Williams, Mr. Charles Eugene	male	\N
19	Vander Planke, Mrs. Julius (Emelia Maria Vandemoortele)	female	31
20	Masselmani, Mrs. Fatima	female	\N
21	Fynney, Mr. Joseph J	male	35
22	Beesley, Mr. Lawrence	male	34
23	McGowan, Miss. Anna "Annie"	female	15
24	Sloper, Mr. William Thompson	male	28
25	Palsson, Miss. Torborg Danira	female	8
26	Asplund, Mrs. Carl Oscar (Selma Augusta Emilia Johansson)	female	38
27	Emir, Mr. Farred Chehab	male	\N
28	Fortune, Mr. Charles Alexander	male	19
29	O'Dwyer, Miss. Ellen "Nellie"	female	\N
30	Todoroff, Mr. Lalio	male	\N
31	Uruchurtu, Don. Manuel E	male	40
32	Spencer, Mrs. William Augustus (Marie Eugenie)	female	\N
33	Glynn, Miss. Mary Agatha	female	\N
34	Wheadon, Mr. Edward H	male	66
35	Meyer, Mr. Edgar Joseph	male	28
36	Holverson, Mr. Alexander Oskar	male	42
37	Mamee, Mr. Hanna	male	\N
38	Cann, Mr. Ernest Charles	male	21
39	Vander Planke, Miss. Augusta Maria	female	18
40	Nicola-Yarred, Miss. Jamila	female	14
41	Ahlin, Mrs. Johan (Johanna Persdotter Larsson)	female	40
42	Turpin, Mrs. William John Robert (Dorothy Ann Wonnacott)	female	27
43	Kraeff, Mr. Theodor	male	\N
44	Laroche, Miss. Simonne Marie Anne Andree	female	3
45	Devaney, Miss. Margaret Delia	female	19
46	Rogers, Mr. William John	male	\N
47	Lennon, Mr. Denis	male	\N
48	O'Driscoll, Miss. Bridget	female	\N
49	Samaan, Mr. Youssef	male	\N
50	Arnold-Franchi, Mrs. Josef (Josefine Franchi)	female	18
51	Panula, Master. Juha Niilo	male	7
52	Nosworthy, Mr. Richard Cater	male	21
53	Harper, Mrs. Henry Sleeper (Myna Haxtun)	female	49
54	Faunthorpe, Mrs. Lizzie (Elizabeth Anne Wilkinson)	female	29
55	Ostby, Mr. Engelhart Cornelius	male	65
56	Woolner, Mr. Hugh	male	\N
57	Rugg, Miss. Emily	female	21
58	Novel, Mr. Mansouer	male	28.5
59	West, Miss. Constance Mirium	female	5
60	Goodwin, Master. William Frederick	male	11
61	Sirayanian, Mr. Orsen	male	22
62	Icard, Miss. Amelie	female	38
63	Harris, Mr. Henry Birkhardt	male	45
64	Skoog, Master. Harald	male	4
65	Stewart, Mr. Albert A	male	\N
66	Moubarek, Master. Gerios	male	\N
67	Nye, Mrs. (Elizabeth Ramell)	female	29
68	Crease, Mr. Ernest James	male	19
69	Andersson, Miss. Erna Alexandra	female	17
70	Kink, Mr. Vincenz	male	26
71	Jenkin, Mr. Stephen Curnow	male	32
72	Goodwin, Miss. Lillian Amy	female	16
73	Hood, Mr. Ambrose Jr	male	21
74	Chronopoulos, Mr. Apostolos	male	26
75	Bing, Mr. Lee	male	32
76	Moen, Mr. Sigurd Hansen	male	25
77	Staneff, Mr. Ivan	male	\N
78	Moutal, Mr. Rahamin Haim	male	\N
79	Caldwell, Master. Alden Gates	male	0.83
80	Dowdell, Miss. Elizabeth	female	30
81	Waelens, Mr. Achille	male	22
82	Sheerlinck, Mr. Jan Baptist	male	29
83	McDermott, Miss. Brigdet Delia	female	\N
84	Carrau, Mr. Francisco M	male	28
85	Ilett, Miss. Bertha	female	17
86	Backstrom, Mrs. Karl Alfred (Maria Mathilda Gustafsson)	female	33
87	Ford, Mr. William Neal	male	16
88	Slocovski, Mr. Selman Francis	male	\N
89	Fortune, Miss. Mabel Helen	female	23
90	Celotti, Mr. Francesco	male	24
91	Christmann, Mr. Emil	male	29
92	Andreasson, Mr. Paul Edvin	male	20
93	Chaffee, Mr. Herbert Fuller	male	46
94	Dean, Mr. Bertram Frank	male	26
95	Coxon, Mr. Daniel	male	59
96	Shorney, Mr. Charles Joseph	male	\N
97	Goldschmidt, Mr. George B	male	71
98	Greenfield, Mr. William Bertram	male	23
99	Doling, Mrs. John T (Ada Julia Bone)	female	34
100	Kantor, Mr. Sinai	male	34
101	Petranec, Miss. Matilda	female	28
102	Petroff, Mr. Pastcho ("Pentcho")	male	\N
103	White, Mr. Richard Frasar	male	21
104	Johansson, Mr. Gustaf Joel	male	33
105	Gustafsson, Mr. Anders Vilhelm	male	37
106	Mionoff, Mr. Stoytcho	male	28
107	Salkjelsvik, Miss. Anna Kristine	female	21
108	Moss, Mr. Albert Johan	male	\N
109	Rekic, Mr. Tido	male	38
110	Moran, Miss. Bertha	female	\N
111	Porter, Mr. Walter Chamberlain	male	47
112	Zabour, Miss. Hileni	female	14.5
113	Barton, Mr. David John	male	22
114	Jussila, Miss. Katriina	female	20
115	Attalah, Miss. Malake	female	17
116	Pekoniemi, Mr. Edvard	male	21
117	Connors, Mr. Patrick	male	70.5
118	Turpin, Mr. William John Robert	male	29
119	Baxter, Mr. Quigg Edmond	male	24
120	Andersson, Miss. Ellis Anna Maria	female	2
121	Hickman, Mr. Stanley George	male	21
122	Moore, Mr. Leonard Charles	male	\N
123	Nasser, Mr. Nicholas	male	32.5
124	Webber, Miss. Susan	female	32.5
125	White, Mr. Percival Wayland	male	54
126	Nicola-Yarred, Master. Elias	male	12
127	McMahon, Mr. Martin	male	\N
128	Madsen, Mr. Fridtjof Arne	male	24
129	Peter, Miss. Anna	female	\N
130	Ekstrom, Mr. Johan	male	45
131	Drazenoic, Mr. Jozef	male	33
132	Coelho, Mr. Domingos Fernandeo	male	20
133	Robins, Mrs. Alexander A (Grace Charity Laury)	female	47
134	Weisz, Mrs. Leopold (Mathilde Francoise Pede)	female	29
135	Sobey, Mr. Samuel James Hayden	male	25
136	Richard, Mr. Emile	male	23
137	Newsom, Miss. Helen Monypeny	female	19
138	Futrelle, Mr. Jacques Heath	male	37
139	Osen, Mr. Olaf Elon	male	16
140	Giglio, Mr. Victor	male	24
141	Boulos, Mrs. Joseph (Sultana)	female	\N
142	Nysten, Miss. Anna Sofia	female	22
143	Hakkarainen, Mrs. Pekka Pietari (Elin Matilda Dolck)	female	24
144	Burke, Mr. Jeremiah	male	19
145	Andrew, Mr. Edgardo Samuel	male	18
146	Nicholls, Mr. Joseph Charles	male	19
147	Andersson, Mr. August Edvard ("Wennerstrom")	male	27
148	Ford, Miss. Robina Maggie "Ruby"	female	9
149	Navratil, Mr. Michel ("Louis M Hoffman")	male	36.5
150	Byles, Rev. Thomas Roussel Davids	male	42
151	Bateman, Rev. Robert James	male	51
152	Pears, Mrs. Thomas (Edith Wearne)	female	22
153	Meo, Mr. Alfonzo	male	55.5
154	van Billiard, Mr. Austin Blyler	male	40.5
155	Olsen, Mr. Ole Martin	male	\N
156	Williams, Mr. Charles Duane	male	51
157	Gilnagh, Miss. Katherine "Katie"	female	16
158	Corn, Mr. Harry	male	30
159	Smiljanic, Mr. Mile	male	\N
160	Sage, Master. Thomas Henry	male	\N
161	Cribb, Mr. John Hatfield	male	44
162	Watt, Mrs. James (Elizabeth "Bessie" Inglis Milne)	female	40
163	Bengtsson, Mr. John Viktor	male	26
164	Calic, Mr. Jovo	male	17
165	Panula, Master. Eino Viljami	male	1
166	Goldsmith, Master. Frank John William "Frankie"	male	9
167	Chibnall, Mrs. (Edith Martha Bowerman)	female	\N
168	Skoog, Mrs. William (Anna Bernhardina Karlsson)	female	45
169	Baumann, Mr. John D	male	\N
170	Ling, Mr. Lee	male	28
171	Van der hoef, Mr. Wyckoff	male	61
172	Rice, Master. Arthur	male	4
173	Johnson, Miss. Eleanor Ileen	female	1
174	Sivola, Mr. Antti Wilhelm	male	21
175	Smith, Mr. James Clinch	male	56
176	Klasen, Mr. Klas Albin	male	18
177	Lefebre, Master. Henry Forbes	male	\N
178	Isham, Miss. Ann Elizabeth	female	50
179	Hale, Mr. Reginald	male	30
180	Leonard, Mr. Lionel	male	36
181	Sage, Miss. Constance Gladys	female	\N
182	Pernot, Mr. Rene	male	\N
183	Asplund, Master. Clarence Gustaf Hugo	male	9
184	Becker, Master. Richard F	male	1
185	Kink-Heilmann, Miss. Luise Gretchen	female	4
186	Rood, Mr. Hugh Roscoe	male	\N
187	O'Brien, Mrs. Thomas (Johanna "Hannah" Godfrey)	female	\N
188	Romaine, Mr. Charles Hallace ("Mr C Rolmane")	male	45
189	Bourke, Mr. John	male	40
190	Turcin, Mr. Stjepan	male	36
191	Pinsky, Mrs. (Rosa)	female	32
192	Carbines, Mr. William	male	19
193	Andersen-Jensen, Miss. Carla Christine Nielsine	female	19
194	Navratil, Master. Michel M	male	3
195	Brown, Mrs. James Joseph (Margaret Tobin)	female	44
196	Lurette, Miss. Elise	female	58
197	Mernagh, Mr. Robert	male	\N
198	Olsen, Mr. Karl Siegwart Andreas	male	42
199	Madigan, Miss. Margaret "Maggie"	female	\N
200	Yrois, Miss. Henriette ("Mrs Harbeck")	female	24
201	Vande Walle, Mr. Nestor Cyriel	male	28
202	Sage, Mr. Frederick	male	\N
203	Johanson, Mr. Jakob Alfred	male	34
204	Youseff, Mr. Gerious	male	45.5
205	Cohen, Mr. Gurshon "Gus"	male	18
206	Strom, Miss. Telma Matilda	female	2
207	Backstrom, Mr. Karl Alfred	male	32
208	Albimona, Mr. Nassef Cassem	male	26
209	Carr, Miss. Helen "Ellen"	female	16
210	Blank, Mr. Henry	male	40
211	Ali, Mr. Ahmed	male	24
212	Cameron, Miss. Clear Annie	female	35
213	Perkin, Mr. John Henry	male	22
214	Givard, Mr. Hans Kristensen	male	30
215	Kiernan, Mr. Philip	male	\N
216	Newell, Miss. Madeleine	female	31
217	Honkanen, Miss. Eliina	female	27
218	Jacobsohn, Mr. Sidney Samuel	male	42
219	Bazzani, Miss. Albina	female	32
220	Harris, Mr. Walter	male	30
221	Sunderland, Mr. Victor Francis	male	16
222	Bracken, Mr. James H	male	27
223	Green, Mr. George Henry	male	51
224	Nenkoff, Mr. Christo	male	\N
225	Hoyt, Mr. Frederick Maxfield	male	38
226	Berglund, Mr. Karl Ivar Sven	male	22
227	Mellors, Mr. William John	male	19
228	Lovell, Mr. John Hall ("Henry")	male	20.5
229	Fahlstrom, Mr. Arne Jonas	male	18
230	Lefebre, Miss. Mathilde	female	\N
231	Harris, Mrs. Henry Birkhardt (Irene Wallach)	female	35
232	Larsson, Mr. Bengt Edvin	male	29
233	Sjostedt, Mr. Ernst Adolf	male	59
234	Asplund, Miss. Lillian Gertrud	female	5
235	Leyson, Mr. Robert William Norman	male	24
236	Harknett, Miss. Alice Phoebe	female	\N
237	Hold, Mr. Stephen	male	44
238	Collyer, Miss. Marjorie "Lottie"	female	8
239	Pengelly, Mr. Frederick William	male	19
240	Hunt, Mr. George Henry	male	33
241	Zabour, Miss. Thamine	female	\N
242	Murphy, Miss. Katherine "Kate"	female	\N
243	Coleridge, Mr. Reginald Charles	male	29
244	Maenpaa, Mr. Matti Alexanteri	male	22
245	Attalah, Mr. Sleiman	male	30
246	Minahan, Dr. William Edward	male	44
247	Lindahl, Miss. Agda Thorilda Viktoria	female	25
248	Hamalainen, Mrs. William (Anna)	female	24
249	Beckwith, Mr. Richard Leonard	male	37
250	Carter, Rev. Ernest Courtenay	male	54
251	Reed, Mr. James George	male	\N
252	Strom, Mrs. Wilhelm (Elna Matilda Persson)	female	29
253	Stead, Mr. William Thomas	male	62
254	Lobb, Mr. William Arthur	male	30
255	Rosblom, Mrs. Viktor (Helena Wilhelmina)	female	41
256	Touma, Mrs. Darwis (Hanne Youssef Razi)	female	29
257	Thorne, Mrs. Gertrude Maybelle	female	\N
258	Cherry, Miss. Gladys	female	30
259	Ward, Miss. Anna	female	35
260	Parrish, Mrs. (Lutie Davis)	female	50
261	Smith, Mr. Thomas	male	\N
262	Asplund, Master. Edvin Rojj Felix	male	3
263	Taussig, Mr. Emil	male	52
264	Harrison, Mr. William	male	40
265	Henry, Miss. Delia	female	\N
266	Reeves, Mr. David	male	36
267	Panula, Mr. Ernesti Arvid	male	16
268	Persson, Mr. Ernst Ulrik	male	25
269	Graham, Mrs. William Thompson (Edith Junkins)	female	58
270	Bissette, Miss. Amelia	female	35
271	Cairns, Mr. Alexander	male	\N
272	Tornquist, Mr. William Henry	male	25
273	Mellinger, Mrs. (Elizabeth Anne Maidment)	female	41
274	Natsch, Mr. Charles H	male	37
275	Healy, Miss. Hanora "Nora"	female	\N
276	Andrews, Miss. Kornelia Theodosia	female	63
277	Lindblom, Miss. Augusta Charlotta	female	45
278	Parkes, Mr. Francis "Frank"	male	\N
279	Rice, Master. Eric	male	7
280	Abbott, Mrs. Stanton (Rosa Hunt)	female	35
281	Duane, Mr. Frank	male	65
282	Olsson, Mr. Nils Johan Goransson	male	28
283	de Pelsmaeker, Mr. Alfons	male	16
284	Dorking, Mr. Edward Arthur	male	19
285	Smith, Mr. Richard William	male	\N
286	Stankovic, Mr. Ivan	male	33
287	de Mulder, Mr. Theodore	male	30
288	Naidenoff, Mr. Penko	male	22
289	Hosono, Mr. Masabumi	male	42
290	Connolly, Miss. Kate	female	22
291	Barber, Miss. Ellen "Nellie"	female	26
292	Bishop, Mrs. Dickinson H (Helen Walton)	female	19
293	Levy, Mr. Rene Jacques	male	36
294	Haas, Miss. Aloisia	female	24
295	Mineff, Mr. Ivan	male	24
296	Lewy, Mr. Ervin G	male	\N
297	Hanna, Mr. Mansour	male	23.5
298	Allison, Miss. Helen Loraine	female	2
299	Saalfeld, Mr. Adolphe	male	\N
300	Baxter, Mrs. James (Helene DeLaudeniere Chaput)	female	50
301	Kelly, Miss. Anna Katherine "Annie Kate"	female	\N
302	McCoy, Mr. Bernard	male	\N
303	Johnson, Mr. William Cahoone Jr	male	19
304	Keane, Miss. Nora A	female	\N
305	Williams, Mr. Howard Hugh "Harry"	male	\N
306	Allison, Master. Hudson Trevor	male	0.92
307	Fleming, Miss. Margaret	female	\N
308	Penasco y Castellana, Mrs. Victor de Satode (Maria Josefa Perez de Soto y Vallejo)	female	17
309	Abelson, Mr. Samuel	male	30
310	Francatelli, Miss. Laura Mabel	female	30
311	Hays, Miss. Margaret Bechstein	female	24
312	Ryerson, Miss. Emily Borie	female	18
313	Lahtinen, Mrs. William (Anna Sylfven)	female	26
314	Hendekovic, Mr. Ignjac	male	28
315	Hart, Mr. Benjamin	male	43
316	Nilsson, Miss. Helmina Josefina	female	26
317	Kantor, Mrs. Sinai (Miriam Sternin)	female	24
318	Moraweck, Dr. Ernest	male	54
319	Wick, Miss. Mary Natalie	female	31
320	Spedden, Mrs. Frederic Oakley (Margaretta Corning Stone)	female	40
321	Dennis, Mr. Samuel	male	22
322	Danoff, Mr. Yoto	male	27
323	Slayter, Miss. Hilda Mary	female	30
324	Caldwell, Mrs. Albert Francis (Sylvia Mae Harbaugh)	female	22
325	Sage, Mr. George John Jr	male	\N
326	Young, Miss. Marie Grice	female	36
327	Nysveen, Mr. Johan Hansen	male	61
328	Ball, Mrs. (Ada E Hall)	female	36
329	Goldsmith, Mrs. Frank John (Emily Alice Brown)	female	31
330	Hippach, Miss. Jean Gertrude	female	16
331	McCoy, Miss. Agnes	female	\N
332	Partner, Mr. Austen	male	45.5
333	Graham, Mr. George Edward	male	38
334	Vander Planke, Mr. Leo Edmondus	male	16
335	Frauenthal, Mrs. Henry William (Clara Heinsheimer)	female	\N
336	Denkoff, Mr. Mitto	male	\N
337	Pears, Mr. Thomas Clinton	male	29
338	Burns, Miss. Elizabeth Margaret	female	41
339	Dahl, Mr. Karl Edwart	male	45
340	Blackwell, Mr. Stephen Weart	male	45
341	Navratil, Master. Edmond Roger	male	2
342	Fortune, Miss. Alice Elizabeth	female	24
343	Collander, Mr. Erik Gustaf	male	28
344	Sedgwick, Mr. Charles Frederick Waddington	male	25
345	Fox, Mr. Stanley Hubert	male	36
346	Brown, Miss. Amelia "Mildred"	female	24
347	Smith, Miss. Marion Elsie	female	40
348	Davison, Mrs. Thomas Henry (Mary E Finck)	female	\N
349	Coutts, Master. William Loch "William"	male	3
350	Dimic, Mr. Jovan	male	42
351	Odahl, Mr. Nils Martin	male	23
352	Williams-Lambert, Mr. Fletcher Fellows	male	\N
353	Elias, Mr. Tannous	male	15
354	Arnold-Franchi, Mr. Josef	male	25
355	Yousif, Mr. Wazli	male	\N
356	Vanden Steen, Mr. Leo Peter	male	28
357	Bowerman, Miss. Elsie Edith	female	22
358	Funk, Miss. Annie Clemmer	female	38
359	McGovern, Miss. Mary	female	\N
360	Mockler, Miss. Helen Mary "Ellie"	female	\N
361	Skoog, Mr. Wilhelm	male	40
362	del Carlo, Mr. Sebastiano	male	29
363	Barbara, Mrs. (Catherine David)	female	45
364	Asim, Mr. Adola	male	35
365	O'Brien, Mr. Thomas	male	\N
366	Adahl, Mr. Mauritz Nils Martin	male	30
367	Warren, Mrs. Frank Manley (Anna Sophia Atkinson)	female	60
368	Moussa, Mrs. (Mantoura Boulos)	female	\N
369	Jermyn, Miss. Annie	female	\N
370	Aubart, Mme. Leontine Pauline	female	24
371	Harder, Mr. George Achilles	male	25
372	Wiklund, Mr. Jakob Alfred	male	18
373	Beavan, Mr. William Thomas	male	19
374	Ringhini, Mr. Sante	male	22
375	Palsson, Miss. Stina Viola	female	3
376	Meyer, Mrs. Edgar Joseph (Leila Saks)	female	\N
377	Landergren, Miss. Aurora Adelia	female	22
378	Widener, Mr. Harry Elkins	male	27
379	Betros, Mr. Tannous	male	20
380	Gustafsson, Mr. Karl Gideon	male	19
381	Bidois, Miss. Rosalie	female	42
382	Nakid, Miss. Maria ("Mary")	female	1
383	Tikkanen, Mr. Juho	male	32
384	Holverson, Mrs. Alexander Oskar (Mary Aline Towner)	female	35
385	Plotcharsky, Mr. Vasil	male	\N
386	Davies, Mr. Charles Henry	male	18
387	Goodwin, Master. Sidney Leonard	male	1
388	Buss, Miss. Kate	female	36
389	Sadlier, Mr. Matthew	male	\N
390	Lehmann, Miss. Bertha	female	17
391	Carter, Mr. William Ernest	male	36
392	Jansson, Mr. Carl Olof	male	21
393	Gustafsson, Mr. Johan Birger	male	28
394	Newell, Miss. Marjorie	female	23
395	Sandstrom, Mrs. Hjalmar (Agnes Charlotta Bengtsson)	female	24
396	Johansson, Mr. Erik	male	22
397	Olsson, Miss. Elina	female	31
398	McKane, Mr. Peter David	male	46
399	Pain, Dr. Alfred	male	23
400	Trout, Mrs. William H (Jessie L)	female	28
401	Niskanen, Mr. Juha	male	39
402	Adams, Mr. John	male	26
403	Jussila, Miss. Mari Aina	female	21
404	Hakkarainen, Mr. Pekka Pietari	male	28
405	Oreskovic, Miss. Marija	female	20
406	Gale, Mr. Shadrach	male	34
407	Widegren, Mr. Carl/Charles Peter	male	51
408	Richards, Master. William Rowe	male	3
409	Birkeland, Mr. Hans Martin Monsen	male	21
410	Lefebre, Miss. Ida	female	\N
411	Sdycoff, Mr. Todor	male	\N
412	Hart, Mr. Henry	male	\N
413	Minahan, Miss. Daisy E	female	33
414	Cunningham, Mr. Alfred Fleming	male	\N
415	Sundman, Mr. Johan Julian	male	44
416	Meek, Mrs. Thomas (Annie Louise Rowley)	female	\N
417	Drew, Mrs. James Vivian (Lulu Thorne Christian)	female	34
418	Silven, Miss. Lyyli Karoliina	female	18
419	Matthews, Mr. William John	male	30
420	Van Impe, Miss. Catharina	female	10
421	Gheorgheff, Mr. Stanio	male	\N
422	Charters, Mr. David	male	21
423	Zimmerman, Mr. Leo	male	29
424	Danbom, Mrs. Ernst Gilbert (Anna Sigrid Maria Brogren)	female	28
425	Rosblom, Mr. Viktor Richard	male	18
426	Wiseman, Mr. Phillippe	male	\N
427	Clarke, Mrs. Charles V (Ada Maria Winfield)	female	28
428	Phillips, Miss. Kate Florence ("Mrs Kate Louise Phillips Marshall")	female	19
429	Flynn, Mr. James	male	\N
430	Pickard, Mr. Berk (Berk Trembisky)	male	32
431	Bjornstrom-Steffansson, Mr. Mauritz Hakan	male	28
432	Thorneycroft, Mrs. Percival (Florence Kate White)	female	\N
433	Louch, Mrs. Charles Alexander (Alice Adelaide Slow)	female	42
434	Kallio, Mr. Nikolai Erland	male	17
435	Silvey, Mr. William Baird	male	50
436	Carter, Miss. Lucile Polk	female	14
437	Ford, Miss. Doolina Margaret "Daisy"	female	21
438	Richards, Mrs. Sidney (Emily Hocking)	female	24
439	Fortune, Mr. Mark	male	64
440	Kvillner, Mr. Johan Henrik Johannesson	male	31
441	Hart, Mrs. Benjamin (Esther Ada Bloomfield)	female	45
442	Hampe, Mr. Leon	male	20
443	Petterson, Mr. Johan Emil	male	25
444	Reynaldo, Ms. Encarnacion	female	28
445	Johannesen-Bratthammer, Mr. Bernt	male	\N
446	Dodge, Master. Washington	male	4
447	Mellinger, Miss. Madeleine Violet	female	13
448	Seward, Mr. Frederic Kimber	male	34
449	Baclini, Miss. Marie Catherine	female	5
450	Peuchen, Major. Arthur Godfrey	male	52
451	West, Mr. Edwy Arthur	male	36
452	Hagland, Mr. Ingvald Olai Olsen	male	\N
453	Foreman, Mr. Benjamin Laventall	male	30
454	Goldenberg, Mr. Samuel L	male	49
455	Peduzzi, Mr. Joseph	male	\N
456	Jalsevac, Mr. Ivan	male	29
457	Millet, Mr. Francis Davis	male	65
458	Kenyon, Mrs. Frederick R (Marion)	female	\N
459	Toomey, Miss. Ellen	female	50
460	O'Connor, Mr. Maurice	male	\N
461	Anderson, Mr. Harry	male	48
462	Morley, Mr. William	male	34
463	Gee, Mr. Arthur H	male	47
464	Milling, Mr. Jacob Christian	male	48
465	Maisner, Mr. Simon	male	\N
466	Goncalves, Mr. Manuel Estanslas	male	38
467	Campbell, Mr. William	male	\N
468	Smart, Mr. John Montgomery	male	56
469	Scanlan, Mr. James	male	\N
470	Baclini, Miss. Helene Barbara	female	0.75
471	Keefe, Mr. Arthur	male	\N
472	Cacic, Mr. Luka	male	38
473	West, Mrs. Edwy Arthur (Ada Mary Worth)	female	33
474	Jerwan, Mrs. Amin S (Marie Marthe Thuillard)	female	23
475	Strandberg, Miss. Ida Sofia	female	22
476	Clifford, Mr. George Quincy	male	\N
477	Renouf, Mr. Peter Henry	male	34
478	Braund, Mr. Lewis Richard	male	29
479	Karlsson, Mr. Nils August	male	22
480	Hirvonen, Miss. Hildur E	female	2
481	Goodwin, Master. Harold Victor	male	9
482	Frost, Mr. Anthony Wood "Archie"	male	\N
483	Rouse, Mr. Richard Henry	male	50
484	Turkula, Mrs. (Hedwig)	female	63
485	Bishop, Mr. Dickinson H	male	25
486	Lefebre, Miss. Jeannie	female	\N
487	Hoyt, Mrs. Frederick Maxfield (Jane Anne Forby)	female	35
488	Kent, Mr. Edward Austin	male	58
489	Somerton, Mr. Francis William	male	30
490	Coutts, Master. Eden Leslie "Neville"	male	9
491	Hagland, Mr. Konrad Mathias Reiersen	male	\N
492	Windelov, Mr. Einar	male	21
493	Molson, Mr. Harry Markland	male	55
494	Artagaveytia, Mr. Ramon	male	71
495	Stanley, Mr. Edward Roland	male	21
496	Yousseff, Mr. Gerious	male	\N
497	Eustis, Miss. Elizabeth Mussey	female	54
498	Shellard, Mr. Frederick William	male	\N
499	Allison, Mrs. Hudson J C (Bessie Waldo Daniels)	female	25
500	Svensson, Mr. Olof	male	24
501	Calic, Mr. Petar	male	17
502	Canavan, Miss. Mary	female	21
503	O'Sullivan, Miss. Bridget Mary	female	\N
504	Laitinen, Miss. Kristina Sofia	female	37
505	Maioni, Miss. Roberta	female	16
506	Penasco y Castellana, Mr. Victor de Satode	male	18
507	Quick, Mrs. Frederick Charles (Jane Richards)	female	33
508	Bradley, Mr. George ("George Arthur Brayton")	male	\N
509	Olsen, Mr. Henry Margido	male	28
510	Lang, Mr. Fang	male	26
511	Daly, Mr. Eugene Patrick	male	29
512	Webber, Mr. James	male	\N
513	McGough, Mr. James Robert	male	36
514	Rothschild, Mrs. Martin (Elizabeth L. Barrett)	female	54
515	Coleff, Mr. Satio	male	24
516	Walker, Mr. William Anderson	male	47
517	Lemore, Mrs. (Amelia Milley)	female	34
518	Ryan, Mr. Patrick	male	\N
519	Angle, Mrs. William A (Florence "Mary" Agnes Hughes)	female	36
520	Pavlovic, Mr. Stefo	male	32
521	Perreault, Miss. Anne	female	30
522	Vovk, Mr. Janko	male	22
523	Lahoud, Mr. Sarkis	male	\N
524	Hippach, Mrs. Louis Albert (Ida Sophia Fischer)	female	44
525	Kassem, Mr. Fared	male	\N
526	Farrell, Mr. James	male	40.5
527	Ridsdale, Miss. Lucy	female	50
528	Farthing, Mr. John	male	\N
529	Salonen, Mr. Johan Werner	male	39
530	Hocking, Mr. Richard George	male	23
531	Quick, Miss. Phyllis May	female	2
532	Toufik, Mr. Nakli	male	\N
533	Elias, Mr. Joseph Jr	male	17
534	Peter, Mrs. Catherine (Catherine Rizk)	female	\N
535	Cacic, Miss. Marija	female	30
536	Hart, Miss. Eva Miriam	female	7
537	Butt, Major. Archibald Willingham	male	45
538	LeRoy, Miss. Bertha	female	30
539	Risien, Mr. Samuel Beard	male	\N
540	Frolicher, Miss. Hedwig Margaritha	female	22
541	Crosby, Miss. Harriet R	female	36
542	Andersson, Miss. Ingeborg Constanzia	female	9
543	Andersson, Miss. Sigrid Elisabeth	female	11
544	Beane, Mr. Edward	male	32
545	Douglas, Mr. Walter Donald	male	50
546	Nicholson, Mr. Arthur Ernest	male	64
547	Beane, Mrs. Edward (Ethel Clarke)	female	19
548	Padro y Manent, Mr. Julian	male	\N
549	Goldsmith, Mr. Frank John	male	33
550	Davies, Master. John Morgan Jr	male	8
551	Thayer, Mr. John Borland Jr	male	17
552	Sharp, Mr. Percival James R	male	27
553	O'Brien, Mr. Timothy	male	\N
554	Leeni, Mr. Fahim ("Philip Zenni")	male	22
555	Ohman, Miss. Velin	female	22
556	Wright, Mr. George	male	62
557	Duff Gordon, Lady. (Lucille Christiana Sutherland) ("Mrs Morgan")	female	48
558	Robbins, Mr. Victor	male	\N
559	Taussig, Mrs. Emil (Tillie Mandelbaum)	female	39
560	de Messemaeker, Mrs. Guillaume Joseph (Emma)	female	36
561	Morrow, Mr. Thomas Rowan	male	\N
562	Sivic, Mr. Husein	male	40
563	Norman, Mr. Robert Douglas	male	28
564	Simmons, Mr. John	male	\N
565	Meanwell, Miss. (Marion Ogden)	female	\N
566	Davies, Mr. Alfred J	male	24
567	Stoytcheff, Mr. Ilia	male	19
568	Palsson, Mrs. Nils (Alma Cornelia Berglund)	female	29
569	Doharr, Mr. Tannous	male	\N
570	Jonsson, Mr. Carl	male	32
571	Harris, Mr. George	male	62
572	Appleton, Mrs. Edward Dale (Charlotte Lamson)	female	53
573	Flynn, Mr. John Irwin ("Irving")	male	36
574	Kelly, Miss. Mary	female	\N
575	Rush, Mr. Alfred George John	male	16
576	Patchett, Mr. George	male	19
577	Garside, Miss. Ethel	female	34
578	Silvey, Mrs. William Baird (Alice Munger)	female	39
579	Caram, Mrs. Joseph (Maria Elias)	female	\N
580	Jussila, Mr. Eiriik	male	32
581	Christy, Miss. Julie Rachel	female	25
582	Thayer, Mrs. John Borland (Marian Longstreth Morris)	female	39
583	Downton, Mr. William James	male	54
584	Ross, Mr. John Hugo	male	36
585	Paulner, Mr. Uscher	male	\N
586	Taussig, Miss. Ruth	female	18
587	Jarvis, Mr. John Denzil	male	47
588	Frolicher-Stehli, Mr. Maxmillian	male	60
589	Gilinski, Mr. Eliezer	male	22
590	Murdlin, Mr. Joseph	male	\N
591	Rintamaki, Mr. Matti	male	35
592	Stephenson, Mrs. Walter Bertram (Martha Eustis)	female	52
593	Elsbury, Mr. William James	male	47
594	Bourke, Miss. Mary	female	\N
595	Chapman, Mr. John Henry	male	37
596	Van Impe, Mr. Jean Baptiste	male	36
597	Leitch, Miss. Jessie Wills	female	\N
598	Johnson, Mr. Alfred	male	49
599	Boulos, Mr. Hanna	male	\N
600	Duff Gordon, Sir. Cosmo Edmund ("Mr Morgan")	male	49
601	Jacobsohn, Mrs. Sidney Samuel (Amy Frances Christy)	female	24
602	Slabenoff, Mr. Petco	male	\N
603	Harrington, Mr. Charles H	male	\N
604	Torber, Mr. Ernst William	male	44
605	Homer, Mr. Harry ("Mr E Haven")	male	35
606	Lindell, Mr. Edvard Bengtsson	male	36
607	Karaic, Mr. Milan	male	30
608	Daniel, Mr. Robert Williams	male	27
609	Laroche, Mrs. Joseph (Juliette Marie Louise Lafargue)	female	22
610	Shutes, Miss. Elizabeth W	female	40
611	Andersson, Mrs. Anders Johan (Alfrida Konstantia Brogren)	female	39
612	Jardin, Mr. Jose Neto	male	\N
613	Murphy, Miss. Margaret Jane	female	\N
614	Horgan, Mr. John	male	\N
615	Brocklebank, Mr. William Alfred	male	35
616	Herman, Miss. Alice	female	24
617	Danbom, Mr. Ernst Gilbert	male	34
618	Lobb, Mrs. William Arthur (Cordelia K Stanlick)	female	26
619	Becker, Miss. Marion Louise	female	4
620	Gavey, Mr. Lawrence	male	26
621	Yasbeck, Mr. Antoni	male	27
622	Kimball, Mr. Edwin Nelson Jr	male	42
623	Nakid, Mr. Sahid	male	20
624	Hansen, Mr. Henry Damsgaard	male	21
625	Bowen, Mr. David John "Dai"	male	21
626	Sutton, Mr. Frederick	male	61
627	Kirkland, Rev. Charles Leonard	male	57
628	Longley, Miss. Gretchen Fiske	female	21
629	Bostandyeff, Mr. Guentcho	male	26
630	O'Connell, Mr. Patrick D	male	\N
631	Barkworth, Mr. Algernon Henry Wilson	male	80
632	Lundahl, Mr. Johan Svensson	male	51
633	Stahelin-Maeglin, Dr. Max	male	32
634	Parr, Mr. William Henry Marsh	male	\N
635	Skoog, Miss. Mabel	female	9
636	Davis, Miss. Mary	female	28
637	Leinonen, Mr. Antti Gustaf	male	32
638	Collyer, Mr. Harvey	male	31
639	Panula, Mrs. Juha (Maria Emilia Ojala)	female	41
640	Thorneycroft, Mr. Percival	male	\N
641	Jensen, Mr. Hans Peder	male	20
642	Sagesser, Mlle. Emma	female	24
643	Skoog, Miss. Margit Elizabeth	female	2
644	Foo, Mr. Choong	male	\N
645	Baclini, Miss. Eugenie	female	0.75
646	Harper, Mr. Henry Sleeper	male	48
647	Cor, Mr. Liudevit	male	19
648	Simonius-Blumer, Col. Oberst Alfons	male	56
649	Willey, Mr. Edward	male	\N
650	Stanley, Miss. Amy Zillah Elsie	female	23
651	Mitkoff, Mr. Mito	male	\N
652	Doling, Miss. Elsie	female	18
653	Kalvik, Mr. Johannes Halvorsen	male	21
654	O'Leary, Miss. Hanora "Norah"	female	\N
655	Hegarty, Miss. Hanora "Nora"	female	18
656	Hickman, Mr. Leonard Mark	male	24
657	Radeff, Mr. Alexander	male	\N
658	Bourke, Mrs. John (Catherine)	female	32
659	Eitemiller, Mr. George Floyd	male	23
660	Newell, Mr. Arthur Webster	male	58
661	Frauenthal, Dr. Henry William	male	50
662	Badt, Mr. Mohamed	male	40
663	Colley, Mr. Edward Pomeroy	male	47
664	Coleff, Mr. Peju	male	36
665	Lindqvist, Mr. Eino William	male	20
666	Hickman, Mr. Lewis	male	32
667	Butler, Mr. Reginald Fenton	male	25
668	Rommetvedt, Mr. Knud Paust	male	\N
669	Cook, Mr. Jacob	male	43
670	Taylor, Mrs. Elmer Zebley (Juliet Cummins Wright)	female	\N
671	Brown, Mrs. Thomas William Solomon (Elizabeth Catherine Ford)	female	40
672	Davidson, Mr. Thornton	male	31
673	Mitchell, Mr. Henry Michael	male	70
674	Wilhelms, Mr. Charles	male	31
675	Watson, Mr. Ennis Hastings	male	\N
676	Edvardsson, Mr. Gustaf Hjalmar	male	18
677	Sawyer, Mr. Frederick Charles	male	24.5
678	Turja, Miss. Anna Sofia	female	18
679	Goodwin, Mrs. Frederick (Augusta Tyler)	female	43
680	Cardeza, Mr. Thomas Drake Martinez	male	36
681	Peters, Miss. Katie	female	\N
682	Hassab, Mr. Hammad	male	27
683	Olsvigen, Mr. Thor Anderson	male	20
684	Goodwin, Mr. Charles Edward	male	14
685	Brown, Mr. Thomas William Solomon	male	60
686	Laroche, Mr. Joseph Philippe Lemercier	male	25
687	Panula, Mr. Jaako Arnold	male	14
688	Dakic, Mr. Branko	male	19
689	Fischer, Mr. Eberhard Thelander	male	18
690	Madill, Miss. Georgette Alexandra	female	15
691	Dick, Mr. Albert Adrian	male	31
692	Karun, Miss. Manca	female	4
693	Lam, Mr. Ali	male	\N
694	Saad, Mr. Khalil	male	25
695	Weir, Col. John	male	60
696	Chapman, Mr. Charles Henry	male	52
697	Kelly, Mr. James	male	44
698	Mullens, Miss. Katherine "Katie"	female	\N
699	Thayer, Mr. John Borland	male	49
700	Humblen, Mr. Adolf Mathias Nicolai Olsen	male	42
701	Astor, Mrs. John Jacob (Madeleine Talmadge Force)	female	18
702	Silverthorne, Mr. Spencer Victor	male	35
703	Barbara, Miss. Saiide	female	18
704	Gallagher, Mr. Martin	male	25
705	Hansen, Mr. Henrik Juul	male	26
706	Morley, Mr. Henry Samuel ("Mr Henry Marshall")	male	39
707	Kelly, Mrs. Florence "Fannie"	female	45
708	Calderhead, Mr. Edward Pennington	male	42
709	Cleaver, Miss. Alice	female	22
710	Moubarek, Master. Halim Gonios ("William George")	male	\N
711	Mayne, Mlle. Berthe Antonine ("Mrs de Villiers")	female	24
712	Klaber, Mr. Herman	male	\N
713	Taylor, Mr. Elmer Zebley	male	48
714	Larsson, Mr. August Viktor	male	29
715	Greenberg, Mr. Samuel	male	52
716	Soholt, Mr. Peter Andreas Lauritz Andersen	male	19
717	Endres, Miss. Caroline Louise	female	38
718	Troutt, Miss. Edwina Celia "Winnie"	female	27
719	McEvoy, Mr. Michael	male	\N
720	Johnson, Mr. Malkolm Joackim	male	33
721	Harper, Miss. Annie Jessie "Nina"	female	6
722	Jensen, Mr. Svend Lauritz	male	17
723	Gillespie, Mr. William Henry	male	34
724	Hodges, Mr. Henry Price	male	50
725	Chambers, Mr. Norman Campbell	male	27
726	Oreskovic, Mr. Luka	male	20
727	Renouf, Mrs. Peter Henry (Lillian Jefferys)	female	30
728	Mannion, Miss. Margareth	female	\N
729	Bryhl, Mr. Kurt Arnold Gottfrid	male	25
730	Ilmakangas, Miss. Pieta Sofia	female	25
731	Allen, Miss. Elisabeth Walton	female	29
732	Hassan, Mr. Houssein G N	male	11
733	Knight, Mr. Robert J	male	\N
734	Berriman, Mr. William John	male	23
735	Troupiansky, Mr. Moses Aaron	male	23
736	Williams, Mr. Leslie	male	28.5
737	Ford, Mrs. Edward (Margaret Ann Watson)	female	48
738	Lesurer, Mr. Gustave J	male	35
739	Ivanoff, Mr. Kanio	male	\N
740	Nankoff, Mr. Minko	male	\N
741	Hawksford, Mr. Walter James	male	\N
742	Cavendish, Mr. Tyrell William	male	36
743	Ryerson, Miss. Susan Parker "Suzette"	female	21
744	McNamee, Mr. Neal	male	24
745	Stranden, Mr. Juho	male	31
746	Crosby, Capt. Edward Gifford	male	70
747	Abbott, Mr. Rossmore Edward	male	16
748	Sinkkonen, Miss. Anna	female	30
749	Marvin, Mr. Daniel Warner	male	19
750	Connaghton, Mr. Michael	male	31
751	Wells, Miss. Joan	female	4
752	Moor, Master. Meier	male	6
753	Vande Velde, Mr. Johannes Joseph	male	33
754	Jonkoff, Mr. Lalio	male	23
755	Herman, Mrs. Samuel (Jane Laver)	female	48
756	Hamalainen, Master. Viljo	male	0.67
757	Carlsson, Mr. August Sigfrid	male	28
758	Bailey, Mr. Percy Andrew	male	18
759	Theobald, Mr. Thomas Leonard	male	34
760	Rothes, the Countess. of (Lucy Noel Martha Dyer-Edwards)	female	33
761	Garfirth, Mr. John	male	\N
762	Nirva, Mr. Iisakki Antino Aijo	male	41
763	Barah, Mr. Hanna Assi	male	20
764	Carter, Mrs. William Ernest (Lucile Polk)	female	36
765	Eklund, Mr. Hans Linus	male	16
766	Hogeboom, Mrs. John C (Anna Andrews)	female	51
767	Brewe, Dr. Arthur Jackson	male	\N
768	Mangan, Miss. Mary	female	30.5
769	Moran, Mr. Daniel J	male	\N
770	Gronnestad, Mr. Daniel Danielsen	male	32
771	Lievens, Mr. Rene Aime	male	24
772	Jensen, Mr. Niels Peder	male	48
773	Mack, Mrs. (Mary)	female	57
774	Elias, Mr. Dibo	male	\N
775	Hocking, Mrs. Elizabeth (Eliza Needs)	female	54
776	Myhrman, Mr. Pehr Fabian Oliver Malkolm	male	18
777	Tobin, Mr. Roger	male	\N
778	Emanuel, Miss. Virginia Ethel	female	5
779	Kilgannon, Mr. Thomas J	male	\N
780	Robert, Mrs. Edward Scott (Elisabeth Walton McMillan)	female	43
781	Ayoub, Miss. Banoura	female	13
782	Dick, Mrs. Albert Adrian (Vera Gillespie)	female	17
783	Long, Mr. Milton Clyde	male	29
784	Johnston, Mr. Andrew G	male	\N
785	Ali, Mr. William	male	25
786	Harmer, Mr. Abraham (David Lishin)	male	25
787	Sjoblom, Miss. Anna Sofia	female	18
788	Rice, Master. George Hugh	male	8
789	Dean, Master. Bertram Vere	male	1
790	Guggenheim, Mr. Benjamin	male	46
791	Keane, Mr. Andrew "Andy"	male	\N
792	Gaskell, Mr. Alfred	male	16
793	Sage, Miss. Stella Anna	female	\N
794	Hoyt, Mr. William Fisher	male	\N
795	Dantcheff, Mr. Ristiu	male	25
796	Otter, Mr. Richard	male	39
797	Leader, Dr. Alice (Farnham)	female	49
798	Osman, Mrs. Mara	female	31
799	Ibrahim Shawah, Mr. Yousseff	male	30
800	Van Impe, Mrs. Jean Baptiste (Rosalie Paula Govaert)	female	30
801	Ponesell, Mr. Martin	male	34
802	Collyer, Mrs. Harvey (Charlotte Annie Tate)	female	31
803	Carter, Master. William Thornton II	male	11
804	Thomas, Master. Assad Alexander	male	0.42
805	Hedman, Mr. Oskar Arvid	male	27
806	Johansson, Mr. Karl Johan	male	31
807	Andrews, Mr. Thomas Jr	male	39
808	Pettersson, Miss. Ellen Natalia	female	18
809	Meyer, Mr. August	male	39
810	Chambers, Mrs. Norman Campbell (Bertha Griggs)	female	33
811	Alexander, Mr. William	male	26
812	Lester, Mr. James	male	39
813	Slemen, Mr. Richard James	male	35
814	Andersson, Miss. Ebba Iris Alfrida	female	6
815	Tomlin, Mr. Ernest Portage	male	30.5
816	Fry, Mr. Richard	male	\N
817	Heininen, Miss. Wendla Maria	female	23
818	Mallet, Mr. Albert	male	31
819	Holm, Mr. John Fredrik Alexander	male	43
820	Skoog, Master. Karl Thorsten	male	10
821	Hays, Mrs. Charles Melville (Clara Jennings Gregg)	female	52
822	Lulic, Mr. Nikola	male	27
823	Reuchlin, Jonkheer. John George	male	38
824	Moor, Mrs. (Beila)	female	27
825	Panula, Master. Urho Abraham	male	2
826	Flynn, Mr. John	male	\N
827	Lam, Mr. Len	male	\N
828	Mallet, Master. Andre	male	1
829	McCormack, Mr. Thomas Joseph	male	\N
830	Stone, Mrs. George Nelson (Martha Evelyn)	female	62
831	Yasbeck, Mrs. Antoni (Selini Alexander)	female	15
832	Richards, Master. George Sibley	male	0.83
833	Saad, Mr. Amin	male	\N
834	Augustsson, Mr. Albert	male	23
835	Allum, Mr. Owen George	male	18
836	Compton, Miss. Sara Rebecca	female	39
837	Pasic, Mr. Jakob	male	21
838	Sirota, Mr. Maurice	male	\N
839	Chip, Mr. Chang	male	32
840	Marechal, Mr. Pierre	male	\N
841	Alhomaki, Mr. Ilmari Rudolf	male	20
842	Mudd, Mr. Thomas Charles	male	16
843	Serepeca, Miss. Augusta	female	30
844	Lemberopolous, Mr. Peter L	male	34.5
845	Culumovic, Mr. Jeso	male	17
846	Abbing, Mr. Anthony	male	42
847	Sage, Mr. Douglas Bullen	male	\N
848	Markoff, Mr. Marin	male	35
849	Harper, Rev. John	male	28
850	Goldenberg, Mrs. Samuel L (Edwiga Grabowska)	female	\N
851	Andersson, Master. Sigvard Harald Elias	male	4
852	Svensson, Mr. Johan	male	74
853	Boulos, Miss. Nourelain	female	9
854	Lines, Miss. Mary Conover	female	16
855	Carter, Mrs. Ernest Courtenay (Lilian Hughes)	female	44
856	Aks, Mrs. Sam (Leah Rosen)	female	18
857	Wick, Mrs. George Dennick (Mary Hitchcock)	female	45
858	Daly, Mr. Peter Denis 	male	51
859	Baclini, Mrs. Solomon (Latifa Qurban)	female	24
860	Razi, Mr. Raihed	male	\N
861	Hansen, Mr. Claus Peter	male	41
862	Giles, Mr. Frederick Edward	male	21
863	Swift, Mrs. Frederick Joel (Margaret Welles Barron)	female	48
864	Sage, Miss. Dorothy Edith "Dolly"	female	\N
865	Gill, Mr. John William	male	24
866	Bystrom, Mrs. (Karolina)	female	42
867	Duran y More, Miss. Asuncion	female	27
868	Roebling, Mr. Washington Augustus II	male	31
869	van Melkebeke, Mr. Philemon	male	\N
870	Johnson, Master. Harold Theodor	male	4
871	Balkic, Mr. Cerin	male	26
872	Beckwith, Mrs. Richard Leonard (Sallie Monypeny)	female	47
873	Carlsson, Mr. Frans Olof	male	33
874	Vander Cruyssen, Mr. Victor	male	47
875	Abelson, Mrs. Samuel (Hannah Wizosky)	female	28
876	Najib, Miss. Adele Kiamie "Jane"	female	15
877	Gustafsson, Mr. Alfred Ossian	male	20
878	Petroff, Mr. Nedelio	male	19
879	Laleff, Mr. Kristo	male	\N
880	Potter, Mrs. Thomas Jr (Lily Alexenia Wilson)	female	56
881	Shelley, Mrs. William (Imanita Parrish Hall)	female	25
882	Markun, Mr. Johann	male	33
883	Dahlberg, Miss. Gerda Ulrika	female	22
884	Banfield, Mr. Frederick James	male	28
885	Sutehall, Mr. Henry Jr	male	25
886	Rice, Mrs. William (Margaret Norton)	female	39
887	Montvila, Rev. Juozas	male	27
888	Graham, Miss. Margaret Edith	female	19
889	Johnston, Miss. Catherine Helen "Carrie"	female	\N
890	Behr, Mr. Karl Howell	male	26
891	Dooley, Mr. Patrick	male	32
\.


--
-- Data for Name: survival_details; Type: TABLE DATA; Schema: titanic_project; Owner: -
--

COPY titanic_project.survival_details (passenger_id, sibsp, parch, pclass, survived) FROM stdin;
1	1	0	3	0
2	1	0	1	1
3	0	0	3	1
4	1	0	1	1
5	0	0	3	0
6	0	0	3	0
7	0	0	1	0
8	3	1	3	0
9	0	2	3	1
10	1	0	2	1
11	1	1	3	1
12	0	0	1	1
13	0	0	3	0
14	1	5	3	0
15	0	0	3	0
16	0	0	2	1
17	4	1	3	0
18	0	0	2	1
19	1	0	3	0
20	0	0	3	1
21	0	0	2	0
22	0	0	2	1
23	0	0	3	1
24	0	0	1	1
25	3	1	3	0
26	1	5	3	1
27	0	0	3	0
28	3	2	1	0
29	0	0	3	1
30	0	0	3	0
31	0	0	1	0
32	1	0	1	1
33	0	0	3	1
34	0	0	2	0
35	1	0	1	0
36	1	0	1	0
37	0	0	3	1
38	0	0	3	0
39	2	0	3	0
40	1	0	3	1
41	1	0	3	0
42	1	0	2	0
43	0	0	3	0
44	1	2	2	1
45	0	0	3	1
46	0	0	3	0
47	1	0	3	0
48	0	0	3	1
49	2	0	3	0
50	1	0	3	0
51	4	1	3	0
52	0	0	3	0
53	1	0	1	1
54	1	0	2	1
55	0	1	1	0
56	0	0	1	1
57	0	0	2	1
58	0	0	3	0
59	1	2	2	1
60	5	2	3	0
61	0	0	3	0
62	0	0	1	1
63	1	0	1	0
64	3	2	3	0
65	0	0	1	0
66	1	1	3	1
67	0	0	2	1
68	0	0	3	0
69	4	2	3	1
70	2	0	3	0
71	0	0	2	0
72	5	2	3	0
73	0	0	2	0
74	1	0	3	0
75	0	0	3	1
76	0	0	3	0
77	0	0	3	0
78	0	0	3	0
79	0	2	2	1
80	0	0	3	1
81	0	0	3	0
82	0	0	3	1
83	0	0	3	1
84	0	0	1	0
85	0	0	2	1
86	3	0	3	1
87	1	3	3	0
88	0	0	3	0
89	3	2	1	1
90	0	0	3	0
91	0	0	3	0
92	0	0	3	0
93	1	0	1	0
94	1	2	3	0
95	0	0	3	0
96	0	0	3	0
97	0	0	1	0
98	0	1	1	1
99	0	1	2	1
100	1	0	2	0
101	0	0	3	0
102	0	0	3	0
103	0	1	1	0
104	0	0	3	0
105	2	0	3	0
106	0	0	3	0
107	0	0	3	1
108	0	0	3	1
109	0	0	3	0
110	1	0	3	1
111	0	0	1	0
112	1	0	3	0
113	0	0	3	0
114	1	0	3	0
115	0	0	3	0
116	0	0	3	0
117	0	0	3	0
118	1	0	2	0
119	0	1	1	0
120	4	2	3	0
121	2	0	2	0
122	0	0	3	0
123	1	0	2	0
124	0	0	2	1
125	0	1	1	0
126	1	0	3	1
127	0	0	3	0
128	0	0	3	1
129	1	1	3	1
130	0	0	3	0
131	0	0	3	0
132	0	0	3	0
133	1	0	3	0
134	1	0	2	1
135	0	0	2	0
136	0	0	2	0
137	0	2	1	1
138	1	0	1	0
139	0	0	3	0
140	0	0	1	0
141	0	2	3	0
142	0	0	3	1
143	1	0	3	1
144	0	0	3	0
145	0	0	2	0
146	1	1	2	0
147	0	0	3	1
148	2	2	3	0
149	0	2	2	0
150	0	0	2	0
151	0	0	2	0
152	1	0	1	1
153	0	0	3	0
154	0	2	3	0
155	0	0	3	0
156	0	1	1	0
157	0	0	3	1
158	0	0	3	0
159	0	0	3	0
160	8	2	3	0
161	0	1	3	0
162	0	0	2	1
163	0	0	3	0
164	0	0	3	0
165	4	1	3	0
166	0	2	3	1
167	0	1	1	1
168	1	4	3	0
169	0	0	1	0
170	0	0	3	0
171	0	0	1	0
172	4	1	3	0
173	1	1	3	1
174	0	0	3	0
175	0	0	1	0
176	1	1	3	0
177	3	1	3	0
178	0	0	1	0
179	0	0	2	0
180	0	0	3	0
181	8	2	3	0
182	0	0	2	0
183	4	2	3	0
184	2	1	2	1
185	0	2	3	1
186	0	0	1	0
187	1	0	3	1
188	0	0	1	1
189	1	1	3	0
190	0	0	3	0
191	0	0	2	1
192	0	0	2	0
193	1	0	3	1
194	1	1	2	1
195	0	0	1	1
196	0	0	1	1
197	0	0	3	0
198	0	1	3	0
199	0	0	3	1
200	0	0	2	0
201	0	0	3	0
202	8	2	3	0
203	0	0	3	0
204	0	0	3	0
205	0	0	3	1
206	0	1	3	0
207	1	0	3	0
208	0	0	3	1
209	0	0	3	1
210	0	0	1	1
211	0	0	3	0
212	0	0	2	1
213	0	0	3	0
214	0	0	2	0
215	1	0	3	0
216	1	0	1	1
217	0	0	3	1
218	1	0	2	0
219	0	0	1	1
220	0	0	2	0
221	0	0	3	1
222	0	0	2	0
223	0	0	3	0
224	0	0	3	0
225	1	0	1	1
226	0	0	3	0
227	0	0	2	1
228	0	0	3	0
229	0	0	2	0
230	3	1	3	0
231	1	0	1	1
232	0	0	3	0
233	0	0	2	0
234	4	2	3	1
235	0	0	2	0
236	0	0	3	0
237	1	0	2	0
238	0	2	2	1
239	0	0	2	0
240	0	0	2	0
241	1	0	3	0
242	1	0	3	1
243	0	0	2	0
244	0	0	3	0
245	0	0	3	0
246	2	0	1	0
247	0	0	3	0
248	0	2	2	1
249	1	1	1	1
250	1	0	2	0
251	0	0	3	0
252	1	1	3	0
253	0	0	1	0
254	1	0	3	0
255	0	2	3	0
256	0	2	3	1
257	0	0	1	1
258	0	0	1	1
259	0	0	1	1
260	0	1	2	1
261	0	0	3	0
262	4	2	3	1
263	1	1	1	0
264	0	0	1	0
265	0	0	3	0
266	0	0	2	0
267	4	1	3	0
268	1	0	3	1
269	0	1	1	1
270	0	0	1	1
271	0	0	1	0
272	0	0	3	1
273	0	1	2	1
274	0	1	1	0
275	0	0	3	1
276	1	0	1	1
277	0	0	3	0
278	0	0	2	0
279	4	1	3	0
280	1	1	3	1
281	0	0	3	0
282	0	0	3	0
283	0	0	3	0
284	0	0	3	1
285	0	0	1	0
286	0	0	3	0
287	0	0	3	1
288	0	0	3	0
289	0	0	2	1
290	0	0	3	1
291	0	0	1	1
292	1	0	1	1
293	0	0	2	0
294	0	0	3	0
295	0	0	3	0
296	0	0	1	0
297	0	0	3	0
298	1	2	1	0
299	0	0	1	1
300	0	1	1	1
301	0	0	3	1
302	2	0	3	1
303	0	0	3	0
304	0	0	2	1
305	0	0	3	0
306	1	2	1	1
307	0	0	1	1
308	1	0	1	1
309	1	0	2	0
310	0	0	1	1
311	0	0	1	1
312	2	2	1	1
313	1	1	2	0
314	0	0	3	0
315	1	1	2	0
316	0	0	3	1
317	1	0	2	1
318	0	0	2	0
319	0	2	1	1
320	1	1	1	1
321	0	0	3	0
322	0	0	3	0
323	0	0	2	1
324	1	1	2	1
325	8	2	3	0
326	0	0	1	1
327	0	0	3	0
328	0	0	2	1
329	1	1	3	1
330	0	1	1	1
331	2	0	3	1
332	0	0	1	0
333	0	1	1	0
334	2	0	3	0
335	1	0	1	1
336	0	0	3	0
337	1	0	1	0
338	0	0	1	1
339	0	0	3	1
340	0	0	1	0
341	1	1	2	1
342	3	2	1	1
343	0	0	2	0
344	0	0	2	0
345	0	0	2	0
346	0	0	2	1
347	0	0	2	1
348	1	0	3	1
349	1	1	3	1
350	0	0	3	0
351	0	0	3	0
352	0	0	1	0
353	1	1	3	0
354	1	0	3	0
355	0	0	3	0
356	0	0	3	0
357	0	1	1	1
358	0	0	2	0
359	0	0	3	1
360	0	0	3	1
361	1	4	3	0
362	1	0	2	0
363	0	1	3	0
364	0	0	3	0
365	1	0	3	0
366	0	0	3	0
367	1	0	1	1
368	0	0	3	1
369	0	0	3	1
370	0	0	1	1
371	1	0	1	1
372	1	0	3	0
373	0	0	3	0
374	0	0	1	0
375	3	1	3	0
376	1	0	1	1
377	0	0	3	1
378	0	2	1	0
379	0	0	3	0
380	0	0	3	0
381	0	0	1	1
382	0	2	3	1
383	0	0	3	0
384	1	0	1	1
385	0	0	3	0
386	0	0	2	0
387	5	2	3	0
388	0	0	2	1
389	0	0	3	0
390	0	0	2	1
391	1	2	1	1
392	0	0	3	1
393	2	0	3	0
394	1	0	1	1
395	0	2	3	1
396	0	0	3	0
397	0	0	3	0
398	0	0	2	0
399	0	0	2	0
400	0	0	2	1
401	0	0	3	1
402	0	0	3	0
403	1	0	3	0
404	1	0	3	0
405	0	0	3	0
406	1	0	2	0
407	0	0	3	0
408	1	1	2	1
409	0	0	3	0
410	3	1	3	0
411	0	0	3	0
412	0	0	3	0
413	1	0	1	1
414	0	0	2	0
415	0	0	3	1
416	0	0	3	0
417	1	1	2	1
418	0	2	2	1
419	0	0	2	0
420	0	2	3	0
421	0	0	3	0
422	0	0	3	0
423	0	0	3	0
424	1	1	3	0
425	1	1	3	0
426	0	0	3	0
427	1	0	2	1
428	0	0	2	1
429	0	0	3	0
430	0	0	3	1
431	0	0	1	1
432	1	0	3	1
433	1	0	2	1
434	0	0	3	0
435	1	0	1	0
436	1	2	1	1
437	2	2	3	0
438	2	3	2	1
439	1	4	1	0
440	0	0	2	0
441	1	1	2	1
442	0	0	3	0
443	1	0	3	0
444	0	0	2	1
445	0	0	3	1
446	0	2	1	1
447	0	1	2	1
448	0	0	1	1
449	2	1	3	1
450	0	0	1	1
451	1	2	2	0
452	1	0	3	0
453	0	0	1	0
454	1	0	1	1
455	0	0	3	0
456	0	0	3	1
457	0	0	1	0
458	1	0	1	1
459	0	0	2	1
460	0	0	3	0
461	0	0	1	1
462	0	0	3	0
463	0	0	1	0
464	0	0	2	0
465	0	0	3	0
466	0	0	3	0
467	0	0	2	0
468	0	0	1	0
469	0	0	3	0
470	2	1	3	1
471	0	0	3	0
472	0	0	3	0
473	1	2	2	1
474	0	0	2	1
475	0	0	3	0
476	0	0	1	0
477	1	0	2	0
478	1	0	3	0
479	0	0	3	0
480	0	1	3	1
481	5	2	3	0
482	0	0	2	0
483	0	0	3	0
484	0	0	3	1
485	1	0	1	1
486	3	1	3	0
487	1	0	1	1
488	0	0	1	0
489	0	0	3	0
490	1	1	3	1
491	1	0	3	0
492	0	0	3	0
493	0	0	1	0
494	0	0	1	0
495	0	0	3	0
496	0	0	3	0
497	1	0	1	1
498	0	0	3	0
499	1	2	1	0
500	0	0	3	0
501	0	0	3	0
502	0	0	3	0
503	0	0	3	0
504	0	0	3	0
505	0	0	1	1
506	1	0	1	0
507	0	2	2	1
508	0	0	1	1
509	0	0	3	0
510	0	0	3	1
511	0	0	3	1
512	0	0	3	0
513	0	0	1	1
514	1	0	1	1
515	0	0	3	0
516	0	0	1	0
517	0	0	2	1
518	0	0	3	0
519	1	0	2	1
520	0	0	3	0
521	0	0	1	1
522	0	0	3	0
523	0	0	3	0
524	0	1	1	1
525	0	0	3	0
526	0	0	3	0
527	0	0	2	1
528	0	0	1	0
529	0	0	3	0
530	2	1	2	0
531	1	1	2	1
532	0	0	3	0
533	1	1	3	0
534	0	2	3	1
535	0	0	3	0
536	0	2	2	1
537	0	0	1	0
538	0	0	1	1
539	0	0	3	0
540	0	2	1	1
541	0	2	1	1
542	4	2	3	0
543	4	2	3	0
544	1	0	2	1
545	1	0	1	0
546	0	0	1	0
547	1	0	2	1
548	0	0	2	1
549	1	1	3	0
550	1	1	2	1
551	0	2	1	1
552	0	0	2	0
553	0	0	3	0
554	0	0	3	1
555	0	0	3	1
556	0	0	1	0
557	1	0	1	1
558	0	0	1	0
559	1	1	1	1
560	1	0	3	1
561	0	0	3	0
562	0	0	3	0
563	0	0	2	0
564	0	0	3	0
565	0	0	3	0
566	2	0	3	0
567	0	0	3	0
568	0	4	3	0
569	0	0	3	0
570	0	0	3	1
571	0	0	2	1
572	2	0	1	1
573	0	0	1	1
574	0	0	3	1
575	0	0	3	0
576	0	0	3	0
577	0	0	2	1
578	1	0	1	1
579	1	0	3	0
580	0	0	3	1
581	1	1	2	1
582	1	1	1	1
583	0	0	2	0
584	0	0	1	0
585	0	0	3	0
586	0	2	1	1
587	0	0	2	0
588	1	1	1	1
589	0	0	3	0
590	0	0	3	0
591	0	0	3	0
592	1	0	1	1
593	0	0	3	0
594	0	2	3	0
595	1	0	2	0
596	1	1	3	0
597	0	0	2	1
598	0	0	3	0
599	0	0	3	0
600	1	0	1	1
601	2	1	2	1
602	0	0	3	0
603	0	0	1	0
604	0	0	3	0
605	0	0	1	1
606	1	0	3	0
607	0	0	3	0
608	0	0	1	1
609	1	2	2	1
610	0	0	1	1
611	1	5	3	0
612	0	0	3	0
613	1	0	3	1
614	0	0	3	0
615	0	0	3	0
616	1	2	2	1
617	1	1	3	0
618	1	0	3	0
619	2	1	2	1
620	0	0	2	0
621	1	0	3	0
622	1	0	1	1
623	1	1	3	1
624	0	0	3	0
625	0	0	3	0
626	0	0	1	0
627	0	0	2	0
628	0	0	1	1
629	0	0	3	0
630	0	0	3	0
631	0	0	1	1
632	0	0	3	0
633	0	0	1	1
634	0	0	1	0
635	3	2	3	0
636	0	0	2	1
637	0	0	3	0
638	1	1	2	0
639	0	5	3	0
640	1	0	3	0
641	0	0	3	0
642	0	0	1	1
643	3	2	3	0
644	0	0	3	1
645	2	1	3	1
646	1	0	1	1
647	0	0	3	0
648	0	0	1	1
649	0	0	3	0
650	0	0	3	1
651	0	0	3	0
652	0	1	2	1
653	0	0	3	0
654	0	0	3	1
655	0	0	3	0
656	2	0	2	0
657	0	0	3	0
658	1	1	3	0
659	0	0	2	0
660	0	2	1	0
661	2	0	1	1
662	0	0	3	0
663	0	0	1	0
664	0	0	3	0
665	1	0	3	1
666	2	0	2	0
667	0	0	2	0
668	0	0	3	0
669	0	0	3	0
670	1	0	1	1
671	1	1	2	1
672	1	0	1	0
673	0	0	2	0
674	0	0	2	1
675	0	0	2	0
676	0	0	3	0
677	0	0	3	0
678	0	0	3	1
679	1	6	3	0
680	0	1	1	1
681	0	0	3	0
682	0	0	1	1
683	0	0	3	0
684	5	2	3	0
685	1	1	2	0
686	1	2	2	0
687	4	1	3	0
688	0	0	3	0
689	0	0	3	0
690	0	1	1	1
691	1	0	1	1
692	0	1	3	1
693	0	0	3	1
694	0	0	3	0
695	0	0	1	0
696	0	0	2	0
697	0	0	3	0
698	0	0	3	1
699	1	1	1	0
700	0	0	3	0
701	1	0	1	1
702	0	0	1	1
703	0	1	3	0
704	0	0	3	0
705	1	0	3	0
706	0	0	2	0
707	0	0	2	1
708	0	0	1	1
709	0	0	1	1
710	1	1	3	1
711	0	0	1	1
712	0	0	1	0
713	1	0	1	1
714	0	0	3	0
715	0	0	2	0
716	0	0	3	0
717	0	0	1	1
718	0	0	2	1
719	0	0	3	0
720	0	0	3	0
721	0	1	2	1
722	1	0	3	0
723	0	0	2	0
724	0	0	2	0
725	1	0	1	1
726	0	0	3	0
727	3	0	2	1
728	0	0	3	1
729	1	0	2	0
730	1	0	3	0
731	0	0	1	1
732	0	0	3	0
733	0	0	2	0
734	0	0	2	0
735	0	0	2	0
736	0	0	3	0
737	1	3	3	0
738	0	0	1	1
739	0	0	3	0
740	0	0	3	0
741	0	0	1	1
742	1	0	1	0
743	2	2	1	1
744	1	0	3	0
745	0	0	3	1
746	1	1	1	0
747	1	1	3	0
748	0	0	2	1
749	1	0	1	0
750	0	0	3	0
751	1	1	2	1
752	0	1	3	1
753	0	0	3	0
754	0	0	3	0
755	1	2	2	1
756	1	1	2	1
757	0	0	3	0
758	0	0	2	0
759	0	0	3	0
760	0	0	1	1
761	0	0	3	0
762	0	0	3	0
763	0	0	3	1
764	1	2	1	1
765	0	0	3	0
766	1	0	1	1
767	0	0	1	0
768	0	0	3	0
769	1	0	3	0
770	0	0	3	0
771	0	0	3	0
772	0	0	3	0
773	0	0	2	0
774	0	0	3	0
775	1	3	2	1
776	0	0	3	0
777	0	0	3	0
778	0	0	3	1
779	0	0	3	0
780	0	1	1	1
781	0	0	3	1
782	1	0	1	1
783	0	0	1	0
784	1	2	3	0
785	0	0	3	0
786	0	0	3	0
787	0	0	3	1
788	4	1	3	0
789	1	2	3	1
790	0	0	1	0
791	0	0	3	0
792	0	0	2	0
793	8	2	3	0
794	0	0	1	0
795	0	0	3	0
796	0	0	2	0
797	0	0	1	1
798	0	0	3	1
799	0	0	3	0
800	1	1	3	0
801	0	0	2	0
802	1	1	2	1
803	1	2	1	1
804	0	1	3	1
805	0	0	3	1
806	0	0	3	0
807	0	0	1	0
808	0	0	3	0
809	0	0	2	0
810	1	0	1	1
811	0	0	3	0
812	0	0	3	0
813	0	0	2	0
814	4	2	3	0
815	0	0	3	0
816	0	0	1	0
817	0	0	3	0
818	1	1	2	0
819	0	0	3	0
820	3	2	3	0
821	1	1	1	1
822	0	0	3	1
823	0	0	1	0
824	0	1	3	1
825	4	1	3	0
826	0	0	3	0
827	0	0	3	0
828	0	2	2	1
829	0	0	3	1
830	0	0	1	1
831	1	0	3	1
832	1	1	2	1
833	0	0	3	0
834	0	0	3	0
835	0	0	3	0
836	1	1	1	1
837	0	0	3	0
838	0	0	3	0
839	0	0	3	1
840	0	0	1	1
841	0	0	3	0
842	0	0	2	0
843	0	0	1	1
844	0	0	3	0
845	0	0	3	0
846	0	0	3	0
847	8	2	3	0
848	0	0	3	0
849	0	1	2	0
850	1	0	1	1
851	4	2	3	0
852	0	0	3	0
853	1	1	3	0
854	0	1	1	1
855	1	0	2	0
856	0	1	3	1
857	1	1	1	1
858	0	0	1	1
859	0	3	3	1
860	0	0	3	0
861	2	0	3	0
862	1	0	2	0
863	0	0	1	1
864	8	2	3	0
865	0	0	2	0
866	0	0	2	1
867	1	0	2	1
868	0	0	1	0
869	0	0	3	0
870	1	1	3	1
871	0	0	3	0
872	1	1	1	1
873	0	0	1	0
874	0	0	3	0
875	1	0	2	1
876	0	0	3	1
877	0	0	3	0
878	0	0	3	0
879	0	0	3	0
880	0	1	1	1
881	0	1	2	1
882	0	0	3	0
883	0	0	3	0
884	0	0	2	0
885	0	0	3	0
886	0	5	3	0
887	0	0	2	0
888	0	0	1	1
889	1	2	3	0
890	0	0	1	1
891	0	0	3	0
\.


--
-- Data for Name: travel_details; Type: TABLE DATA; Schema: titanic_project; Owner: -
--

COPY titanic_project.travel_details (passenger_id, ticket, fare, cabin, embarked) FROM stdin;
1	A/5 21171	7.25	\N	S
2	PC 17599	71.2833	C85	C
3	STON/O2. 3101282	7.925	\N	S
4	113803	53.1	C123	S
5	373450	8.05	\N	S
6	330877	8.4583	\N	Q
7	17463	51.8625	E46	S
8	349909	21.075	\N	S
9	347742	11.1333	\N	S
10	237736	30.0708	\N	C
11	PP 9549	16.7	G6	S
12	113783	26.55	C103	S
13	A/5. 2151	8.05	\N	S
14	347082	31.275	\N	S
15	350406	7.8542	\N	S
16	248706	16	\N	S
17	382652	29.125	\N	Q
18	244373	13	\N	S
19	345763	18	\N	S
20	2649	7.225	\N	C
21	239865	26	\N	S
22	248698	13	D56	S
23	330923	8.0292	\N	Q
24	113788	35.5	A6	S
25	349909	21.075	\N	S
26	347077	31.3875	\N	S
27	2631	7.225	\N	C
28	19950	263	C23 C25 C27	S
29	330959	7.8792	\N	Q
30	349216	7.8958	\N	S
31	PC 17601	27.7208	\N	C
32	PC 17569	146.5208	B78	C
33	335677	7.75	\N	Q
34	C.A. 24579	10.5	\N	S
35	PC 17604	82.1708	\N	C
36	113789	52	\N	S
37	2677	7.2292	\N	C
38	A./5. 2152	8.05	\N	S
39	345764	18	\N	S
40	2651	11.2417	\N	C
41	7546	9.475	\N	S
42	11668	21	\N	S
43	349253	7.8958	\N	C
44	SC/Paris 2123	41.5792	\N	C
45	330958	7.8792	\N	Q
46	S.C./A.4. 23567	8.05	\N	S
47	370371	15.5	\N	Q
48	14311	7.75	\N	Q
49	2662	21.6792	\N	C
50	349237	17.8	\N	S
51	3101295	39.6875	\N	S
52	A/4. 39886	7.8	\N	S
53	PC 17572	76.7292	D33	C
54	2926	26	\N	S
55	113509	61.9792	B30	C
56	19947	35.5	C52	S
57	C.A. 31026	10.5	\N	S
58	2697	7.2292	\N	C
59	C.A. 34651	27.75	\N	S
60	CA 2144	46.9	\N	S
61	2669	7.2292	\N	C
62	113572	80	B28	\N
63	36973	83.475	C83	S
64	347088	27.9	\N	S
65	PC 17605	27.7208	\N	C
66	2661	15.2458	\N	C
67	C.A. 29395	10.5	F33	S
68	S.P. 3464	8.1583	\N	S
69	3101281	7.925	\N	S
70	315151	8.6625	\N	S
71	C.A. 33111	10.5	\N	S
72	CA 2144	46.9	\N	S
73	S.O.C. 14879	73.5	\N	S
74	2680	14.4542	\N	C
75	1601	56.4958	\N	S
76	348123	7.65	F G73	S
77	349208	7.8958	\N	S
78	374746	8.05	\N	S
79	248738	29	\N	S
80	364516	12.475	\N	S
81	345767	9	\N	S
82	345779	9.5	\N	S
83	330932	7.7875	\N	Q
84	113059	47.1	\N	S
85	SO/C 14885	10.5	\N	S
86	3101278	15.85	\N	S
87	W./C. 6608	34.375	\N	S
88	SOTON/OQ 392086	8.05	\N	S
89	19950	263	C23 C25 C27	S
90	343275	8.05	\N	S
91	343276	8.05	\N	S
92	347466	7.8542	\N	S
93	W.E.P. 5734	61.175	E31	S
94	C.A. 2315	20.575	\N	S
95	364500	7.25	\N	S
96	374910	8.05	\N	S
97	PC 17754	34.6542	A5	C
98	PC 17759	63.3583	D10 D12	C
99	231919	23	\N	S
100	244367	26	\N	S
101	349245	7.8958	\N	S
102	349215	7.8958	\N	S
103	35281	77.2875	D26	S
104	7540	8.6542	\N	S
105	3101276	7.925	\N	S
106	349207	7.8958	\N	S
107	343120	7.65	\N	S
108	312991	7.775	\N	S
109	349249	7.8958	\N	S
110	371110	24.15	\N	Q
111	110465	52	C110	S
112	2665	14.4542	\N	C
113	324669	8.05	\N	S
114	4136	9.825	\N	S
115	2627	14.4583	\N	C
116	STON/O 2. 3101294	7.925	\N	S
117	370369	7.75	\N	Q
118	11668	21	\N	S
119	PC 17558	247.5208	B58 B60	C
120	347082	31.275	\N	S
121	S.O.C. 14879	73.5	\N	S
122	A4. 54510	8.05	\N	S
123	237736	30.0708	\N	C
124	27267	13	E101	S
125	35281	77.2875	D26	S
126	2651	11.2417	\N	C
127	370372	7.75	\N	Q
128	C 17369	7.1417	\N	S
129	2668	22.3583	F E69	C
130	347061	6.975	\N	S
131	349241	7.8958	\N	C
132	SOTON/O.Q. 3101307	7.05	\N	S
133	A/5. 3337	14.5	\N	S
134	228414	26	\N	S
135	C.A. 29178	13	\N	S
136	SC/PARIS 2133	15.0458	\N	C
137	11752	26.2833	D47	S
138	113803	53.1	C123	S
139	7534	9.2167	\N	S
140	PC 17593	79.2	B86	C
141	2678	15.2458	\N	C
142	347081	7.75	\N	S
143	STON/O2. 3101279	15.85	\N	S
144	365222	6.75	\N	Q
145	231945	11.5	\N	S
146	C.A. 33112	36.75	\N	S
147	350043	7.7958	\N	S
148	W./C. 6608	34.375	\N	S
149	230080	26	F2	S
150	244310	13	\N	S
151	S.O.P. 1166	12.525	\N	S
152	113776	66.6	C2	S
153	A.5. 11206	8.05	\N	S
154	A/5. 851	14.5	\N	S
155	Fa 265302	7.3125	\N	S
156	PC 17597	61.3792	\N	C
157	35851	7.7333	\N	Q
158	SOTON/OQ 392090	8.05	\N	S
159	315037	8.6625	\N	S
160	CA. 2343	69.55	\N	S
161	371362	16.1	\N	S
162	C.A. 33595	15.75	\N	S
163	347068	7.775	\N	S
164	315093	8.6625	\N	S
165	3101295	39.6875	\N	S
166	363291	20.525	\N	S
167	113505	55	E33	S
168	347088	27.9	\N	S
169	PC 17318	25.925	\N	S
170	1601	56.4958	\N	S
171	111240	33.5	B19	S
172	382652	29.125	\N	Q
173	347742	11.1333	\N	S
174	STON/O 2. 3101280	7.925	\N	S
175	17764	30.6958	A7	C
176	350404	7.8542	\N	S
177	4133	25.4667	\N	S
178	PC 17595	28.7125	C49	C
179	250653	13	\N	S
180	LINE	0	\N	S
181	CA. 2343	69.55	\N	S
182	SC/PARIS 2131	15.05	\N	C
183	347077	31.3875	\N	S
184	230136	39	F4	S
185	315153	22.025	\N	S
186	113767	50	A32	S
187	370365	15.5	\N	Q
188	111428	26.55	\N	S
189	364849	15.5	\N	Q
190	349247	7.8958	\N	S
191	234604	13	\N	S
192	28424	13	\N	S
193	350046	7.8542	\N	S
194	230080	26	F2	S
195	PC 17610	27.7208	B4	C
196	PC 17569	146.5208	B80	C
197	368703	7.75	\N	Q
198	4579	8.4042	\N	S
199	370370	7.75	\N	Q
200	248747	13	\N	S
201	345770	9.5	\N	S
202	CA. 2343	69.55	\N	S
203	3101264	6.4958	\N	S
204	2628	7.225	\N	C
205	A/5 3540	8.05	\N	S
206	347054	10.4625	G6	S
207	3101278	15.85	\N	S
208	2699	18.7875	\N	C
209	367231	7.75	\N	Q
210	112277	31	A31	C
211	SOTON/O.Q. 3101311	7.05	\N	S
212	F.C.C. 13528	21	\N	S
213	A/5 21174	7.25	\N	S
214	250646	13	\N	S
215	367229	7.75	\N	Q
216	35273	113.275	D36	C
217	STON/O2. 3101283	7.925	\N	S
218	243847	27	\N	S
219	11813	76.2917	D15	C
220	W/C 14208	10.5	\N	S
221	SOTON/OQ 392089	8.05	\N	S
222	220367	13	\N	S
223	21440	8.05	\N	S
224	349234	7.8958	\N	S
225	19943	90	C93	S
226	PP 4348	9.35	\N	S
227	SW/PP 751	10.5	\N	S
228	A/5 21173	7.25	\N	S
229	236171	13	\N	S
230	4133	25.4667	\N	S
231	36973	83.475	C83	S
232	347067	7.775	\N	S
233	237442	13.5	\N	S
234	347077	31.3875	\N	S
235	C.A. 29566	10.5	\N	S
236	W./C. 6609	7.55	\N	S
237	26707	26	\N	S
238	C.A. 31921	26.25	\N	S
239	28665	10.5	\N	S
240	SCO/W 1585	12.275	\N	S
241	2665	14.4542	\N	C
242	367230	15.5	\N	Q
243	W./C. 14263	10.5	\N	S
244	STON/O 2. 3101275	7.125	\N	S
245	2694	7.225	\N	C
246	19928	90	C78	Q
247	347071	7.775	\N	S
248	250649	14.5	\N	S
249	11751	52.5542	D35	S
250	244252	26	\N	S
251	362316	7.25	\N	S
252	347054	10.4625	G6	S
253	113514	26.55	C87	S
254	A/5. 3336	16.1	\N	S
255	370129	20.2125	\N	S
256	2650	15.2458	\N	C
257	PC 17585	79.2	\N	C
258	110152	86.5	B77	S
259	PC 17755	512.3292	\N	C
260	230433	26	\N	S
261	384461	7.75	\N	Q
262	347077	31.3875	\N	S
263	110413	79.65	E67	S
264	112059	0	B94	S
265	382649	7.75	\N	Q
266	C.A. 17248	10.5	\N	S
267	3101295	39.6875	\N	S
268	347083	7.775	\N	S
269	PC 17582	153.4625	C125	S
270	PC 17760	135.6333	C99	S
271	113798	31	\N	S
272	LINE	0	\N	S
273	250644	19.5	\N	S
274	PC 17596	29.7	C118	C
275	370375	7.75	\N	Q
276	13502	77.9583	D7	S
277	347073	7.75	\N	S
278	239853	0	\N	S
279	382652	29.125	\N	Q
280	C.A. 2673	20.25	\N	S
281	336439	7.75	\N	Q
282	347464	7.8542	\N	S
283	345778	9.5	\N	S
284	A/5. 10482	8.05	\N	S
285	113056	26	A19	S
286	349239	8.6625	\N	C
287	345774	9.5	\N	S
288	349206	7.8958	\N	S
289	237798	13	\N	S
290	370373	7.75	\N	Q
291	19877	78.85	\N	S
292	11967	91.0792	B49	C
293	SC/Paris 2163	12.875	D	C
294	349236	8.85	\N	S
295	349233	7.8958	\N	S
296	PC 17612	27.7208	\N	C
297	2693	7.2292	\N	C
298	113781	151.55	C22 C26	S
299	19988	30.5	C106	S
300	PC 17558	247.5208	B58 B60	C
301	9234	7.75	\N	Q
302	367226	23.25	\N	Q
303	LINE	0	\N	S
304	226593	12.35	E101	Q
305	A/5 2466	8.05	\N	S
306	113781	151.55	C22 C26	S
307	17421	110.8833	\N	C
308	PC 17758	108.9	C65	C
309	P/PP 3381	24	\N	C
310	PC 17485	56.9292	E36	C
311	11767	83.1583	C54	C
312	PC 17608	262.375	B57 B59 B63 B66	C
313	250651	26	\N	S
314	349243	7.8958	\N	S
315	F.C.C. 13529	26.25	\N	S
316	347470	7.8542	\N	S
317	244367	26	\N	S
318	29011	14	\N	S
319	36928	164.8667	C7	S
320	16966	134.5	E34	C
321	A/5 21172	7.25	\N	S
322	349219	7.8958	\N	S
323	234818	12.35	\N	Q
324	248738	29	\N	S
325	CA. 2343	69.55	\N	S
326	PC 17760	135.6333	C32	C
327	345364	6.2375	\N	S
328	28551	13	D	S
329	363291	20.525	\N	S
330	111361	57.9792	B18	C
331	367226	23.25	\N	Q
332	113043	28.5	C124	S
333	PC 17582	153.4625	C91	S
334	345764	18	\N	S
335	PC 17611	133.65	\N	S
336	349225	7.8958	\N	S
337	113776	66.6	C2	S
338	16966	134.5	E40	C
339	7598	8.05	\N	S
340	113784	35.5	T	S
341	230080	26	F2	S
342	19950	263	C23 C25 C27	S
343	248740	13	\N	S
344	244361	13	\N	S
345	229236	13	\N	S
346	248733	13	F33	S
347	31418	13	\N	S
348	386525	16.1	\N	S
349	C.A. 37671	15.9	\N	S
350	315088	8.6625	\N	S
351	7267	9.225	\N	S
352	113510	35	C128	S
353	2695	7.2292	\N	C
354	349237	17.8	\N	S
355	2647	7.225	\N	C
356	345783	9.5	\N	S
357	113505	55	E33	S
358	237671	13	\N	S
359	330931	7.8792	\N	Q
360	330980	7.8792	\N	Q
361	347088	27.9	\N	S
362	SC/PARIS 2167	27.7208	\N	C
363	2691	14.4542	\N	C
364	SOTON/O.Q. 3101310	7.05	\N	S
365	370365	15.5	\N	Q
366	C 7076	7.25	\N	S
367	110813	75.25	D37	C
368	2626	7.2292	\N	C
369	14313	7.75	\N	Q
370	PC 17477	69.3	B35	C
371	11765	55.4417	E50	C
372	3101267	6.4958	\N	S
373	323951	8.05	\N	S
374	PC 17760	135.6333	\N	C
375	349909	21.075	\N	S
376	PC 17604	82.1708	\N	C
377	C 7077	7.25	\N	S
378	113503	211.5	C82	C
379	2648	4.0125	\N	C
380	347069	7.775	\N	S
381	PC 17757	227.525	\N	C
382	2653	15.7417	\N	C
383	STON/O 2. 3101293	7.925	\N	S
384	113789	52	\N	S
385	349227	7.8958	\N	S
386	S.O.C. 14879	73.5	\N	S
387	CA 2144	46.9	\N	S
388	27849	13	\N	S
389	367655	7.7292	\N	Q
390	SC 1748	12	\N	C
391	113760	120	B96 B98	S
392	350034	7.7958	\N	S
393	3101277	7.925	\N	S
394	35273	113.275	D36	C
395	PP 9549	16.7	G6	S
396	350052	7.7958	\N	S
397	350407	7.8542	\N	S
398	28403	26	\N	S
399	244278	10.5	\N	S
400	240929	12.65	\N	S
401	STON/O 2. 3101289	7.925	\N	S
402	341826	8.05	\N	S
403	4137	9.825	\N	S
404	STON/O2. 3101279	15.85	\N	S
405	315096	8.6625	\N	S
406	28664	21	\N	S
407	347064	7.75	\N	S
408	29106	18.75	\N	S
409	312992	7.775	\N	S
410	4133	25.4667	\N	S
411	349222	7.8958	\N	S
412	394140	6.8583	\N	Q
413	19928	90	C78	Q
414	239853	0	\N	S
415	STON/O 2. 3101269	7.925	\N	S
416	343095	8.05	\N	S
417	28220	32.5	\N	S
418	250652	13	\N	S
419	28228	13	\N	S
420	345773	24.15	\N	S
421	349254	7.8958	\N	C
422	A/5. 13032	7.7333	\N	Q
423	315082	7.875	\N	S
424	347080	14.4	\N	S
425	370129	20.2125	\N	S
426	A/4. 34244	7.25	\N	S
427	2003	26	\N	S
428	250655	26	\N	S
429	364851	7.75	\N	Q
430	SOTON/O.Q. 392078	8.05	E10	S
431	110564	26.55	C52	S
432	376564	16.1	\N	S
433	SC/AH 3085	26	\N	S
434	STON/O 2. 3101274	7.125	\N	S
435	13507	55.9	E44	S
436	113760	120	B96 B98	S
437	W./C. 6608	34.375	\N	S
438	29106	18.75	\N	S
439	19950	263	C23 C25 C27	S
440	C.A. 18723	10.5	\N	S
441	F.C.C. 13529	26.25	\N	S
442	345769	9.5	\N	S
443	347076	7.775	\N	S
444	230434	13	\N	S
445	65306	8.1125	\N	S
446	33638	81.8583	A34	S
447	250644	19.5	\N	S
448	113794	26.55	\N	S
449	2666	19.2583	\N	C
450	113786	30.5	C104	S
451	C.A. 34651	27.75	\N	S
452	65303	19.9667	\N	S
453	113051	27.75	C111	C
454	17453	89.1042	C92	C
455	A/5 2817	8.05	\N	S
456	349240	7.8958	\N	C
457	13509	26.55	E38	S
458	17464	51.8625	D21	S
459	F.C.C. 13531	10.5	\N	S
460	371060	7.75	\N	Q
461	19952	26.55	E12	S
462	364506	8.05	\N	S
463	111320	38.5	E63	S
464	234360	13	\N	S
465	A/S 2816	8.05	\N	S
466	SOTON/O.Q. 3101306	7.05	\N	S
467	239853	0	\N	S
468	113792	26.55	\N	S
469	36209	7.725	\N	Q
470	2666	19.2583	\N	C
471	323592	7.25	\N	S
472	315089	8.6625	\N	S
473	C.A. 34651	27.75	\N	S
474	SC/AH Basle 541	13.7917	D	C
475	7553	9.8375	\N	S
476	110465	52	A14	S
477	31027	21	\N	S
478	3460	7.0458	\N	S
479	350060	7.5208	\N	S
480	3101298	12.2875	\N	S
481	CA 2144	46.9	\N	S
482	239854	0	\N	S
483	A/5 3594	8.05	\N	S
484	4134	9.5875	\N	S
485	11967	91.0792	B49	C
486	4133	25.4667	\N	S
487	19943	90	C93	S
488	11771	29.7	B37	C
489	A.5. 18509	8.05	\N	S
490	C.A. 37671	15.9	\N	S
491	65304	19.9667	\N	S
492	SOTON/OQ 3101317	7.25	\N	S
493	113787	30.5	C30	S
494	PC 17609	49.5042	\N	C
495	A/4 45380	8.05	\N	S
496	2627	14.4583	\N	C
497	36947	78.2667	D20	C
498	C.A. 6212	15.1	\N	S
499	113781	151.55	C22 C26	S
500	350035	7.7958	\N	S
501	315086	8.6625	\N	S
502	364846	7.75	\N	Q
503	330909	7.6292	\N	Q
504	4135	9.5875	\N	S
505	110152	86.5	B79	S
506	PC 17758	108.9	C65	C
507	26360	26	\N	S
508	111427	26.55	\N	S
509	C 4001	22.525	\N	S
510	1601	56.4958	\N	S
511	382651	7.75	\N	Q
512	SOTON/OQ 3101316	8.05	\N	S
513	PC 17473	26.2875	E25	S
514	PC 17603	59.4	\N	C
515	349209	7.4958	\N	S
516	36967	34.0208	D46	S
517	C.A. 34260	10.5	F33	S
518	371110	24.15	\N	Q
519	226875	26	\N	S
520	349242	7.8958	\N	S
521	12749	93.5	B73	S
522	349252	7.8958	\N	S
523	2624	7.225	\N	C
524	111361	57.9792	B18	C
525	2700	7.2292	\N	C
526	367232	7.75	\N	Q
527	W./C. 14258	10.5	\N	S
528	PC 17483	221.7792	C95	S
529	3101296	7.925	\N	S
530	29104	11.5	\N	S
531	26360	26	\N	S
532	2641	7.2292	\N	C
533	2690	7.2292	\N	C
534	2668	22.3583	\N	C
535	315084	8.6625	\N	S
536	F.C.C. 13529	26.25	\N	S
537	113050	26.55	B38	S
538	PC 17761	106.425	\N	C
539	364498	14.5	\N	S
540	13568	49.5	B39	C
541	WE/P 5735	71	B22	S
542	347082	31.275	\N	S
543	347082	31.275	\N	S
544	2908	26	\N	S
545	PC 17761	106.425	C86	C
546	693	26	\N	S
547	2908	26	\N	S
548	SC/PARIS 2146	13.8625	\N	C
549	363291	20.525	\N	S
550	C.A. 33112	36.75	\N	S
551	17421	110.8833	C70	C
552	244358	26	\N	S
553	330979	7.8292	\N	Q
554	2620	7.225	\N	C
555	347085	7.775	\N	S
556	113807	26.55	\N	S
557	11755	39.6	A16	C
558	PC 17757	227.525	\N	C
559	110413	79.65	E67	S
560	345572	17.4	\N	S
561	372622	7.75	\N	Q
562	349251	7.8958	\N	S
563	218629	13.5	\N	S
564	SOTON/OQ 392082	8.05	\N	S
565	SOTON/O.Q. 392087	8.05	\N	S
566	A/4 48871	24.15	\N	S
567	349205	7.8958	\N	S
568	349909	21.075	\N	S
569	2686	7.2292	\N	C
570	350417	7.8542	\N	S
571	S.W./PP 752	10.5	\N	S
572	11769	51.4792	C101	S
573	PC 17474	26.3875	E25	S
574	14312	7.75	\N	Q
575	A/4. 20589	8.05	\N	S
576	358585	14.5	\N	S
577	243880	13	\N	S
578	13507	55.9	E44	S
579	2689	14.4583	\N	C
580	STON/O 2. 3101286	7.925	\N	S
581	237789	30	\N	S
582	17421	110.8833	C68	C
583	28403	26	\N	S
584	13049	40.125	A10	C
585	3411	8.7125	\N	C
586	110413	79.65	E68	S
587	237565	15	\N	S
588	13567	79.2	B41	C
589	14973	8.05	\N	S
590	A./5. 3235	8.05	\N	S
591	STON/O 2. 3101273	7.125	\N	S
592	36947	78.2667	D20	C
593	A/5 3902	7.25	\N	S
594	364848	7.75	\N	Q
595	SC/AH 29037	26	\N	S
596	345773	24.15	\N	S
597	248727	33	\N	S
598	LINE	0	\N	S
599	2664	7.225	\N	C
600	PC 17485	56.9292	A20	C
601	243847	27	\N	S
602	349214	7.8958	\N	S
603	113796	42.4	\N	S
604	364511	8.05	\N	S
605	111426	26.55	\N	C
606	349910	15.55	\N	S
607	349246	7.8958	\N	S
608	113804	30.5	\N	S
609	SC/Paris 2123	41.5792	\N	C
610	PC 17582	153.4625	C125	S
611	347082	31.275	\N	S
612	SOTON/O.Q. 3101305	7.05	\N	S
613	367230	15.5	\N	Q
614	370377	7.75	\N	Q
615	364512	8.05	\N	S
616	220845	65	\N	S
617	347080	14.4	\N	S
618	A/5. 3336	16.1	\N	S
619	230136	39	F4	S
620	31028	10.5	\N	S
621	2659	14.4542	\N	C
622	11753	52.5542	D19	S
623	2653	15.7417	\N	C
624	350029	7.8542	\N	S
625	54636	16.1	\N	S
626	36963	32.3208	D50	S
627	219533	12.35	\N	Q
628	13502	77.9583	D9	S
629	349224	7.8958	\N	S
630	334912	7.7333	\N	Q
631	27042	30	A23	S
632	347743	7.0542	\N	S
633	13214	30.5	B50	C
634	112052	0	\N	S
635	347088	27.9	\N	S
636	237668	13	\N	S
637	STON/O 2. 3101292	7.925	\N	S
638	C.A. 31921	26.25	\N	S
639	3101295	39.6875	\N	S
640	376564	16.1	\N	S
641	350050	7.8542	\N	S
642	PC 17477	69.3	B35	C
643	347088	27.9	\N	S
644	1601	56.4958	\N	S
645	2666	19.2583	\N	C
646	PC 17572	76.7292	D33	C
647	349231	7.8958	\N	S
648	13213	35.5	A26	C
649	S.O./P.P. 751	7.55	\N	S
650	CA. 2314	7.55	\N	S
651	349221	7.8958	\N	S
652	231919	23	\N	S
653	8475	8.4333	\N	S
654	330919	7.8292	\N	Q
655	365226	6.75	\N	Q
656	S.O.C. 14879	73.5	\N	S
657	349223	7.8958	\N	S
658	364849	15.5	\N	Q
659	29751	13	\N	S
660	35273	113.275	D48	C
661	PC 17611	133.65	\N	S
662	2623	7.225	\N	C
663	5727	25.5875	E58	S
664	349210	7.4958	\N	S
665	STON/O 2. 3101285	7.925	\N	S
666	S.O.C. 14879	73.5	\N	S
667	234686	13	\N	S
668	312993	7.775	\N	S
669	A/5 3536	8.05	\N	S
670	19996	52	C126	S
671	29750	39	\N	S
672	F.C. 12750	52	B71	S
673	C.A. 24580	10.5	\N	S
674	244270	13	\N	S
675	239856	0	\N	S
676	349912	7.775	\N	S
677	342826	8.05	\N	S
678	4138	9.8417	\N	S
679	CA 2144	46.9	\N	S
680	PC 17755	512.3292	B51 B53 B55	C
681	330935	8.1375	\N	Q
682	PC 17572	76.7292	D49	C
683	6563	9.225	\N	S
684	CA 2144	46.9	\N	S
685	29750	39	\N	S
686	SC/Paris 2123	41.5792	\N	C
687	3101295	39.6875	\N	S
688	349228	10.1708	\N	S
689	350036	7.7958	\N	S
690	24160	211.3375	B5	S
691	17474	57	B20	S
692	349256	13.4167	\N	C
693	1601	56.4958	\N	S
694	2672	7.225	\N	C
695	113800	26.55	\N	S
696	248731	13.5	\N	S
697	363592	8.05	\N	S
698	35852	7.7333	\N	Q
699	17421	110.8833	C68	C
700	348121	7.65	F G63	S
701	PC 17757	227.525	C62 C64	C
702	PC 17475	26.2875	E24	S
703	2691	14.4542	\N	C
704	36864	7.7417	\N	Q
705	350025	7.8542	\N	S
706	250655	26	\N	S
707	223596	13.5	\N	S
708	PC 17476	26.2875	E24	S
709	113781	151.55	\N	S
710	2661	15.2458	\N	C
711	PC 17482	49.5042	C90	C
712	113028	26.55	C124	S
713	19996	52	C126	S
714	7545	9.4833	\N	S
715	250647	13	\N	S
716	348124	7.65	F G73	S
717	PC 17757	227.525	C45	C
718	34218	10.5	E101	S
719	36568	15.5	\N	Q
720	347062	7.775	\N	S
721	248727	33	\N	S
722	350048	7.0542	\N	S
723	12233	13	\N	S
724	250643	13	\N	S
725	113806	53.1	E8	S
726	315094	8.6625	\N	S
727	31027	21	\N	S
728	36866	7.7375	\N	Q
729	236853	26	\N	S
730	STON/O2. 3101271	7.925	\N	S
731	24160	211.3375	B5	S
732	2699	18.7875	\N	C
733	239855	0	\N	S
734	28425	13	\N	S
735	233639	13	\N	S
736	54636	16.1	\N	S
737	W./C. 6608	34.375	\N	S
738	PC 17755	512.3292	B101	C
739	349201	7.8958	\N	S
740	349218	7.8958	\N	S
741	16988	30	D45	S
742	19877	78.85	C46	S
743	PC 17608	262.375	B57 B59 B63 B66	C
744	376566	16.1	\N	S
745	STON/O 2. 3101288	7.925	\N	S
746	WE/P 5735	71	B22	S
747	C.A. 2673	20.25	\N	S
748	250648	13	\N	S
749	113773	53.1	D30	S
750	335097	7.75	\N	Q
751	29103	23	\N	S
752	392096	12.475	E121	S
753	345780	9.5	\N	S
754	349204	7.8958	\N	S
755	220845	65	\N	S
756	250649	14.5	\N	S
757	350042	7.7958	\N	S
758	29108	11.5	\N	S
759	363294	8.05	\N	S
760	110152	86.5	B77	S
761	358585	14.5	\N	S
762	SOTON/O2 3101272	7.125	\N	S
763	2663	7.2292	\N	C
764	113760	120	B96 B98	S
765	347074	7.775	\N	S
766	13502	77.9583	D11	S
767	112379	39.6	\N	C
768	364850	7.75	\N	Q
769	371110	24.15	\N	Q
770	8471	8.3625	\N	S
771	345781	9.5	\N	S
772	350047	7.8542	\N	S
773	S.O./P.P. 3	10.5	E77	S
774	2674	7.225	\N	C
775	29105	23	\N	S
776	347078	7.75	\N	S
777	383121	7.75	F38	Q
778	364516	12.475	\N	S
779	36865	7.7375	\N	Q
780	24160	211.3375	B3	S
781	2687	7.2292	\N	C
782	17474	57	B20	S
783	113501	30	D6	S
784	W./C. 6607	23.45	\N	S
785	SOTON/O.Q. 3101312	7.05	\N	S
786	374887	7.25	\N	S
787	3101265	7.4958	\N	S
788	382652	29.125	\N	Q
789	C.A. 2315	20.575	\N	S
790	PC 17593	79.2	B82 B84	C
791	12460	7.75	\N	Q
792	239865	26	\N	S
793	CA. 2343	69.55	\N	S
794	PC 17600	30.6958	\N	C
795	349203	7.8958	\N	S
796	28213	13	\N	S
797	17465	25.9292	D17	S
798	349244	8.6833	\N	S
799	2685	7.2292	\N	C
800	345773	24.15	\N	S
801	250647	13	\N	S
802	C.A. 31921	26.25	\N	S
803	113760	120	B96 B98	S
804	2625	8.5167	\N	C
805	347089	6.975	\N	S
806	347063	7.775	\N	S
807	112050	0	A36	S
808	347087	7.775	\N	S
809	248723	13	\N	S
810	113806	53.1	E8	S
811	3474	7.8875	\N	S
812	A/4 48871	24.15	\N	S
813	28206	10.5	\N	S
814	347082	31.275	\N	S
815	364499	8.05	\N	S
816	112058	0	B102	S
817	STON/O2. 3101290	7.925	\N	S
818	S.C./PARIS 2079	37.0042	\N	C
819	C 7075	6.45	\N	S
820	347088	27.9	\N	S
821	12749	93.5	B69	S
822	315098	8.6625	\N	S
823	19972	0	\N	S
824	392096	12.475	E121	S
825	3101295	39.6875	\N	S
826	368323	6.95	\N	Q
827	1601	56.4958	\N	S
828	S.C./PARIS 2079	37.0042	\N	C
829	367228	7.75	\N	Q
830	113572	80	B28	\N
831	2659	14.4542	\N	C
832	29106	18.75	\N	S
833	2671	7.2292	\N	C
834	347468	7.8542	\N	S
835	2223	8.3	\N	S
836	PC 17756	83.1583	E49	C
837	315097	8.6625	\N	S
838	392092	8.05	\N	S
839	1601	56.4958	\N	S
840	11774	29.7	C47	C
841	SOTON/O2 3101287	7.925	\N	S
842	S.O./P.P. 3	10.5	\N	S
843	113798	31	\N	C
844	2683	6.4375	\N	C
845	315090	8.6625	\N	S
846	C.A. 5547	7.55	\N	S
847	CA. 2343	69.55	\N	S
848	349213	7.8958	\N	C
849	248727	33	\N	S
850	17453	89.1042	C92	C
851	347082	31.275	\N	S
852	347060	7.775	\N	S
853	2678	15.2458	\N	C
854	PC 17592	39.4	D28	S
855	244252	26	\N	S
856	392091	9.35	\N	S
857	36928	164.8667	\N	S
858	113055	26.55	E17	S
859	2666	19.2583	\N	C
860	2629	7.2292	\N	C
861	350026	14.1083	\N	S
862	28134	11.5	\N	S
863	17466	25.9292	D17	S
864	CA. 2343	69.55	\N	S
865	233866	13	\N	S
866	236852	13	\N	S
867	SC/PARIS 2149	13.8583	\N	C
868	PC 17590	50.4958	A24	S
869	345777	9.5	\N	S
870	347742	11.1333	\N	S
871	349248	7.8958	\N	S
872	11751	52.5542	D35	S
873	695	5	B51 B53 B55	S
874	345765	9	\N	S
875	P/PP 3381	24	\N	C
876	2667	7.225	\N	C
877	7534	9.8458	\N	S
878	349212	7.8958	\N	S
879	349217	7.8958	\N	S
880	11767	83.1583	C50	C
881	230433	26	\N	S
882	349257	7.8958	\N	S
883	7552	10.5167	\N	S
884	C.A./SOTON 34068	10.5	\N	S
885	SOTON/OQ 392076	7.05	\N	S
886	382652	29.125	\N	Q
887	211536	13	\N	S
888	112053	30	B42	S
889	W./C. 6607	23.45	\N	S
890	111369	30	C148	C
891	370376	7.75	\N	Q
\.


--
-- Name: passengers passengers_pkey; Type: CONSTRAINT; Schema: titanic_project; Owner: -
--

ALTER TABLE ONLY titanic_project.passengers
    ADD CONSTRAINT passengers_pkey PRIMARY KEY (passenger_id);


--
-- Name: survival_details survival_details_pkey; Type: CONSTRAINT; Schema: titanic_project; Owner: -
--

ALTER TABLE ONLY titanic_project.survival_details
    ADD CONSTRAINT survival_details_pkey PRIMARY KEY (passenger_id);


--
-- Name: travel_details travel_details_pkey; Type: CONSTRAINT; Schema: titanic_project; Owner: -
--

ALTER TABLE ONLY titanic_project.travel_details
    ADD CONSTRAINT travel_details_pkey PRIMARY KEY (passenger_id);


--
-- Name: survival_details survival_details_passenger_id_fkey; Type: FK CONSTRAINT; Schema: titanic_project; Owner: -
--

ALTER TABLE ONLY titanic_project.survival_details
    ADD CONSTRAINT survival_details_passenger_id_fkey FOREIGN KEY (passenger_id) REFERENCES titanic_project.passengers(passenger_id);


--
-- Name: travel_details travel_details_passenger_id_fkey; Type: FK CONSTRAINT; Schema: titanic_project; Owner: -
--

ALTER TABLE ONLY titanic_project.travel_details
    ADD CONSTRAINT travel_details_passenger_id_fkey FOREIGN KEY (passenger_id) REFERENCES titanic_project.passengers(passenger_id);


--
-- PostgreSQL database dump complete
--

\unrestrict 5lf5E31ZqsJqLChBu28nFGUsFHbYQxcI22h3w5qevgYfTCtgacDkmRJyo0QhYTJ

