--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: hndev; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE schema_migrations OWNER TO hndev;

--
-- Name: stories; Type: TABLE; Schema: public; Owner: hndev; Tablespace: 
--

CREATE TABLE stories (
    id integer NOT NULL,
    hn_id integer,
    href text,
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    time_at_num_one integer DEFAULT 1
);


ALTER TABLE stories OWNER TO hndev;

--
-- Name: stories_id_seq; Type: SEQUENCE; Schema: public; Owner: hndev
--

CREATE SEQUENCE stories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stories_id_seq OWNER TO hndev;

--
-- Name: stories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hndev
--

ALTER SEQUENCE stories_id_seq OWNED BY stories.id;


--
-- Name: top_hits; Type: TABLE; Schema: public; Owner: hndev; Tablespace: 
--

CREATE TABLE top_hits (
    id integer NOT NULL,
    story_id integer,
    date_seen timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE top_hits OWNER TO hndev;

--
-- Name: top_hits_id_seq; Type: SEQUENCE; Schema: public; Owner: hndev
--

CREATE SEQUENCE top_hits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE top_hits_id_seq OWNER TO hndev;

--
-- Name: top_hits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hndev
--

ALTER SEQUENCE top_hits_id_seq OWNED BY top_hits.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hndev
--

ALTER TABLE ONLY stories ALTER COLUMN id SET DEFAULT nextval('stories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hndev
--

ALTER TABLE ONLY top_hits ALTER COLUMN id SET DEFAULT nextval('top_hits_id_seq'::regclass);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: hndev
--

COPY schema_migrations (version) FROM stdin;
20150304233938
20150327204351
20150405045821
20150405053830
20150405100350
20150406215856
20150623074117
20150623074652
\.


--
-- Data for Name: stories; Type: TABLE DATA; Schema: public; Owner: hndev
--

COPY stories (id, hn_id, href, description, created_at, updated_at, time_at_num_one) FROM stdin;
36	8475590	http://www.neuroscience-of-music.se/Octave-History.htm	The octave – history of a discovery	2015-06-18 00:22:07.483395	2015-06-18 00:22:10.722717	54
1	8454828	https://www.humblebundle.com/	Humble Mozilla Bundle	2015-06-18 00:19:32.711706	2015-06-18 00:19:32.899625	5
3	8456258	https://medium.com/@susanjohnson/hi-im-a-mom-and-a-start-up-founder-my-yc-story-3b8c8650ae95	My story of applying, getting in, and being a mom in Y Combinator	2015-06-18 00:19:48.186898	2015-06-18 00:19:52.82272	119
7	8458039	https://hacks.mozilla.org/2014/10/passwordless-authentication-secure-simple-and-fast-to-deploy/	Passwordless authentication: Secure, simple, and fast to deploy	2015-06-18 00:20:02.003408	2015-06-18 00:20:03.775762	62
22	8469802	http://www.teslamotors.com/blog/raw-deal-michigan	A Raw Deal in Michigan	2015-06-18 00:21:11.926327	2015-06-18 00:21:23.122437	382
2	8456178	http://googleonlinesecurity.blogspot.com/2014/10/this-poodle-bites-exploiting-ssl-30.html	This POODLE bites: exploiting the SSL 3.0 fallback	2015-06-18 00:19:32.929345	2015-06-18 00:19:48.141352	432
4	8457298	https://docs.google.com/a/metalabdesign.com/document/d/1aL_b_Eq6WKv_u_ZKiPNPBXz5UbuMhi2Xm1AjdsgVER4/pub	The Great Robocoin Rip-off: How We Lost $25,000 Buying a Robocoin ATM	2015-06-18 00:19:48.693565	2015-06-18 00:19:49.517274	21
14	8463943	https://www.sektioneins.de/advisories/advisory-012014-drupal-pre-auth-sql-injection-vulnerability.html	Drupal 7 SQL Injection Vulnerability	2015-06-18 00:20:36.198277	2015-06-18 00:20:41.439499	183
15	8464304	http://nautil.us/issue/18/genius/super_intelligent-humans-are-coming	Super-Intelligent Humans Are Coming	2015-06-18 00:20:40.316948	2015-06-18 00:20:40.401133	4
26	8471786	http://www.washingtonpost.com/news/storyline/wp/2014/10/16/she-bought-a-sofa-on-installment-payments-now-its-straining-her-life/	Rental America: Why the poor pay $4,150 for a $1,500 sofa	2015-06-18 00:21:29.274675	2015-06-18 00:21:29.631952	10
12	8462586	http://techcrunch.com/2014/10/15/reddit-acquires-alien-blue-the-most-popular-unofficial-reddit-app/	Reddit Acquires Alien Blue, the Most Popular Unofficial Reddit App	2015-06-18 00:20:20.730631	2015-06-18 00:20:30.771822	344
8	8458204	https://blog.docker.com/2014/10/docker-microsoft-partner-distributed-applications/	Docker and Microsoft partner to drive adoption of distributed applications	2015-06-18 00:20:03.805988	2015-06-18 00:20:07.796288	129
6	8457522	https://cryptogenomicon.wordpress.com/2014/10/13/cryptic-genetic-variation-in-software-hunting-a-buffered-41-year-old-bug/	Cryptic genetic variation in software: hunting a buffered 41 year old bug	2015-06-18 00:19:52.848981	2015-06-18 00:20:01.960225	257
5	8457310	http://www.slideshare.net/RyanMichela/kicking-the-bukkit-anatomy-of-an-open-source-meltdown	Kicking the Bukkit: Anatomy of an open source meltdown	2015-06-18 00:19:51.654456	2015-06-18 00:19:51.681262	2
29	8473580	https://fix-macosx.com	Mac OS X Yosemite – No Privacy, by Design	2015-06-18 00:21:37.923625	2015-06-18 00:21:38.059158	6
32	8474014	http://www.nytimes.com/2014/10/19/fashion/how-apples-siri-became-one-autistic-boys-bff.html?smid=tw-nytimes&_r=0	How Apple’s Siri Became One Autistic Boy's B.F.F	2015-06-18 00:21:43.373854	2015-06-18 00:21:48.667671	221
16	8464532	http://www.gatesnotes.com/Books/Why-Inequality-Matters-Capital-in-21st-Century-Review?new#	Bill Gates Reviews Piketty's Capital in the 21st Century	2015-06-18 00:20:41.462424	2015-06-18 00:20:49.112648	235
11	8461667	https://konklone.com/post/quora-keeps-the-worlds-knowledge-for-itself	Quora Keeps the World's Knowledge for Itself	2015-06-18 00:20:15.849995	2015-06-18 00:20:16.120644	13
9	8458339	http://www.reuters.com/article/2014/10/15/us-lockheed-fusion-idUSKCN0I41EM20141015	Possible Breakthrough in Nuclear Fusion	2015-06-18 00:20:06.170922	2015-06-18 00:20:06.499788	14
20	8468526	http://adashofdata.com/2014/10/14/how-text-messages-change-from-dating-to-marriage	How Text Messages Change from Dating to Marriage	2015-06-18 00:20:59.363611	2015-06-18 00:20:59.552456	10
18	8466023	http://knowyour4.com	Show HN: Four numbers can predict your lifetime risk of a heart attack	2015-06-18 00:20:49.136577	2015-06-18 00:20:50.358499	49
33	8474623	http://www.daemonology.net/blog/2014-10-18-thoughts-on-startup-school.html	Thoughts on Startup School	2015-06-18 00:21:48.335551	2015-06-18 00:22:07.459835	532
21	8469438	http://www.wired.com/2014/10/anonabox-backlash/	Privacy Router Anonabox Gets $600K in Crowdfunding and Huge Backlash	2015-06-18 00:21:10.441304	2015-06-18 00:21:11.900185	55
28	8473541	http://www.washingtonpost.com/news/storyline/wp/2014/10/16/she-bought-a-sofa-on-installment-payments-now-its-straining-her-life/?hpid=z1	Rental America: Why the poor pay $4,150 for a $1,500 sofa	2015-06-18 00:21:37.434044	2015-06-18 00:21:37.898929	14
24	8470337	http://lwn.net/Articles/616571/	The Debian init system general resolution returns	2015-06-18 00:21:23.56464	2015-06-18 00:21:24.155284	14
13	8463471	http://www.slideshare.net/ericschmidt76/how-google-works-final-1	How Google Works	2015-06-18 00:20:30.803708	2015-06-18 00:20:36.170973	201
31	8474024	http://www.wired.com/2014/10/kickstarter-suspends-anonabox	Kickstarter Freezes Anonabox Privacy Router Project for Misleading Funders	2015-06-18 00:21:41.474672	2015-06-18 00:21:42.887927	50
23	8470125	http://www.linuxvoice.com/interview-thomas-vos-of-mir/	Lead Mir developer: “Mir more relevant than Wayland in two years”	2015-06-18 00:21:23.154996	2015-06-18 00:21:23.535383	12
19	8466437	http://www.apple.com/imac-with-retina/	iMac with Retina 5K display	2015-06-18 00:20:50.381296	2015-06-18 00:21:10.402811	733
17	8465640	https://github.com/blog/1908-a-better-dmca-process	A Better DMCA Process	2015-06-18 00:20:46.595599	2015-06-18 00:20:48.28182	42
27	8472792	http://arcadia-unity.tumblr.com/post/100257212548/arcadia-0-1a-launched	Arcadia: Unity 3D Development in Clojure	2015-06-18 00:21:33.521449	2015-06-18 00:21:43.354215	264
30	8473771	http://www.wired.com/2014/10/fbi-is-wrong-apple-encryption-is-good/	FBI Is Dead Wrong: Apple’s Encryption Is Clearly in the Public Interest	2015-06-18 00:21:39.022409	2015-06-18 00:21:39.722094	18
34	8475194	http://www.reuters.com/article/idUSKCN0I624Y20141017	NSA reviewing deal between official, ex-spy agency head	2015-06-18 00:22:03.353641	2015-06-18 00:22:07.359633	90
25	8470754	http://vitessedata.com/	Vitesse Data – Postgres + LLVM	2015-06-18 00:21:24.207288	2015-06-18 00:21:33.489912	283
35	8475215	http://garrett.damore.org/2014/10/your-language-sucks.html	Your language sucks	2015-06-18 00:22:03.989556	2015-06-18 00:22:05.258469	49
10	8459205	http://www.google.com/nexus/6/	Nexus 6	2015-06-18 00:20:07.824893	2015-06-18 00:20:20.707299	476
37	8475725	http://magazine.good.is/features/the-nordic-food-lab-cooks-with-blood	Everything You Need to Know About Cooking with Blood	2015-06-18 00:22:09.844309	2015-06-18 00:22:10.617583	22
38	8475753	http://www.usenix.org/system/files/conference/usenixsecurity14/sec14-paper-bonneau.pdf	Towards Reliable Storage of 56-bit Secrets in Human Memory [pdf]	2015-06-18 00:22:10.747305	2015-06-18 00:22:13.23084	83
39	8475979	http://www.theguardian.com/books/2014/oct/18/am-i-being-catfished-an-author-confronts-her-number-one-online-critic	An Author Confronts Her Number One Online Critic	2015-06-18 00:22:13.257981	2015-06-18 00:22:13.892137	26
40	8475809	http://archive.vector.org.uk/art10501320	Impending kOS	2015-06-18 00:22:13.913478	2015-06-18 00:22:19.431593	128
41	8476222	http://alastairphilipwiper.com/blog/building-largest-ship-world-south-korea/	Building the Largest Ship in the World	2015-06-18 00:22:19.450215	2015-06-18 00:22:39.783487	450
42	8477124	http://cursors.io	Cursors	2015-06-18 00:22:39.809482	2015-06-18 00:22:53.79231	421
43	8477915	http://www.davecooper.org/blog/2014/10/15/i-built-a-keyboard/	Show HN: I made a keyboard from scratch	2015-06-18 00:22:53.848297	2015-06-18 00:23:00.05554	181
59	8487115	http://googleonlinesecurity.blogspot.com/2014/10/strengthening-2-step-verification-with.html?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+GoogleOnlineSecurityBlog+%28Google+Online+Security+Blog%29	Strengthening 2-Step Verification with Security Key	2015-06-18 00:24:19.307707	2015-06-18 00:24:20.353028	32
44	8478427	http://cr.yp.to/talks/2014.10.18/slides-djb-20141018-a4.pdf	Making sure crypto remains insecure [pdf]	2015-06-18 00:23:00.084266	2015-06-18 00:23:10.213944	361
50	8481487	http://ayende.com/blog/168802/career-planning-where-do-old-devs-go-to	Career planning: Where do old devs go to?	2015-06-18 00:23:36.675211	2015-06-18 00:23:38.669986	75
49	8481513	https://github.com/esneider/YUNOcommit.vim	Y U NO commit??	2015-06-18 00:23:33.896801	2015-06-18 00:23:37.864212	112
62	8488500	https://www.firebase.com/blog/2014-10-21-firebase-joins-google.html	Firebase is Joining Google	2015-06-18 00:24:23.652778	2015-06-18 00:24:48.170086	848
60	8487642	http://lipis.github.io/bootstrap-sweetalert/	Sweet Alert for Bootstrap – Blends nicely with any Bootstrap based project	2015-06-18 00:24:20.37515	2015-06-18 00:24:21.703678	47
47	8480478	http://muratbuffalo.blogspot.com/2014/10/facebooks-software-architecture.html?spref=tw	Facebook's software architecture	2015-06-18 00:23:21.289504	2015-06-18 00:23:28.255893	262
56	8486801	http://techcrunch.com/2014/10/21/magic-leap-tech/	Magic Leap Secures $542M Led by Google	2015-06-18 00:24:14.900447	2015-06-18 00:24:19.774517	129
51	8482119	https://en.greatfire.org/blog/2014/oct/china-collecting-apple-icloud-data-attack-coincides-launch-new-iphone	China uses “Man-In-The-Middle” attack to collect user data from iCloud	2015-06-18 00:23:38.692284	2015-06-18 00:23:47.511724	322
45	8478902	http://www.simplecpu.com/Binary.html	Simple CPU	2015-06-18 00:23:10.239095	2015-06-18 00:23:21.260414	202
53	8484027	http://lists.gnu.org/archive/html/emacs-devel/2014-10/msg00713.html	Emacs 24.4 released	2015-06-18 00:23:47.547148	2015-06-18 00:23:59.734917	375
52	8482370	http://www.wired.com/2014/10/virginia-police-secretively-stockpiling-private-phone-records	Virginia Police Have Been Secretively Stockpiling Private Phone Records	2015-06-18 00:23:41.602762	2015-06-18 00:23:41.631022	2
71	8497303	http://arxiv.org/abs/1410.6079	Bitcoin over Tor isn't a good idea	2015-06-18 00:25:32.374627	2015-06-18 00:25:36.241797	148
58	8487142	http://www.vitavonni.de/blog/201410/2014102101-avoiding-systemd.html	Avoiding systemd isn't hard	2015-06-18 00:24:18.280183	2015-06-18 00:24:19.275276	38
55	8485662	http://www.bbc.com/news/health-29645760	Paralysed man walks again after cell transplant	2015-06-18 00:23:59.753746	2015-06-18 00:24:14.876831	530
76	8500436	http://tirania.org/blog/archive/2014/Oct-23.html	Mono for Unreal Engine	2015-06-18 00:25:48.761888	2015-06-18 00:25:55.235598	216
64	8491666	http://aws.amazon.com/blogs/aws/new-aws-directory-service/	New AWS Directory Service	2015-06-18 00:24:48.199257	2015-06-18 00:24:50.238153	78
54	8485180	http://www.minecraftforum.net/forums/mapping-and-modding/minecraft-mods/1272953-optifine-hd-a4-fps-boost-hd-textures-aa-af-and?comment=43757	Optifine dev on performance problems in Minecraft 1.8	2015-06-18 00:23:56.190707	2015-06-18 00:23:57.673697	60
69	8495786	http://lcamtuf.coredump.cx/rstory/	My adventures in CNC robotics	2015-06-18 00:25:19.701448	2015-06-18 00:25:22.50701	124
68	8493619	http://googleblog.blogspot.com/2014/10/an-inbox-that-works-for-you.html	Inbox by Gmail – The inbox that works for you	2015-06-18 00:25:03.811104	2015-06-18 00:25:19.671826	555
48	8481028	https://github.com/fix-macosx/yosemite-phone-home	Yosemite Sends Spotlight, Safari Searches to Apple, third parties	2015-06-18 00:23:28.282011	2015-06-18 00:23:33.870453	203
70	8496581	http://www.yukinishijima.net/2014/10/21/did-you-mean-experience-in-ruby.html	“Did you mean?” Experience in Ruby	2015-06-18 00:25:22.545096	2015-06-18 00:25:32.346454	332
46	8479958	https://gist.github.com/landonf/04c25e83687fe0867892	Safari is sending every search query to Apple Inc	2015-06-18 00:23:13.708768	2015-06-18 00:23:19.024729	171
66	8492395	http://www.hokstad.com/docker/patterns	Docker Development Patterns	2015-06-18 00:24:57.97717	2015-06-18 00:24:59.645711	65
61	8487943	http://zef.me/3666/i-hate-puzzles/	I Hate Puzzles: Am I Still a Programmer?	2015-06-18 00:24:21.726511	2015-06-18 00:24:23.623771	70
57	8486916	http://flatuicolors.com/	Flat UI Colors	2015-06-18 00:24:16.384103	2015-06-18 00:24:16.411568	2
63	8491531	http://www.arnnet.com.au/article/557833/steve-wozniak-teach-uts/	Steve Wozniak to teach at University of Technology, Sydney	2015-06-18 00:24:46.806245	2015-06-18 00:24:47.419753	12
65	8491882	http://uk.reuters.com/article/2014/10/22/uk-hungary-internet-tax-idUKKCN0IB0RI20141022	Hungary plans to impose tax on Internet traffic	2015-06-18 00:24:50.261415	2015-06-18 00:24:57.844251	263
72	8497642	https://news.ycombinator.com/whoami	Who am I?	2015-06-18 00:25:36.270066	2015-06-18 00:25:36.362655	4
67	8492867	https://github.com/fastos/fastsocket	Fastsocket, a highly scalable socket for Linux	2015-06-18 00:24:59.669703	2015-06-18 00:25:03.788403	133
80	8502477	https://haxiomic.github.io/GPU-Fluid-Experiments/html5/?q=UltraHigh	HTML5 Fluid Simulation in WebGL	2015-06-18 00:26:12.182954	2015-06-18 00:26:14.023083	52
74	8497906	http://aws.amazon.com/blogs/aws/aws-region-germany/	Now Open – AWS Germany (Frankfurt) Region	2015-06-18 00:25:38.036472	2015-06-18 00:25:42.571487	177
75	8498782	http://www.lettersofnote.com/2012/03/1984-v-brave-new-world.html	1984 v. Brave New World	2015-06-18 00:25:42.710584	2015-06-18 00:25:48.736206	230
73	8497607	http://blog.mapillary.com/update/2014/10/21/iD-and-mapillary.html	Mapillary becomes default street view in OSM	2015-06-18 00:25:36.399507	2015-06-18 00:25:38.011285	63
78	8501272	http://www.nytimes.com/interactive/2014/10/23/magazine/old-masters-at-top-of-their-game.html	Old Masters: After 80, some people don’t retire. They reign	2015-06-18 00:25:55.268343	2015-06-18 00:26:17.742706	513
82	8502898	http://uselessd.darknedgy.net	Uselessd	2015-06-18 00:26:17.80026	2015-06-18 00:26:21.022173	95
77	8500970	http://www.newsweek.com/assange-google-not-what-it-seems-279447	Assange: Google Is Not What It Seems	2015-06-18 00:25:53.101886	2015-06-18 00:25:53.171142	4
79	8502375	http://www.amazon.com	Amazon.com redesign	2015-06-18 00:26:08.868648	2015-06-18 00:26:11.913913	77
84	8503625	http://www.eevblog.com/forum/reviews/ftdi-driver-kills-fake-ftdi-ft232/msg536298/#msg536298	FTDI removes counterfeit-bricking driver from Windows Update	2015-06-18 00:26:24.845046	2015-06-18 00:26:27.864902	127
81	8502433	http://j2objc.org/	Google j2objc, a Java to iOS Objective-C translation tool and runtime	2015-06-18 00:26:14.303901	2015-06-18 00:26:14.901681	18
85	8504105	http://www.washingtonpost.com/blogs/the-switch/wp/2014/10/23/snowden-filmmaker-laura-poitras-facebook-is-a-gift-to-intelligence-agencies/	Snowden filmmaker Laura Poitras: ‘Facebook is a gift to intelligence agencies’	2015-06-18 00:26:27.891881	2015-06-18 00:26:30.742246	88
83	8503324	http://oos.moxiecode.com/js_webgl/autumn/	Autumn (WebGL demo)	2015-06-18 00:26:21.065868	2015-06-18 00:26:24.810235	88
86	8503977	http://mobilesecurityares.blogspot.com/2014/10/why-samsung-knox-isnt-really-fort-knox.html?m=1	Why Samsung Knox Isn't Really a Fort Knox	2015-06-18 00:26:30.76288	2015-06-18 00:26:31.183359	14
87	8504931	http://www.nytimes.com/2014/10/25/science/alan-eustace-jumps-from-stratosphere-breaking-felix-baumgartners-world-record.html	Alan Eustace Jumps from Stratosphere, Breaking Felix Baumgartner’s World Record	2015-06-18 00:26:31.211268	2015-06-18 00:27:01.544966	831
88	8507310	http://paperman.patricklorio.com	Show HN: Paperman – LaTeX editor with a Markdown feel	2015-06-18 00:26:53.343933	2015-06-18 00:27:00.022973	119
2217	9593114	http://experiments.oskarth.com/nand-to-tetris-1	Nand to Tetris	2015-06-23 08:32:37.978347	2015-06-23 08:32:38.855356	20
91	8507957	http://git-scm.com/book/en/v2	Pro Git, 2nd Edition	2015-06-18 00:27:11.526537	2015-06-18 00:27:11.868292	12
119	8520477	http://nautil.us/blog/where-did-time-come-from-and-why-does-it-seem-to-flow	Where Did Time Come From, and Why Does It Seem to Flow?	2015-06-18 00:29:19.157688	2015-06-18 00:29:19.462312	10
105	8512206	http://www.phillymag.com/news/2014/10/26/uber-philadelphia-uberx-ppa-sting-impounds/	PPA Impounds UberX Vehicles in Undercover Sting Operation	2015-06-18 00:28:00.131492	2015-06-18 00:28:03.259784	110
203	8575734	http://paulgraham.com/tricked.html	“I can be tricked by anyone who looks like Mark Zuckerberg”	2015-06-18 00:36:34.96447	2015-06-18 00:36:35.37205	14
102	8511219	https://www.backblaze.com/blog/petabytes-on-a-budget-how-to-build-cheap-cloud-storage-2/	Petabytes on a budget: How to build cheap cloud storage	2015-06-18 00:27:50.87048	2015-06-18 00:27:59.745177	291
99	8510864	http://www.washingtonpost.com/posteverything/wp/2014/09/10/i-am-a-14-year-old-yazidi-girl-given-as-a-gift-to-an-isis-commander-heres-how-i-escaped/	I am a 14-year-old Yazidi girl given as a gift to ISIS. Here’s how I escaped	2015-06-18 00:27:45.937095	2015-06-18 00:27:46.174514	8
94	8509154	http://www.forbes.com/sites/groupthink/2014/10/21/we-just-thought-this-is-how-you-start-a-company-in-america/print/	We Just Thought, 'This Is How You Start a Company in America'	2015-06-18 00:27:22.030458	2015-06-18 00:27:32.800787	402
101	8511007	http://www.joshparsons.net/latex/	The LaTeX cargo cult	2015-06-18 00:27:49.519763	2015-06-18 00:27:50.839151	10
98	8510409	http://www.youtube.com/watch?v=Wpv-Qb-dB6g	Plover: Thought to Text at 240 WPM (2013) [video]	2015-06-18 00:27:36.791625	2015-06-18 00:27:47.724993	391
97	8510285	http://www.macworld.com/article/2839081/cvs-disables-nfc-terminals-stops-accepting-apple-pay-google-wallet.html	CVS Disables NFC Terminals, Stops Accepting Apple Pay, Google Wallet	2015-06-18 00:27:34.879805	2015-06-18 00:27:35.480634	26
89	8507632	https://docs.google.com/presentation/d/1XQP0_NTzCUcFweauLlkZpbbhNVYbYy156oD--KLmXsk/	Angular 2 Core	2015-06-18 00:27:01.565114	2015-06-18 00:27:09.091243	284
120	8521007	http://bits.blogs.nytimes.com/2014/10/28/travel-search-site-hipmunk-cuts-yahoo-deal/?_php=true&_type=blogs&_r=0	Hipmunk (YC S10) Takes Over Yahoo Travel	2015-06-18 00:29:19.486241	2015-06-18 00:29:19.672904	8
103	8511290	http://mobile.nytimes.com/2014/10/26/opinion/sunday/the-dangers-of-eating-late-at-night.html?_r=0	The Dangers of Eating Late at Night	2015-06-18 00:27:51.763904	2015-06-18 00:27:51.812822	2
90	8508168	http://www.ibtimes.co.in/indian-air-force-issues-serious-alert-xiaomi-plans-move-data-centers-china-612152	Indian Air Force Issues Security Warning; Xiaomi Clears the Air	2015-06-18 00:27:09.123907	2015-06-18 00:27:11.47378	72
112	8516244	http://googleresearch.blogspot.com/2014/10/hdr-low-light-and-high-dynamic-range.html?	HDR+: computational photography on Android	2015-06-18 00:28:38.339107	2015-06-18 00:28:41.324794	74
109	8514072	http://www.w3.org/TR/2014/WD-push-api-20141007/#example	Push API – W3C Working Draft	2015-06-18 00:28:20.677388	2015-06-18 00:28:26.203684	153
107	8513447	http://www.thedailybeast.com/articles/2014/10/21/she-tweeted-against-the-mexican-cartels-they-tweeted-her-murder.html	She Tweeted Against the Mexican Cartels. They Tweeted Her Murder	2015-06-18 00:28:12.860883	2015-06-18 00:28:19.313926	207
95	8509500	http://www.nytimes.com/2014/10/26/us/law-lets-irs-seize-accounts-on-suspicion-no-crime-required.html 	Law Lets I.R.S. Seize Accounts on Suspicion, No Crime Required	2015-06-18 00:27:23.130674	2015-06-18 00:27:24.230791	44
92	8508478	http://lcamtuf.blogspot.com/2014/10/psa-dont-run-strings-on-untrusted-files.html	Don't run 'strings' on untrusted files	2015-06-18 00:27:11.891513	2015-06-18 00:27:21.979447	320
100	8510980	https://datavibe.net/~sneak/20141023/wtf-icloud/	iCloud Uploads Local Data Outside of iCloud Drive	2015-06-18 00:27:47.753854	2015-06-18 00:27:51.153946	91
93	8508714	http://ridiculousfish.com/blog/posts/will-it-optimize.html	Will It Optimize? (2010)	2015-06-18 00:27:17.51399	2015-06-18 00:27:17.548373	2
106	8511918	http://www.youtube.com/watch?v=o_Sr96TFQQE	Lawrence Lessig Interviews Edward Snowden [video]	2015-06-18 00:28:03.279629	2015-06-18 00:28:19.362041	267
104	8511712	https://www.youtube.com/watch?v=HhdDZk45HDI&feature=youtu.be&t=1m13s	Bill Gates answers questions about Java during a deposition (1998) [video]	2015-06-18 00:27:59.76606	2015-06-18 00:28:00.105216	10
111	8514990	http://eatabit.com/blog/articles/post-mortem-a-single-whitespace-char.html	Post Mortem: A single whitespace character	2015-06-18 00:28:31.718666	2015-06-18 00:28:38.302577	224
96	8510129	http://www.loper-os.org/?p=861	Engelbart's Violin	2015-06-18 00:27:32.823335	2015-06-18 00:27:36.765996	110
122	8522032	http://www.ftc.gov/news-events/press-releases/2014/10/ftc-says-att-has-misled-millions-consumers-unlimited-data	FTC Says AT&T Has Misled Millions of Consumers with ‘Unlimited’ Data Promises	2015-06-18 00:29:25.021585	2015-06-18 00:29:28.564709	142
110	8514398	http://pusling.com/blog/?p=362	KDE makes Qt	2015-06-18 00:28:26.223398	2015-06-18 00:28:31.695653	154
108	8513209	https://www.youtube.com/watch?v=K4JhruinbWc	How a differential gear works [video]	2015-06-18 00:28:19.383371	2015-06-18 00:28:20.656835	50
114	8516777	https://blog.gregbrockman.com/define-cto	Define CTO	2015-06-18 00:28:45.900136	2015-06-18 00:28:55.075512	274
123	8522471	https://www.meteor.com/	Meteor hits 1.0	2015-06-18 00:29:28.583273	2015-06-18 00:29:32.595952	163
116	8518903	http://robert.ocallahan.org/2014/10/are-we-fast-yet-yes-we-are.html	Spidermonkey has passed V8 on Octane performance	2015-06-18 00:28:56.924182	2015-06-18 00:29:17.007744	673
113	8516331	http://www.aaronsw.com/weblog/rewritingreddit	Rewriting Reddit (2005)	2015-06-18 00:28:41.36445	2015-06-18 00:28:45.875307	132
117	8519862	https://talk.sonymobile.com/t5/Xperia-Z-ZL-ZR/Unknown-folder-baidu-is-created-on-starting-phone-each-time/td-p/819877/page/5?sl=y&sso_no_log=y	Sony Xperia phones comes with Baidu spyware	2015-06-18 00:29:08.068916	2015-06-18 00:29:08.125829	2
115	8518815	https://www.eff.org/pages/who-has-your-back-copyright-trademark-2014	EFF “Who Has Your Back?” 2014 Report	2015-06-18 00:28:54.2912	2015-06-18 00:28:56.904158	104
118	8520743	http://www.wired.com/2014/10/cat-thinks-youre-huge-unpredictable-ape/	Why Your Cat Thinks You’re a Huge, Unpredictable Ape	2015-06-18 00:29:17.046357	2015-06-18 00:29:19.124663	51
124	8523985	http://www.nasa.gov/multimedia/nasatv/index.html	Orbital Sciences Antares rocket explodes after liftoff	2015-06-18 00:29:32.624003	2015-06-18 00:29:53.515291	671
126	8527185	https://www.virtkick.io/	Show HN: VirtKick – your self-hosted DigitalOcean	2015-06-18 00:30:03.227522	2015-06-18 00:30:03.91326	26
121	8520954	http://joker.org/	Joker: stream torrents in your Browser	2015-06-18 00:29:19.69537	2015-06-18 00:29:24.999353	169
125	8526208	http://antirez.com/news/82	This is why I can't have conversations using Twitter	2015-06-18 00:29:53.538726	2015-06-18 00:30:03.201242	291
127	8527469	http://www.npr.org/2014/10/29/359725475/can-authorities-cut-off-utilities-and-pose-as-repairmen-to-search-a-home	Can Authorities Cut Off Utilities And Pose As Repairmen To Search A Home?	2015-06-18 00:30:03.938749	2015-06-18 00:30:06.331712	89
128	8527307	http://sprout.hp.com/	Sprout	2015-06-18 00:30:06.354198	2015-06-18 00:30:09.731849	56
129	8527932	http://techcrunch.com/2014/10/29/retailer-backed-apple-pay-rival-currentc-has-been-hacked-testers-email-addresses-stolen/	CurrentC Has Been Hacked, Testers’ Email Addresses Stolen	2015-06-18 00:30:06.545753	2015-06-18 00:30:08.283676	62
130	8528460	https://code.facebook.com/posts/844436395567983/introducing-osquery/	Osquery: Expose the operating system as a relational database	2015-06-18 00:30:09.753123	2015-06-18 00:30:13.195908	139
131	8529613	http://blog.getbootstrap.com/2014/10/29/bootstrap-3-3-0-released/	Bootstrap 3.3.0 and Bootstrap 4	2015-06-18 00:30:13.34157	2015-06-18 00:30:17.23687	163
164	8550448	https://blog.mozilla.org/blog/2014/11/03/the-first-browser-dedicated-to-developers-is-coming/	Mozilla: The First Browser Dedicated to Developers Is Coming	2015-06-18 00:33:24.864487	2015-06-18 00:33:32.093757	257
162	8549790	http://www.gatesnotes.com/Health/Eradicating-Malaria-in-a-Generation	We Can Eradicate Malaria Within a Generation	2015-06-18 00:33:16.712384	2015-06-18 00:33:21.525183	171
150	8544062	http://nymag.com/daily/intelligencer/2014/10/whats-behind-the-great-podcast-renaissance.html	What’s Behind the Great Podcast Renaissance?	2015-06-18 00:32:13.597641	2015-06-18 00:32:20.195336	237
159	8548429	https://plus.google.com/u/0/+AlanCoxLinux/posts/a2jAP7Pz1gj	Alan Cox announces Fuzix OS	2015-06-18 00:33:03.232347	2015-06-18 00:33:10.761786	261
190	8568923	http://tldr.fi/2014/09/27/zc160-vga-adapter1	Building a simple VGA-adapter for an 8-bit self made computer	2015-06-18 00:35:43.419357	2015-06-18 00:35:48.031676	129
153	8545502	http://www.theguardian.com/us-news/2014/oct/28/-sp-jobs-brokers-entrap-indian-tech-workers?CMP=share_btn_tw	Job brokers steal wages and entrap Indian tech workers in US	2015-06-18 00:32:34.104958	2015-06-18 00:32:46.045706	430
148	8542969	https://github.com/tip4commit/tip4commit/issues/127	Please remove mitsuhiko/*	2015-06-18 00:32:03.874108	2015-06-18 00:32:11.400277	231
132	8529658	http://duartes.org/gustavo/blog/post/what-does-an-idle-cpu-do/	What Does an Idle CPU Do?	2015-06-18 00:30:17.25652	2015-06-18 00:30:23.622223	112
147	8542443	http://cryptome.org/2014/10/BTAgent-cpe-backdoor.htm	BTAgent – CPE backdoor	2015-06-18 00:31:56.879543	2015-06-18 00:32:03.848304	251
151	8544775	http://www.nybooks.com/articles/archives/2014/nov/20/why-innocent-people-plead-guilty/	Why Innocent People Plead Guilty	2015-06-18 00:32:20.216768	2015-06-18 00:32:29.265008	334
149	8543634	https://gist.github.com/staltz/868e7e9bc2a7b8c1f754/	The introduction to Reactive Programming you've been missing	2015-06-18 00:32:11.425903	2015-06-18 00:32:13.568128	76
137	8532851	http://antirez.com/news/83	Redis latency spikes and the 99th percentile	2015-06-18 00:30:40.965485	2015-06-18 00:30:42.716817	65
143	8538813	https://github.com/seven1m/do-install-button	Show HN: “Install on DigitalOcean” button for open source apps	2015-06-18 00:31:24.913918	2015-06-18 00:31:27.532991	81
141	8537039	http://www.brennancenter.org/analysis/im-terrified-my-new-tv-why-im-scared-turn-thing	“I’m Terrified of My New TV – And You’d Be, Too”	2015-06-18 00:31:03.572792	2015-06-18 00:31:10.039895	243
135	8530819	http://www.microsoft.com/microsoft-band/en-us	Microsoft Band	2015-06-18 00:30:22.91868	2015-06-18 00:30:35.581773	458
145	8540279	http://www.kerngoldenempire.com/news/local/story/d/story/spaceshiptwo-crashes-shortly-after-mojave-test-fli/11401/64VdLqg21EWpK1vuptvTsg	SpaceshipTwo crashes shortly after Mojave test flight	2015-06-18 00:31:30.358653	2015-06-18 00:31:56.854413	809
134	8531131	http://www.microsoft.com/microsoft-band/en-us	Microsoft Band (official site)	2015-06-18 00:30:22.728341	2015-06-18 00:30:22.798623	4
146	8542091	http://lookatmeimdanny.tumblr.com/post/101432017159/how-putting-10m-into-ubeam-illustrates-everything-that	Putting $10M into UBeam illustrates what is wrong with tech investing	2015-06-18 00:31:48.057532	2015-06-18 00:31:49.339078	44
154	8546280	http://writecantonese8.wordpress.com/2014/02/25/cantonese-proverbs-in-one-picture/	81 Cantonese Proverbs in One Picture	2015-06-18 00:32:46.071246	2015-06-18 00:32:46.105472	2
133	8530356	http://redteams.net/blog/2013/rappelling-off-a-roof	Rappelling Off a Roof	2015-06-18 00:30:19.138498	2015-06-18 00:30:22.899264	137
139	8533238	http://the-toast.net/2014/10/27/employer-put-fml-fmla/	How My Employer Put the “FML” in FMLA	2015-06-18 00:30:44.099884	2015-06-18 00:30:44.266494	8
160	8549278	http://www.matthewaid.com/post/101483465701/fbi-begins-secret-lobbying-campaign-on-capitol-hill-to	FBI Begins Secret Lobbying to Access Apple and Google Encrypted Customer Data	2015-06-18 00:33:10.791733	2015-06-18 00:33:14.714816	143
157	8548163	http://seattletimes.com/html/localnews/2024924914_westneat02xml.html	Police allow car break-ins to become a Seattle growth industry	2015-06-18 00:32:59.658744	2015-06-18 00:33:01.247596	57
138	8532835	https://github.com/shish/pgosquery	PgOSQuery: Expose the operating system as a Postgres database	2015-06-18 00:30:42.73903	2015-06-18 00:30:44.428512	52
140	8536686	http://opensource.apple.com/release/os-x-1010/	OS X 10.10 – Source Code	2015-06-18 00:31:00.545657	2015-06-18 00:31:03.545196	105
136	8532261	http://www.businessweek.com/articles/2014-10-30/tim-cook-im-proud-to-be-gay	Tim Cook Speaks Up	2015-06-18 00:30:35.62324	2015-06-18 00:31:16.313573	925
156	8547624	http://jasmcole.com/2014/11/01/stereographic-lampshades/	Designing Stereographic Lampshades	2015-06-18 00:32:59.314899	2015-06-18 00:32:59.637054	14
142	8538050	http://www.bbc.co.uk/news/world-europe-29846285	Hungary Internet tax cancelled after mass protests	2015-06-18 00:31:16.337245	2015-06-18 00:31:24.884976	283
152	8545472	http://www.penny-arcade.com/news/post/2014/11/01/surface-3-update	Surface 3 Update	2015-06-18 00:32:29.298109	2015-06-18 00:32:34.081796	169
167	8554882	https://www.aclu.org/blog/national-security/new-nsa-documents-shine-more-light-black-box-executive-order-12333	New NSA Documents Shine More Light into Black Box of Executive Order 12333	2015-06-18 00:33:59.472386	2015-06-18 00:34:00.349585	26
155	8546596	https://www.freebsd.org/news/newsflash.html#event20141102:01	FreeBSD, a great, free, Unix operating system turns 21 today	2015-06-18 00:32:46.139204	2015-06-18 00:32:59.292496	435
161	8549348	https://docs.google.com/presentation/d/1l9c9ROjLTD8clOL0yFufAOMbxNC0D-19zCiXMgqtY-M/present	HTTP/2 all the things	2015-06-18 00:33:14.739221	2015-06-18 00:33:16.575562	64
144	8539675	http://www.connoratherton.com/walkway	Walkway.js	2015-06-18 00:31:27.567261	2015-06-18 00:31:31.574416	141
165	8551825	http://www.goodwinprocter.com/Publications/Newsletters/Client-Alert/2014/1015_Software-Companies-Now-on-Notice-That-Encryption-Exports-May-Be-Treated-More-Seriously.aspx	Intel fined $750,000 for violating Encryption Export Restrictions	2015-06-18 00:33:32.122231	2015-06-18 00:33:36.664595	155
158	8548307	http://www.pawnmail.com/	Pawnmail: a free email host for custom domains	2015-06-18 00:33:01.272728	2015-06-18 00:33:03.211098	70
166	8552936	http://www.npr.org/2014/11/03/357428287/tom-magliozzi-popular-co-host-of-nprs-car-talk-dies-at-77	Tom Magliozzi, Co-Host of NPR's 'Car Talk,' Dies at 77	2015-06-18 00:33:36.695446	2015-06-18 00:33:59.438436	766
168	8555550	http://blog.mozilla.org/nnethercote/2014/11/04/please-grow-your-buffers-exponentially/comment-page-1	Please grow your buffers exponentially	2015-06-18 00:34:00.108995	2015-06-18 00:34:06.583135	211
163	8550156	https://www.crypto101.io/#	Crypto 101	2015-06-18 00:33:21.650714	2015-06-18 00:33:24.839138	118
169	8555998	http://thekidshouldseethis.com/post/the-hammer-feather-drop-in-the-worlds-biggest-vacuum-chamber	The Hammer-Feather Drop in the world’s biggest vacuum chamber	2015-06-18 00:34:06.605706	2015-06-18 00:34:11.665795	183
170	8556987	https://blog.dropbox.com/2014/11/dropbox-microsoft-office-partnership/?utm_source=twitter&utm_medium=promoted-update&utm_term=English&utm_content=announcement&utm_campaign=microsoft-dropbox-partnership	Microsoft Partnering with Dropbox to Integrate Dropbox with Office	2015-06-18 00:34:11.693155	2015-06-18 00:34:18.902402	241
171	8558310	https://stripe.com/blog/mayday	Mayday.us	2015-06-18 00:34:18.924685	2015-06-18 00:34:21.102084	61
172	8558822	https://github.com/rswier/c4	C4 – C in 4 functions	2015-06-18 00:34:21.1299	2015-06-18 00:34:40.292486	737
173	8560962	https://github.com/dabockster/Smackbook-Yosemite	Show HN: I updated the legendary Smackbook script for OS X Yosemite	2015-06-18 00:34:40.318776	2015-06-18 00:34:43.071642	81
174	8561080	https://libcom.org/library/phenomenon-bullshit-jobs-david-graeber	On the phenomenon of bullshit jobs	2015-06-18 00:34:43.105715	2015-06-18 00:34:50.653271	229
175	8561677	http://reverseocr.tumblr.com/	Reverse OCR	2015-06-18 00:34:50.693662	2015-06-18 00:34:59.426786	298
209	8577505	http://arstechnica.com/apple/2014/11/yes-the-5k-retina-imacs-screen-runs-at-60hz-at-5k-resolution/	The 5K Retina iMac’s screen runs at 60Hz at 5K resolution	2015-06-18 00:37:07.808177	2015-06-18 00:37:12.726167	155
181	8565535	http://workingwithwords.blogspot.com/2004/08/gee-i-wonder-if-this-will-attract-any.html	Who has been running this classified ad for more than ten years?	2015-06-18 00:35:12.479709	2015-06-18 00:35:13.839471	46
176	8563199	https://code.facebook.com/posts/1503205539947302/introducing-proxygen-facebook-s-c-http-framework/	Introducing Proxygen, Facebook's C++ HTTP Framework	2015-06-18 00:34:59.452445	2015-06-18 00:35:04.393443	174
200	8573389	http://learnlispthehardway.org/	Learn Lisp the Hard Way	2015-06-18 00:36:19.958746	2015-06-18 00:36:21.139422	32
196	8572029	http://www.openbsd.org/cgi-bin/man.cgi?query=tls_init&sektion=3	Libtls – New TLS API from LibreSSL	2015-06-18 00:36:11.740482	2015-06-18 00:36:15.337889	100
669	8790001	http://swannodette.github.io/2014/12/22/waitin/	Waitin' (on Leiningen)	2015-06-18 01:10:33.305213	2015-06-18 01:10:34.742015	60
179	8564958	http://techcrunch.com/2014/11/05/lyft-sues-travis-vanderzanden	Lyft Accuses Former COO of Stealing Confidential Docs Before Joining Uber	2015-06-18 00:35:09.496104	2015-06-18 00:35:10.98156	55
185	8567205	http://jan.moesen.nu/2014/11/06/apple-crawler.txt	Apple running a web crawler written in Go	2015-06-18 00:35:34.938321	2015-06-18 00:35:36.259728	46
189	8567721	http://www.fbi.gov/newyork/press-releases/2014/operator-of-silk-road-2.0-website-charged-in-manhattan-federal-court	Operator of Silk Road 2.0 Website Charged in Manhattan Federal Court	2015-06-18 00:35:41.897744	2015-06-18 00:35:43.395475	61
199	8572810	http://www.rtl-sdr.com/receiving-dead-satellites-rtl-sdr/	Receiving Dead Satellites with the RTL-SDR	2015-06-18 00:36:16.371477	2015-06-18 00:36:21.190815	113
187	8567990	http://www.amazon.com/oc/echo	Amazon Echo	2015-06-18 00:35:37.992841	2015-06-18 00:35:41.865745	32
201	8571879	http://lcamtuf.blogspot.com/2014/11/pulling-jpegs-out-of-thin-air.html	Pulling JPEGs out of thin air	2015-06-18 00:36:21.211689	2015-06-18 00:36:23.839597	87
180	8565298	http://news.microsoft.com/stories/independence-day/	Independence Day	2015-06-18 00:35:11.46285	2015-06-18 00:35:14.265213	56
186	8567494	http://toddwschneider.com/posts/the-reddit-front-page-is-not-a-meritocracy/	The Reddit Front Page Is Not a Meritocracy	2015-06-18 00:35:36.639015	2015-06-18 00:35:41.082026	163
177	8563005	http://nethack4.org/blog/building-c.html	Building C Projects	2015-06-18 00:35:04.419727	2015-06-18 00:35:05.067189	25
178	8563477	https://drive.google.com/file/d/0B0KLoHg_gR_XQnV4RVhlNl96MHM/view	Reflected File Download: A New Web Attack Vector	2015-06-18 00:35:05.094473	2015-06-18 00:35:11.438132	172
183	8566790	https://github.com/cockroachdb/cockroach/blob/master/README.md	Ex-Googlers CockroachDB: A Scalable, Geo-Replicated, Transactional Datastore	2015-06-18 00:35:31.999656	2015-06-18 00:35:34.299624	87
184	8567045	http://www.nytimes.com/2014/11/07/technology/microsoft-to-give-away-mobile-version-of-office-software.html?src=twr&_r=0	Microsoft to Give Away Mobile Version of Office Software	2015-06-18 00:35:34.322965	2015-06-18 00:35:36.615823	40
191	8566582	http://arstechnica.com/business/2012/04/coolest-jobs-in-tech-literally-running-a-south-pole-data-center/	Running a South Pole data center	2015-06-18 00:35:48.050939	2015-06-18 00:35:49.426957	50
182	8565459	https://medium.com/message/networks-without-networks-7644933a3100/	The Sixth Stage of Grief Is Retro-Computing	2015-06-18 00:35:14.289765	2015-06-18 00:35:31.973719	555
193	8570496	http://blog.ycombinator.com/welcome-ali	Welcome, Ali	2015-06-18 00:35:49.449113	2015-06-18 00:35:54.501244	171
188	8568761	http://techcrunch.com/2014/11/06/sf-engineer-dan-ha-has-been-missing-since-halloween-night/	SF Engineer Dan Ha Has Been Missing Since 10/31	2015-06-18 00:35:41.109042	2015-06-18 00:35:41.230521	6
197	8572214	http://www.wired.com/2014/11/operation-onymous-dark-web-arrests/#	‘Operation Onymous’ Arrests 17, Seizes Hundreds of Dark Web Domains	2015-06-18 00:36:13.906558	2015-06-18 00:36:15.561462	34
202	8573992	http://www.kalzumeus.com/2014/11/07/doing-business-in-japan/	Doing Business in Japan	2015-06-18 00:36:23.896405	2015-06-18 00:36:50.649363	821
192	8570330	https://twitter.github.io/twemoji/	Twitter Emoji for Everyone	2015-06-18 00:35:48.965616	2015-06-18 00:35:49.05543	4
198	8572600	http://erlang.org/pipermail/erlang-questions/2011-May/058768.html	Why do we need modules at all? [Joe Armstrong]	2015-06-18 00:36:15.361614	2015-06-18 00:36:17.145074	49
195	8571728	http://erlang.org/pipermail/erlang-questions/2014-November/081570.html#	What can I only do in Erlang?	2015-06-18 00:36:06.083931	2015-06-18 00:36:11.715111	161
194	8570790	http://www.benmilne.com/sometimes-just-go-home/	Sometimes, it’s just time to go home	2015-06-18 00:35:54.527512	2015-06-18 00:36:06.045918	442
208	8576936	https://www.eff.org/press/releases/computer-scientists-ask-supreme-court-rule-apis-cant-be-copyrighted	Computer Scientists Ask Supreme Court to Rule APIs Can’t Be Copyrighted	2015-06-18 00:37:00.71979	2015-06-18 00:37:07.767283	229
204	8576068	http://homepage.ntlworld.com/edmund.grimley-evans/cc500/	CC500: a tiny self-hosting C compiler	2015-06-18 00:36:42.380717	2015-06-18 00:36:43.912288	48
207	8576707	http://www.newyorker.com/news/news-desk/almost-everything-in-dr-strangelove-was-true	Almost Everything in “Dr. Strangelove” Was True	2015-06-18 00:36:55.610899	2015-06-18 00:37:00.693877	145
206	8576545	http://interactius.ara.cat/9n/en	What's Going on in Catalonia?	2015-06-18 00:36:54.074742	2015-06-18 00:36:54.101185	2
205	8576411	http://arxiv.org/abs/1411.1607	Julia: A fresh approach to numerical computing	2015-06-18 00:36:50.549578	2015-06-18 00:36:55.553998	164
211	8579280	https://lists.torproject.org/pipermail/tor-dev/2014-November/007731.html	Logs of compromised Tor site released	2015-06-18 00:37:27.06121	2015-06-18 00:37:42.555247	511
212	8579608	http://classics.mit.edu/Antoninus/meditations.html	The Meditations by Marcus Aurelius	2015-06-18 00:37:42.575823	2015-06-18 00:37:46.462899	118
213	8580025	http://www.theguardian.com/world/2014/nov/09/berlins-digital-exiles-tech-activists-escape-nsa	Berlin’s digital exiles: where tech activists go to escape the NSA	2015-06-18 00:37:46.361512	2015-06-18 00:37:52.904729	146
210	8578151	http://doc.urbit.org/	Urbit – revolution	2015-06-18 00:37:12.752402	2015-06-18 00:37:27.036241	525
215	8580949	http://blog.seancassidy.me/sherlock-holmes-debugging.html	Sherlock Holmes Debugging	2015-06-18 00:37:52.932533	2015-06-18 00:37:54.420968	52
214	8580567	https://grant-oauth.herokuapp.com/	The ultimate OAuth playground	2015-06-18 00:37:49.399477	2015-06-18 00:37:51.187246	65
216	8580963	http://www.automata.website/	Automata: Conway's Game of Life, but with violence	2015-06-18 00:37:54.452813	2015-06-18 00:37:58.199643	119
217	8581051	http://ellekasai.github.io/purplecoat.js/	Purplecoat.js – Simple Labeled Overlays	2015-06-18 00:37:58.223807	2015-06-18 00:37:58.400441	8
219	8581458	http://christophe.rhodes.io/notes/blog/posts/2014/reproducible_builds_-_a_month_ahead_of_schedule/	SBCL: reproducible builds – a month ahead of schedule	2015-06-18 00:38:00.670165	2015-06-18 00:38:01.225782	12
218	8581301	http://www.bothsidesofthetable.com/2014/11/09/why-you-dont-want-to-give-financial-information-to-all-of-your-investors/	Why You Don’t Want to Give Financial Information to All of Your Investors	2015-06-18 00:37:58.423994	2015-06-18 00:38:09.808433	189
240	8591923	https://engineering.groupon.com/2014/misc/gnome-foundation-and-groupon-product-names/#updated	Groupon Officially Abandons Trademark for 'Gnome' (Updated Blog Post)	2015-06-18 00:39:15.108693	2015-06-18 00:39:15.419021	10
253	8601975	http://www.groovehq.com/blog/startup-acquisition-offer	Why groove walked away from acquisition Offer	2015-06-18 00:40:31.750402	2015-06-18 00:40:35.627595	96
239	8591486	http://blog.samaltman.com/board-members	Board Members	2015-06-18 00:39:13.55736	2015-06-18 00:39:15.468518	68
223	8582439	http://material-ui.com/	Material UI	2015-06-18 00:38:15.349175	2015-06-18 00:38:16.834782	56
220	8581889	http://www.nytimes.com/2014/11/10/us/police-use-department-wish-list-when-deciding-which-assets-to-seize.html	Police Use Department Wish List When Deciding Which Assets to Seize	2015-06-18 00:38:04.096717	2015-06-18 00:38:09.15965	188
252	8600716	https://www.scribd.com/embeds/245561031/content?start_page=1&view_mode=scroll&access_key=key-UEZdQ4D9zd883gw8tn3D&show_recommendations=true	Letter to Amazon Board from AMZN Ad Exec Fired for Refusing to Lie to Customer	2015-06-18 00:40:21.596968	2015-06-18 00:40:31.726659	354
222	8582252	http://www.anandtech.com/show/8231/a-closer-look-at-android-runtime-art-in-android-l/2	A Closer Look at Android RunTime in Android L	2015-06-18 00:38:10.181531	2015-06-18 00:38:15.32521	164
234	8588542	http://uncrunched.com/2014/11/10/time-collapse-and-a-broken-brain/	“Time Collapse” and My Broken Brain	2015-06-18 00:38:56.972558	2015-06-18 00:38:58.563792	40
235	8589080	http://jsnell.iki.fi/blog/archive/2014-11-11-tcp-is-harder-than-it-looks.html	TCP is harder than it looks	2015-06-18 00:38:59.332152	2015-06-18 00:39:02.554216	109
782	8832943	http://wozniak.ca/why-i-quit-os-x	Why I Quit OS X	2015-06-22 03:38:16.538879	2015-06-22 03:38:21.739177	179
230	8585438	https://swartzfiles.com	Federal law enforcement documents about Aaron Swartz, released under FOIA	2015-06-18 00:38:37.016419	2015-06-18 00:38:53.364468	408
229	8585273	http://torrentfreak.com/pirate-bays-peter-sunde-released-prison-141011/	Pirate Bay Founder Peter Sunde Released from Prison	2015-06-18 00:38:34.116407	2015-06-18 00:38:36.990544	84
247	8595905	http://news.microsoft.com/2014/11/12/microsoft-takes-net-open-source-and-cross-platform-adds-new-development-capabilities-with-visual-studio-2015-net-2015-and-visual-studio-online/	Microsoft open-sources .NET core runtime	2015-06-18 00:39:47.43626	2015-06-18 00:40:18.310831	955
221	8582090	http://code.google.com/p/lea/	Lea – Discrete probability distributions in Python	2015-06-18 00:38:09.834372	2015-06-18 00:38:10.162912	17
224	8582777	http://status.ovh.net/?do=details&id=8120	800 OVH servers exploited through shellshock	2015-06-18 00:38:16.863686	2015-06-18 00:38:19.580422	103
231	8587379	https://gigaom.com/2014/06/30/the-dark-side-of-io-how-the-u-k-is-making-web-domain-profits-from-a-shady-cold-war-land-deal/	The dark side of .io	2015-06-18 00:38:40.303175	2015-06-18 00:38:41.481093	46
225	8582985	http://shorttermmemoryloss.com/nor/2014/11/07/all-cameras-are-police-cameras/	All cameras are police cameras	2015-06-18 00:38:19.598641	2015-06-18 00:38:21.627003	78
226	8583257	https://developer.mozilla.org/en-US/Firefox/Developer_Edition	Firefox Developer Edition	2015-06-18 00:38:21.649615	2015-06-18 00:38:22.968356	40
227	8583722	http://techcrunch.com/2014/11/10/president-obama-calls-for-a-free-and-open-internet-wants-it-reclassified-as-a-utility/	President Obama Calls for a Free and Open Internet	2015-06-18 00:38:22.998793	2015-06-18 00:38:31.530764	283
238	8590036	http://www.sandisk.com.br/enterprise/ulltradimm-ssd/	SanDisk releases a 400 GB SSD that can be plugged to a DDR3 RAM slot	2015-06-18 00:39:05.849901	2015-06-18 00:39:13.534242	273
232	8588268	http://www.npr.org/blogs/thetwo-way/2014/11/10/363102433/police-can-seize-and-sell-assets-even-when-the-owner-broke-no-law	Police Can Seize and Sell Assets Even When the Owner Broke No Law	2015-06-18 00:38:46.955227	2015-06-18 00:38:50.619134	126
236	8589283	https://www.gnome.org/groupon/	Help the Gnome Foundation Defend the Gnome Trademark Against Groupon	2015-06-18 00:39:02.582117	2015-06-18 00:39:04.853463	82
228	8585597	http://blog.ycombinator.com/an-update-on-hacker-news	An Update on Hacker News	2015-06-18 00:38:31.566012	2015-06-18 00:38:34.097134	79
248	8598652	https://www.eff.org/deeplinks/2014/11/fbis-suicide-letter-dr-martin-luther-king-jr-and-dangers-unchecked-surveillance	FBI's “Suicide Letter” to Dr. Martin Luther King, Jr	2015-06-18 00:40:00.703977	2015-06-18 00:40:02.777483	74
233	8588736	http://techcrunch.com/2014/11/10/spacex-will-announce-micro-satellites-for-low-cost-internet-within-three-months/	SpaceX Will Announce Micro-Satellites for Low Cost Internet Within Three Months	2015-06-18 00:38:53.395218	2015-06-18 00:38:59.306964	147
249	8600174	http://blogs.msdn.com/b/fsharpteam/archive/2014/11/12/announcing-a-preview-of-f-4-0-and-the-visual-f-tools-in-vs-2015.aspx	F# 4.0 Preview	2015-06-18 00:40:18.342553	2015-06-18 00:40:21.487988	62
244	8592806	https://blog.torproject.org/blog/partnering-mozilla	Partnering with Mozilla	2015-06-18 00:39:28.51886	2015-06-18 00:39:32.734151	151
241	8591756	https://technet.microsoft.com/library/security/ms14-066	Vulnerability in Microsoft TLS library could allow remote code execution	2015-06-18 00:39:15.494639	2015-06-18 00:39:18.081049	96
237	8589835	https://www.google.com/foobar/	Google foobar	2015-06-18 00:39:04.880798	2015-06-18 00:39:05.827288	40
243	8591882	http://jvns.ca/blog/2014/11/11/the-best-thing-ive-ever-read-about-women-in-technology/	What women in technology really think (150 of them at least)	2015-06-18 00:39:18.156547	2015-06-18 00:39:18.181325	2
255	8602936	http://aws.amazon.com/lambda/	AWS Lambda	2015-06-18 00:40:38.436535	2015-06-18 00:40:46.822119	182
246	8595335	http://seclists.org/oss-sec/2014/q4/592	Systemd DNS cache poisoning vulnerability	2015-06-18 00:39:44.555793	2015-06-18 00:39:47.41187	82
251	8600622	http://dippl.org	The Design and Implementation of Probabilistic Programming Languages	2015-06-18 00:40:20.193159	2015-06-18 00:40:21.559502	26
254	8602872	http://aws.amazon.com/blogs/aws/cloud-container-management/	AWS EC2 Container Service	2015-06-18 00:40:35.674953	2015-06-18 00:40:38.405409	80
250	8600048	http://pagesperso-systeme.lip6.fr/Christian.Queinnec/WWW/LiSP.html	Lisp in Small Pieces: Book and Code	2015-06-18 00:40:18.487204	2015-06-18 00:40:18.887537	10
245	8594388	http://rosetta.esa.int/?landing	Rosetta comet landing – live stream	2015-06-18 00:39:32.758225	2015-06-18 00:39:44.531036	386
242	8592597	http://letstalkover.coffee	Show HN: Meet me, I'll buy you coffee	2015-06-18 00:39:18.108392	2015-06-18 00:39:28.496179	394
256	8603845	http://blog.samaltman.com/a-new-team-at-reddit	A new team at Reddit	2015-06-18 00:40:41.073601	2015-06-18 00:40:43.047809	74
257	8604533	http://bits.blogs.nytimes.com/2014/11/13/google-lifts-the-turing-award-into-nobel-territory/?ref=technology	Google Lifts the Turing Award into Nobel Territory	2015-06-18 00:40:46.869499	2015-06-18 00:40:49.860754	88
258	8605204	https://groups.google.com/forum/#!topic/golang-dev/sckirqOWepg	Go is moving to GitHub	2015-06-18 00:40:49.906109	2015-06-18 00:41:14.59856	733
259	8606879	https://gist.github.com/VictorBjelkholm/1d0f4ee6dc5ec0d6646e	Why Is Google Blocking Inbox on Firefox?	2015-06-18 00:41:14.628082	2015-06-18 00:41:19.876478	140
262	8608941	http://thestack.com/chakravarty-tor-traffic-analysis-141114	81% of Tor users can be de-anonymised by analysing router information	2015-06-18 00:41:28.230481	2015-06-18 00:41:34.692652	196
260	8607366	http://metricsgraphicsjs.org	MetricsGraphics.js – D3-based library optimized for visualizing time-series data	2015-06-18 00:41:19.903247	2015-06-18 00:41:24.876635	143
261	8608358	http://setosa.io/ev/	Show HN: Explained Visually	2015-06-18 00:41:24.920291	2015-06-18 00:41:28.194991	103
263	8609203	http://elakdawalla.tumblr.com/post/102544296955/philae-status-a-day-later	Philae status, a day later	2015-06-18 00:41:34.727984	2015-06-18 00:41:52.192631	481
264	8610713	http://arstechnica.com/business/2014/11/fcc-calls-atts-fiber-bluff-demands-detailed-construction-plans/	FCC calls AT&T’s fiber bluff, demands detailed construction plans	2015-06-18 00:41:44.484507	2015-06-18 00:41:46.124265	64
289	8614736	http://www.scottaaronson.com/blog/?p=2059	What does the NSA think of academic cryptographers?	2015-06-18 00:43:18.368255	2015-06-18 00:43:18.395508	2
288	8615962	http://lists.alioth.debian.org/pipermail/pkg-systemd-maintainers/2014-November/004563.html	One Debian systemd maintainer resigns because of continued attacks	2015-06-18 00:43:11.765491	2015-06-18 00:43:18.151527	185
265	8610700	http://www.pasadenastarnews.com/general-news/20141113/caltech-professor-claims-israeli-spy-infiltrated-jpl	Caltech professor claims Israeli spy infiltrated JPL	2015-06-18 00:41:46.146952	2015-06-18 00:41:46.222157	4
272	8611719	https://medium.com/backchannel/the-man-who-made-the-uk-say-im-sorry-for-what-we-did-to-turing-8fc468dcea6b?	The Man Who Made the UK Say “I’m Sorry for What We Did to Turing.”	2015-06-18 00:42:11.627447	2015-06-18 00:42:14.43278	88
294	8617057	https://medium.com/stanford-select/keeping-secrets-84a7697bf89f	Keeping Secrets	2015-06-18 00:43:27.740727	2015-06-18 00:43:37.562636	279
292	8617006	http://aokolish.me/blog/2014/11/16/8-reasons-i-won%27t-be-choosing-ember.js-for-my-next-app/	Reasons to not use Ember.js	2015-06-18 00:43:24.82771	2015-06-18 00:43:25.048369	6
271	8611812	http://www.nytimes.com/2014/11/16/world/europe/alexander-grothendieck-math-enigma-dies-at-86.html?smid=fb-share	Alexander Grothendieck, Math Enigma, Dies at 86	2015-06-18 00:42:09.678435	2015-06-18 00:42:11.59079	61
266	8611022	http://www.makeleaps.jp/blog/en/2014/11/how-tokyo-is-different-to-silicon-valley/	How Tokyo Is Different from Silicon Valley	2015-06-18 00:41:49.592897	2015-06-18 00:41:49.87652	8
267	8611134	http://www.freetype.org/freetype2/docs/glyphs/glyphs-3.html	Glyph Metrics	2015-06-18 00:41:52.222451	2015-06-18 00:41:52.321025	4
268	8609936	http://chronicle.com/blogs/conversation/2014/11/13/how-a-47-shrimp-treadmill-became-a-3-million-political-plaything/	How a Shrimp Treadmill Became a Political Plaything	2015-06-18 00:41:52.349189	2015-06-18 00:41:52.379453	2
296	8617652	http://daniel.haxx.se/blog/2014/11/17/why-curl-defaults-to-stdout/	Why curl defaults to stdout	2015-06-18 00:43:38.832147	2015-06-18 00:43:39.387551	24
282	8614230	http://demographics.coopercenter.org/DotMap/	The Racial Dot Map: One Dot per Person for the Entire U.S.	2015-06-18 00:42:57.580177	2015-06-18 00:42:58.060414	12
277	8613307	http://fnordmetric.io/chartsql/	ChartSQL: Create Charts and Dashboards from SQL	2015-06-18 00:42:28.442682	2015-06-18 00:42:51.422476	454
276	8612857	https://github.com/mapmeld/profanity65#profanity65	Encrypt your e-mail with PGP and random profanity	2015-06-18 00:42:20.337579	2015-06-18 00:42:20.847163	18
295	8617678	http://bbc.com/news/technology-29900969	Microsoft: Satya Nadella steers Windows giant to recovery	2015-06-18 00:43:37.584546	2015-06-18 00:43:38.813644	47
275	8612723	https://medium.com/the-physics-arxiv-blog/the-extraordinary-growing-impact-of-the-history-of-science-642022a39d67	The Growing Impact of the History of Science	2015-06-18 00:42:17.873584	2015-06-18 00:42:28.395874	308
303	8620307	http://blog.snapchat.com/post/102895720555/introducing-snapcash	Introducing Snapcash	2015-06-18 00:43:54.728367	2015-06-18 00:43:55.907993	32
269	8611198	http://blogs.esa.int/rosetta/2014/11/15/our-landers-asleep/	Our lander’s asleep	2015-06-18 00:41:52.41166	2015-06-18 00:42:05.254161	380
286	8615336	http://www.nitens.org/taraborelli/latex	The Beauty of LaTeX (2011)	2015-06-18 00:43:04.80699	2015-06-18 00:43:11.639357	167
274	8611747	http://www.seriouseats.com/2014/10/owning-your-own-restaurant-business.html	How I Built a Barbecue Restaurant in Brooklyn: The Toll of Owning Your Business	2015-06-18 00:42:16.089727	2015-06-18 00:42:17.848381	52
270	8611468	http://sherylcanter.com/wordpress/2010/01/a-science-based-technique-for-seasoning-cast-iron/	Chemistry of Cast Iron Seasoning: A Science-Based How-To	2015-06-18 00:42:04.96517	2015-06-18 00:42:09.651206	154
280	8614198	http://what3words.com/about	What3Words: a giant grid of the world made up of 57 trillion squares of 3m x 3m	2015-06-18 00:42:53.935976	2015-06-18 00:42:55.161773	42
279	8613855	http://randi.io/wp/archives/86	Still Here, Part 1: A Memoir	2015-06-18 00:42:47.485333	2015-06-18 00:42:53.45364	102
273	8612248	https://consul.io/	Consul.io – Service discovery and configuration made easy	2015-06-18 00:42:14.452261	2015-06-18 00:42:16.043161	62
283	8614663	http://www.slideshare.net/MuratAydn3/battery-optimization-for-android-apps-devoxx14	Battery Optimization for Android Apps	2015-06-18 00:42:58.083721	2015-06-18 00:42:59.925079	38
281	8614303	http://www.washingtonpost.com/blogs/wonkblog/wp/2014/11/15/the-worlds-biggest-chocolate-maker-says-were-running-out-of-chocolate/	The world's biggest chocolate-maker says we're running out of chocolate	2015-06-18 00:42:55.182629	2015-06-18 00:42:57.80762	63
293	8616976	http://michael.otacoo.com/postgresql-2/postgres-9-4-feature-highlight-indexing-jsonb/	Postgres 9.4 feature highlight: Indexing JSON data with jsonb data type	2015-06-18 00:43:25.483393	2015-06-18 00:43:27.72075	44
284	8614456	http://rgrinberg.com/blog/2014/05/23/humane-re-intro/	Regular Expressions in OCaml	2015-06-18 00:42:58.193534	2015-06-18 00:42:58.269223	4
299	8618486	http://howistart.org/posts/haskell/1	How I Start: Haskell	2015-06-18 00:43:44.680696	2015-06-18 00:43:44.807361	4
287	8614943	http://www.propublica.org/article/somebodys-already-using-verizons-id-to-track-users?hn	Somebody’s Already Using Verizon’s ID to Track Users	2015-06-18 00:43:11.044733	2015-06-18 00:43:18.348807	22
291	8616738	https://github.com/binux/pyspider	Show HN: A Python Spider System with Web UI	2015-06-18 00:43:19.836935	2015-06-18 00:43:26.295262	171
278	8613708	https://www.mattcutts.com/blog/level-playing-field/	Level Playing Field	2015-06-18 00:42:41.24199	2015-06-18 00:42:53.915205	187
290	8616144	http://online.wsj.com/articles/japan-falls-into-recession-1416182404	Japan Falls into Recession	2015-06-18 00:43:18.415251	2015-06-18 00:43:19.818306	58
297	8617874	http://err.no/personal/blog/tech/Debian/2014-11-16-23-55_resigning_from_pkg-systemd?	Resigning as a Debian systemd maintainer	2015-06-18 00:43:39.263118	2015-06-18 00:43:41.594162	60
298	8618247	http://morepypy.blogspot.com/2014/11/tornado-without-gil-on-pypy-stm.html	Tornado Without a GIL on PyPy STM	2015-06-18 00:43:41.616434	2015-06-18 00:43:44.639489	103
302	8619980	http://www.usmarshals.gov/assets/2014/dpr-bitcoins/	For Sale: 50,000 Bitcoins	2015-06-18 00:43:52.806646	2015-06-18 00:43:54.690031	75
285	8614518	http://emacsrocks.com	Emacs Rocks	2015-06-18 00:42:58.423037	2015-06-18 00:43:04.77407	144
301	8619250	http://shit-recruiters-say.tumblr.com/	Sh*t recruiters say	2015-06-18 00:43:48.78998	2015-06-18 00:43:48.960517	4
305	8622720	http://www.bigmessowires.com/2014/11/17/68-katy-68000-linux-on-a-solderless-breadboard/	68 Katy – 68000 Linux on a Solderless Breadboard	2015-06-18 00:44:20.112216	2015-06-18 00:44:22.244997	44
300	8618743	http://www.bbc.com/news/science-environment-30083969	Comet lander: Camera sees Philae's hairy landing	2015-06-18 00:43:44.845114	2015-06-18 00:43:52.783529	197
304	8620716	http://freebsdfoundation.blogspot.com/2014/11/freebsd-foundation-announces-generous.html?HN	WhatsApp Co-Founder Donates $1M to FreeBSD Foundation	2015-06-18 00:43:55.944763	2015-06-18 00:44:27.100181	713
306	8623112	https://www.zlauncher.com	Z Launcher	2015-06-18 00:44:23.367633	2015-06-18 00:44:31.293524	185
307	8623130	http://phoneradar.com/nokia-n1-android-tablet-details/	Nokia N1 Android Tablet Revealed	2015-06-18 00:44:23.815763	2015-06-18 00:44:24.530013	20
308	8623762	https://lists.gnu.org/archive/html/guix-devel/2014-11/msg00379.html	GNU Guix 0.8 released	2015-06-18 00:44:31.319546	2015-06-18 00:44:35.049055	105
344	8645188	http://www.slideshare.net/iXsystems/jordan-hubbard-free-bsd-the-next-10-years	FreeBSD: the next 10 years	2015-06-18 00:47:16.690103	2015-06-18 00:47:23.803624	210
322	8635082	https://medium.com/@erikdkennedy/7-rules-for-creating-gorgeous-ui-part-2-430de537ba96	Rules for Creating Gorgeous UI, Part 2	2015-06-18 00:46:01.638418	2015-06-18 00:46:02.240518	8
330	8638977	http://startupclass.samaltman.com/courses/lec18/	Lecture 18: Legal and Accounting Basics for Startups	2015-06-18 00:46:18.810979	2015-06-18 00:46:25.562536	267
310	8627538	http://www.nytimes.com/2014/11/19/us/nsa-phone-records.html?module=Notification&version=BreakingNews&region=FixedTop&action=Click&contentCollection=BreakingNews&contentID=22423438&pgtype=article	Senate Republicans Block Sweeping Overhaul of National Security Agency Program	2015-06-18 00:44:58.272142	2015-06-18 00:44:58.450104	4
340	8644080	https://web.archive.org/web/20140827195715/http://blog.uber.com/ridesofglory	Uber's deleted blog post: “Rides of Glory”	2015-06-18 00:46:58.795692	2015-06-18 00:47:04.062691	169
337	8641867	http://nirvdrum.com/2014/11/20/open-sourcing-mogotest.html	Open Sourcing a Failed Startup	2015-06-18 00:46:46.517895	2015-06-18 00:46:57.489651	320
323	8635466	https://lobste.rs/s/kiq75p/stop_changing_uis_for_no_good_reason	Stop Changing UIs for No Good Reason	2015-06-18 00:46:02.279914	2015-06-18 00:46:05.613616	119
321	8635131	http://jessevdk.github.io/webgl-play/	Show HN: WebGL Playground	2015-06-18 00:45:57.031277	2015-06-18 00:45:57.500942	14
313	8630066	https://github.com/taye/interact.js	Show HN: Interact.js – drag and drop, resizing and multi-touch gestures	2015-06-18 00:45:22.884886	2015-06-18 00:45:24.698891	59
335	8641004	http://blog.aereo.com/2014/11/next-chapter/	Aereo files for Chapter 11 bankruptcy.	2015-06-18 00:46:39.500016	2015-06-18 00:46:44.641204	176
343	8644636	http://blog.michaelsu.io/announcing-prophet/	Show HN: Prophet – A financial micro-framework in Python	2015-06-18 00:47:08.45959	2015-06-18 00:47:08.59266	4
319	8634018	http://www.eso.org/public/news/eso1438/	Spooky Alignment of Quasars Across Billions of Light-years	2015-06-18 00:45:56.402532	2015-06-18 00:45:56.857419	20
339	8643497	https://marvina.com	Show HN: Premium Medical Marijuana Subscription – SF Only	2015-06-18 00:46:56.102834	2015-06-18 00:46:58.766389	87
314	8631022	http://techblog.netflix.com/2014/11/nodejs-in-flames.html	Node.js in Flames	2015-06-18 00:45:24.746902	2015-06-18 00:45:43.145108	433
329	8638352	http://coteditor.com/	CotEditor – Text Editor for OS X	2015-06-18 00:46:15.924113	2015-06-18 00:46:18.782597	58
311	8629145	http://www.panix.com/~eli/unicode/convert.cgi?text=The+secret+is+out.+	𝑼𝒏𝒊𝒄𝒐𝒅𝒆 𝑻𝒆𝒙𝒕 𝑪𝒐𝒏𝒗𝒆𝒓𝒕𝒆𝒓	2015-06-18 00:45:13.978579	2015-06-18 00:45:21.933712	299
315	8632749	https://blog.mozilla.org/blog/2014/11/19/yahoo-and-mozilla-form-strategic-partnership/	Yahoo and Mozilla Form Strategic Partnership	2015-06-18 00:45:33.313671	2015-06-18 00:45:35.315408	56
309	8624160	https://www.eff.org/deeplinks/2014/11/certificate-authority-encrypt-entire-web	Launching in 2015: A Certificate Authority to Encrypt the Entire Web	2015-06-18 00:44:35.076379	2015-06-18 00:45:13.952145	1122
312	8629885	https://lists.debian.org/debian-ctte/2014/11/msg00091.html	Ian Jackson Resigns from Debian Technical Committee	2015-06-18 00:45:22.081524	2015-06-18 00:45:22.864982	32
316	8633161	http://blog.al4.co.nz/2014/09/google-commits-privacy-seppuku-at-bts-request/	Google commits privacy seppuku at BT’s request	2015-06-18 00:45:36.640588	2015-06-18 00:45:39.422331	67
331	8639657	http://spectrum.ieee.org/telecom/internet/lifi-gets-ready-to-compete-with-wifi#.VG6wkfFznwI.hackernews	Li-Fi Gets Ready to Compete with Wi-Fi	2015-06-18 00:46:25.590767	2015-06-18 00:46:33.912324	277
324	8636229	http://www.computerworld.com/article/2849263/doxxing-defense-remove-your-personal-info-from-data-brokers.html#tk.cwfb	Doxxing defense: Remove your personal info from data brokers	2015-06-18 00:46:05.637605	2015-06-18 00:46:08.050068	76
320	8634328	http://gizmodo.com/how-magic-leap-is-secretly-creating-a-new-alternate-rea-1660441103	How Magic Leap Is Creating an Alternate Reality	2015-06-18 00:45:56.880911	2015-06-18 00:46:02.064819	173
318	8633683	http://www.franken.senate.gov/files/letter/141119UberLetter.pdf	Senator Al Franken's Letter to Uber [pdf]	2015-06-18 00:45:43.624966	2015-06-18 00:45:56.374254	466
333	8639962	http://bitquest.co	BitQuest – Minecraft server with Bitcoin-denominated economy	2015-06-18 00:46:33.936452	2015-06-18 00:46:33.973316	2
325	8636146	http://creator.ionic.io/	Ionic Creator – Fast Visual Ionic Prototyping	2015-06-18 00:46:07.175671	2015-06-18 00:46:07.610244	12
317	8633707	http://blog.42floors.com/surviving-series-crunch/	Surviving the Series A Crunch	2015-06-18 00:45:42.941611	2015-06-18 00:45:43.601378	20
332	8640067	http://www.wired.com/2014/11/utah-considers-cutting-water-nsas-monster-data-center/	Utah Considers Cutting Off Water to the NSA’s Monster Data Center	2015-06-18 00:46:30.424431	2015-06-18 00:46:31.658999	45
328	8637751	http://boz.com/articles/say-no.html	Say No	2015-06-18 00:46:15.82294	2015-06-18 00:46:17.319567	52
334	8640415	http://www.int33h.com/test/mi/	Monkey Island – Insult Swordfighting Game	2015-06-18 00:46:34.014442	2015-06-18 00:46:39.470654	175
326	8636758	http://apis.io	APIs.io – The API search engine	2015-06-18 00:46:08.073457	2015-06-18 00:46:11.6681	131
342	8644175	http://lizthedeveloper.com/how-to-reward-skilled-coders-with-something-other-than-people-management	How to reward skilled coders with something other than people management	2015-06-18 00:47:05.08991	2015-06-18 00:47:16.657448	398
341	8644172	https://www.truejob.com/	Show HN: TrueJob – OkCupid for Jobs	2015-06-18 00:47:04.088665	2015-06-18 00:47:05.060525	30
346	8645504	http://quartz-os.github.io/blog/2014/11/introduction-and-initial-plans/	Quartz OS - Material Design to the Desktop (Qt)	2015-06-18 00:47:25.483837	2015-06-18 00:47:39.016181	424
336	8641734	http://www.discofingers.com	Show HN: Disco Fingers – Easily create funny beats	2015-06-18 00:46:44.66414	2015-06-18 00:46:46.493631	63
327	8637493	https://crates.io/	The Rust community's crate host	2015-06-18 00:46:11.691632	2015-06-18 00:46:15.799933	147
338	8642747	http://til.io	Give HN: *.til.io resolves to 127.0.0.1	2015-06-18 00:46:51.038308	2015-06-18 00:46:51.226015	8
345	8645287	https://www.omniref.com/blog/blog/2014/11/18/ko1-at-rubyconf-2014-massive-garbage-collection-speedup-in-ruby-2-dot-2/?hn=1	Massive Garbage Collection Speedup in Ruby 2.2	2015-06-18 00:47:23.249974	2015-06-18 00:47:25.457977	75
349	8647943	https://rg3.github.io/youtube-dl/	youtube-dl	2015-06-18 00:47:53.902585	2015-06-18 00:47:56.022294	90
347	8646152	http://louwrentius.com/systemd-forward-secure-sealing-of-system-logs-makes-little-sense.html	Systemd Forward Secure Sealing of System Logs Makes Little Sense	2015-06-18 00:47:32.651061	2015-06-18 00:47:34.001419	24
348	8646787	http://www.gravitricity.com/	Gravitricity	2015-06-18 00:47:39.054191	2015-06-18 00:47:53.877384	525
350	8648166	http://js1k.com/2014-dragons/details/1951	JS1k-demo: “Highway at Night”, 1023 Bytes of JavaScript	2015-06-18 00:47:56.044175	2015-06-18 00:48:14.18217	392
352	8649402	http://www.symantec.com/connect/blogs/regin-top-tier-espionage-tool-enables-stealthy-surveillance	Regin: Top-tier espionage tool enables stealthy surveillance	2015-06-18 00:48:14.096103	2015-06-18 00:48:14.506188	14
351	8648768	http://www.antipope.org/charlie/blog-static/2014/11/lets-put-the-future-behind-us-1.html	Let's put the future behind us	2015-06-18 00:48:06.444137	2015-06-18 00:48:14.011012	239
395	8668680	http://damienkatz.net/2013/01/the_unreasonable_effectiveness_of_c.html?	The Unreasonable Effectiveness of C	2015-06-18 00:51:11.178766	2015-06-18 00:51:18.93978	233
358	8652579	http://www.washingtonpost.com/blogs/federal-eye/wp/2014/11/20/postal-service-almost-never-denies-mail-surveillance-requests/	Postal Service almost never denies mail-surveillance requests	2015-06-18 00:48:52.404353	2015-06-18 00:48:55.841405	91
376	8662496	https://github.com/joyent/libuv/issues/1573#issuecomment-64534328	Libuv has moved to its own org away from joyent	2015-06-18 00:50:13.946156	2015-06-18 00:50:15.523201	54
355	8650483	http://github.com/git/git/commit/e83c5163316f89bfbde7d9ab23ca2e25604af290	Git's initial commit	2015-06-18 00:48:25.522919	2015-06-18 00:48:31.08587	198
353	8649617	http://minecraft.xandorus.com:8123/?worldname=playground&mapname=surface&zoom=6&x=-109.6183436789116&y=64&z=-17.340908734067128	What a Minecraft world looks like after being played for 3.5 years	2015-06-18 00:48:14.531821	2015-06-18 00:48:22.2286	232
362	8656028	http://www.businessweek.com/articles/2014-11-24/the-tech-worker-shortage-doesnt-really-exist#r=read	The Tech Worker Shortage Doesn't Really Exist	2015-06-18 00:49:11.633078	2015-06-18 00:49:11.900764	14
378	8662492	http://fbstart.com/	FbStart	2015-06-18 00:50:17.868257	2015-06-18 00:50:17.90338	2
363	8656055	https://medium.com/@mariociabarra/wifried-ios-8-wifi-performance-issues-3029a164ce94	WiFried: iOS 8 WiFi Issue	2015-06-18 00:49:12.914751	2015-06-18 00:49:24.764948	424
368	8660019	https://www.google.com/search?q=king%20of%20united%20states	Google Bug? – The King of the United States of America	2015-06-18 00:49:45.566555	2015-06-18 00:49:45.657388	5
370	8660994	https://code.facebook.com/posts/1499322996995183/solving-the-mystery-of-link-imbalance-a-metastable-failure-state-at-scale/	Solving the Mystery of Link Imbalance: A Metastable Failure State at Scale	2015-06-18 00:49:57.246892	2015-06-18 00:50:04.374965	233
369	8660336	http://www.gironsec.com/blog/2014/11/what-the-hell-uber-uncool-bro/	What the hell Uber? Uncool bro	2015-06-18 00:49:47.632965	2015-06-18 00:49:48.355918	32
360	8654155	https://konklone.com/post/slack-is-now-forcing-users-into-arbitration-and-that-is-terrible	Slack is now forcing users into arbitration and that is terrible	2015-06-18 00:48:59.122335	2015-06-18 00:48:59.818045	21
354	8650103	http://blogs.wsj.com/dailyfix/2014/11/23/magnus-carlsen-repeats-at-world-chess-championship/	Magnus Carlsen Repeats at World Chess Championship	2015-06-18 00:48:22.259731	2015-06-18 00:48:25.497287	116
381	8664400	https://sendto.mozilla.org/page/content/give-bitcoin	Mozilla accepting Bitcoin donations	2015-06-18 00:50:23.241806	2015-06-18 00:50:29.652883	205
386	8665865	http://spritesmods.com/?art=hddhack&page=1	Hard disk hacking	2015-06-18 00:50:37.423535	2015-06-18 00:50:37.76843	8
876	8876445	http://paulgraham.com/corpdev.html	Don't Talk to Corp Dev	2015-06-22 03:44:29.47974	2015-06-22 03:44:39.803435	345
361	8654831	http://news.sciencemag.org/funding/2014/11/gates-foundation-require-immediate-free-access-journal-articles?utm_content=buffer26432&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer	Gates Foundation to require immediate free access for journal articles	2015-06-18 00:49:02.250697	2015-06-18 00:49:30.459275	530
357	8651641	http://www.fse.guru/2-years-with-angular	2 years with Angular	2015-06-18 00:48:40.268929	2015-06-18 00:48:52.357991	352
372	8661780	https://translate.google.com/translate?sl=auto&tl=en&js=y&prev=_t&hl=en&ie=UTF-8&u=http%3A%2F%2Fwww.heise.de%2Fnewsticker%2Fmeldung%2FKim-Dotcom-Ich-bin-pleite-2465551.html&edit-text=	Kim Dotcom: “I'm broke” (german article)	2015-06-18 00:50:06.923141	2015-06-18 00:50:09.65677	99
359	8653416	http://blog.ycombinator.com/what-we-learned-from-40-female-yc-founders	What We Learned From 40 Female YC Founders	2015-06-18 00:48:55.865135	2015-06-18 00:49:02.229919	225
356	8650952	http://seclists.org/fulldisclosure/2014/Nov/74	On Linux, 'less' can probably get you owned	2015-06-18 00:48:31.122132	2015-06-18 00:48:40.230939	321
371	8661640	https://jobs.apple.com/us/search#&ss=virtual%20reality&t=1&so=&lo=0*USA&pN=0&openJobId=37025954	Virtual reality Jobs at Apple	2015-06-18 00:50:04.526733	2015-06-18 00:50:06.895031	84
373	8661740	https://www.kernel.org/doc/Documentation/CodingStyle	Linux kernel coding style	2015-06-18 00:50:09.680578	2015-06-18 00:50:10.012628	14
365	8657651	http://www.wired.com/2014/11/eniac-unearthed/	The World's First Computer Has Finally Been Resurrected	2015-06-18 00:49:32.827911	2015-06-18 00:49:33.362598	16
366	8657875	http://neovim.org/news/2014/nov/	Issue #4: Thanksvimming Day	2015-06-18 00:49:33.57107	2015-06-18 00:49:37.383935	137
364	8657454	http://serratus.github.io/quaggaJS/	Show HN: QuaggaJS, an advanced barcode-scanner written in JavaScript	2015-06-18 00:49:30.501555	2015-06-18 00:49:33.523653	70
382	8665166	http://blog.highfivehq.com/posts/a-little-known-hack-from-japan-to-get-your-notebook-organized	A little known hack from Japan to get your notebook organized	2015-06-18 00:50:28.424672	2015-06-18 00:50:29.224649	24
375	8662348	http://www.slideshare.net/rmsguhan/react-meetup-mailonreact	Yahoo Mail Moving to Node and React	2015-06-18 00:50:13.302097	2015-06-18 00:50:14.028443	28
374	8661993	http://www.bloomberg.com/news/2014-11-25/hsbc-goldman-rigged-metals-prices-for-years-suit-says.html	HSBC, Goldman Rigged Metals’ Prices for Years, Suit Says	2015-06-18 00:50:10.035079	2015-06-18 00:50:13.271944	120
388	8666609	https://reactos.org/node/920	ReactOS finally gets new shell (Much more similar to Windows XP Explorer)	2015-06-18 00:50:51.993249	2015-06-18 00:50:58.282944	179
377	8662747	http://iquantny.tumblr.com/post/103635652409/is-the-nypd-about-to-start-ticketing-more-cyclists	Is the NYPD About to Start Ticketing More Cyclists Due to a Mathematical Error?	2015-06-18 00:50:15.556834	2015-06-18 00:50:17.842336	81
367	8658283	http://motherboard.vice.com/read/gods-lonely-programmer	God's Lonely Programmer	2015-06-18 00:49:37.403458	2015-06-18 00:49:57.479271	692
384	8665617	http://dearvcs.svbtle.com/dear-vcs-kill-the-warm-introduction	Dear VCs: Kill the ‘warm’ introduction	2015-06-18 00:50:35.057798	2015-06-18 00:50:35.65867	22
389	8666921	http://www.bbc.com/news/technology-30228279	Google should be broken up, say European MPs	2015-06-18 00:50:55.396891	2015-06-18 00:50:55.784018	18
380	8663173	http://www.dragonflybsd.org/release40	DragonFly BSD 4.0 released	2015-06-18 00:50:18.079867	2015-06-18 00:50:18.577479	14
379	8662593	http://www.alex-buono.com/how-we-did-it-snl-titles-sequence/	How We Did It: SNL Title Sequence	2015-06-18 00:50:17.929019	2015-06-18 00:50:23.217325	158
391	8667510	http://nautil.us/issue/19/illusions/the-loneliest-genius	The Loneliest Genius	2015-06-18 00:51:02.110248	2015-06-18 00:51:05.868523	86
383	8665367	https://www.amazon.com	Amazon DNS Error 0:24 GMT	2015-06-18 00:50:29.678617	2015-06-18 00:50:35.777353	173
385	8663729	http://www.sbnation.com/2014/11/26/7281129/radioshack-eulogy-stories	A Eulogy for RadioShack	2015-06-18 00:50:35.803621	2015-06-18 00:50:37.684608	42
387	8665820	http://prooffreaderplus.blogspot.com/2014/11/top-10-python-idioms-i-wished-id.html	Top Python idioms I wish I'd learned earlier	2015-06-18 00:50:37.807966	2015-06-18 00:50:51.953783	400
392	8667603	http://www.turbobytes.com/blog/cloudfront-cdn-global-outage/	Global Outage of AWS CloudFront CDN on Nov 26 2014	2015-06-18 00:51:03.295372	2015-06-18 00:51:04.261821	38
390	8667320	http://lkml.iu.edu/hypermail/linux/kernel/1411.3/02881.html	Git v2.2.0 released	2015-06-18 00:50:58.329873	2015-06-18 00:51:02.063478	108
393	8668271	http://correl.phoenixinquis.net/2014/11/25/getting-organized-with-org-mode.html	Getting Organized with Org Mode	2015-06-18 00:51:05.893198	2015-06-18 00:51:06.288204	16
396	8668843	https://www.youtube.com/watch?v=OIRZebE8O84	Arthur C. Clarke Predicts the Internet and PC	2015-06-18 00:51:17.751853	2015-06-18 00:51:17.899172	6
394	8668300	http://sachachua.com/blog/2008/08/why-browse-the-web-in-emacs/	Why browse the Web in Emacs?	2015-06-18 00:51:06.313641	2015-06-18 00:51:11.138013	149
397	8669179	http://weaponre.com/blog.html	“A Japanese based multinational made a CD based console once”	2015-06-18 00:51:18.958614	2015-06-18 00:51:22.877113	139
433	8681869	http://cglab.ca/~abeinges/blah/rust-generics-and-collections/	Rust, Generics, and Collections	2015-06-18 00:54:02.290025	2015-06-18 00:54:03.316456	38
398	8669394	http://online.wsj.com/articles/new-facebook-rules-will-sting-entrepreneurs-1417133694	New Facebook Rules Will Sting Entrepreneurs	2015-06-18 00:51:22.804575	2015-06-18 00:51:23.81961	40
402	8670892	http://lo-th.github.io/3d.city/index.html	3D City: Simcity-like game build using Three.js	2015-06-18 00:51:42.80842	2015-06-18 00:52:00.774507	513
414	8674227	https://medium.com/human-parts/has-travel-becoming-another-exercise-in-narcissism-bfb3ccbcdc3a	Has Travel Become Another Exercise in Narcissism?	2015-06-18 00:52:38.202199	2015-06-18 00:52:40.531394	28
405	8672548	https://lists.dyne.org/lurker/message/20141127.212941.f55acc3a.en.html	Debian is forked over systemd, and it's called 'Devuan'	2015-06-18 00:52:04.618785	2015-06-18 00:52:07.370794	78
406	8672694	http://www.cbc.ca/news/canada/toronto/social-assistance-computer-error-sees-millions-paid-out-by-mistake-1.2854050	Social assistance computer error sees millions paid out by mistake in Ontario	2015-06-18 00:52:07.41188	2015-06-18 00:52:07.449047	2
410	8673406	https://www.facebook.com/arion.hardison.1/posts/589073791237753	programmer nearly arrested for helping woman	2015-06-18 00:52:22.426681	2015-06-18 00:52:22.447961	2
424	8677696	https://github.com/charcole/Z3	First Infocom Z-machine implemented in hardware	2015-06-18 00:53:23.836725	2015-06-18 00:53:27.425342	103
422	8676872	http://harmful.cat-v.org/software/OO_programming/	Object Oriented Programming Is Inherently Harmful (Quotes)	2015-06-18 00:53:16.599291	2015-06-18 00:53:17.214818	26
432	8680598	http://www.django-rest-framework.org/topics/3.0-announcement/	Django REST framework 3.0	2015-06-18 00:53:55.242282	2015-06-18 00:54:00.208526	169
418	8676625	http://paste.debian.net/plainh/9140c83e	Virgin Media active DNS query MITM even for traffic not to their nameservers	2015-06-18 00:53:10.269744	2015-06-18 00:53:10.464703	8
420	8676848	http://www.bbc.com/news/world-europe-30267042	Swiss 'reject immigration curbs'	2015-06-18 00:53:15.323334	2015-06-18 00:53:17.260876	23
401	8670235	http://services.amazon.com/selling-services/pricing.htm?ld=EL-www.amazon.comAS	Sell Services on Amazon	2015-06-18 00:51:35.359361	2015-06-18 00:51:42.780555	239
411	8673394	http://yadayadayadaecon.com	The Economics of Seinfeld	2015-06-18 00:52:23.344818	2015-06-18 00:52:31.22731	233
439	8686841	http://www.bbc.com/news/technology-30290540	Hawking: AI could end human race	2015-06-18 00:54:37.08741	2015-06-18 00:54:37.114211	2
425	8677980	http://www.hpl.hp.com/research/systems-research/themachine/	The Machine: A new kind of computer	2015-06-18 00:53:24.604155	2015-06-18 00:53:25.306072	22
416	8675274	https://software.intel.com/en-us/blogs/2014/11/24/what-is-new-for-x86-in-upcoming-gcc-50	New optimizations for X86 in upcoming GCC 5.0	2015-06-18 00:52:45.896684	2015-06-18 00:52:52.877157	231
407	8672974	http://edge.org/responses/what-should-we-be-worried-about	Why the West should be worried about Chinese Eugenics (2013)	2015-06-18 00:52:12.556426	2015-06-18 00:52:13.081527	14
412	8673760	http://paulgraham.com/mean.html	Mean People Fail	2015-06-18 00:52:31.253814	2015-06-18 00:52:35.437224	134
399	8669557	https://github.com/iojs/io.js	IO.js, a Node fork with many of Node's key contributors	2015-06-18 00:51:23.84062	2015-06-18 00:51:30.999988	223
404	8671618	https://github.com/phoenixframework/phoenix	Phoenix – Elixir Web Framework	2015-06-18 00:52:00.814202	2015-06-18 00:52:13.136891	290
400	8670014	https://github.com/chenglou/react-tween-state	React Tween State	2015-06-18 00:51:31.035638	2015-06-18 00:51:35.333083	109
408	8673094	http://cs.stanford.edu/people/karpathy/nips2014/	NIPS 2014 papers	2015-06-18 00:52:13.163635	2015-06-18 00:52:15.616306	72
403	8672234	https://github.com/mroth/phoenix-showdown	Phoenix (elixir) vs. Martini (go) vs. Express vs. Rails Benchmarks	2015-06-18 00:51:59.840451	2015-06-18 00:52:00.489514	16
427	8678847	http://venturebeat.com/2014/11/30/why-eric-schmidt-doesnt-know-how-google-works/	Why Eric Schmidt doesn’t know how Google works	2015-06-18 00:53:31.879569	2015-06-18 00:53:38.297433	140
415	8675078	http://www.ioccc.org/1994/smr.hint	The world's smallest self-replicating program	2015-06-18 00:52:43.646153	2015-06-18 00:52:45.729594	81
409	8673066	https://dkg.fifthhorseman.net/notes/inline-pgp-harmful/	Inline PGP signatures considered harmful	2015-06-18 00:52:13.551855	2015-06-18 00:52:23.306759	235
429	8679245	http://www.breck-mckye.com/blog/2014/12/the-state-of-javascript-in-2015/	The State of JavaScript in 2015	2015-06-18 00:53:39.213262	2015-06-18 00:53:50.327582	365
419	8676476	http://coolwanglu.github.io/vim.js/experimental/vim.html	Vim.js: JavaScript port of vim	2015-06-18 00:53:12.111854	2015-06-18 00:53:15.300651	98
417	8675730	http://vimeo.com/108650530	Wanderers: a short film of humanity's expansion into the Solar System	2015-06-18 00:52:52.903244	2015-06-18 00:53:12.091892	665
413	8674039	http://www.regexcrossword.com/	Regex Crossword	2015-06-18 00:52:35.458744	2015-06-18 00:52:45.869248	273
423	8677048	http://www.phoronix.com/scan.php?page=news_item&px=MTg1MDc	Nasty Lockup Issue Still Being Investigated for Linux 3.18	2015-06-18 00:53:17.290518	2015-06-18 00:53:23.80924	214
430	8679855	http://www.spacex.com/careers/position/5749	SpaceX is hiring a Farmer in Texas	2015-06-18 00:53:48.048676	2015-06-18 00:53:48.360576	12
421	8676964	http://rjbs.manxome.org/rubric/entry/2066	In Soviet Minecraft, server op you	2015-06-18 00:53:15.992934	2015-06-18 00:53:16.569198	10
428	8678718	http://www.cis.upenn.edu/~bcpierce/courses/670Fall04/GreatWorksInPL.shtml	Great Works in Programming Languages	2015-06-18 00:53:38.322797	2015-06-18 00:53:39.434647	28
437	8685291	http://www.nature.com/news/nature-makes-all-articles-free-to-view-1.16460	Nature makes all articles free to view	2015-06-18 00:54:18.108202	2015-06-18 00:54:36.766745	659
426	8678336	http://lcamtuf.blogspot.com/2014/11/afl-fuzz-nobody-expects-cdata-sections.html	Nobody expects CDATA sections in XML	2015-06-18 00:53:27.444557	2015-06-18 00:53:34.852793	187
434	8681990	http://blogs.microsoft.com/blog/2014/12/01/microsoft-acquires-acompli-provider-innovative-mobile-email-apps/	Microsoft acquires Acompli	2015-06-18 00:54:03.339214	2015-06-18 00:54:03.863474	23
436	8683827	http://ventrellathing.wordpress.com/2013/06/18/the-case-for-slow-programming/	The Case for Slow Programming	2015-06-18 00:54:10.207991	2015-06-18 00:54:18.085894	270
443	8688002	https://twitter.com/NASA/status/539814651404754944	NASA: We're sending humans to Mars	2015-06-18 00:54:47.373671	2015-06-18 00:55:10.797928	794
431	8680177	http://www.benjamincburns.com/2014/11/30/from-hacker-to-hospice-in-seven-weeks.html	From hacker to hospice in 7 weeks	2015-06-18 00:53:50.347058	2015-06-18 00:54:02.263201	214
435	8682525	https://coreos.com/blog/rocket/	CoreOS is building a container runtime, Rocket	2015-06-18 00:54:03.885302	2015-06-18 00:54:10.18069	234
440	8686934	https://github.com/composer/composer/commit/ac676f47f7bbc619678a29deae097b6b0710b799	One PHP line changed and Composer run ~70% faster	2015-06-18 00:54:37.287508	2015-06-18 00:54:43.021808	183
438	8686802	https://aws.amazon.com/codecommit/	AWS Codecommit	2015-06-18 00:54:36.790963	2015-06-18 00:54:37.264408	18
442	8686868	http://www.nytimes.com/2014/12/03/technology/once-celebrated-in-russia-programmer-pavel-durov-chooses-exile.html?ref=technology&_r=0	Once Celebrated in Russia, Programmer Pavel Durov Chooses Exile	2015-06-18 00:54:43.617697	2015-06-18 00:54:43.692717	4
441	8687804	https://www.aerofs.com/blog/immigration-is-about-talent-not-costs/	Immigration is about talent, not costs	2015-06-18 00:54:43.048109	2015-06-18 00:54:47.341875	153
444	8690206	https://plus.google.com/+youtube/posts/BUXfdWqu86Q	Gangnam Style breaks YouTube viewer count	2015-06-18 00:54:57.530385	2015-06-18 00:54:57.567195	2
472	8704279	https://www.mozilla.org/en-US/security/advisories/mfsa2014-90/	Apple CoreGraphics framework logging input data to /tmp	2015-06-18 00:56:56.780447	2015-06-18 00:57:00.049407	95
469	8703542	http://www.marketwatch.com/story/its-official-america-is-now-no-2-2014-12-04?link=sfmw_fb	Chinese economy overtakes the U.S.’s to become the largest	2015-06-18 00:56:48.382995	2015-06-18 00:56:50.081891	59
456	8697820	http://www.andrew.cmu.edu/course/15-749/READINGS/required/	Distributed systems readings	2015-06-18 00:55:51.619721	2015-06-18 00:55:52.655231	30
461	8699957	http://blog.docker.com/2014/12/announcing-docker-machine-swarm-and-compose-for-orchestrating-distributed-apps	Announcing Docker Machine, Swarm, and Compose for Orchestrating Distributed Apps	2015-06-18 00:56:12.6179	2015-06-18 00:56:20.085321	187
470	8703650	https://github.com/github/roskomnadzor	GitHub has responded to being blocked (will comply with roskompazor requests)	2015-06-18 00:56:50.655621	2015-06-18 00:56:53.553292	84
455	8697590	http://m.wsj.com/articles/BL-DGB-39221	Apple Deleted Rivals’ Songs from Users’ iPods	2015-06-18 00:55:43.776674	2015-06-18 00:55:51.589836	199
457	8698191	http://www.wired.com/2014/12/sony-hack-what-we-know/	Sony Got Hacked Hard: What We Know and Don't Know So Far – WIRED	2015-06-18 00:55:52.525509	2015-06-18 00:56:03.021877	268
453	8696391	http://www.newyorker.com/business/currency/the-open-office-trap	The Open-Office Trap	2015-06-18 00:55:34.440456	2015-06-18 00:55:35.046388	24
452	8696255	http://blog.wolfram.com/2014/12/01/extending-van-goghs-starry-night-with-inpainting/	Extending Van Gogh’s Starry Night with Inpainting	2015-06-18 00:55:33.800234	2015-06-18 00:55:36.600801	83
466	8703155	http://www.nytimes.com/2014/12/05/nyregion/james-watsons-nobel-medal-sells-for-record-4-million.html	Watson’s Nobel Prize Medal for Decoding DNA Fetches $4.1M at an Auction	2015-06-18 00:56:42.655265	2015-06-18 00:56:43.509554	24
465	8703005	https://gist.github.com/jkrems/04a2b34fb9893e4c2b5c	Generators Are Like Arrays	2015-06-18 00:56:39.214309	2015-06-18 00:56:39.306017	4
463	8701696	http://www.wyden.senate.gov/news/press-releases/wyden-introduces-bill-to-ban-government-mandated-backdoors-into-americans-cellphones-and-computers	Senator Introduces Bill to Ban Government Backdoors into Cellphones and Computers	2015-06-18 00:56:24.027574	2015-06-18 00:56:25.945692	71
479	8708617	http://harmful.cat-v.org/software/xml/	XSLT is a failure wrapped in pain	2015-06-18 00:57:32.795723	2015-06-18 00:57:44.516806	362
449	8693767	http://googleonlinesecurity.blogspot.com/2014/12/are-you-robot-introducing-no-captcha.html	Are You a Robot? Introducing “No CAPTCHA ReCAPTCHA”	2015-06-18 00:55:23.362452	2015-06-18 00:55:30.195386	188
445	8692168	https://medium.com/@blakeross/uber-gov-29db5fdff372	Uber.gov – It’s Time to Let the Government Drive	2015-06-18 00:55:06.847777	2015-06-18 00:55:07.480314	26
458	8698587	http://www.nasa.gov/multimedia/nasatv/#.VIAwicl5V8F	Live Coverage of the Orion Flight Test	2015-06-18 00:56:03.055696	2015-06-18 00:56:03.31127	8
477	8704629	http://bellard.org/bpg/	BPG Image format	2015-06-18 00:57:08.383972	2015-06-18 00:57:43.952685	592
490	8711621	https://github.com/TheBerkin/Rant	Show HN: Rant, a procedural text generation language	2015-06-18 00:58:26.069675	2015-06-18 00:58:33.194301	239
468	8703446	https://aws.amazon.com/blogs/aws/aws-data-transfer-price-reduction/?sc_ichannel=EM&sc_icountry=global&sc_icampaigntype=launch&sc_icampaign=EM_128506540&sc_idetail=em_1778261631&ref_=pe_411040_128506540_12	AWS Data Transfer Price Reduction	2015-06-18 00:56:47.66762	2015-06-18 00:56:47.697245	2
450	8694882	http://www.jamesward.com/2014/12/03/java-doesnt-suck-youre-just-using-it-wrong	Java Doesn’t Suck – You’re Just Using It Wrong	2015-06-18 00:55:25.525926	2015-06-18 00:55:26.550715	24
448	8693954	http://www.bbc.co.uk/news/business-30310832	UK "Google Tax": 25% imposed on profits generated by multinationals	2015-06-18 00:55:21.010456	2015-06-18 00:55:23.333195	77
476	8705856	http://www.nytimes.com/2014/12/06/science/nasa-orion-spacecraft-lifts-off-into-orbit.html?ref=science&_r=0	NASA’s Orion Spacecraft Splashes Down in Pacific After Test Flight	2015-06-18 00:57:05.292814	2015-06-18 00:57:08.347014	106
460	8699167	http://getflakes.com/index.html	Show HN: Front end (CSS/JS) framework optimized for internal apps	2015-06-18 00:56:09.231243	2015-06-18 00:56:12.577301	110
447	8692537	http://blog.dnsimple.com/2014/12/incident-report-ddos/	Incident Report – DDoS Attack	2015-06-18 00:55:11.174386	2015-06-18 00:55:11.19951	2
467	8703152	https://www.lyft.com/work	Lyft for Work	2015-06-18 00:56:43.542598	2015-06-18 00:56:50.627991	162
451	8695316	http://hforsten.com/6-ghz-frequency-modulated-radar.html	6 GHz frequency modulated radar	2015-06-18 00:55:30.241938	2015-06-18 00:55:33.771741	127
464	8701852	http://blogs.msdn.com/b/dotnet/archive/2014/12/04/introducing-net-core.aspx	Introducing .NET Core	2015-06-18 00:56:34.726666	2015-06-18 00:56:42.615939	203
454	8696975	http://docs.hylang.org/en/latest/	Hy	2015-06-18 00:55:36.623302	2015-06-18 00:55:43.884285	236
446	8692563	https://www.wire.com/	Wire – the Skype killer from ex-Skype people	2015-06-18 00:55:10.819974	2015-06-18 00:55:20.978464	333
462	8701228	http://duktape.org/	Duktape	2015-06-18 00:56:20.113722	2015-06-18 00:56:35.323484	357
474	8704659	http://www.wired.com/2014/12/io-js/?hn	Node.js forked by most active contributors	2015-06-18 00:57:01.13448	2015-06-18 00:57:02.44692	58
473	8704303	http://andyadams.org/you-can-charge-more/	Freelancing: How to talk yourself into charging more	2015-06-18 00:57:00.072958	2015-06-18 00:57:05.263229	114
459	8698836	http://homakov.blogspot.com/2014/12/the-no-captcha-problem.html?	The No CAPTCHA problem	2015-06-18 00:56:03.343312	2015-06-18 00:56:09.208433	181
475	8705216	http://www.bloomberg.com/news/print/2014-12-05/musk-battery-works-fill-utilities-with-fear-and-promise.html	Why Elon Musk's Batteries Scare the Hell Out of the Electric Company	2015-06-18 00:57:03.165473	2015-06-18 00:57:03.774646	29
471	8703853	http://www.nasa.gov/multimedia/nasatv/#.VIGQsGTF9d0	Orion Flight Test Live Launch	2015-06-18 00:56:53.578257	2015-06-18 00:56:56.74647	98
481	8709212	http://www.wired.com/2014/12/a10-warthog-isis/	America’s Toughest, Ugliest Warplane Is Going Back into Battle	2015-06-18 00:57:50.529446	2015-06-18 00:57:50.901507	10
483	8709562	http://ccc.de/en/updates/2014/ccc-censored-in-uk	Chaos Computer Club on the blocking of our website in UK	2015-06-18 00:57:52.051936	2015-06-18 00:57:52.251364	6
478	8707800	http://thedoomthatcametopuppet.tumblr.com/?	A Markov chain trained on the Puppet documentation and H. P. Lovecraft	2015-06-18 00:57:19.93123	2015-06-18 00:57:23.499276	97
484	8709847	http://www.nytimes.com/2014/12/06/opinion/joe-nocera-uber-vs-uber.html	über vs. Uber	2015-06-18 00:57:58.686453	2015-06-18 00:57:59.195385	14
480	8709188	http://www.economist.com/blogs/buttonwood/2014/12/investing-ceo-pay-and-economy	Cult of shareholder value delivered lower investor returns but higher CEO pay	2015-06-18 00:57:44.545528	2015-06-18 00:57:50.491494	153
485	8710418	https://github.com/antirez/shapeme	Shapeme – Evolve images using simulated annealing	2015-06-18 00:58:05.055849	2015-06-18 00:58:06.638009	50
482	8709381	https://www.gmo.com/America/CMSAttachmentDownload.aspx?target=JUBRxi51IIBoe1yul9uERnfCmQoglFl9k5qwJSfHx8w%2fWCnFLmEb2MC9GoFnZVlslR5NzCRY1ajgn503icBv67VQg%2fNVUMWsYvi3A2%2fL%2bS28A7Pthjp7LmOfLYQfHMJc	The World's Dumbest Idea: Maximizing Shareholder Value [pdf]	2015-06-18 00:57:50.942613	2015-06-18 00:58:05.025461	328
486	8710448	http://www.forbes.com/sites/mfonobongnsehe/2014/12/01/nigerian-billionaire-tony-elumelu-commits-100-million-to-create-10000-african-entrepreneurs-in-10-years/	Nigerian Billionaire Commits $100M to Create African Entrepreneurs in 10 Years	2015-06-18 00:58:06.677475	2015-06-18 00:58:17.97824	328
515	8721650	http://arxiv.org/abs/1412.1897	Deep Neural Networks Are Easily Fooled	2015-06-18 01:00:05.793486	2015-06-18 01:00:09.57984	131
504	8715529	https://github.com/golang/go	Golang on GitHub	2015-06-18 00:59:17.929178	2015-06-18 00:59:24.447404	168
494	8712660	http://www.mpg.de/8785897/superconductivity-room-temperature	Superconductivity without cooling	2015-06-18 00:58:43.727261	2015-06-18 00:58:50.753644	205
506	8716425	http://www.reuters.com/article/2014/12/08/us-india-rape-uber-idUSKBN0JM0CE20141208	Uber banned from operating in Delhi after driver rape	2015-06-18 00:59:28.922341	2015-06-18 00:59:33.139234	151
497	8714051	http://avtok.com/2014/11/05/interface-upgrades.html	Interface Upgrades in Go	2015-06-18 00:58:58.035802	2015-06-18 00:59:03.547777	149
502	8715044	https://gigaom.com/2014/12/07/mesospheres-new-data-center-mother-brain-will-blow-your-mind/	Mesosphere Announces First Data Center OS and $36M in Funding	2015-06-18 00:59:13.208085	2015-06-18 00:59:15.29473	50
499	8713947	https://medium.com/@ireneau/whimseybox-and-a-cautionary-tale-about-subscription-services-and-how-not-to-shut-down-a-startup-be1bd2c69ecd	A cautionary tale about subscription services and how not to shut down a startup	2015-06-18 00:59:04.111923	2015-06-18 00:59:08.519029	104
507	8716966	http://wesleyio.tumblr.com/	Node.js is forked, not f***ed	2015-06-18 00:59:33.190528	2015-06-18 00:59:33.23392	2
495	8713328	http://stefan.saasen.me/articles/git-clone-in-haskell-from-the-bottom-up/	Reimplementing “git clone” in Haskell from the bottom up (2013)	2015-06-18 00:58:50.790404	2015-06-18 00:58:58.013353	167
491	8711869	http://www.nablaman.com/relay/story.php	Zusie – My Relay Computer	2015-06-18 00:58:33.219346	2015-06-18 00:58:37.155448	97
521	8723105	http://entire.spacebar.org	You can't win the game, it exists only to destroy your mind	2015-06-18 01:00:16.303641	2015-06-18 01:00:17.200938	36
498	8713495	http://static.googleusercontent.com/media/research.google.com/en/us/people/jeff/CIKM-keynote-Nov2014.pdf	Large Scale Deep Learning - Jeff Dean [pdf]	2015-06-18 00:59:03.584768	2015-06-18 00:59:08.713272	20
488	8711162	http://brooker.co.za/blog/2014/12/06/random.html	Make your program slower with threads	2015-06-18 00:58:18.593308	2015-06-18 00:58:26.033727	183
509	8717296	http://www.wired.com/2014/12/google-maps-ground-truth	The Huge, Unseen Operation Behind the Accuracy of Google Maps	2015-06-18 00:59:34.251252	2015-06-18 00:59:39.91132	167
487	8711114	https://gigaom.com/2014/12/05/whats-happening-with-secret/	What’s happening with Secret?	2015-06-18 00:58:18.014714	2015-06-18 00:58:19.07573	20
512	8718776	http://android-developers.blogspot.com/2014/12/android-studio-10.html	Android Studio 1.0	2015-06-18 00:59:41.078229	2015-06-18 00:59:47.170277	191
522	8723435	http://www.bbc.com/news/business-30395093?ns_mchannel=social&ns_campaign=bbc_breaking&ns_source=twitter&ns_linkname=news_central	Uber banned in Spain	2015-06-18 01:00:17.22637	2015-06-18 01:00:17.253885	2
492	8712035	https://github.com/steveklabnik/emoji/issues/23	The reason people burn out on open source	2015-06-18 00:58:34.793699	2015-06-18 00:58:40.688975	120
516	8722216	http://www.google.com/intl/en/ipv6/statistics.html#5percent	5% of Google's traffic is now IPv6	2015-06-18 01:00:09.608785	2015-06-18 01:00:15.473307	173
496	8714017	http://pgbovine.net/programmers-talking-to-beginners.htm	Programmers, please don't ever say this to beginners	2015-06-18 00:58:55.637707	2015-06-18 00:58:56.265672	18
505	8716050	http://www.thebluehouse.io/blog/2014/9/2/move-your-startup-to-a-moroccan-fishing-town	Why you should move your startup to a small fishing town	2015-06-18 00:59:24.492671	2015-06-18 00:59:28.903235	129
503	8714477	http://blog.lostpropertyhq.com/postgres-full-text-search-is-good-enough/	Postgres full-text search is good enough	2015-06-18 00:59:15.199453	2015-06-18 00:59:17.891451	61
489	8711409	http://techcrunch.com/2014/12/06/uber-confirms-it-is-assisting-police-in-india-following-an-alleged-rape/	Uber Confirms It Is Assisting Police in India Following an Alleged Rape	2015-06-18 00:58:21.246099	2015-06-18 00:58:21.467255	6
511	8718596	http://www.panic.com/blog/transmit-ios-1-1-1/	Apple removes ability to “send” files to other services from Transmit iOS 1.1.1	2015-06-18 00:59:39.952968	2015-06-18 00:59:41.056899	38
500	8714635	http://blog.fastmail.com/2014/12/08/squire-fastmails-rich-text-editor/	Squire: FastMail’s rich text editor	2015-06-18 00:59:08.736929	2015-06-18 00:59:13.186183	42
493	8712349	http://danluu.com/discourage-oss	How to discourage open source contributions	2015-06-18 00:58:40.716741	2015-06-18 00:58:43.695888	97
523	8723548	http://www.intelligence.senate.gov/study2014/sscistudy1.pdf	US Senate Report of CIA Detention and Interrogation Program	2015-06-18 01:00:17.279237	2015-06-18 01:00:19.041287	52
510	8718414	https://stripe.com/blog/scaling-email-transparency	Scaling email transparency	2015-06-18 00:59:39.587394	2015-06-18 00:59:39.636413	2
517	8722418	http://meshedsociety.com/fighting-the-language-fragmentation/	After 7 years of blogging in German, I am switching to English. Here is why	2015-06-18 01:00:12.344387	2015-06-18 01:00:12.643937	12
501	8714846	http://www.nytimes.com/2014/12/08/opinion/we-cant-trust-uber.html	We Can't Trust Uber	2015-06-18 00:59:09.176221	2015-06-18 00:59:12.440231	119
508	8716717	http://www.ironhidegames.com/post.php?id=103	An Open Love Letter to Our PC Fans	2015-06-18 00:59:33.274085	2015-06-18 00:59:34.210868	18
514	8721475	http://www.spammimic.com/explain.shtml	SpamMimic: encode your message into something innocent-looking	2015-06-18 01:00:02.369281	2015-06-18 01:00:05.761967	109
520	8723120	http://artfulmac.com/features	Show HN: Artful for Mac	2015-06-18 01:00:15.506161	2015-06-18 01:00:16.275481	30
518	8722458	http://fr.slideshare.net/_TheFamily/paris-isback-indextf	#ParisIsBack – The Paris Tech Guide	2015-06-18 01:00:14.248514	2015-06-18 01:00:14.524976	12
519	8722303	http://monograph.io/eastcampus/2014-mit-east-campus-coaster	MIT students build a roller coaster in one week	2015-06-18 01:00:15.251832	2015-06-18 01:00:15.350786	4
513	8719977	http://paulgraham.com/pinch.html	The Fatal Pinch	2015-06-18 00:59:47.214667	2015-06-18 01:00:02.343526	478
526	8725225	http://wonderfulengineering.com/using-a-blender-this-guy-executes-the-coolest-but-most-illegal-diy-project-ever-brilliant/	Moss Graffiti	2015-06-18 01:00:25.923917	2015-06-18 01:00:26.370414	18
527	8725845	http://getskeleton.com	Skeleton 2.0 CSS Framework	2015-06-18 01:00:28.473403	2015-06-18 01:00:32.364501	113
525	8723693	http://www.markshuttleworth.com/archives/1434	Announcing Ubuntu Core, with snappy transactional updates	2015-06-18 01:00:19.066195	2015-06-18 01:00:28.435081	306
524	8723364	http://www.charlespetzold.com/blog/2014/12/The-Infamous-Windows-Hello-World-Program.html	The Infamous Windows “Hello World” Program	2015-06-18 01:00:17.440969	2015-06-18 01:00:17.80368	8
528	8726707	http://www.keurighack.com/	Keurig 2.0 DRM Bypass	2015-06-18 01:00:32.405066	2015-06-18 01:00:42.211756	351
530	8728011	http://blog.brokep.com/2014/12/09/the-pirate-bay-down-forever/http://blog.brokep.com/2014/12/09/the-pirate-bay-down-forever/	The pirate bay down forever (Peter Sunde's blog)	2015-06-18 01:00:43.594379	2015-06-18 01:00:57.451907	376
529	8727858	https://atlas.hashicorp.com	Atlas by Hashicorp	2015-06-18 01:00:42.237102	2015-06-18 01:00:43.571676	55
531	8728766	http://fezvrasta.github.io/bootstrap-material-design/	New Demo for Material Design for Bootstrap, It's Material	2015-06-18 01:00:54.869169	2015-06-18 01:00:55.902768	30
532	8729047	http://www.paperplanes.de/2014/12/10/from-open-to-minimum-vacation-policy.html	Travis CI: From Open to Minimum Vacation Policy	2015-06-18 01:00:57.478717	2015-06-18 01:01:05.174063	209
538	8733239	http://earth.nullschool.net/#2014/12/11/0900Z/wind/surface/level/orthographic=-115.81,34.51,1154	Bay Area Storm Watch	2015-06-18 01:01:25.283003	2015-06-18 01:01:25.315221	2
556	8740673	http://kreldjarn.github.io/TRON/	Classic arcade game TRON on a cloth modelling grid	2015-06-18 01:02:27.914526	2015-06-18 01:02:34.976387	233
543	8735892	http://github.com/matz/streem	Streem – a new programming language from Matz	2015-06-18 01:01:46.313598	2015-06-18 01:02:08.805899	555
548	8738646	http://www.nytimes.com/2014/12/12/upshot/the-rise-of-men-who-dont-work-and-what-they-do-instead.html	The Rise of Men Who Don’t Work – And What They Do Instead	2015-06-18 01:02:08.83828	2015-06-18 01:02:11.859015	102
535	8730156	https://docs.google.com/forms/d/1DqxkNi4GvyTCu54usSdE1DjW29zw1tc52iMeH3z4heg/viewform?c=0&w=1	Python 2.x vs. 3.x use survey	2015-06-18 01:01:06.193761	2015-06-18 01:01:06.625105	18
554	8739865	http://utcc.utoronto.ca/~cks/space/blog/linux/SystemdCrashAndMore	The bad side of systemd: two recent systemd failures	2015-06-18 01:02:23.177853	2015-06-18 01:02:23.359862	8
552	8739760	http://www.bbc.com/news/technology-30447565	Facebook thinking about 'dislike' function	2015-06-18 01:02:22.21262	2015-06-18 01:02:22.240483	2
534	8729714	http://elm-lang.org/blog/announce/0.14.elm	Elm 0.14 – Simpler Core, Better Tools	2015-06-18 01:01:05.404257	2015-06-18 01:01:05.793339	11
542	8735719	http://techcrunch.com/2014/12/11/ford-ditches-microsoft-for-qnx-in-latest-in-vehicle-tech-platform/	Ford Ditches Microsoft for QNX in Latest In-Vehicle Tech Platform	2015-06-18 01:01:45.845771	2015-06-18 01:01:46.288119	18
539	8733352	https://blog.golang.org/go1.4	Go 1.4 is released	2015-06-18 01:01:25.340349	2015-06-18 01:01:35.933151	384
570	8748362	http://www.brooklynvegan.com/archives/2014/12/skinny_puppy_de.html	Skinny Puppy demands $666,000 from U.S. govt for using their music in Guantanamo	2015-06-18 01:03:49.340221	2015-06-18 01:03:50.444632	44
564	8745334	http://www.digitalnewsasia.com/digital-economy/censorship-shadowy-forces-controlling-online-conversations	Censorship 2.0: Shadowy forces controlling online conversations	2015-06-18 01:03:08.563603	2015-06-18 01:03:15.819257	147
572	8748598	http://lxer.com/module/newswire/view/200317/	My Adventures with “4K” 2160p and Linux	2015-06-18 01:03:52.532742	2015-06-18 01:04:01.257561	299
558	8742486	http://techcrunch.com/2014/12/12/yahoo-starts-prompting-chrome-users-to-upgrade-to-firefox/	Yahoo Starts Prompting Chrome Users to “Upgrade” to Firefox	2015-06-18 01:02:35.220924	2015-06-18 01:02:37.642723	83
533	8730221	http://www.crainsdetroit.com/article/20141210/BLOG007/141219993/techstars-to-open-shop-in-detroit	Techstars to open up shop in Detroit	2015-06-18 01:01:05.214918	2015-06-18 01:01:07.211153	38
540	8734204	http://www.wired.co.uk/news/archive/2014-12/11/peter-sunde	Peter Sunde: 'I went to jail for my cause. What did you do?'	2015-06-18 01:01:35.957801	2015-06-18 01:01:41.283918	179
557	8742536	http://www.macworld.com/article/2858474/why-you-cant-get-4k-netflix-and-amazon-on-a-pc-or-mac-even-though-theyre-capable.html	Why you can't get 4K Netflix and Amazon	2015-06-18 01:02:35.006355	2015-06-18 01:02:35.195686	8
553	8739628	http://www.washingtonpost.com/news/the-intersect/wp/2014/12/10/you-can-take-down-pirate-bay-but-you-cant-kill-the-internet-it-created/	You can take down Pirate Bay, but you can’t kill the Internet it created	2015-06-18 01:02:22.265052	2015-06-18 01:02:22.823382	24
536	8730903	https://mail.mozilla.org/pipermail/firefox-dev/2014-December/002510.html	Firefox.html: Rebuilding Firefox UI in HTML	2015-06-18 01:01:07.241107	2015-06-18 01:01:20.228399	450
541	8734752	http://hockeyapp.net/blog/2014/12/11/hockeyapp-joins-microsoft.html	Microsoft acquires HockeyApp	2015-06-18 01:01:41.308243	2015-06-18 01:01:45.819501	145
544	8736975	https://www.schneier.com/blog/archives/2014/12/comments_on_the.html	Comments on the Sony Hack	2015-06-18 01:01:52.665991	2015-06-18 01:01:58.795878	185
537	8732859	http://googlepolicyeurope.blogspot.com/2014/12/an-update-on-google-news-in-spain.html?m=1	Google News to shut down in Spain	2015-06-18 01:01:20.256785	2015-06-18 01:01:25.257405	179
551	8739352	http://www.reuters.com/article/2014/12/12/us-russia-internet-google-idUSKBN0JQ03E20141212	Google to close engineering office in Russia	2015-06-18 01:02:19.350391	2015-06-18 01:02:23.155471	107
559	8742953	http://blog.rust-lang.org/2014/12/12/Core-Team.html	Yehuda Katz and Steve Klabnik Are Joining the Rust Core Team	2015-06-18 01:02:37.668537	2015-06-18 01:02:45.014655	253
550	8738939	http://www.realworldtech.com/forum/?threadid=146066&curpostid=146227	Linus: Parallel computing is a huge waste of everybody's time	2015-06-18 01:02:13.182901	2015-06-18 01:02:13.407671	10
545	8737559	https://www.hackerschool.com/blog/64-negative-comments	Negative comments	2015-06-18 01:01:58.147537	2015-06-18 01:01:58.173163	2
547	8738686	http://www.irisa.fr/celtique/zapalowicz/papers/asiacrypt2014.pdf	Attacks on ECDSA Signatures With Single-Bit Nonce Bias	2015-06-18 01:02:07.433869	2015-06-18 01:02:07.511639	4
565	8745540	http://www.onbeing.org/program/albert-einstein-the-negro-question-1946	Einstein: The Negro Question (1946)	2015-06-18 01:03:11.417738	2015-06-18 01:03:14.094584	90
546	8737349	http://pastes.archbsd.net/graphitemaster/15_line_hashtable	15-line hash table in C	2015-06-18 01:02:06.57551	2015-06-18 01:02:06.670423	4
561	8744527	http://mm.aftenposten.no/stortinget-og-statsministeren-overvakes/	Norway prime minister and parliament monitored by fake base stations MITM attack	2015-06-18 01:02:56.914597	2015-06-18 01:03:02.597447	191
560	8743635	https://www.chromium.org/Home/chromium-security/marking-http-as-non-secure	Marking HTTP as Non-Secure	2015-06-18 01:02:45.040424	2015-06-18 01:02:56.88444	410
549	8738869	http://tmsu.org/	TMSU is a tool for tagging your files	2015-06-18 01:02:11.884589	2015-06-18 01:02:19.310225	231
566	8745943	http://previous.alternative-system.com/	Previous: A NeXT emulator	2015-06-18 01:03:15.057259	2015-06-18 01:03:18.484163	95
563	8745267	https://air.mozilla.org/daala-are-we-compressed-yet/	Daala: Are We Compressed Yet?	2015-06-18 01:03:08.219273	2015-06-18 01:03:08.537395	12
567	8746101	http://www.madehow.com/	How Products Are Made	2015-06-18 01:03:18.51528	2015-06-18 01:03:26.050361	231
562	8744984	https://pdf.yt/d/E2ZwuLAVfC44kEQk	Using blockchain as C&C for botnets	2015-06-18 01:03:02.513068	2015-06-18 01:03:08.188343	183
569	8747053	http://imgur.com/gallery/hRf2trV	Was isolated from 1999 to 2006 with a 486. Built my own late 80s OS	2015-06-18 01:03:27.099295	2015-06-18 01:03:51.202471	792
574	8749942	https://github.com/GianlucaGuarini/es6-project-starter-kit	JavaScript ES6 universal starter kit	2015-06-18 01:04:06.029461	2015-06-18 01:04:08.731762	86
555	8740107	http://oldpiratebay.org/	The Old Pirate Bay	2015-06-18 01:02:23.384378	2015-06-18 01:02:27.885074	151
573	8749488	https://github.com/i2y/mochi	Mochi – Dynamically-typed language for functional and actor-style programming	2015-06-18 01:04:01.2786	2015-06-18 01:04:06.663885	183
568	8747057	https://github.com/Overv/vramfs	VRAMfs – VRAM based file system for Linux	2015-06-18 01:03:26.076904	2015-06-18 01:03:27.066572	30
571	8748378	https://github.com/vermiculus/sx.el/	Stack Exchange for Emacs	2015-06-18 01:03:51.233064	2015-06-18 01:03:52.50819	49
575	8749922	http://fivethirtyeight.com/features/why-we-dont-know-the-size-of-the-transgender-population/	Why We Don’t Know the Size of the Transgender Population	2015-06-18 01:04:06.28486	2015-06-18 01:04:06.41517	6
578	8750898	http://kukuruku.co/hub/rust/comparing-rust-and-cpp	Comparing Rust and C++	2015-06-18 01:04:18.08985	2015-06-18 01:04:20.315052	72
576	8750363	https://github.com/stripe/aws-go	An incredibly experimental, automatically generated set of AWS clients in Go	2015-06-18 01:04:08.760863	2015-06-18 01:04:16.231872	279
577	8750354	http://papl.cs.brown.edu/2014/	Programming and Programming Languages	2015-06-18 01:04:16.255135	2015-06-18 01:04:18.225633	69
590	8756710	https://www.eff.org/deeplinks/2014/12/federal-court-agrees-eff-throws-out-six-weeks-warrantless-video-surveillance	Federal Court Throws Out Six Weeks of Warrantless Video Surveillance	2015-06-18 01:05:06.063873	2015-06-18 01:05:10.463184	135
582	8751863	https://graemereynolds.wordpress.com/2014/12/14/hyphen-hate-when-amazon-went-to-war-against-punctuation/	Hyphen Hate? When Amazon went to war against punctuation	2015-06-18 01:04:28.881229	2015-06-18 01:04:33.553191	167
610	8765714	http://danluu.com/integer-overflow/	The Performance Cost of Integer Overflow Checking	2015-06-18 01:06:20.47813	2015-06-18 01:06:23.656224	116
604	8764706	http://www.bbc.co.uk/news/world-us-canada-30526406	If Sony Hack Wanted to Stop 'The Interview' Release, It Worked	2015-06-18 01:06:08.945065	2015-06-18 01:06:09.171472	10
597	8761539	http://yarchive.net/comp/linux/semaphores.html	Linus Torvalds on semaphores	2015-06-18 01:05:44.377825	2015-06-18 01:05:49.91638	196
581	8751754	http://www.nytimes.com/2014/12/16/business/international/france-says-it-will-ban-ubers-low-cost-service-in-new-year.html?_r=0	France Says It Will Ban Uber’s Low-Cost Service in New Year	2015-06-18 01:04:27.097673	2015-06-18 01:04:28.856652	69
594	8757630	https://bitcoin.org/en/developer-guide#block-chain	Bitcoin Developer Guide	2015-06-18 01:05:14.885188	2015-06-18 01:05:15.420428	22
592	8757229	https://developers.google.com/earth/	Google Earth API has been deprecated as of December 12th, 2014	2015-06-18 01:05:13.328964	2015-06-18 01:05:13.358213	2
611	8766215	http://marcrogers.org/2014/12/18/why-the-sony-hack-is-unlikely-to-be-the-work-of-north-korea/	Why the Sony hack is unlikely to be the work of North Korea	2015-06-18 01:06:23.679785	2015-06-18 01:06:33.093337	319
591	8756963	http://observer.com/2014/12/exclusive-new-york-mags-boy-genius-investor-made-it-all-up/	New York Magazine's Boy Genius Investor Made It All Up	2015-06-18 01:05:10.493718	2015-06-18 01:05:13.473621	107
593	8757734	https://www.djangoproject.com/weblog/2014/dec/15/announcing-django-website-redesign/	Announcing a redesign of the Django websites	2015-06-18 01:05:13.499864	2015-06-18 01:05:14.860871	46
598	8761789	http://homakov.blogspot.com/2014/12/blatant-csrf-in-doorkeeper-most-popular.html	Blatant CSRF in Doorkeeper, most popular OAuth2 gem	2015-06-18 01:05:49.945852	2015-06-18 01:05:54.678425	165
586	8753526	http://paulgraham.com/know.html	How You Know	2015-06-18 01:04:36.524798	2015-06-18 01:04:49.695773	461
602	8763475	http://azure.microsoft.com/blog/2014/12/17/final-root-cause-analysis-and-improvement-areas-nov-18-azure-storage-service-interruption/	Final Root Cause Analysis of Nov 18 Azure Service Interruption	2015-06-18 01:06:02.870456	2015-06-18 01:06:06.077998	108
579	8751170	https://blog.pinboard.in/2014/11/new_pricing_policy/	Pinboard's New Pricing Policy	2015-06-18 01:04:20.342927	2015-06-18 01:04:25.512572	175
587	8754036	http://www.gatesnotes.com/About-Bill-Gates/Year-in-Review-2014	Good News You May Have Missed in 2014	2015-06-18 01:04:49.722593	2015-06-18 01:04:50.825457	46
595	8758074	http://www.magicleap.com/#/blog	Neal Stephenson Joins Magic Leap	2015-06-18 01:05:15.443386	2015-06-18 01:05:19.569504	140
589	8756157	http://www.usebox.net/jjm/one-game-a-month/	Post mortem of my one game a month	2015-06-18 01:05:01.859625	2015-06-18 01:05:06.039529	153
588	8755521	http://xooyoozoo.github.io/yolo-octo-bugfixes/#soccer-players&webp=s&bpg=s	BPG Image Comparison	2015-06-18 01:04:50.84759	2015-06-18 01:05:01.834798	388
583	8752373	http://www.cs.virginia.edu/~gfx/papers/paper.php?paper_id=59	How GPUs Work	2015-06-18 01:04:33.605656	2015-06-18 01:04:36.324931	74
609	8765870	http://motherboard.vice.com/read/reaction-to-the-sony-hack-is-beyond-the-realm-of-stupid?utm_source=mbtwitter	Reaction to the Sony Hack Is 'Beyond the Realm of Stupid'	2015-06-18 01:06:17.826553	2015-06-18 01:06:19.453888	48
580	8751414	http://www.duetdisplay.com	Use your iDevice as an extra display for your Mac	2015-06-18 01:04:25.248794	2015-06-18 01:04:27.068145	64
596	8758915	http://www.drdobbs.com/240169421 	Farewell, Dr. Dobb's	2015-06-18 01:05:19.595686	2015-06-18 01:05:44.352426	757
585	8753174	http://ergoso.me/computer/science/github/software/evolutionary/couplings/2014/12/10/evsrc-evolutionary-couplings-reveal-poor-software-design.html	Evolutionary couplings between files reveal poor software design choices	2015-06-18 01:04:36.352403	2015-06-18 01:04:36.498248	6
584	8753027	http://fab.cba.mit.edu/classes/863.14/people/matthew_arbesfeld/2014/12/14/final-project/	DIY Sous-vide	2015-06-18 01:04:35.141601	2015-06-18 01:04:35.166862	2
600	8762626	http://www.berrebi.org/2012/11/07/the-email-i-received-from-google-in-2007-when-they-wanted-to-buy-zlio	The Google acquisition email I got	2015-06-18 01:05:57.456157	2015-06-18 01:06:00.216492	100
606	8764509	http://www.nytimes.com/2014/12/18/business/theater-chains-decline-to-show-sonys-the-interview-citing-threats-.html?partner=rss&emc=rss	Theater Chains Decline to Show Sony’s ‘The Interview,’ Citing Threats	2015-06-18 01:06:09.726022	2015-06-18 01:06:15.103411	129
599	8762219	http://dedis.cs.yale.edu/dissent/#	Dissent – anonymous group communication system resistant to traffic analysis	2015-06-18 01:05:54.712472	2015-06-18 01:05:57.429371	90
601	8762705	https://github.com/Kintaro/wtftw	A tiling window manager written in Rust	2015-06-18 01:06:00.24066	2015-06-18 01:06:02.845736	95
605	8764712	http://www.bloomberg.com/video/peter-thiel-i-m-on-the-human-growth-hormone-pill-JMrIsAq6RC~j2soBovyj4w.html	Peter Thiel: “I'm on human growth hormone”	2015-06-18 01:06:09.199507	2015-06-18 01:06:09.36168	8
615	8767231	http://www.happybootstrapper.com/2014/im-us-whatll-happen-just-ignore-eu-vat-changes/	“I’m in the US – what if I just ignore the EU VAT changes?”	2015-06-18 01:06:42.0249	2015-06-18 01:06:42.200173	8
603	8763942	http://seclists.org/oss-sec/2014/q4/1052	Linux kernel: multiple x86_64 vulnerabilities	2015-06-18 01:06:06.102991	2015-06-18 01:06:09.702927	113
607	8765027	http://www.nytimes.com/2014/12/18/world/asia/us-links-north-korea-to-sony-hacking.html	US Links North Korea to Sony Hacking	2015-06-18 01:06:10.01916	2015-06-18 01:06:11.699549	58
614	8767475	http://www.postgresql.org/about/news/1557/	PostgreSQL 9.4 Released	2015-06-18 01:06:38.540804	2015-06-18 01:06:47.335392	289
612	8766845	http://purde.net/2014/12/how-to-get-from-0-to-10000-paying-customers-in-saas/	How to get from 0 to 10,000 paying customers in SaaS	2015-06-18 01:06:33.118332	2015-06-18 01:06:37.052385	123
608	8765368	http://www.jonathanklein.net/2014/02/revisiting-cookieless-domain.html	Revisiting the “Cookieless Domain” Recommendation	2015-06-18 01:06:15.130611	2015-06-18 01:06:20.628416	143
616	8769239	http://www.washingtonpost.com/blogs/the-switch/wp/2014/12/18/german-researchers-discover-a-flaw-that-could-let-anyone-listen-to-your-cell-calls-and-read-your-texts/	German researchers discover flaw that could let anyone listen to cell calls	2015-06-18 01:06:47.359207	2015-06-18 01:06:47.955587	28
618	8771118	http://www.cs.cmu.edu/~tom/10701_sp11/	Machine Learning Course by Tom Mitchell	2015-06-18 01:07:07.48485	2015-06-18 01:07:17.4956	290
613	8767203	https://www.eff.org/press/releases/eff-court-argue-nsa-data-collection-internet-backbone-unconstitutional	EFF launches lawsuit against NSA	2015-06-18 01:06:37.083859	2015-06-18 01:06:38.720564	58
617	8769667	https://github.com/blog/1938-git-client-vulnerability-announced	Git client vulnerability announced	2015-06-18 01:06:47.984331	2015-06-18 01:07:21.207041	615
619	8771795	https://github.com/rust-lang/rust/commit/0efafac398ff7f28c5f0fe756c15b9008b3e0534	Rust runtime removal	2015-06-18 01:07:21.3486	2015-06-18 01:07:22.171367	33
620	8771925	http://nuitka.net/	Nuitka: a Python compiler	2015-06-18 01:07:22.205246	2015-06-18 01:07:29.330797	191
653	8783170	http://www.latimes.com/business/hiltzik/la-fi-mh-these-experts-still-dont-buy-20141221-column.html	These experts still don't buy the FBI claim that North Korea hacked Sony	2015-06-18 01:09:36.958319	2015-06-18 01:09:36.983992	2
621	8772775	http://www.bbc.com/future/story/20141219-will-religion-ever-disappear	Will religion ever disappear?	2015-06-18 01:07:28.632843	2015-06-18 01:07:28.874432	4
631	8776335	https://github.com/logicchains/LPATHBench/blob/master/writeup.md	ARMv7 vs. x86-64: Pathfinding benchmark of C++, D, Go, Nim, Ocaml, and more	2015-06-18 01:08:06.335831	2015-06-18 01:08:10.501231	118
632	8776618	https://groups.google.com/a/lists.stripe.com/forum/#!topic/api-discuss/x2VXdVdn66w	Stripe SQLite data exports beta	2015-06-18 01:08:10.876836	2015-06-18 01:08:14.898512	147
641	8778503	http://paulgraham.com/ecw.html	How to be an expert in a changing world (2014)	2015-06-18 01:08:28.613811	2015-06-18 01:08:48.286006	667
635	8776973	http://www.fool.com/investing/general/2014/12/20/us-deals-major-blow-to-chinese-solar-manufacturers.aspx	U.S. Deals Major Blow to Chinese Solar Panel Manufacturers	2015-06-18 01:08:14.960727	2015-06-18 01:08:14.982696	2
622	8772636	http://blog.appsdeck.eu/post/105609534953/graceful-server-restart-with-go	Graceful server restart with Go	2015-06-18 01:07:29.373799	2015-06-18 01:07:33.007309	66
624	8773097	http://www.wired.co.uk/news/archive/2014-12/19/elon-hyperloop	Elon Musk's hyperloop is making progress	2015-06-18 01:07:32.650749	2015-06-18 01:07:36.01143	88
657	8785894	http://blog.fastmail.com/2014/12/23/jmap-a-better-way-to-email/	JMAP – a better way to email	2015-06-18 01:09:53.319954	2015-06-18 01:09:54.718676	52
634	8776877	https://github.com/deanm/deanm.github.com/blob/master/_posts/2014-12-18-DuetDisplay.markdown	Inside DuetDisplay and Unattributed Open-Source	2015-06-18 01:08:14.918943	2015-06-18 01:08:16.073996	38
629	8774833	https://blog.torproject.org/blog/possible-upcoming-attempts-disable-tor-network	Possible upcoming attempts to disable the Tor network	2015-06-18 01:07:41.602855	2015-06-18 01:08:10.851325	620
625	8773341	http://support.ntp.org/bin/view/Main/SecurityNotice#Buffer_overflow_in_ctl_putdata	Multiple vulnerabilities released in NTP	2015-06-18 01:07:36.040631	2015-06-18 01:07:38.333833	64
628	8774623	http://www.scientificamerican.com/article/monkey-see-monkey-speak-video/	Scientists use language and logic to translate monkey sounds into English	2015-06-18 01:07:41.017163	2015-06-18 01:07:41.578451	18
648	8780675	http://www.sci-news.com/archaeology/science-viking-presence-arctic-canada-02349.html	Scientists Find Evidence of Viking Presence in Arctic Canada	2015-06-18 01:09:04.092383	2015-06-18 01:09:04.230698	6
647	8780313	https://lists.torproject.org/pipermail/tor-dev/2014-December/007999.html	Tribler "decentralized BitTorrent" software's crypto is completely broken	2015-06-18 01:08:59.656678	2015-06-18 01:09:05.014541	178
636	8776775	http://developerblog.redhat.com/2014/12/19/bootstrapping-power8-little-endian-and-common-pitfalls/	Bootstrapping POWER8 Little Endian and Common Pitfalls	2015-06-18 01:08:15.566943	2015-06-18 01:08:15.588804	2
626	8773778	http://motherboard.vice.com/read/the-dominant-life-form-in-the-cosmos-is-probably-superintelligent-robots	The dominant intelligence in the cosmos may be artificial	2015-06-18 01:07:36.440293	2015-06-18 01:07:36.523553	4
633	8776780	http://www.nytimes.com/2014/12/21/world/asia/north-korea-denying-sony-attack-proposes-joint-investigation-with-us.html	North Korea denies hacking Sony, wants joint investigation	2015-06-18 01:08:13.384344	2015-06-18 01:08:13.955623	30
637	8777195	http://m.bbc.com/news/business-30555620	Whistleblower reveals how fraud of Booking.com worked	2015-06-18 01:08:15.608325	2015-06-18 01:08:15.629632	2
640	8778238	http://article.gmane.org/gmane.os.openbsd.tech/40107/	Theo de Raadt comments on NTPd vs. openntpd	2015-06-18 01:08:27.901863	2015-06-18 01:08:28.582754	18
630	8776133	http://www.2600.com/?q=content/offer-sony-2600	An Offer to Sony from 2600	2015-06-18 01:08:00.738457	2015-06-18 01:08:06.878494	199
623	8773149	http://www.fbi.gov/news/pressrel/press-releases/update-on-sony-investigation	Update on Sony Investigation	2015-06-18 01:07:31.841416	2015-06-18 01:07:32.551447	20
645	8780153	http://www.bloomberg.com/news/2014-12-18/investor-peter-thiel-planning-to-live-120-years.html	Peter Thiel Planning to Live 120 Years	2015-06-18 01:08:57.84402	2015-06-18 01:08:58.080328	10
638	8777152	http://www.washingtonpost.com/news/morning-mix/wp/2014/12/19/half-of-dr-ozs-medical-advice-is-baseless-or-wrong-study-says/	Study: Half of Dr. Oz’s medical advice is baseless or wrong	2015-06-18 01:08:15.689677	2015-06-18 01:08:15.750026	4
627	8773472	https://training.kalzumeus.com/newsletters/archive/sales_automation	Systematizing Sales with Software and Processes	2015-06-18 01:07:38.03907	2015-06-18 01:07:40.99029	93
646	8780098	http://purelytheoretical.com/sywtltt.html	So you want to learn type theory	2015-06-18 01:08:58.16062	2015-06-18 01:08:59.632195	51
642	8779517	https://github.com/threedaymonk/text/issues/21#issuecomment-67752327	“I am not authorizing you to release a Ruby port of Metaphone 3”	2015-06-18 01:08:48.311776	2015-06-18 01:08:55.433487	247
643	8779799	http://alexpotato.com/blog/why-switching-jobs-is-almost-always-a-good-idea/	Why switching jobs is almost always a good idea	2015-06-18 01:08:55.460824	2015-06-18 01:08:55.494293	2
639	8777226	http://nknetobserver.github.io	Your Friendly North Korean Network Observer	2015-06-18 01:08:16.103055	2015-06-18 01:08:28.177016	397
644	8779696	https://trmm.net/EFI	EFI Firmware Security	2015-06-18 01:08:55.519155	2015-06-18 01:08:58.13657	84
658	8786079	http://dcg.ethz.ch/lectures/podc_allstars/	Principles of Distributed Computing	2015-06-18 01:09:55.998279	2015-06-18 01:10:04.228293	254
649	8780820	http://article.gmane.org/gmane.network.tor.user/34619	Possible Tor Network Compromise	2015-06-18 01:09:05.038819	2015-06-18 01:09:24.694015	652
654	8783466	https://codeascraft.com/2014/12/22/engineering-rotation/	We Invite Everyone at Etsy to Do an Engineering Rotation: Here’s Why	2015-06-18 01:09:38.236103	2015-06-18 01:09:44.093255	159
651	8782667	http://blog.baia-network.org/baiablog/2014/12/salvatore-sanfilippo-from-sicily-redis.html	Salvatore Sanfilippo, the author of Redis: from Sicily with talent and passion	2015-06-18 01:09:33.35914	2015-06-18 01:09:38.215782	111
652	8782890	https://www.wired.com/2014/12/mathematicians-make-major-discovery-prime-numbers/	Mathematicians Make a Major Discovery About Prime Numbers	2015-06-18 01:09:35.206592	2015-06-18 01:09:36.935988	74
650	8782295	http://journal.stuffwithstuff.com/2014/12/21/rooms-and-mazes/	Rooms and Mazes: A Procedural Dungeon Generator	2015-06-18 01:09:24.725732	2015-06-18 01:09:33.326425	257
656	8784514	http://www.nytimes.com/2014/12/23/world/asia/attack-is-suspected-as-north-korean-internet-collapses.html	Attack Is Suspected as North Korean Internet Collapses	2015-06-18 01:09:45.962368	2015-06-18 01:09:52.972832	227
655	8784325	http://www.kalzumeus.com/2014/12/22/kalzumeus-software-year-in-review-2014/	Kalzumeus Software Year in Review 2014	2015-06-18 01:09:44.122935	2015-06-18 01:09:55.969238	109
660	8786930	http://www.kcna.co.jp/item/2014/201412/news21/20141221-14ee.html	North Korea's Official Statement	2015-06-18 01:10:05.287531	2015-06-18 01:10:06.951874	48
662	8787218	http://www.bbc.co.uk/news/health-30574260	Backlit e-readers 'damage sleep and health'	2015-06-18 01:10:11.363405	2015-06-18 01:10:11.5888	10
661	8787094	https://www.youtube.com/watch?v=hU-T0ht2OdQ	An Artificial Biological Leaf [video]	2015-06-18 01:10:08.143893	2015-06-18 01:10:11.337935	101
659	8786213	http://nikic.github.io/2014/12/22/PHPs-new-hashtable-implementation.html	PHP 7's new hashtable implementation	2015-06-18 01:10:04.257865	2015-06-18 01:10:15.443098	207
690	8797048	http://www.nytimes.com/2014/12/25/world/europe/naples-suspended-coffee.html	In Naples, Gift of Coffee to Strangers Never Seen	2015-06-18 01:11:59.124311	2015-06-18 01:12:00.004544	25
683	8795945	https://www.ruby-lang.org/en/news/2014/12/25/ruby-2-2-0-released/	Ruby 2.2.0 Released	2015-06-18 01:11:39.801561	2015-06-18 01:11:48.652513	277
664	8787733	https://startupfighter.com	Show HN: Startup Fighter	2015-06-18 01:10:16.454068	2015-06-18 01:10:19.181726	81
698	8799734	http://gizmodo.com/hackers-who-shut-down-psn-and-xbox-live-now-attacking-t-1675331908	Hackers Who Shut Down PSN and Xbox Live Now Attacking Tor	2015-06-18 01:12:43.325448	2015-06-18 01:12:51.337722	229
682	8795745	http://gpfault.net/posts/intrusive-lists-doom3.txt.html	Intrusive lists in Doom 3	2015-06-18 01:11:35.182049	2015-06-18 01:11:51.23213	165
700	8801058	https://www.sqlite.org/intern-v-extern-blob.html	SQLite: store a file in a database or in a filesystem?	2015-06-18 01:12:53.601769	2015-06-18 01:12:54.015311	8
675	8793289	http://www.starbucks.com/card/manage/history	Starbucks.com isn't https and asks for credit card # to retrieve payment history	2015-06-18 01:11:07.43925	2015-06-18 01:11:07.549197	6
688	8796212	http://cacm.acm.org/magazines/2015/1/181633-the-tears-of-donald-knuth/fulltext	The Tears of Donald Knuth	2015-06-18 01:11:52.674785	2015-06-18 01:11:59.100224	196
681	8795031	http://dealbook.nytimes.com/2014/12/19/a-great-place-to-work-cant-be-found-on-lists/	Why the ‘Best Places to Work’ Often Aren’t	2015-06-18 01:11:24.412182	2015-06-18 01:11:24.727359	8
673	8792565	http://www.bloomberg.com/news/2014-12-24/uber-ceo-indicted-in-south-korea-over-its-taxi-service.html	Uber CEO Indicted in South Korea Over Its Taxi Service	2015-06-18 01:11:00.891577	2015-06-18 01:11:04.690476	129
665	8788016	https://www.ece.cmu.edu/~safari/pubs/kim-isca14.pdf	Flipping bits in memory without accessing them [pdf]	2015-06-18 01:10:19.215774	2015-06-18 01:10:24.507029	177
677	8793346	http://accidentalscientist.com/2014/12/why-movies-look-weird-at-48fps-and-games-are-better-at-60fps-and-the-uncanny-valley.html?	Why movies look weird at 48fps, and games are better at 60fps	2015-06-18 01:11:08.113443	2015-06-18 01:11:24.093414	355
703	8802138	http://streaming.media.ccc.de/saal1/	Video Stream of Saal 1 for Chaos Computer Congress (31c3)	2015-06-18 01:13:09.670173	2015-06-18 01:13:17.118927	227
668	8789329	http://publicdomainreview.org/collections/class-of-2015/	Writers who will be entering the public domain in 2015 in many countries	2015-06-18 01:10:28.361638	2015-06-18 01:10:33.26696	161
674	8792862	http://www.bloomberg.com/news/2014-12-22/coca-cola-disconnects-voice-mail-at-headquarters.html	Coca-Cola Disconnects Voice Mail at Headquarters	2015-06-18 01:11:04.714727	2015-06-18 01:11:07.726249	104
678	8793575	http://googleblog.blogspot.com/2014/12/the-interview-now-available-on-google.html	“The Interview” Now Available on Google Play and YouTube Movies	2015-06-18 01:11:09.215582	2015-06-18 01:11:09.362943	8
689	8796819	http://www.businessweek.com/news/2014-12-24/spy-agency-to-release-reports-documenting-surveillance-errors	NSA Reports Improper Surveillance of Americans	2015-06-18 01:11:58.608756	2015-06-18 01:11:58.83743	10
663	8787414	http://www.slideshare.net/kaigai/gpgpu-accelerates-postgresql	GPGPU Accelerates PostgreSQL	2015-06-18 01:10:15.466705	2015-06-18 01:10:16.427167	36
685	8796307	https://canary.silentcircle.com/	Silent Circle's Warrant Canary is out of date	2015-06-18 01:11:49.066543	2015-06-18 01:11:50.605184	44
671	8791056	https://www.mozilla.org/en-US/research/projects/	Mozilla Research Projects	2015-06-18 01:10:41.531287	2015-06-18 01:11:00.834164	580
672	8791935	http://www.cs.cmu.edu/~dga/15-440/F12/syllabus.html	Distributed Systems in Go – CMU Course	2015-06-18 01:10:55.027402	2015-06-18 01:10:55.837877	6
686	8796150	http://windows-internals.com/source/files.html	Windows 10 Technical Preview Source Tree	2015-06-18 01:11:50.647559	2015-06-18 01:11:50.693791	2
666	8788770	https://titanous.com/posts/docker-insecurity	Docker Image Insecurity	2015-06-18 01:10:24.533038	2015-06-18 01:10:27.974525	116
676	8793266	http://turfjs.org/	Turf – A modular GIS engine written in JavaScript	2015-06-18 01:11:07.879758	2015-06-18 01:11:08.085501	8
684	8796182	http://www.devbattles.com/en/sand/post-490-Why+India+outsourcing+is+Doomed	Why India outsourcing is doomed	2015-06-18 01:11:48.681229	2015-06-18 01:11:49.042505	14
679	8794319	http://chipworksrealchips.blogspot.com/2014/02/intels-e-dram-shows-up-in-wild.html	Intel’s e-DRAM Shows Up in the Wild	2015-06-18 01:11:16.243134	2015-06-18 01:11:21.298439	181
667	8788970	http://mmodm.co/	Massively Multiplayer Online Drum Machine	2015-06-18 01:10:28.156092	2015-06-18 01:10:28.33103	6
670	8790468	https://people.xiph.org/~xiphmont/demo/daala/update1.shtml	Daala progress update	2015-06-18 01:10:34.762567	2015-06-18 01:10:41.511548	253
691	8797155	http://blog.kazuhooku.com/2014/12/ann-initial-release-of-h2o-and-why.html	Show HN: Initial release of H2O, and why HTTPD performance will matter in 2015	2015-06-18 01:12:00.030161	2015-06-18 01:12:07.213009	247
687	8796305	http://techcrunch.com/2014/12/06/a-bitcoin-battle-is-brewing/	A Bitcoin battle is brewing	2015-06-18 01:11:51.26081	2015-06-18 01:11:52.649536	52
699	8800727	https://training.kalzumeus.com/newsletters/archive/enterprise_sales	Selling to the Fortune 500, Government, and Other Lovecraftian Horrors	2015-06-18 01:12:52.412546	2015-06-18 01:13:01.508453	302
695	8798960	http://torrentfreak.com/kim-dotcom-stops-xbox-and-playstation-attacks-141226/	Kim “Santa” Dotcom Stops Xbox and Playstation Attacks	2015-06-18 01:12:35.952606	2015-06-18 01:12:36.388679	18
697	8799572	http://paulgraham.com/95.html	Let the Other 95% of Great Programmers In	2015-06-18 01:12:40.703752	2015-06-18 01:12:41.737313	26
692	8797519	http://www.daemonology.net/blog/2014-12-25-when-security-goes-right.html	When security goes right	2015-06-18 01:12:07.237881	2015-06-18 01:12:17.277372	313
680	8794588	http://woodgears.ca/jenga_pistol/	Jenga Pistol	2015-06-18 01:11:24.11359	2015-06-18 01:11:35.158455	374
694	8798937	https://www.standupmail.com/#	StandupMail: Keep your team up-to-date	2015-06-18 01:12:35.58984	2015-06-18 01:12:35.928381	14
706	8803118	https://code.google.com/p/android/issues/list?can=1&q=status:Obsolete&sort=-stars	Someone silently closed 37% (19/52) of Android bugs with 500+ stars on Dec 25th	2015-06-18 01:13:26.800552	2015-06-18 01:13:28.678164	42
696	8799070	http://libcello.org/	Cello – Higher Level Programming in C	2015-06-18 01:12:37.823235	2015-06-18 01:12:52.384331	165
693	8798202	http://dis.4chan.org/read/prog/1295544154/	Sleep sort (2011)	2015-06-18 01:12:17.307787	2015-06-18 01:12:37.79702	589
701	8801616	https://medium.com/dome-kit/slow-flexible-cheap-5598ca91fb38	Slow, flexible and cheap: Six years of development to create a rubber hexagon	2015-06-18 01:13:01.531423	2015-06-18 01:13:08.226323	223
705	8802454	https://github.com/Dobiasd/articles/blob/master/programming_language_learning_curves.md	Learning Curves for Different Programming Languages	2015-06-18 01:13:21.996546	2015-06-18 01:13:22.99485	28
702	8801997	https://github.com/fukamachi/woo	Woo: Blazing Fast HTTP Server in Common Lisp	2015-06-18 01:13:07.868876	2015-06-18 01:13:09.639224	38
704	8802424	http://www.extremetech.com/computing/182428-ironic-iframes-adblock-plus-is-probably-the-reason-firefox-and-chrome-are-such-memory-hogs	Adblock+ is probably the reason Firefox and Chrome are such memory hogs	2015-06-18 01:13:17.142683	2015-06-18 01:13:37.451587	459
963	8932095	http://www.gothamair.com/	Gotham Air: Manhattan to JFK in 6 minutes for $99	2015-06-22 03:51:12.933238	2015-06-22 03:51:20.207341	252
735	8815065	http://www.washingtonpost.com/posteverything/wp/2014/12/30/google-got-it-wrong-the-open-office-trend-is-destroying-the-workplace/?tid=sm_fb	Google got it wrong. The open-office trend is destroying the workplace	2015-06-18 01:15:47.970484	2015-06-18 01:15:49.948796	60
717	8808490	http://www.theatlantic.com/magazine/archive/2015/01/does-global-warming-make-me-look-fat/383509/?single_page=true	The Benefits of Being Cold	2015-06-18 01:14:36.933119	2015-06-18 01:14:49.31423	295
718	8808907	http://updateyourfooter.com/	It's Almost 2015. Update Your Footer	2015-06-18 01:14:44.505195	2015-06-18 01:14:45.431839	30
724	8810235	http://www.wired.com/2014/12/finney-swat/	An Extortionist Has Been Making Life Hell for Bitcoin’s Earliest Adopters	2015-06-18 01:15:03.980104	2015-06-18 01:15:04.444417	21
733	8814253	http://jacquesmattheij.com/saving-a-project-and-a-company	Saving a Project and a Company – Jacques Mattheij	2015-06-18 01:15:44.176502	2015-06-18 01:15:55.022729	223
726	8810857	http://lofibucket.com/articles/oscilloscope_quake.html	Quake on an oscilloscope	2015-06-18 01:15:05.996023	2015-06-18 01:15:19.207955	422
711	8806394	http://www.dw.de/german-defense-minister-von-der-leyens-fingerprint-copied-by-chaos-computer-club/a-18154832	German Defense Minister von Der Leyen Fingerprint Copied by Chaos Computer Club	2015-06-18 01:14:09.494104	2015-06-18 01:14:11.193849	42
719	8809215	http://nim-lang.org/news.html#Z2014-12-29-version-0-10-2-released	Nim (formerly Nimrod) 0.10.2 released	2015-06-18 01:14:49.342346	2015-06-18 01:14:59.140588	208
721	8809551	http://www.bbc.com/news/technology-30623611	Politician's fingerprint 'cloned from photos' by hacker	2015-06-18 01:14:59.180387	2015-06-18 01:15:00.787247	32
714	8807040	http://calendar.perfplanet.com/2014/mozjpeg-3-0/	MozJPEG 3.0	2015-06-18 01:14:18.226966	2015-06-18 01:14:20.595185	66
709	8804934	http://techcrunch.com/2014/12/27/on-immigration-engineers-simply-dont-trust-vcs/	On Immigration, Engineers Simply Don’t Trust VCs	2015-06-18 01:13:46.05797	2015-06-18 01:13:49.162733	96
727	8812242	http://www.tennessean.com/story/news/local/davidson/2014/12/26/nashville-police-chief-shares-message-responds-to-questions/20914171/	Nashville police chief shares message, responds to questions	2015-06-18 01:15:19.238381	2015-06-18 01:15:25.532781	211
745	8819547	http://techcrunch.com/2014/12/31/tesla-is-working-on-robotic-snakes-that-emerge-from-the-wall-to-charge-your-car/	Tesla Is Working on Robotic Snakes That Emerge from the Wall to Charge Your Car	2015-06-18 01:20:40.133596	2015-06-18 01:20:40.531986	20
729	8813343	http://fox13now.com/2014/12/29/united-airlines-sues-22-year-old-who-found-method-for-buying-cheaper-plane-tickets/	United Airlines sues hidden-city ticketing search site	2015-06-18 01:15:29.740886	2015-06-18 01:15:30.999987	42
722	8810058	http://www.tedunangst.com/flak/post/some-gripes-about-nacl	Some gripes about nacl	2015-06-18 01:15:00.824349	2015-06-18 01:15:02.211521	34
708	8804127	http://talkingpointsmemo.com/ts/kfc-christmas-in-japan-colonel-sanders-history-12-23-2014	How Colonel Sanders Became Father Christmas in Japan	2015-06-18 01:13:37.474738	2015-06-18 01:13:46.033501	241
715	8807318	http://www.spiegel.de/international/germany/inside-the-nsa-s-war-on-internet-security-a-1010361.html	Inside the NSA's War on Internet Security	2015-06-18 01:14:20.623135	2015-06-18 01:14:36.001029	435
746	8819848	http://przemekmroczek.com/post/106717411075/5-killer-ruby-talks-of-2014	Ruby talks of 2014	2015-06-18 01:20:41.283175	2015-06-18 01:20:42.768699	64
720	8809477	http://hack.ernews.info/	Show HN: New HackerNews web client	2015-06-18 01:14:54.840963	2015-06-18 01:14:57.943706	95
723	8810366	https://srsly.de	VNC Roulette	2015-06-18 01:15:02.250591	2015-06-18 01:15:03.952755	46
716	8808453	http://ains.co/blog/things-which-arent-magic-flask-part-1.html	Things which aren't magic – Flask and app.route	2015-06-18 01:14:36.025514	2015-06-18 01:14:36.894911	31
707	8803245	http://bigqueri.es/t/1mb-of-http-overhead-due-to-towerdata-cookies/479	1MB+ of HTTP overhead due to TowerData cookies	2015-06-18 01:13:28.978406	2015-06-18 01:13:30.173982	40
712	8806146	https://kenneth.io/blog/2014/12/28/taking-chrome-devtools-outside-the-browser/	Chrome DevTools outside of the browser	2015-06-18 01:14:11.224768	2015-06-18 01:14:13.03151	50
725	8810382	http://www.shubhro.com/2014/12/27/software-engineers-should-write/	Software engineers should write	2015-06-18 01:15:04.466141	2015-06-18 01:15:05.800994	38
738	8815734	http://youtube.com/watch?v=7agl-sNLXMI	Veteran's Hospital LSD Testing (1956) [video]	2015-06-18 01:16:06.026192	2015-06-18 01:16:08.398328	63
713	8806835	http://harry.me/blog/2014/12/27/neat-algorithms-paxos/?hn=1	Neat Algorithms: Paxos	2015-06-18 01:14:13.066819	2015-06-18 01:14:18.195004	125
748	8821015	http://rubini.us/2014/12/31/matz-s-ruby-developers-don-t-use-rubyspec/	Matz's Ruby Developers Don't Use RubySpec and It's Hurting Ruby	2015-06-18 01:20:50.719971	2015-06-18 01:20:50.791989	4
734	8814920	http://m.bbc.com/news/technology-30634144	Travel firms sue creator of cheap airfare site	2015-06-18 01:15:47.419551	2015-06-18 01:15:47.903756	22
732	8814202	http://crufter.com/2014/12/01/everyday-hassles-in-go/	Everyday hassles in Go	2015-06-18 01:15:40.191504	2015-06-18 01:15:44.152488	119
730	8813867	http://www.hashtagstartup.co/	Show HN: #Startup – A global startup community, on Slack	2015-06-18 01:15:33.734132	2015-06-18 01:15:36.154116	46
731	8813883	http://ifixit.org/blog/6882/why-i-drilled-holes-in-my-macbook-pro-and-put-it-in-the-oven/	Why I Drilled Holes in My MacBook Pro and Put It in the Oven	2015-06-18 01:15:36.450453	2015-06-18 01:15:40.147791	98
710	8805053	http://looknohands.me/	Look, no hands	2015-06-18 01:13:49.195938	2015-06-18 01:14:09.459632	684
918	8904208	http://marktarver.com/bipolar.html	The Bipolar Lisp Programmer	2015-06-22 03:47:36.801027	2015-06-22 03:47:38.8919	79
744	8819350	http://www.economist.com/blogs/economist-explains/2014/02/economist-explains-16?fsrc=scn/fb/te/bl/ed/whyswedenhassofewroaddeaths	Why Sweden Has So Few Road Deaths	2015-06-18 01:20:38.81323	2015-06-18 01:20:38.998198	10
739	8818035	https://jordan-wright.github.io/blog/2014/12/30/why-deleting-sensitive-information-from-github-doesnt-save-you/	Why Deleting Sensitive Information from GitHub Doesn't Save You	2015-06-18 01:16:10.900638	2015-06-18 01:16:23.368322	390
728	8813208	http://nshipster.com/the-death-of-cocoa/	The Death of Cocoa	2015-06-18 01:15:25.4421	2015-06-18 01:15:36.418682	243
737	8817299	http://www.devfactor.net/2014/12/30/2375-amazon-mistake/	My $2350 Amazon S3 Mistake	2015-06-18 01:16:04.054185	2015-06-18 01:16:05.898563	66
741	8818878	http://phys.org/news/2014-10-solar-power-material-percent-captured.html	New solar power material converts 90 percent of captured light into heat	2015-06-18 01:16:27.119919	2015-06-18 01:20:37.545142	81
736	8816056	http://blog.wikimedia.org/2014/12/29/how-we-made-editing-wikipedia-twice-as-fast/	How Wikipedia used PHP's HHVM to cut load time in half	2015-06-18 01:15:55.049954	2015-06-18 01:16:10.875968	355
740	8818757	http://lists.science.uu.nl/pipermail/nix-dev/2014-December/015411.html	NixOS 14.12 released	2015-06-18 01:16:23.277029	2015-06-18 01:16:27.080074	148
742	8819115	http://staltz.com/dont-react/#/	Don't React (Presentation - Use arrows to navigate)	2015-06-18 01:20:37.006861	2015-06-18 01:20:37.277789	8
743	8819108	http://blogs.perl.org/users/neilb/2014/12/take-the-2015-cpan-pull-request-challenge.html	The CPAN Pull Request Challenge	2015-06-18 01:20:37.565498	2015-06-18 01:20:41.263899	126
747	8820178	https://www.techdirt.com/articles/20141231/02075529554/indian-government-orders-32-web-sites-blocked-including-github-archiveorg-pastebin-dailymotion-vimeo.shtml	India Orders 32 Websites Blocked, Including GitHub, Archive.Org, Pastebin	2015-06-18 01:20:42.79213	2015-06-18 01:21:10.352531	907
755	8824656	http://qz.com/287876/this-is-why-people-leave-your-company/	This is why people leave your company	2015-06-18 01:21:33.84699	2015-06-18 01:21:34.501591	28
750	8822387	https://code.google.com/p/android/issues/detail?id=41626	Two-year-old Nexus 4 issue status changed to Obsolete	2015-06-18 01:21:10.374294	2015-06-18 01:21:12.950071	100
759	8825375	https://news.vice.com/article/best-of-vice-news-2014-this-may-be-the-most-dangerous-and-most-costly-photo-in-japan	A Dangerous and Costly Photo in Japan	2015-06-18 01:21:45.046882	2015-06-18 01:21:49.136957	123
791	8835776	http://falconframework.org/	Falcon is a high-performance Python Web framework	2015-06-22 03:38:48.82213	2015-06-22 03:38:49.784702	40
772	8829111	http://indie.vc/	Indie.vc	2015-06-22 03:37:31.437866	2015-06-22 03:37:43.559073	329
757	8823938	http://daniel-lundin.github.io/snabbt.js/cards.html	Show HN: Snabbt.js – a minimalistic animation library	2015-06-18 01:21:40.503798	2015-06-18 01:21:45.022486	92
758	8825308	https://github.com/lukasz-madon/awesome-remote-job/	Show HN: A curated list of remote jobs	2015-06-18 01:21:40.611981	2015-06-18 01:21:43.557485	100
770	8828305	https://github.com/github/hub#2x	GitHub's “hub” CLI tool rewritten in Golang	2015-06-22 03:37:25.567239	2015-06-22 03:37:25.709711	4
752	8822816	http://hookrace.net/blog/what-is-special-about-nim/	What is special about Nim?	2015-06-18 01:21:17.115585	2015-06-18 01:21:21.743495	130
784	8833527	https://blog.haschek.at/post/fd9bc	Why are free proxies free?	2015-06-22 03:38:24.845291	2015-06-22 03:38:25.848083	40
765	8827063	http://nautil.us/blog/how-a-kids-cartoon-created-an-real_life-invasive-army	How a Kids’ Cartoon Created a Racoon Invasion in Japan (2013)	2015-06-18 01:22:03.261777	2015-06-18 01:22:03.392643	6
754	8824282	https://archive.org/donate/?1	One day left to help Internet Archive reach its donation goal	2015-06-18 01:21:30.513526	2015-06-18 01:21:33.822239	119
767	8827600	http://stuartsierra.com/2015/01/02/clojure-2014-year-in-review	Clojure 2014 Year in Review	2015-06-18 01:22:05.354167	2015-06-22 03:37:29.882961	144
774	8830292	http://178.175.135.122/	The Pirate Bay is now counting DOWN	2015-06-22 03:37:49.166507	2015-06-22 03:37:55.480658	227
749	8821925	http://boingboing.net/2014/12/26/war-on-general-purpose-compute.html	War on General Purpose Computers is the difference between utopia and dystopia	2015-06-18 01:20:59.972421	2015-06-18 01:21:00.667885	22
773	8829840	http://www.stripes.com/news/pacific/korea/slaves-endure-a-living-hell-on-remote-south-korean-islands-1.322052	Slaves endure 'a living hell' on remote South Korean islands	2015-06-22 03:37:40.667437	2015-06-22 03:37:49.132072	237
777	8830903	http://rationality.org/checklist/	Checklist of Rationality Habits	2015-06-22 03:38:00.194706	2015-06-22 03:38:01.258503	10
763	8826762	https://blog.wearewizards.io/how-to-build-a-simple-imageprimary-colour-similarity-database	How to build a simple image/primary-colour similarity database	2015-06-18 01:22:01.220725	2015-06-18 01:22:03.572965	64
762	8826890	http://crastina.se/theres-no-projects-like-side-projects/	There are no projects like side projects	2015-06-18 01:22:00.153757	2015-06-18 01:22:01.199244	45
753	8823085	http://ultrakeet.com.au/write-ups/microcontrollers-not-allowed	Microcontrollers Not ALLOWED (or how to troll your college instructor)	2015-06-18 01:21:21.772383	2015-06-18 01:21:35.010137	357
751	8822515	http://darkmail.info/home.html	Email 3.0	2015-06-18 01:21:13.00421	2015-06-18 01:21:17.092669	159
781	8831739	http://www.telegraph.co.uk/news/uknews/10878625/Fasting-for-three-days-can-regenerate-entire-immune-system-study-finds.html	Fasting for three days can regenerate entire immune system, study finds	2015-06-22 03:38:05.930151	2015-06-22 03:38:16.507092	389
760	8826024	http://movingfast.io/articles/environment-variables-considered-harmful/	Environment Variables Considered Harmful for Your Secrets	2015-06-18 01:21:49.16195	2015-06-18 01:21:57.39098	291
756	8824789	http://lists.w3.org/Archives/Public/ietf-http-wg/2014OctDec/0982.html	Last Call: HTTP2	2015-06-18 01:21:35.033018	2015-06-18 01:21:40.474294	207
764	8827198	http://blogs.law.harvard.edu/philg/2015/01/02/immigration-to-increase-the-supply-of-programmers/	Immigration to increase the supply of programmers	2015-06-18 01:22:02.765602	2015-06-18 01:22:03.242559	22
776	8830663	http://media.ccc.de/browse/congress/2014/31c3_-_6123_-_en_-_saal_1_-_201412291130_-_freedom_in_your_computer_and_in_the_net_-_richard_stallman.html#video	31c3: Freedom in your computer and in the net	2015-06-22 03:37:56.473983	2015-06-22 03:38:01.762345	203
769	8828155	http://grantland.com/features/2014-hollywood-blockbusters-franchises-box-office/	Hollywood's toxic addiction to franchises	2015-06-18 01:22:07.535553	2015-06-22 03:37:25.529128	22
771	8828866	https://github.com/freebsd/pkg/pull/1113	Baseline Mac OS X Support merged into FreeBSD pkg manager	2015-06-22 03:37:29.483718	2015-06-22 03:37:31.413564	58
775	8830363	http://article.gmane.org/gmane.comp.lib.boost.devel/256220	C++ Filesystem TS has been unanimously approved by ISO	2015-06-22 03:37:55.500946	2015-06-22 03:37:56.452446	40
761	8826659	http://www.chrisbaglieri.com/blog/2015/1/1/my-resume-is-fiction	My Resume Is Total Fiction	2015-06-18 01:21:57.417374	2015-06-18 01:22:00.127063	106
787	8834983	http://www.theverge.com/2015/1/4/7488495/facebook-is-the-new-aol	Facebook is the new AOL	2015-06-22 03:38:39.885062	2015-06-22 03:38:39.973941	4
783	8833310	http://homing-on-code.blogspot.com/2015/01/code-rot-openbsd.html	Code rot and OpenBSD (Why I picked OpenBSD)	2015-06-22 03:38:21.760224	2015-06-22 03:38:24.820384	129
766	8826689	http://lists.suckless.org/dev/1409/23497.html	Design of a Vim-like text editor	2015-06-18 01:22:03.599822	2015-06-18 01:22:05.332926	70
779	8831172	https://code.google.com/p/xee/source/browse/XeePhotoshopLoader.m?r=f16763d221dfca6253983824b470adf553a19e06#108	PSD is a shitty format	2015-06-22 03:38:02.051255	2015-06-22 03:38:02.074985	2
780	8831334	https://developers.google.com/accounts/docs/OpenID#shutdown-timetable	Google is shutting down OpenID 2.0	2015-06-22 03:38:02.503251	2015-06-22 03:38:05.903484	131
768	8827908	http://www.joshbarczak.com/blog/?p=580	Stop Misquoting Donald Knuth	2015-06-18 01:22:05.605534	2015-06-18 01:22:06.96279	49
778	8830811	http://www.radicalresearch.co.uk/lab/hstssupercookies/	HSTS Super Cookies	2015-06-22 03:38:01.790819	2015-06-22 03:38:02.476539	28
785	8833772	http://www.alexrad.me/discourse/why-rosyna-cant-take-a-movie-screenshot.html	Why Rosyna Can't Take a Movie Screenshot	2015-06-22 03:38:25.875199	2015-06-22 03:38:36.955266	434
786	8834595	https://github.com/sophron/wifiphisher	Wifiphisher: Fast automated phishing attacks against WPA networks	2015-06-22 03:38:36.977297	2015-06-22 03:38:44.573289	249
788	8835110	https://medium.com/matter/how-britain-exported-next-generation-surveillance-d15b5801b79e	How Britain Exported Next-Generation Surveillance	2015-06-22 03:38:43.907338	2015-06-22 03:38:44.268389	16
790	8835594	http://www.nytimes.com/2015/01/04/opinion/sunday/brazen-attempts-by-hotels-to-block-wi-fi.html?rref=opinion&module=Ribbon&version=context&region=Header&action=click&contentCollection=Opinion&pgtype=article	Brazen Attempts by Hotels to Block Wi-Fi	2015-06-22 03:38:45.791925	2015-06-22 03:38:46.175204	16
789	8835564	http://www.cgi-node.org/home	Replace PHP with JavaScript Using Node.js	2015-06-22 03:38:44.598825	2015-06-22 03:38:48.800285	139
792	8836095	http://www.antimon.org/code/Linus/	An Introduction to Programming C-64 Demos	2015-06-22 03:38:49.810119	2015-06-22 03:38:53.930589	134
1357	9141701	https://freakattack.com/	The Freak Attack SSL/TLS Vulnerability	2015-06-22 04:59:24.343638	2015-06-22 04:59:32.144181	235
817	8849907	http://glenmaddern.com/articles/javascript-in-2015	JavaScript in 2015	2015-06-22 03:40:28.711521	2015-06-22 03:40:37.167498	253
818	8849950	http://sourceforge.net/projects/filezilla/reviews	Filezilla at SourceForge is Malware	2015-06-22 03:40:37.212617	2015-06-22 03:40:37.452589	2
794	8836734	http://www.marco.org/2015/01/04/apple-lost-functional-high-ground	Apple has lost the functional high ground	2015-06-22 03:38:56.148074	2015-06-22 03:38:58.57655	80
806	8843162	http://www.gatesnotes.com/Development/Omniprocessor-From-Poop-to-Potable	Bill Gates – From Poop to Potable	2015-06-22 03:39:43.324	2015-06-22 03:39:45.013959	68
798	8839664	http://chrome.blogspot.com/2015/01/introducing-google-cast-for-audio.html	Introducing Google Cast for audio	2015-06-22 03:39:19.792075	2015-06-22 03:39:21.50504	78
831	8855502	http://www.economist.com/blogs/gulliver/2015/01/hotel-wi-fi-blocking	Hotel Wi-Fi blocking: Marriott is bad, and should feel bad	2015-06-22 03:41:08.894157	2015-06-22 03:41:10.469769	8
807	8843475	http://lumiaconversations.microsoft.com/2015/01/05/nokia-215/	Microsoft: Meet Nokia 215	2015-06-22 03:39:45.034967	2015-06-22 03:39:51.251085	249
800	8840565	http://blog.ycombinator.com/congrats-to-ycs-sam-altman-plus-the-yc-founders-named-in-forbes-30-under-30	Congrats to YC's Sam Altman + the YC Founders Named in Forbes' 30 Under 30	2015-06-22 03:39:22.927419	2015-06-22 03:39:23.270581	16
803	8840005	https://stories.californiasunday.com/2015-01-04/begich-towers-whittier-alaska/	A town of about 200 people, almost all of whom live in the same building	2015-06-22 03:39:25.937418	2015-06-22 03:39:40.78204	541
829	8855421	http://www.bloomberg.com/news/2015-01-07/google-loses-most-u-s-search-share-since-2009-while-yahoo-gains.html	Google Loses Most US Search Share Since 2009 While Yahoo Gains	2015-06-22 03:41:02.102128	2015-06-22 03:41:07.32313	177
819	8850393	http://thekrav.blogspot.com/2015/01/what-was-scotch-whisky-boom-part-1.html	What Was the Scotch Whisky Boom? Part 1: Value vs. Volume	2015-06-22 03:40:37.516504	2015-06-22 03:40:37.669757	4
812	8847350	https://www.eff.org/deeplinks/2015/01/ford-tries-shut-down-third-party-repair-tool-copyright	Ford Tries to Shut Down Independent Repair Tool with Copyright	2015-06-22 03:40:04.466744	2015-06-22 03:40:07.808823	113
796	8838253	http://beza1e1.tuxen.de/articles/skill_matching.html	Another Theory to Explain 10X Programmers	2015-06-22 03:39:12.066819	2015-06-22 03:39:12.321278	12
799	8839458	http://hpiers.obspm.fr/iers/bul/bulc/bulletinc.dat	A positive leap second will be introduced at the end of June 2015	2015-06-22 03:39:22.173575	2015-06-22 03:39:24.233667	50
793	8836428	http://en.rocketnews24.com/2015/01/02/kyoto-taxi-drivers-reduce-convenience-store-robberies-50-percent-by-doing-absolutely-nothing/	Kyoto taxi drivers reduce robberies by 50 percent by doing nothing	2015-06-22 03:38:53.953316	2015-06-22 03:39:07.902526	448
795	8838073	http://joshmitteldorf.scienceblog.com/2015/01/05/what-is-aging-most-scientists-still-get-it-wrong/	What Is Aging? Most Scientists Still Get It Wrong	2015-06-22 03:39:07.920917	2015-06-22 03:39:13.202149	177
801	8840460	http://money.cnn.com/2015/01/05/technology/netflix-vpn/index.html	Netflix blocks users streaming via VPN	2015-06-22 03:39:23.397068	2015-06-22 03:39:23.608775	10
804	8841340	https://wit.ai/blog/2015/01/05/wit-ai-facebook	Wit.ai (YC W14) Is Joining Facebook	2015-06-22 03:39:27.23889	2015-06-22 03:39:27.317773	4
805	8842564	https://www.reddit.com/r/IAmA/comments/2rgsan/i_am_elon_musk_ceocto_of_a_rocket_company_ama/	I Am Elon Musk, CEO/CTO of a Rocket Company, AMA	2015-06-22 03:39:40.803314	2015-06-22 03:39:43.303058	104
802	8840139	http://www.plosone.org/article/info:doi/10.1371/journal.pone.0083325&	Identifiable Images of Bystanders Extracted from Corneal Reflections	2015-06-22 03:39:24.256188	2015-06-22 03:39:25.915198	60
822	8851428	https://github.com/google/novm	Experimental KVM-based VMM, Written in Go, by Google	2015-06-22 03:40:39.313569	2015-06-22 03:40:42.38183	110
825	8853308	https://medium.com/backchannel/less-than-zero-199bcb05a868	Exempting popular apps from data charges is anti-competitive	2015-06-22 03:40:47.042912	2015-06-22 03:40:49.20293	86
797	8838712	http://dev.stephendiehl.com/fun/	Write You a Haskell: A tutorial on building a Haskell compiler	2015-06-22 03:39:13.224363	2015-06-22 03:39:23.756424	252
814	8848182	http://www.intel.com/content/www/us/en/compute-stick/intel-compute-stick.html	Intel Compute Stick	2015-06-22 03:40:09.0602	2015-06-22 03:40:22.559491	434
810	8845523	https://www.kickstarter.com/blog/making-payments-easier-for-creators-and-backers/	Kickstarter switches to Stripe	2015-06-22 03:39:57.431505	2015-06-22 03:40:03.605591	261
813	8847934	http://hhvm.com/blog/7205/wikipedia-on-hhvm	Wikipedia on HHVM	2015-06-22 03:40:07.829689	2015-06-22 03:40:09.040584	56
816	8848383	http://i.imgur.com/PINcCUy.gif	I made a debugger that draws the state machine of the program	2015-06-22 03:40:22.69343	2015-06-22 03:40:28.684166	155
809	8844984	https://tech.dropbox.com/2014/07/open-sourcing-our-go-libraries/	From Python to Go at Dropbox	2015-06-22 03:39:55.236752	2015-06-22 03:39:56.555488	40
808	8843994	https://stribika.github.io/2015/01/04/secure-secure-shell.html	Secure Secure Shell	2015-06-22 03:39:51.272239	2015-06-22 03:39:57.41263	183
820	8850482	http://www.nytimes.com/2015/01/07/nyregion/life-in-new-york-city-where-arrests-are-down-and-tickets-are-rarities.html	Life in New York City, Where Arrests Are Down and Tickets Are Rarities	2015-06-22 03:40:37.7199	2015-06-22 03:40:38.973183	38
815	8849291	http://www.candyjapan.com/2014-year-in-review	Candy Japan 2014 Year in Review	2015-06-22 03:40:20.914103	2015-06-22 03:40:22.902885	40
821	8850925	http://calmerthanyouare.org/2015/01/07/optimizing-brainfuck.html	Brainfuck Optimization Strategies	2015-06-22 03:40:37.874405	2015-06-22 03:40:39.282459	13
811	8846299	http://fastcompany.com/3039887/under-fire	The Fire phone debacle	2015-06-22 03:40:03.627164	2015-06-22 03:40:04.44418	36
826	8853909	https://www.eff.org/deeplinks/2014/12/sorry-iphone-users-apples-dev-agreement-means-no-eff-mobile-app-iphone	Apple’s Dev Agreement Means No EFF Mobile App for iOS	2015-06-22 03:40:49.224789	2015-06-22 03:40:49.822913	26
824	8851902	https://medium.com/@thatswattsup/a-teenagers-view-on-social-media-1df945c09ac6	A Teenager’s View on Social Media	2015-06-22 03:40:42.261499	2015-06-22 03:40:47.021577	187
823	8851832	http://charliehebdo.fr	Je Suis Charlie	2015-06-22 03:40:40.436167	2015-06-22 03:40:40.554694	6
828	8854756	https://github.com/nwidger/nintengo	An NES emulator written in Go	2015-06-22 03:40:56.324089	2015-06-22 03:40:59.199994	84
832	8855764	https://blog.synflow.com/integrated-circuit-design-for-the-internet-of-things-iot/	Integrated Circuit design for the IoT	2015-06-22 03:41:09.018075	2015-06-22 03:41:09.294133	14
827	8853088	https://medium.com/@Amp/cant-you-just-turn-up-the-volume-4ecb7fc422a	Can't you just turn up the volume?	2015-06-22 03:40:49.851979	2015-06-22 03:41:07.190264	397
830	8855474	http://dtrace.org/blogs/eschrock/2012/08/14/engineer-anti-patterns/	Engineer Anti-Patterns	2015-06-22 03:41:07.342583	2015-06-22 03:41:09.559137	42
833	8855962	http://www.r-bloggers.com/twitters-new-r-package-for-anomaly-detection/	Twitter’s new R package for anomaly detection	2015-06-22 03:41:09.603507	2015-06-22 03:41:10.863501	42
834	8856043	http://www.omjournal.org/images/582_M_Deatials_Pdf_.pdf	Starvation Based Chemotherapy: A Novel Approach for Cancer Treatment [pdf]	2015-06-22 03:41:10.893465	2015-06-22 03:41:14.644678	124
835	8856186	http://nitlanguage.org/	Nit Programming Language for Serious Fun	2015-06-22 03:41:14.669646	2015-06-22 03:41:16.111766	54
836	8856829	http://www.scrollslowhavefun.com/	Scroll Slow. Have Fun	2015-06-22 03:41:16.130067	2015-06-22 03:41:25.065023	235
1007	8959672	http://blog.mozilla.org/it/2015/01/28/deploying-tor-relays/	Mozila deploying tor relays	2015-06-22 03:55:08.29224	2015-06-22 03:55:14.604353	183
873	8874620	http://samy.pl/keysweeper/	KeySweeper – Arduino-based passive wireless keyboard sniffer	2015-06-22 03:44:21.439784	2015-06-22 03:44:28.485208	231
837	8858338	http://www.twcc.com/articles/2015/01/08/g/google-is-donating-300-000-to-charlie-hebdo?cid=cm_gglchr_nw_cdn_dt_ag_101224	Google Is Donating $300,000 to Charlie Hebdo	2015-06-22 03:41:23.613992	2015-06-22 03:41:24.830793	36
843	8861569	http://translate.google.com/translate?u=http%3A%2F%2Fwww.faz.net%2Faktuell%2Ffeuilleton%2Fmedien%2Fanschlag-in-paris-mohammed-karikaturen-verpixelt-13359826.html&hl=de&langpair=auto|en&tbb=1&ie=UTF-8	Anglo-Saxon media censors themselves	2015-06-22 03:41:53.737656	2015-06-22 03:41:54.362321	14
871	8874114	http://finishonethingtoday.com/	Finish one thing today	2015-06-22 03:44:18.715149	2015-06-22 03:44:19.482787	32
858	8869055	http://kevinchen.co/blog/installing-north-korea-red-star-os/	Installing Red Star 3.0, North Korea's homegrown operating system	2015-06-22 03:43:15.024723	2015-06-22 03:43:16.789611	79
838	8858005	http://techgage.com/news/samsung-unveils-first-pcie-3-0-x4-based-m-2-ssd-delivering-speeds-of-over-2gbs/	Samsung Unveils SSD Delivering Speeds of Over 2 GB/s	2015-06-22 03:41:25.107094	2015-06-22 03:41:28.971494	101
841	8860426	http://www.nytimes.com/2015/01/09/us/politics/obama-proposes-free-community-college-education-for-some-students.html	Obama to Propose Paying Community College Tuition for Some	2015-06-22 03:41:38.956413	2015-06-22 03:41:40.436914	28
839	8859199	http://brookeallen.com/pages/archives/1234	How my life was changed when I began caring about the people I did not hire	2015-06-22 03:41:28.999473	2015-06-22 03:41:44.090058	433
849	8863451	http://blog.rust-lang.org/2015/01/09/Rust-1.0-alpha.html	Announcing Rust 1.0.0 Alpha	2015-06-22 03:42:09.615702	2015-06-22 03:42:38.797514	966
854	8867715	http://torrentfreak.com/chilling-effects-dmca-archive-censors-itself-150110/	Chilling Effects removes itself from search engines	2015-06-22 03:43:01.534021	2015-06-22 03:43:03.160311	48
842	8860738	http://www.schoolleadership20.com/m/blogpost?id=1990010%3ABlogPost%3A205389	Virginia Teacher of the Year Tells Why He Resigned	2015-06-22 03:41:44.123319	2015-06-22 03:41:54.629938	271
847	8862411	https://ginnabaker.wordpress.com/2014/12/06/nothing-you-can-do-impresses-me/	Nothing you can do impresses me	2015-06-22 03:42:07.510002	2015-06-22 03:42:07.825807	16
870	8873834	http://bits.blogs.nytimes.com/2015/01/09/uber-cuts-fares-in-48-cities-raising-some-concern-among-drivers/?_r=1	Uber Cuts Fares in 48 Cities, Raising Some Concern Among Drivers	2015-06-22 03:44:17.020175	2015-06-22 03:44:18.67828	48
852	8866933	http://www.nytimes.com/2015/01/11/fashion/modern-love-to-fall-in-love-with-anyone-do-this.html	To Fall in Love with Anyone, Do This	2015-06-22 03:42:50.021451	2015-06-22 03:42:51.23177	42
855	8867979	http://www.madebyevan.com/webgl-water/	WebGL Water Simulator	2015-06-22 03:43:03.185271	2015-06-22 03:43:10.707263	186
850	8866460	http://ori.scs.stanford.edu/#	Ori File System	2015-06-22 03:42:38.81458	2015-06-22 03:42:47.518871	263
840	8860389	http://www.latimes.com/business/hiltzik/la-fi-mh-antivaccination-update-the-measles-crisis-strikes-disneyland-20150108-column.html	Anti-vaccination update: How the measles crisis struck Disneyland	2015-06-22 03:41:38.448672	2015-06-22 03:41:38.656458	8
844	8861413	https://github.com/prakhar1989/awesome-courses	List of University Courses for Learning Computer Science	2015-06-22 03:41:54.526811	2015-06-22 03:42:04.10538	280
859	8869167	http://mainisusuallyafunction.blogspot.com/2015/01/151-byte-static-linux-binary-in-rust.html	151-byte static Linux binary in Rust	2015-06-22 03:43:16.808436	2015-06-22 03:43:19.782518	92
851	8866825	http://www.propublica.org/article/judge-orders-nypd-to-release-records-on-x-ray-vans	Judge Orders NYPD to Release Records on X-ray Vans	2015-06-22 03:42:47.550291	2015-06-22 03:42:55.780979	201
845	8862365	http://www.braveclojure.com/core-async/	Brave Clojure: Master Concurrent Processes with Core.async	2015-06-22 03:42:04.140672	2015-06-22 03:42:08.255862	50
846	8862689	http://thume.ca/screentunes/	On some LCD monitors this page will cause the screen to emit a tone	2015-06-22 03:42:05.456264	2015-06-22 03:42:07.434447	69
867	8873416	https://ma.ttias.be/audi-greater-than-equal-cruise-control-bug/	Audi's Cruise Control ">=" Bug	2015-06-22 03:44:13.269921	2015-06-22 03:44:16.768958	102
861	8869880	http://www.ditherandbicker.com/posts/2015-01-10-rip-google-analytics.html	RIP Google Analytics, Casualty of Spam	2015-06-22 03:43:32.263247	2015-06-22 03:43:36.766513	112
848	8863149	http://www.johnskylar.com/post/107416685924/a-career-in-science-will-cost-you-your-firstborn	A Career in Science Will Cost You Your Firstborn	2015-06-22 03:42:08.301487	2015-06-22 03:42:09.587451	32
853	8867335	https://medium.com/backchannel/how-i-f-ed-up-in-ycombinator-35a19e7ace68?hn=1	How I Crashed and Burned in Y Combinator	2015-06-22 03:42:55.810466	2015-06-22 03:43:01.514807	158
865	8873145	https://github.com/screenfreeze/deskcon-desktop/issues/23	Bizarre GitHub Issues: lead developer (of deskcon) was found dead in his car	2015-06-22 03:44:10.028152	2015-06-22 03:44:10.180954	8
857	8868709	http://techcrunch.com/2015/01/10/east-of-palo-altos-eden/	East of Palo Alto’s Eden	2015-06-22 03:43:10.726047	2015-06-22 03:43:15.003717	147
856	8868035	http://johannhari.com/2008/05/06/my-experiment-with-smart-drugs/	My experiment with smart drugs (2008)	2015-06-22 03:43:03.291694	2015-06-22 03:43:05.46823	71
864	8872054	http://techcrunch.com/2015/01/11/leaked-palantir-doc-reveals-uses-specific-functions-and-key-clients/	Leaked Palantir Doc Reveals Uses, Specific Functions and Key Clients	2015-06-22 03:43:55.628296	2015-06-22 03:44:10.635248	524
860	8869401	http://blogs.msdn.com/b/vbteam/archive/2015/01/10/we-re-moving-to-github.aspx	We're moving to GitHub	2015-06-22 03:43:19.80326	2015-06-22 03:43:39.771317	468
863	8871705	http://networkfilter.blogspot.com/2015/01/be-your-own-vpn-provider-with-openbsd.html	Be your own VPN provider with OpenBSD	2015-06-22 03:43:51.637102	2015-06-22 03:43:55.589601	133
862	8870479	http://jackm.co.uk/posts/2015/01/11/the-simple-proof-of-the-tetris-lamp/	The Simple Proof of the Tetris Lamp	2015-06-22 03:43:39.798974	2015-06-22 03:43:51.598568	367
866	8873225	https://buzzdecafe.github.io/code/2015/01/08/is-javascript-getting-worse/	Is JavaScript getting worse?	2015-06-22 03:44:10.324635	2015-06-22 03:44:13.242061	78
869	8873694	http://www.bbc.co.uk/news/technology-30779898	Microsoft hits out at Google team over bug report	2015-06-22 03:44:16.793555	2015-06-22 03:44:17.002691	12
868	8873466	http://blog.hubblehq.com/ditching-django-for-microservices-1/	Why we ditched Django for Microservices	2015-06-22 03:44:15.861234	2015-06-22 03:44:16.289668	17
872	8874144	http://www.emlid.com/	Raspberry Pi as an autopilot for drones	2015-06-22 03:44:19.522257	2015-06-22 03:44:21.420003	50
874	8874811	http://www.nytimes.com/2015/01/11/opinion/sunday/speaking-while-female.html	Speaking While Female	2015-06-22 03:44:22.076122	2015-06-22 03:44:22.294218	10
875	8874706	https://www.storehouse.co/stories/r3rcy-gotham-7-5k	Gotham 7.5K: A Rare High Altitude Night Flight Above NYC	2015-06-22 03:44:28.512306	2015-06-22 03:44:29.442653	40
877	8877812	http://www.washingtonpost.com/national/health-science/bpa-alternative-disrupts-normal-brain-cell-growth-is-tied-to-hyperactivity-study-says/2015/01/12/a9ecc37e-9a7e-11e4-a7ee-526210d665b4_story.html?hpid=z5	Chemical in BPA-free plastics almost as bad as the original	2015-06-22 03:44:39.671117	2015-06-22 03:44:44.054471	139
878	8878075	https://github.com/mentum/lambdaws	Run Any JavaScript Function in the Cloud	2015-06-22 03:44:44.077625	2015-06-22 03:44:53.177314	287
1660	9296857	https://www.amazon.com/oc/dash-button/	Amazon Dash Button	2015-06-22 05:20:25.25308	2015-06-22 05:20:29.735563	122
901	8892839	http://futureoflife.org/misc/AI	Elon Musk donates $10M to keep AI beneficial	2015-06-22 03:46:20.534725	2015-06-22 03:46:20.653809	6
882	8880073	http://aws.amazon.com/ec2/instance-types/?sc_ichannel=em&sc_icountry=global&sc_icampaigntype=launch&sc_icampaign=em_130722160&sc_idetail=em_865952340&ref_=pe_411040_130722160_17#compute-optimized	AWS C4 Instances	2015-06-22 03:45:01.562667	2015-06-22 03:45:01.66642	4
889	8884128	https://iojs.org/?1.0.0	Io.js 1.0.0	2015-06-22 03:45:22.431495	2015-06-22 03:45:36.991737	474
895	8888047	http://www.nytimes.com/2015/01/14/opinion/tom-hanks-on-his-two-years-at-chabot-college.html?_r=0	I Owe It All to Community College	2015-06-22 03:45:48.24109	2015-06-22 03:45:51.839744	129
881	8879188	http://n-o-d-e.net/post/107977286006/how-to-create-a-handheld-linux-terminal	How to create a handheld Linux terminal	2015-06-22 03:44:58.680801	2015-06-22 03:45:00.677229	28
879	8876929	http://www.howtogeek.com/198622/heres-what-happens-when-you-install-the-top-10-download.com-apps/?PageSpeed=noscript	What Happens When You Install the Top Download.com Apps	2015-06-22 03:44:53.208328	2015-06-22 03:45:01.871798	203
904	8894692	http://jlongster.com/Presenting-The-Most-Over-Engineered-Blog-Ever	Presenting the Most Over-Engineered Blog Ever	2015-06-22 03:46:27.481133	2015-06-22 03:46:29.608462	84
898	8890935	http://search.cpan.org/dist/Locale-Maketext/lib/Locale/Maketext/TPJ13.pod?#A_Localization_Horror_Story:_It_Could_Happen_To_You	A Localization Horror Story: It Could Happen to You	2015-06-22 03:46:12.339598	2015-06-22 03:46:18.992677	259
891	8885951	https://blogs.nasa.gov/spacestation/2015/01/14/space-station-update/	US segment of ISS evacuated due to possible cooling system leak	2015-06-22 03:45:37.011642	2015-06-22 03:45:37.674818	28
905	8895368	http://motherboard.vice.com/read/defense-in-silk-road-trial-says-mt-gox-ceo-was-the-real-dread-pirate-roberts?utm_source=mbtwitter	Defense in Silk Road Trial Says Mt. Gox CEO Was the Real Dread Pirate Roberts	2015-06-22 03:46:30.910958	2015-06-22 03:46:47.461066	590
880	8879215	http://www.theguardian.com/media/2015/jan/13/charlie-hebdo-cover-magazine-prophet-muhammad	Charlie Hebdo: first cover since terror attack depicts prophet Muhammad	2015-06-22 03:44:56.089832	2015-06-22 03:44:58.09133	86
914	8900779	http://www.washingtonpost.com/investigations/holder-ends-seized-asset-sharing-process-that-split-billions-with-local-state-police/2015/01/16/0e7ca058-99d4-11e4-bcfb-059ec7a93ddc_story.html	Holder limits seized-asset sharing process that split billions with police	2015-06-22 03:47:06.529678	2015-06-22 03:47:07.038984	20
885	8881887	http://techcrunch.com/2015/01/13/google-domains-launches-to-all-in-u-s-with-support-for-blogger-integration-templates-and-more-domain-endings/?ncid=rss	Google Domains Launches to All in U.S	2015-06-22 03:45:09.950405	2015-06-22 03:45:11.229823	45
899	8892632	http://startupedmonton.tumblr.com/post/107921476571/why-tech-startups-should-look-at-go	Why Tech Startups Should Look at Go	2015-06-22 03:46:18.882456	2015-06-22 03:46:19.069009	8
888	8881744	https://www.propublica.org/article/flashbangs	The Human Toll of Flashbangs	2015-06-22 03:45:17.383947	2015-06-22 03:45:22.407798	173
884	8878754	https://medium.com/@WhatALongHandle/hi-its-google-corporate-development-d0c77fd69191	“Hi, It’s Google Corporate Development”	2015-06-22 03:45:02.996952	2015-06-22 03:45:11.994925	228
896	8888747	http://www.vox.com/2015/1/14/7546865/obama-municipal-broadband-fcc	Obama calls for municipal broadband	2015-06-22 03:45:51.876884	2015-06-22 03:46:04.144131	177
894	8887505	https://www.digitalocean.com/company/blog/presenting-freebsd-how-we-made-it-happen/	DigitalOcean now supports FreeBSD	2015-06-22 03:45:45.06716	2015-06-22 03:45:51.345015	128
886	8882048	https://www.comingle.io	We're making hackable, open-source sex toys (NSFW)	2015-06-22 03:45:11.252373	2015-06-22 03:45:11.527931	12
897	8890170	https://www.eff.org/deeplinks/2015/01/verizon-and-turn-break-browser-privacy-protections	How Verizon and Turn Defeat Browser Privacy Protections	2015-06-22 03:45:56.880554	2015-06-22 03:46:12.318335	549
893	8886164	http://makezine.com/magazine/hands-on-health-care/	Man saves wife’s sight by 3D printing her brain tumor	2015-06-22 03:45:38.73664	2015-06-22 03:45:45.043456	217
883	8880406	http://verdantlabs.com/professions/index.html	Disproportionately Common Names by Profession	2015-06-22 03:45:01.911215	2015-06-22 03:45:02.959156	27
892	8886041	http://www.quirksmode.org/blog/archives/2015/01/the_problem_wit.html	The problem with Angular	2015-06-22 03:45:37.561927	2015-06-22 03:45:38.717578	47
907	8897587	http://networkfilter.blogspot.com/2014/12/security-openbsd-vs-freebsd.html	Security: OpenBSD vs. FreeBSD	2015-06-22 03:46:47.483067	2015-06-22 03:46:47.55713	4
912	8900016	https://vine.co/v/OjqeYWWpVWK	Video of SpaceX Rocket landing - 'Close, but no cigar. This time.' 	2015-06-22 03:47:01.721676	2015-06-22 03:47:02.994571	59
887	8882469	http://www.pagetable.com/?p=774	Microsoft BASIC for 6502 – Original Source Code (1978)	2015-06-22 03:45:12.018774	2015-06-22 03:45:17.364639	230
900	8892587	http://www.mattblodgett.com/2015/01/but-where-do-people-work-in-this-office.html	But Where Do People Work in This Office?	2015-06-22 03:46:19.091087	2015-06-22 03:46:20.513018	56
911	8899510	https://medium.com/message/back-to-the-future-time-travel-and-the-secret-history-of-the-1980s-80bf3c6347cf	Back to the Future, Time Travel, and the Secret History of the 1980s	2015-06-22 03:47:01.39615	2015-06-22 03:47:01.692228	8
908	8897835	https://krita.org/item/goodbye-photoshop-and-hello-krita-at-university-paris-8/	‘Goodbye Photoshop’ and ‘Hello Krita’ at University Paris 8	2015-06-22 03:46:47.579418	2015-06-22 03:46:56.238175	317
910	8899025	http://www.belfasttelegraph.co.uk/news/local-national/northern-ireland/bbc-uses-ripa-terrorism-laws-to-catch-tv-licence-fee-dodgers-in-northern-ireland-30911647.html	BBC uses RIPA terrorism laws to catch TV licence fee dodgers in Northern Ireland	2015-06-22 03:46:57.614668	2015-06-22 03:47:01.371355	150
890	8884838	http://bitcoinity.org/markets	Bitcoin crashes over 25% in 24 hours, under $180	2015-06-22 03:45:29.217568	2015-06-22 03:45:31.477041	94
909	8898669	https://code.google.com/p/android/issues/detail?id=82949#c483	Remember broken Nexus telephony? This is how Google treats it's customers	2015-06-22 03:46:55.86863	2015-06-22 03:46:57.58837	47
906	8896186	https://github.com/ValveSoftware/steam-for-linux/issues/3671	Moved ~/.local/share/steam. Ran steam. It deleted everything owned by user	2015-06-22 03:46:32.424728	2015-06-22 03:46:32.747529	16
916	8902071	http://paulgraham.com/work.html	What Doesn't Seem Like Work?	2015-06-22 03:47:09.061226	2015-06-22 03:47:38.985483	804
902	8892747	http://www.bemyeyes.org/	Be My Eyes – Lend your eyes to the blind	2015-06-22 03:46:20.675991	2015-06-22 03:46:25.103664	175
903	8894168	http://www.bbc.co.uk/news/technology-30831128	Google Glass sales halted	2015-06-22 03:46:25.125523	2015-06-22 03:46:30.884264	146
913	8900633	https://research.facebook.com/blog/879898285375829/fair-open-sources-deep-l20earning-modules-for-torch/	Facebook open-sources deep-learning modules	2015-06-22 03:47:03.013097	2015-06-22 03:47:07.27238	144
915	8901141	https://gigaom.com/2015/01/16/in-surprise-shift-sprint-endorses-net-neutrality/	In surprise FCC filing, Sprint endorses net neutrality	2015-06-22 03:47:07.2997	2015-06-22 03:47:09.038008	63
917	8903300	http://techcrunch.com/2015/01/16/the-seed-bubble-has-popped/?utm_medium=twitter&utm_source=twitterfeed	The Seed Bubble Has Popped	2015-06-22 03:47:20.868144	2015-06-22 03:47:25.280073	127
936	8912639	http://www.newyorker.com/magazine/2015/01/26/whole-haystack	The Whole Haystack: The N.S.A. claims it needs access to all our phone records	2015-06-22 03:49:01.685877	2015-06-22 03:49:03.177486	52
953	8923053	http://martyjs.org/	Marty.js – A JavaScript library for state management in React applications	2015-06-22 03:50:18.05318	2015-06-22 03:50:19.20259	44
928	8908462	http://aadrake.com/command-line-tools-can-be-235x-faster-than-your-hadoop-cluster.html	Command-line tools can be 235x faster than your Hadoop cluster	2015-06-22 03:48:26.678988	2015-06-22 03:48:49.081964	439
929	8909891	http://www.nytimes.com/2015/01/19/world/asia/nsa-tapped-into-north-korean-networks-before-sony-attack-officials-say.html	N.S.A. Tapped into North Korean Networks Before Sony Attack, Officials Say	2015-06-22 03:48:37.160163	2015-06-22 03:48:47.275043	345
934	8912137	http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.10.4290&rep=rep1&type=pdf	Sketchpad: A man-machine graphical communication system	2015-06-22 03:48:59.948955	2015-06-22 03:49:00.192673	10
935	8912078	http://lwn.net/SubscriberLink/629259/6fc0d45326725ba5/	Extracting the abstract syntax tree from GCC	2015-06-22 03:49:00.215869	2015-06-22 03:49:03.770697	80
921	8904638	http://finance.yahoo.com/news/ex-googler-tons-engineers-want-160246466.html	Ex-Googler: 'Tons of Engineers' Want to Leave Google	2015-06-22 03:47:42.375512	2015-06-22 03:47:42.596375	10
922	8905321	http://www.spiegel.de/international/world/new-snowden-docs-indicate-scope-of-nsa-preparations-for-cyber-battle-a-1013409.html	New Snowden Docs Indicate Scope of NSA Preparations for Cyber Battle	2015-06-22 03:47:46.710068	2015-06-22 03:47:54.664203	301
920	8904650	http://petapixel.com/2015/01/16/31-rolls-undeveloped-film-soldier-wwii-discovered-processed/	31 Rolls of Undeveloped Film from a Soldier in WWII Discovered and Processed	2015-06-22 03:47:41.101937	2015-06-22 03:47:46.680598	193
919	8904368	http://www.realclearmarkets.com/articles/2015/01/16/amid_bitcoins_bloodbath_silence_from_silicon_valley_press_101490.html	Amid Bitcoin's Bloodbath, Silence from Silicon Valley Press	2015-06-22 03:47:39.010186	2015-06-22 03:47:41.07467	78
940	8915809	http://jaccuzzi.ch/html/affichjacc_264_e.html	Suspended jaccuzzi	2015-06-22 03:49:28.66977	2015-06-22 03:49:31.348185	103
923	8906085	http://motherboard.vice.com/read/the-fastest-camera-ever-created-will-be-used-to-study-invisibility-cloaks	Light captured at 100B frames per second	2015-06-22 03:47:54.690036	2015-06-22 03:47:59.605246	170
924	8906505	https://www.youtube.com/watch?v=AplG6KnOr2Q	Mario Lives! An AI for creating a living and conversing agent	2015-06-22 03:47:59.314686	2015-06-22 03:48:07.620284	291
944	8918265	http://www.uscourts.gov/uscourts/rules/preliminary-draft-proposed-amendments.pdf	FBI seeks automatic warrants against users of VPN and Tor (p. 338) [pdf]	2015-06-22 03:49:44.2382	2015-06-22 03:49:44.26198	2
931	8910860	http://blog.hvidtfeldts.net/index.php/2015/01/path-tracing-3d-fractals/	Path Tracing 3D Fractals	2015-06-22 03:48:49.118634	2015-06-22 03:48:51.756623	97
952	8922359	http://www.howardism.org/Technical/Emacs/new-window-manager.html	Emacs Is My New Window Manager	2015-06-22 03:50:13.303905	2015-06-22 03:50:18.027838	153
925	8907056	https://github.com/shurcooL/Conception	An experimental visual IDE written in Go	2015-06-22 03:48:07.643086	2015-06-22 03:48:19.693346	420
938	8914675	http://blogs.gnome.org/mclasen/2015/01/19/gnome-wayland-porting-the-endgame/	Gnome Wayland porting – the endgame	2015-06-22 03:49:16.396817	2015-06-22 03:49:17.365599	40
926	8907301	https://www.mjt.me.uk/posts/falsehoods-programmers-believe-about-addresses/	Falsehoods programmers believe about addresses	2015-06-22 03:48:15.957482	2015-06-22 03:48:19.743931	6
933	8911301	http://geekregator.com/2015-01-19-node_js_and_io_js_very_different_in_performance.html	Node.js and io.js – Very different in performance	2015-06-22 03:48:55.329994	2015-06-22 03:48:59.922885	171
927	8907801	http://www.dogmedicationdb.com/	Adopted a dog, had no clue what meds she needed, did some research, made a site	2015-06-22 03:48:19.767296	2015-06-22 03:48:26.659132	229
937	8912860	http://brm.io/matter-js/	Matter.js – a 2D rigid body physics engine for the web	2015-06-22 03:49:03.800683	2015-06-22 03:49:16.355076	384
930	8910367	http://the-tusk.com/2015/01/09/ice-balls/	Ice Balls	2015-06-22 03:48:45.500118	2015-06-22 03:48:45.901885	12
948	8921320	http://prog21.dadgum.com/203.html	Retiring Python as a Teaching Language	2015-06-22 03:50:00.046743	2015-06-22 03:50:01.646242	40
943	8917881	http://techcrunch.com/2015/01/20/stack-exchange-raises-40m-led-by-a16z-to-boost-its-programmer-forums/	Stack Exchange Raises $40M Led by A16Z to Boost Its Programmer Forums	2015-06-22 03:49:42.760916	2015-06-22 03:49:46.902577	153
942	8917078	http://blog.coinbase.com/post/108642362357/coinbase-raises-75m-from-dfj-growth-usaa-nyse	Coinbase Raises $75M from DFJ Growth, USAA, NYSE, and More	2015-06-22 03:49:39.221655	2015-06-22 03:49:42.737746	128
945	8918759	http://paulgraham.com/ronco.html	The Ronco Principle	2015-06-22 03:49:47.08568	2015-06-22 03:49:51.370201	148
939	8914956	http://www.wsj.com/articles/google-nears-1-billion-investment-in-spacex-1421706642	Google Nears $1B Investment in SpaceX	2015-06-22 03:49:17.391083	2015-06-22 03:49:28.647052	403
946	8919901	http://www.bloomberg.com/news/2015-01-20/musk-s-spacex-sells-10-stake-to-google-fidelity-for-1-billion.html?hootPostID=e032d9a22131660ad2c3ecfaa1639a46	SpaceX Sells 10% Stake to Google, Fidelity for $1B	2015-06-22 03:49:51.405866	2015-06-22 03:49:57.50061	242
932	8911217	https://github.com/matt-42/silicon	Show HN: The Silicon C++14 Web Framework	2015-06-22 03:48:51.808593	2015-06-22 03:48:55.305049	116
951	8922005	http://motherboard.vice.com/read/is-simcity-homelessness-a-bug-or-a-feature	Is 'SimCity' Homelessness a Bug or a Feature?	2015-06-22 03:50:10.007953	2015-06-22 03:50:13.265232	108
950	8921355	http://www.economist.com/node/21639500/print	Being a good networker pays off, but it requires skill as well as shamelessness	2015-06-22 03:50:03.939576	2015-06-22 03:50:09.929572	227
941	8916103	https://github.com/gorhill/uBlock#installation	µBlock for Firefox	2015-06-22 03:49:31.370112	2015-06-22 03:49:39.202307	317
949	8921363	https://to.be/	To Be	2015-06-22 03:50:01.668902	2015-06-22 03:50:03.917449	77
947	8920638	http://betterexplained.com/articles/linear-algebra-guide/	An Intuitive Guide to Linear Algebra	2015-06-22 03:49:57.525241	2015-06-22 03:50:09.980289	112
956	8924755	http://www.wired.com/2015/01/microsoft-hands-on	Hands-On with Microsoft's New Holographic Goggles	2015-06-22 03:50:25.523621	2015-06-22 03:50:47.096826	803
954	8923196	http://priceonomics.com/a-designers-war-on-misleading-parking-signs/	A Designer's War on Misleading Parking Signs	2015-06-22 03:50:19.224961	2015-06-22 03:50:22.141311	114
959	8928612	http://andregarzia.com/posts/en/whatsappdoesntunderstandtheweb	WhatsApp doesn't understand the web	2015-06-22 03:50:55.816239	2015-06-22 03:50:56.914183	46
957	8928028	http://www.gatesnotes.com/2015-Annual-Letter	2015 Gates Annual Letter	2015-06-22 03:50:47.116183	2015-06-22 03:50:51.60832	134
955	8923721	https://www.4chan.org/news?all#118	The Next Chapter – moot retires from 4chan	2015-06-22 03:50:22.165268	2015-06-22 03:50:25.500343	126
958	8928433	https://muut.com/riotjs/	Riot.js 2.0: A React-like, 2.5K user interface library	2015-06-22 03:50:51.63885	2015-06-22 03:50:55.792352	157
960	8929040	http://dev.stephendiehl.com/numpile/	Let's Write an LLVM Specializer for Python (Stephen Diehl)	2015-06-22 03:50:56.9365	2015-06-22 03:51:01.037137	147
961	8929407	https://developer.atlassian.com/blog/2015/01/a-better-pull-request/	A better pull request	2015-06-22 03:51:01.066536	2015-06-22 03:51:05.25847	159
962	8930825	http://a16z.com/2015/01/22/16-things/	16 Things	2015-06-22 03:51:05.281049	2015-06-22 03:51:12.904223	247
967	8934246	http://techcrunch.com/2015/01/23/china-vpn-crackdown/	China Cracks Down on VPN Services After Censorship System ‘Upgrade’	2015-06-22 03:51:32.490187	2015-06-22 03:51:33.965792	40
988	8945592	http://blog.the-ebook-reader.com/2015/01/15/paperlike-13-3-e-ink-monitor-by-dasung-tech-videos/	PaperLike: 13.3“ E Ink Monitor (connects to and powered over USB)	2015-06-22 03:53:29.244115	2015-06-22 03:53:45.940483	525
979	8941588	http://www.redblobgames.com/grids/hexagons/	Everything you ever wanted to know about hexagonal grids	2015-06-22 03:52:47.641118	2015-06-22 03:52:49.516579	71
993	8948639	https://www.eff.org/deeplinks/2015/01/effs-game-plan-ending-global-mass-surveillance	EFF’s Game Plan for Ending Global Mass Surveillance	2015-06-22 03:53:54.955618	2015-06-22 03:54:04.196112	328
964	8932973	https://www.eff.org/deeplinks/2015/01/british-spy-agency-considers-journalists-threat-vacuums-their-emails	British Spy Agency Considers Journalists a Threat, Vacuums Up Their Emails	2015-06-22 03:51:18.218747	2015-06-22 03:51:18.499622	8
984	8943709	http://slexy.org/view/s20Pc2LaIw	Mezzanine: A Common Lisp-based 64-bit OS for VirtualBox	2015-06-22 03:53:13.466989	2015-06-22 03:53:17.616242	159
977	8940559	http://technologynotes.net/blog/back-to-the-iphone5s	Back to the iPhone 5S	2015-06-22 03:52:32.325996	2015-06-22 03:52:33.39453	34
970	8935167	http://www.nhl.com/ice/news.htm?id=750014	NHL partners with GoPro to deliver fans unique perspectives of the game	2015-06-22 03:51:40.961544	2015-06-22 03:51:42.625862	46
981	8942208	https://itunes.apple.com/us/course/developing-ios-8-apps-swift/id961180099	Developing iOS 8 Apps with Swift – Paul Hegarty (Stanford)	2015-06-22 03:52:52.541436	2015-06-22 03:52:53.839339	50
974	8938223	https://www.eff.org//deeplinks/2015/01/britons-you-have-72-hours-stop-snoopers-charter	Britons: You Have 72 Hours to Stop the Snooper's Charter	2015-06-22 03:52:24.617082	2015-06-22 03:52:25.034611	16
966	8933528	http://blog.jle.im/entry/io-monad-considered-harmful	IO Monad Considered Harmful	2015-06-22 03:51:24.290726	2015-06-22 03:51:26.340454	74
978	8940950	http://www.sleuthsayers.org/2013/06/the-3500-shirt-history-lesson-in.html	The $3500 Shirt – A History Lesson in Economics	2015-06-22 03:52:33.437719	2015-06-22 03:52:47.619359	479
968	8934237	http://www.washingtonpost.com/news/the-intersect/wp/2015/01/22/i-paid-25-for-an-invisible-boyfriend-and-i-think-i-might-be-in-love/	I paid $25 for an Invisible Boyfriend, and I think I might be in love	2015-06-22 03:51:33.989778	2015-06-22 03:51:39.819731	20
982	8942823	http://paperwork.rocks/?hn	Paperwork: An open source Evernote alternative	2015-06-22 03:53:01.74466	2015-06-22 03:53:13.449303	371
969	8934320	http://www.google.com/safebrowsing/diagnostic?site=google.com	Diagnostic page for Google.com	2015-06-22 03:51:34.379829	2015-06-22 03:51:43.021618	245
965	8933218	http://dealbook.nytimes.com/2015/01/22/winklevoss-twins-aim-to-take-bitcoin-mainstream-with-a-regulated-exchange/	Winklevoss Twins Aim to Take Bitcoin Mainstream with a Regulated Exchange	2015-06-22 03:51:20.234532	2015-06-22 03:51:32.447041	358
983	8943064	https://medium.com/@hankgreen/holy-shit-i-interviewed-the-president-fa3e8fb44d16?	Holy Shit, I Interviewed the President	2015-06-22 03:53:08.120475	2015-06-22 03:53:08.656341	14
987	8944637	http://www.itworld.com/article/2875112/ibm-is-about-to-get-hit-with-a-massive-reorg-and-layoffs.html	IBM to cut 111,800 people from its workforce	2015-06-22 03:53:20.205588	2015-06-22 03:53:25.957976	211
976	8939889	http://world.openfoodfacts.org	Open Food Facts – A free food products database	2015-06-22 03:52:26.702021	2015-06-22 03:52:32.596451	209
985	8944483	http://chessboardjs.com/examples#5002	Chess: Who will win in this riveting game of Math.random() vs. Math.random()?	2015-06-22 03:53:17.63818	2015-06-22 03:53:29.224187	105
971	8935590	http://blog.revolutionanalytics.com/2015/01/revolution-acquired.html	Microsoft acquires Revolution Analytics	2015-06-22 03:51:43.054504	2015-06-22 03:51:43.241432	6
997	8952100	https://vivaldi.com	Vivaldi browser tech preview	2015-06-22 03:54:18.366813	2015-06-22 03:54:21.183457	110
973	8936257	http://zoekeating.tumblr.com/post/108898194009/what-should-i-do-about-youtube	Zoe Keating: What should I do about YouTube?	2015-06-22 03:51:49.184783	2015-06-22 03:52:24.587745	1160
986	8944578	http://fuckinggodateformat.com/	Fucking Go Date Format	2015-06-22 03:53:17.73443	2015-06-22 03:53:20.177867	84
980	8942176	http://www.csd.uwo.ca/staff/magi/personal/humour/Computer_Audience/The%20Parable%20of%20the%20Two%20Programmers.html?	The Parable of the Two Programmers (1985)	2015-06-22 03:52:49.40032	2015-06-22 03:53:01.722136	377
989	8946939	http://danluu.com/blog-ads	Is running ads on a programming blog worth it?	2015-06-22 03:53:45.960805	2015-06-22 03:53:46.069517	6
991	8947603	http://www.chris-granger.com/2015/01/26/coding-is-not-the-new-literacy/	Coding is not the new literacy	2015-06-22 03:53:49.4949	2015-06-22 03:53:51.764534	64
998	8952291	https://lodash.com/?v3	Lodash v3.0.0	2015-06-22 03:54:21.227591	2015-06-22 03:54:23.79508	97
992	8946991	https://exchange.coinbase.com/	Coinbase Exchange	2015-06-22 03:53:51.793301	2015-06-22 03:53:54.932767	95
972	8935680	http://ascii.textfiles.com/archives/4546	The Emularity	2015-06-22 03:51:43.275838	2015-06-22 03:51:49.145855	205
990	8947080	http://www.nytimes.com/video/sports/100000003040466/inside-the-world-of-longsword-fighting.html	Inside the world of longsword fighting	2015-06-22 03:53:46.090249	2015-06-22 03:53:49.466224	110
975	8939886	http://www.rulesofevidence.org	Federal Rules of Evidence	2015-06-22 03:52:25.058431	2015-06-22 03:52:26.670582	60
1000	8953545	https://translate.google.com/translate?hl=en&sl=fr&tl=en&u=http%3A%2F%2Fwww.frsag.org%2Fpipermail%2Ffrsag%2F2015-January%2F005722.html	CVE-2015-0235: heap overflow in gethostbyname()	2015-06-22 03:54:29.061457	2015-06-22 03:54:33.235735	152
994	8950403	http://www.wsj.com/articles/u-s-spies-on-millions-of-cars-1422314779	U.S. Spies on Millions of Cars	2015-06-22 03:54:04.222296	2015-06-22 03:54:11.621486	281
999	8952684	http://www.spiegel.de/international/world/regin-malware-unmasked-as-nsa-tool-after-spiegel-publishes-source-code-a-1015255.html#ref=rss	Regin Malware Unmasked as NSA Tool After SPIEGEL Publishes Source Code	2015-06-22 03:54:23.818799	2015-06-22 03:54:29.036377	199
1001	8954568	http://googleblog.blogspot.com/2015/01/google-fiber-new-metro-areas.html	Google Fiber is coming to Atlanta, Charlotte, Nashville and Raleigh-Durham	2015-06-22 03:54:33.258152	2015-06-22 03:54:36.882497	135
995	8951283	https://jroweboy.github.io/c/asm/2015/01/26/when-is-main-not-a-function.html	Main is usually a function – when is it not?	2015-06-22 03:54:11.644512	2015-06-22 03:54:18.343125	102
996	8951509	https://www.facebook.com/	Facebook down for you?	2015-06-22 03:54:13.358709	2015-06-22 03:54:17.601261	149
1004	8958470	http://thisisafrica.me/france-loots-former-colonies/	France loots former colonies	2015-06-22 03:54:55.598311	2015-06-22 03:54:55.683517	4
1003	8957598	http://www.npr.org/blogs/health/2015/01/27/381888697/to-protect-his-son-a-father-asks-school-to-bar-unvaccinated-children	To Protect His Son, a Father Asks School to Bar Unvaccinated Children	2015-06-22 03:54:48.11473	2015-06-22 03:54:48.414632	14
1006	8959207	http://kotaku.com/the-secret-douglas-adams-rpg-people-have-been-playing-f-1681986562	The Secret Douglas Adams RPG People Have Been Playing for 15 Years	2015-06-22 03:55:03.791384	2015-06-22 03:55:08.263992	168
1002	8955426	http://youtube-eng.blogspot.com/2015/01/youtube-now-defaults-to-html5_27.html	YouTube now defaults to HTML5 video	2015-06-22 03:54:36.921018	2015-06-22 03:54:58.75117	707
1005	8958731	http://facebook.github.io/react/blog/2015/01/27/react-v0.13.0-beta-1.html	React v0.13.0 Beta 1	2015-06-22 03:54:58.677209	2015-06-22 03:55:03.768621	159
1031	8972179	http://mako.cc/copyrighteous/cultivated-disinterest-in-professional-sports	Cultivated Disinterest in Professional Sports	2015-06-22 03:56:41.06838	2015-06-22 03:56:44.00758	82
1026	8972066	https://sandstorm.io/	Sandstorm is an open source platform for personal servers	2015-06-22 03:56:26.698663	2015-06-22 03:56:33.96078	140
1020	8966817	http://www.bloombergview.com/articles/2015-01-23/capital-one-fraud-researchers-may-also-have-done-some-fraud	Capital One Fraud Researchers May Also Have Done Some Fraud	2015-06-22 03:55:51.451324	2015-06-22 03:55:55.071012	116
1024	8971338	https://community.rapid7.com/community/infosec/blog/2015/01/22/the-internet-of-gas-station-tank-gauges?hn-repost	The Internet of Gas Station Tank Gauges	2015-06-22 03:56:19.413192	2015-06-22 03:56:25.191353	165
1016	8965935	https://javascriptkicks.com/stories/3718	Why junior developers are learning bad habits from Angular	2015-06-22 03:55:44.602252	2015-06-22 03:55:45.116647	22
1014	8963710	https://www.youtube.com/watch?v=KVZ-P-ZI6W4	Introducing React Native [video]	2015-06-22 03:55:28.673077	2015-06-22 03:55:39.380174	386
1008	8960504	https://github.com/tylertreat/Comcast	Comcast: Simulating shitty network connections so you can build better systems	2015-06-22 03:55:11.311007	2015-06-22 03:55:12.839109	54
1037	8976451	http://www.wisdomination.com/screw-motivation-what-you-need-is-discipline/	Screw motivation, what you need is discipline	2015-06-22 03:57:06.391893	2015-06-22 04:36:18.406299	110
1030	8973204	http://www.john-foreman.com/blog/surviving-data-science-at-the-speed-of-hype	Surviving Data Science at the Speed of Hype	2015-06-22 03:56:40.428696	2015-06-22 03:56:41.028341	16
1036	8976353	http://owensd.io/2015/01/31/swift-resistance-explored.html	Swift Resistance Explored	2015-06-22 03:57:04.976712	2015-06-22 03:57:06.818794	25
1025	8970402	https://vtllf.org/blog/ssh-web-sign-in	Signing in to websites with SSH	2015-06-22 03:56:25.241625	2015-06-22 03:56:26.653392	40
1009	8960995	http://techcrunch.com/2015/01/28/slack-buys-screenhero-to-add-screen-sharing-and-voice-chat-to-its-work-messaging-platform/	Slack Acquires Screenhero (YC W13)	2015-06-22 03:55:14.626626	2015-06-22 03:55:14.821621	10
1017	8966185	http://www.vox.com/2015/1/29/7929791/measles-outbreak-2014	How an Amish missionary caused 2014's massive measles outbreak	2015-06-22 03:55:47.279541	2015-06-22 03:55:48.20046	28
1012	8961600	http://robrhinehart.com/?p=1224	Who Owns Los Angeles?	2015-06-22 03:55:18.867108	2015-06-22 03:55:21.467846	106
1011	8961438	http://hackersurfing.com/	HackerSurfing: Free Housing and Food for Engineers Visiting SF	2015-06-22 03:55:16.934683	2015-06-22 03:55:18.847093	81
1029	8973283	http://rethinkdb.com/blog/1.16-release/	RethinkDB 1.16: cluster management API, realtime push	2015-06-22 03:56:34.556734	2015-06-22 03:56:40.408564	209
1010	8961551	https://twitter.com/floydophone/status/560503411389390848	Use ReactJS to Build Native Apps	2015-06-22 03:55:14.841567	2015-06-22 03:55:16.915343	91
1018	8966264	http://priceonomics.com/why-every-movie-looks-sort-of-orange-and-blue/	Why Every Movie Looks Sort of Orange and Blue	2015-06-22 03:55:48.22565	2015-06-22 03:55:51.328931	128
1021	8968063	http://arstechnica.com/gadgets/2015/01/microsoft-to-invest-in-cyanogen-hopes-to-take-android-away-from-google/	Microsoft to invest in Cyanogen	2015-06-22 03:55:55.094478	2015-06-22 03:56:02.242859	281
1033	8974535	http://en.wikipedia.org/wiki/Salter%27s_duck	Salters Duck	2015-06-22 03:56:44.110552	2015-06-22 03:56:44.207983	4
1019	8966304	http://blog.documentfoundation.org/2015/01/29/libreoffice-4-4-the-most-beautiful-libreoffice-ever/	LibreOffice 4.4, the Most Beautiful LibreOffice Ever	2015-06-22 03:55:51.348277	2015-06-22 03:55:51.432152	5
1015	8965155	https://inkscape.org/en/gallery/item/3854/	Inkscape 0.91 release	2015-06-22 03:55:39.398386	2015-06-22 03:55:47.247898	268
1013	8963069	https://www.mozilla.org/en-US/firefox/hello/	Firefox Hello	2015-06-22 03:55:21.49749	2015-06-22 03:55:28.653358	275
1044	8977229	https://gist.github.com/wincent/598fa75e22bdfa44cf47?	Relay FAQ: Facebook's Data-fetching Framework for React	2015-06-22 04:36:37.017652	2015-06-22 04:36:41.622391	156
1022	8969700	https://www.eff.org/press/releases/eff-wins-battle-over-secret-legal-opinions-government-spying	EFF Wins Battle Over Secret Legal Opinions on Government Spying	2015-06-22 03:56:02.263877	2015-06-22 03:56:19.257789	546
1034	8975496	http://nytimes.com/2015/02/01/magazine/black-mirror-and-the-horrors-and-delights-of-technology.html	‘Black Mirror’ and the Horrors and Delights of Technology	2015-06-22 03:56:48.136514	2015-06-22 03:56:48.370342	12
1027	8972766	http://syriza.net.gr/index.php/en/pressroom/253-open-letter-to-the-german-readers-that-which-you-were-never-told-about-greece	Open letter to the German readers: That which you were never told about Greece	2015-06-22 03:56:31.993842	2015-06-22 03:56:33.904849	42
1023	8970733	http://www.haskellforall.com/2015/01/use-haskell-for-shell-scripting.html	Use Haskell for shell scripting	2015-06-22 03:56:16.781094	2015-06-22 03:56:19.38202	82
1039	8976872	http://dorophone.blogspot.com/2011/07/duckspeak-vs-smalltalk.html	The Decline of the Xerox PARC Philosophy at Apple Computers	2015-06-22 04:36:23.450588	2015-06-22 04:36:30.00283	243
1035	8975812	http://google-latlong.blogspot.com/2015/01/google-earth-pro-is-now-free.html	Google Earth Pro is now Free, (used to cost 399$	2015-06-22 03:56:54.131647	2015-06-22 03:57:06.298293	369
1032	8974024	https://github.com/lpsantil/rt0	Show HN: A minimal C runtime for Linux i386 and x86_64 in 87 SLOC of C	2015-06-22 03:56:44.038782	2015-06-22 03:56:55.437694	335
1038	8976489	http://forums.selectbutton.net/viewtopic.php?p=1384825#1384825	A Maze of Murderscapes: Metroid II	2015-06-22 04:36:18.274409	2015-06-22 04:36:23.429046	141
1040	8976877	http://amaral-lab.org/publications/high-reproducibility-and-high-accuracy-method-automated-topic-classification/#.VMzwjSiN1WU	High-reproducibility and high-accuracy method for automated topic classification	2015-06-22 04:36:30.025485	2015-06-22 04:36:30.680222	28
1028	8972158	http://spacetime.nypl.org/	NYC Space/Time Directory	2015-06-22 03:56:33.985535	2015-06-22 03:56:34.537934	27
1046	8979267	http://www.erlang-in-anger.com/	Stuff Goes Bad: Erlang in Anger	2015-06-22 04:36:51.162229	2015-06-22 04:36:56.530764	176
1043	8978509	http://www.vox.com/2015/1/30/7948091/andrew-sullivan-leaving-blogging	What Andrew Sullivan's exit says about the future of blogging	2015-06-22 04:36:36.717441	2015-06-22 04:36:38.123464	18
1047	8979526	https://github.com/yahoo/webseclab	Yahoo's WebsecLab is open-source (Go)	2015-06-22 04:36:56.558245	2015-06-22 04:36:59.919644	107
1041	8977550	https://projecteuler.net/problem=500	Project Euler's 500th problem	2015-06-22 04:36:30.70698	2015-06-22 04:36:36.692758	205
1045	8978922	http://scienceblog.com/76752/army-open-sources-cyber-defense-code-new-github-project/	Army open sources cyber defense code in new GitHub project	2015-06-22 04:36:41.649054	2015-06-22 04:36:51.1369	300
1042	8978042	https://github.com/thiagopnts/groot	Groot Programming Language	2015-06-22 04:36:32.920901	2015-06-22 04:36:33.32493	10
1048	8979608	http://saintsal.com/facebook/	Get your loved ones off Facebook	2015-06-22 04:36:59.944927	2015-06-22 04:37:02.957309	102
1049	8979886	http://www.washingtonpost.com/blogs/worldviews/wp/2015/01/31/croatia-just-canceled-the-debts-of-its-poorest-citizens/	Croatia just canceled the debts of its poorest citizens	2015-06-22 04:37:02.982418	2015-06-22 04:37:12.519846	138
1051	8981314	https://github.com/KeyboardFire/mkcast	Mkcast – GIF terminal screencasts with key presses overlaid	2015-06-22 04:37:12.544604	2015-06-22 04:37:25.306687	408
1050	8979820	https://medium.com/message/never-trust-a-corporation-to-do-a-librarys-job-f58db4673351?repost=HN2	Never trust a corporation to do a library’s job	2015-06-22 04:37:04.145958	2015-06-22 04:37:09.282478	185
1056	8985211	http://www.theguardian.com/technology/2015/feb/02/redditcoin-quietly-killed-off-and-lead-developer-fired	Redditcoin quietly killed off and lead developer fired	2015-06-22 04:37:51.578139	2015-06-22 04:37:52.011619	18
1055	8984235	http://www.information-age.com/technology/security/123458952/david-camerons-approach-cyber-security-teetering-dangerously-close-authoritarianism	Encryption ban: David Cameron is teetering dangerously close to authoritarianism	2015-06-22 04:37:50.520647	2015-06-22 04:37:51.116614	20
1065	8990903	https://medium.com/backchannel/meet-the-ultimate-wikignome-10508842caad	One Man’s Quest to Rid Wikipedia of Exactly One Grammatical Mistake	2015-06-22 04:38:32.369426	2015-06-22 04:38:32.66224	8
1072	8995696	http://prometheus.io/	Prometheus: An open-source service monitoring system and time series database	2015-06-22 04:38:59.385051	2015-06-22 04:39:03.202414	139
1076	8996926	http://www.bloomberg.com/news/articles/2015-02-04/staples-to-buy-office-depot-in-deal-valued-at-6-3-billion	Staples Agrees to Buy Office Depot for About $6.3 Billion	2015-06-22 04:39:12.312936	2015-06-22 04:39:12.550103	8
1316	9117028	https://github.com/atom/atom/pull/5624	Atom has moved away from React	2015-06-22 04:55:40.303786	2015-06-22 04:55:49.853412	262
1052	8982526	http://www.theregister.co.uk/2015/02/02/raspberry_pi_model_2/	Turbocharged Raspberry Pi 2 unleashed	2015-06-22 04:37:25.328808	2015-06-22 04:37:37.807653	405
1077	8997198	http://www.bbc.co.uk/news/technology-31129804	Alibaba begins drone delivery trials in China	2015-06-22 04:39:12.573511	2015-06-22 04:39:13.456391	32
1069	8993464	http://spectrum.ieee.org/view-from-the-valley/at-work/tech-careers/massive-worldwide-layoff-underway-at-ibm	Massive Worldwide Layoff Underway at IBM	2015-06-22 04:38:41.784992	2015-06-22 04:38:42.525733	30
1085	9002656	http://scala-lang.org/news/2015/02/05/scala-js-no-longer-experimental.html	Scala.js no longer experimental	2015-06-22 04:39:46.899696	2015-06-22 04:39:52.31869	184
1058	8985625	http://www.nytimes.com/2015/02/03/technology/in-net-neutrality-push-fcc-is-expected-to-propose-regulating-the-internet-as-a-utility.html	F.C.C. Is Expected to Propose Regulating the Internet as a Utility	2015-06-22 04:37:53.694824	2015-06-22 04:38:00.44862	219
1063	8989714	http://www.aftenposten.no/webtv/serier-og-programmer/sweatshopenglish/TRAILER-SWEATSHOP---I-cant-take-any-more-7800835.html?paging=&section=webtv_serierogprogrammer_sweatshop_sweatshopenglish	SWEATSHOP – I can´t take any more	2015-06-22 04:38:23.637857	2015-06-22 04:38:27.90613	141
1060	8988819	http://www.whitehouse.gov/digital/united-states-digital-service	Join the U.S. Digital Service	2015-06-22 04:38:11.70826	2015-06-22 04:38:21.415379	350
1068	8991988	http://blogs.msdn.com/b/dotnet/archive/2015/02/03/coreclr-is-now-open-source.aspx	CoreCLR is now Open Source	2015-06-22 04:38:35.617801	2015-06-22 04:38:59.361848	616
1071	8994701	http://dougseven.com/2014/04/17/knightmare-a-devops-cautionary-tale/	How a ~$400M company went bankrupt in 45m because of a failed deployment	2015-06-22 04:38:48.084856	2015-06-22 04:38:49.01896	36
1059	8987434	http://www.bloomberg.com/news/articles/2015-02-02/exclusive-google-and-uber-are-going-to-war-over-taxis	Google Is Developing Its Own Uber Competitor	2015-06-22 04:38:00.476771	2015-06-22 04:38:11.679066	355
1053	8983355	http://dev.windows.com/en-us/featured/raspberrypi2support	Windows 10 for Raspberry Pi 2	2015-06-22 04:37:37.832638	2015-06-22 04:37:49.613763	402
1057	8984926	http://blog.dilbert.com/post/109880240641/sciences-biggest-fail	Science’s Biggest Fail	2015-06-22 04:37:52.960241	2015-06-22 04:37:53.671747	30
1088	9003791	http://www.propublica.org/article/the-worlds-email-encryption-software-relies-on-one-guy-who-is-going-broke	The World’s Email Encryption Software Relies on One Guy, Who Is Going Broke	2015-06-22 04:39:55.725552	2015-06-22 04:40:25.838416	1024
1064	8990584	https://matterhorn.io	Show HN: Meet Matterhorn, your new project manager	2015-06-22 04:38:28.876238	2015-06-22 04:38:33.989618	147
1073	8996003	http://fusion.net/story/42619/why-testosterone-is-the-drug-of-the-future/	Testosterone is the drug of the future	2015-06-22 04:39:03.228317	2015-06-22 04:39:07.218106	134
1061	8989495	https://github.com/voronianski/flux-comparison	Flux Comparison Demo – Facebook Flux, Fluxible by Yahoo, Reflux.js and More	2015-06-22 04:38:21.437057	2015-06-22 04:38:22.299154	42
1078	8997615	http://www.wired.com/2015/02/fcc-chairman-wheeler-net-neutrality/	FCC Chairman Tom Wheeler: This Is How We Will Ensure Net Neutrality	2015-06-22 04:39:13.479747	2015-06-22 04:39:33.268635	672
1054	8984266	https://www.owasp.org/index.php/Authentication_Cheat_Sheet	Authentication Cheat Sheet	2015-06-22 04:37:49.639459	2015-06-22 04:37:52.934533	85
1062	8989631	http://sjoerd.luon.net/posts/2015/02/debian-jessie-on-rpi2/	Debian Jessie on Raspberry Pi 2	2015-06-22 04:38:22.320939	2015-06-22 04:38:28.851309	92
1070	8994126	http://morepypy.blogspot.com/2015/02/pypy-250-released.html	PyPy 2.5.0 released	2015-06-22 04:38:46.40455	2015-06-22 04:38:51.348006	136
1074	8996024	https://medium.com/@warrenhenning/a-software-engineers-adventures-in-learning-mathematics-62140c59e5c	A Software Engineer’s Adventures in Learning Mathematics	2015-06-22 04:39:07.243075	2015-06-22 04:39:10.746528	124
1066	8991026	http://www.bbc.com/news/entertainment-arts-31118355	Harper Lee to publish Mockingbird 'sequel'	2015-06-22 04:38:34.013768	2015-06-22 04:38:35.506557	42
1067	8991866	http://www.gallup.com/opinion/chairman/181469/big-lie-unemployment.aspx	The Big Lie: 5.6% Unemployment	2015-06-22 04:38:35.539856	2015-06-22 04:38:35.578897	2
1080	9000428	http://www.philly.com/philly/news/20150204_TSA_jails_innocent_traveler_when_he_asks_to_file_a_complaint.html	Polaneczky: TSA jails innocent traveler when he asks to file a complaint	2015-06-22 04:39:24.65206	2015-06-22 04:39:24.679035	2
1075	8996946	https://github.com/laravel/laravel/releases	Laravel 5 released	2015-06-22 04:39:10.77123	2015-06-22 04:39:12.396413	59
1079	8999644	http://www.bloomberg.com/news/articles/2015-02-04/ross-ulbricht-convicted-of-running-silk-road-as-dread-pirate	Ross Ulbricht Convicted of Running Silk Road as Dread Pirate Roberts	2015-06-22 04:39:21.713114	2015-06-22 04:39:22.82933	36
1083	9001713	http://www.anthemfacts.com/	Health Insurer Anthem hit by data breach	2015-06-22 04:39:37.889798	2015-06-22 04:39:46.868788	242
1081	9001509	http://arstechnica.com/tech-policy/2015/02/att-previews-lawsuit-it-plans-to-file-against-fcc-over-net-neutrality/	AT&T previews lawsuit it plans to file against FCC	2015-06-22 04:39:32.654205	2015-06-22 04:39:32.946158	6
1082	9001416	http://cah.tumblr.com/post/110099027175/cards-against-humanitys-private-island-by-jenn	Cards Against Humanity bought a private island and gave it away	2015-06-22 04:39:33.307136	2015-06-22 04:39:37.856008	148
1084	9002256	http://www.theguardian.com/society/2015/feb/05/how-i-won-the-housing-market-without-really-trying	How I won the housing market without trying	2015-06-22 04:39:42.055419	2015-06-22 04:39:43.978223	68
1087	9004133	https://hacks.mozilla.org/2015/02/introducing-node-firefox/	Introducing node-firefox	2015-06-22 04:39:55.558812	2015-06-22 04:39:55.700769	6
1086	9003473	https://developer.ibm.com/watson/blog/2015/02/04/new-watson-services-available/	Five new IBM Watson services	2015-06-22 04:39:52.344828	2015-06-22 04:39:55.535447	123
1089	9008352	http://www.atomtips.com/atom-editor-vs-sublime-text/	Atom Editor or Sublime Text – which one to pick?	2015-06-22 04:40:25.862398	2015-06-22 04:40:26.868732	34
1090	9007825	http://www.hanselman.com/blog/3DPrinterShootout600PrintrbotVs20000UPrintSEPlus.aspx	3D Printer Shootout – $600 Printrbot vs. $20,000 UPrint SE Plus	2015-06-22 04:40:26.895776	2015-06-22 04:40:26.926276	2
1091	9008360	http://www.theguardian.com/uk-news/2015/feb/06/gchq-mass-internet-surveillance-unlawful-court-nsa	GCHQ mass Internet surveillance was unlawful, rules court	2015-06-22 04:40:26.954276	2015-06-22 04:40:31.506777	171
1130	9021255	http://www.wired.co.uk/news/archive/2015-02/09/kickass-torrents-down	Torrent site Kickass seized	2015-06-22 04:42:46.07419	2015-06-22 04:42:46.846688	26
1116	9016697	http://the-paper-trail.org/blog/the-elephant-was-a-trojan-horse-on-the-death-of-map-reduce-at-google/#more-604	On the Death of Map-Reduce at Google	2015-06-22 04:41:52.216106	2015-06-22 04:41:52.508361	8
1106	9014020	http://www.washingtonpost.com/local/at-some-start-ups-fridays-are-so-casual-everyone-can-stay-home/2015/02/06/31e8407e-9d1c-11e4-96cc-e858eba91ced_story.html	At some startups, Friday is so casual that it’s not even a workday	2015-06-22 04:41:16.827686	2015-06-22 04:41:20.704625	107
1103	9013261	http://www.vox.com/2015/2/5/7978823/congress-secrets/	Confessions of a Congressman	2015-06-22 04:41:02.614076	2015-06-22 04:41:12.134759	332
1097	9009554	https://github.com/fogleman/pt/blob/master/README.md	Show HN: I rendered the Go gopher using Go	2015-06-22 04:40:36.065536	2015-06-22 04:40:36.346212	12
1095	9009200	http://blog.42floors.com/volume-damn-high/#flights	The volume is too damn high (on flights)	2015-06-22 04:40:33.746032	2015-06-22 04:40:35.329231	60
1115	9016573	http://www.asianage.com/india/isro-launch-google-satellite-300	ISRO to launch Google satellite	2015-06-22 04:41:47.99044	2015-06-22 04:41:54.468232	172
1098	9009600	http://robertmoorejr.tumblr.com/post/110101466091/im-an-anti-braker	I’m an Anti-Braker	2015-06-22 04:40:36.369284	2015-06-22 04:40:37.592021	41
1129	9020931	http://ivc.com/blog/better-sql-strings-in-node-js/	Better SQL strings in io.js (Node.js)	2015-06-22 04:42:45.352176	2015-06-22 04:42:46.048521	24
1100	9009988	http://www.engadget.com/2015/02/06/the-witness-money/	‘Braid’ creator sacrifices his fortune to build his next game	2015-06-22 04:40:43.979695	2015-06-22 04:40:45.705611	50
1109	9014321	https://www.eff.org/deeplinks/2015/02/7-things-love-about-reddits-first-transparency-report	7 Things to Love About Reddit’s First Transparency Report	2015-06-22 04:41:18.260274	2015-06-22 04:41:18.560318	12
1119	9017030	https://netzpolitik.org/2015/samsung-warnt-bitte-achten-sie-darauf-nichts-privates-vor-unseren-smarttvs-zu-erzaehlen/	Samsung warns: Don`t say anything private near Smart-TVs	2015-06-22 04:42:02.742223	2015-06-22 04:42:04.333224	50
1104	9013890	http://www.bloomberg.com/video/76764754-outlook-for-stocks-in-hong-kong-south-korea.html	404. PAGE Not FOUND	2015-06-22 04:41:12.165636	2015-06-22 04:41:16.74316	160
1092	9007927	http://www.cell.com/pb/assets/raw/journals/research/cell-systems/do-not-delete/CELS1_FINAL.pdf	Half the DNA on the NYC Subway Matches No Known Organism [pdf]	2015-06-22 04:40:31.530286	2015-06-22 04:40:32.253132	26
1093	9008776	http://crunchbang.org/forums/viewtopic.php?id=38916	CrunchBang Linux: The end	2015-06-22 04:40:31.77549	2015-06-22 04:40:33.334716	40
1105	9014125	http://bushostelreykjavik.com/last-mcdonalds-in-iceland	The last McDonalds hamburger in Iceland	2015-06-22 04:41:16.767611	2015-06-22 04:41:16.803687	2
1117	9016949	http://www.audiovisualonline.co.uk/product/8041/audioquest-diamond-rj-e-ethernet-cable-12m	£6899 Ethernet Cable	2015-06-22 04:41:54.716437	2015-06-22 04:41:55.696022	38
1101	9011641	http://blogs.wsj.com/totalreturn/2015/02/06/turbotax-halts-e-filing-of-state-tax-returns/?mod=WSJ_hp_LEFTWhatsNewsCollection	TurboTax halts all state e-filing amid data breach probe	2015-06-22 04:40:45.728239	2015-06-22 04:41:00.870801	500
1128	9020592	http://www.bloomberg.com/apps/news?pid=newsarchive&sid=aHURVoSUqpho	Banks Paid $32.6B in Bonuses Amid U.S. Bailout (2009)	2015-06-22 04:42:41.495688	2015-06-22 04:42:45.320534	82
1121	9018082	https://github.com/gorhill/uBlock/wiki/Dynamic-filtering:-default-deny	µBlock's newest feature makes it an alternative to RequestPolicy	2015-06-22 04:42:08.216778	2015-06-22 04:42:11.610715	106
1110	9014755	https://github.com/CamHenlin/imessageclient	Show HN: I made a command line iMessage interface	2015-06-22 04:41:20.729043	2015-06-22 04:41:25.842392	162
1114	9015663	http://www.raspberrypi.org/forums/viewtopic.php?f=28&t=99042	A Xenon flash will cause the Raspberry Pi 2 to freeze	2015-06-22 04:41:31.161215	2015-06-22 04:41:57.238745	516
1112	9015160	http://www.kalzumeus.com/2011/10/28/dont-call-yourself-a-programmer/	Don't call yourself a programmer	2015-06-22 04:41:26.269765	2015-06-22 04:41:27.067777	16
1096	9009282	http://www.bbc.co.uk/news/technology-31148661	Ubuntu smartphone offers alternative to apps	2015-06-22 04:40:35.354792	2015-06-22 04:40:36.042816	30
1094	9008916	http://streetwiseprofessor.com/?p=9124	Turn Out the Lights, the Party’s Over	2015-06-22 04:40:33.357938	2015-06-22 04:40:33.720352	16
1107	9013798	http://www.wired.com/2015/02/whats-up-with-cats-and-boxes/	Why Do Cats Love Boxes So Much?	2015-06-22 04:41:17.542167	2015-06-22 04:41:18.175722	20
1102	9013211	https://www.eff.org/deeplinks/2015/01/new-drm-boss-same-old-boss	YouTube Ditches Flash, and It Hardly Matters	2015-06-22 04:40:59.384739	2015-06-22 04:41:02.590769	91
1099	9009706	http://jlongster.com/First-Impressions-using-React-Native	First Impressions Using React Native	2015-06-22 04:40:36.717479	2015-06-22 04:40:43.953825	222
1108	9014200	http://www.soroushjp.com/2015/02/07/go-concurrency-is-not-parallelism-real-world-lessons-with-monte-carlo-simulations/	Go concurrency isn't parallelism: Real world lessons with Monte Carlo sims	2015-06-22 04:41:18.203785	2015-06-22 04:41:18.233836	2
1113	9015370	http://yosefk.com/blog/do-call-yourself-a-programmer-and-other-career-advice.html	Do call yourself a programmer, and other career advice	2015-06-22 04:41:29.045442	2015-06-22 04:41:31.136755	73
1111	9014890	https://dev.opera.com/articles/perfect-javascript-framework/	In search of the perfect JavaScript framework	2015-06-22 04:41:25.880837	2015-06-22 04:41:29.274732	71
1126	9020165	http://www.icij.org/project/swiss-leaks/explore-swiss-leaks-data/	Explore leaked Swiss bank data	2015-06-22 04:42:36.525614	2015-06-22 04:42:43.12913	229
1122	9017986	http://observationdeck.io9.com/why-is-the-dollar-sign-a-letter-s-1683940575	Why Is the Dollar Sign a Letter S?	2015-06-22 04:42:11.639511	2015-06-22 04:42:14.408766	71
1124	9019137	http://annotated-code.maryrosecook.com/circles-bouncing-off-lines/index.html	Annotated code: Circles bouncing off lines	2015-06-22 04:42:20.063959	2015-06-22 04:42:24.729477	153
1123	9018129	http://www.slideshare.net/MarkusWinand/modern-sql	Modern SQL in PostgreSQL	2015-06-22 04:42:14.446629	2015-06-22 04:42:20.04012	154
1118	9017027	http://www.dawood.in/if-carpenters-were-hired-like-programmers/	If Carpenters Were Hired Like Programmers	2015-06-22 04:41:56.274003	2015-06-22 04:42:02.718964	233
1120	9017719	https://github.com/ali1234/raspi-teletext	Teletext for Raspberry Pi	2015-06-22 04:42:04.260173	2015-06-22 04:42:08.193305	137
1125	9019498	http://elementscompiler.com/elements/silver/	3rd Party Swift Compiler: Use with .NET, Java, Android and Cocoa	2015-06-22 04:42:24.755009	2015-06-22 04:42:36.503996	337
1127	9020647	http://www.iamthefold.com	I am the fold	2015-06-22 04:42:40.497783	2015-06-22 04:42:40.530988	2
1131	9021244	http://howistart.org/posts/nim/1	How I Start: Nim	2015-06-22 04:42:46.870379	2015-06-22 04:42:51.96852	89
1132	9021841	http://www.noisli.com/get_combo_by_link/pd8blIFySEkTOHB	Tool to keep you sane during work	2015-06-22 04:42:50.030236	2015-06-22 04:42:51.907858	58
1133	9022311	http://www.thecaravanserai.co/	Show HN: A Global Co-Living Subscription for Nomads	2015-06-22 04:42:52.004015	2015-06-22 04:42:53.549823	54
1135	9023582	http://blog.ycombinator.com/$500k-of-azure-credit-for-yc-startups	$500k of Azure credit for YC startups	2015-06-22 04:42:57.768063	2015-06-22 04:43:04.60031	244
1134	9022470	http://blog.chromium.org/2015/02/hello-http2-goodbye-spdy-http-is_9.html	Hello HTTP/2, Goodbye SPDY	2015-06-22 04:42:53.573622	2015-06-22 04:42:57.748331	137
1136	9024751	https://xato.net/passwords/ten-million-passwords/	Today I Am Releasing Ten Million Passwords	2015-06-22 04:43:04.623934	2015-06-22 04:43:19.167549	403
1178	9049698	https://github.com/ckkashyap/rustix/issues/8	Author of “Unix in Rust” Abandons Rust in Favour of Nim	2015-06-22 04:46:29.455947	2015-06-22 04:46:31.002943	54
1141	9027498	http://www.theguardian.com/books/2015/feb/09/centireading-force-reading-book-100-times-great-idea	Why reading a book 100 times is a great idea	2015-06-22 04:43:31.922181	2015-06-22 04:43:32.944352	28
1150	9034201	http://www.eurogamer.net/articles/2015-02-11-the-god-who-peter-molyneux-forgot	The God Who Peter Molyneux Forgot	2015-06-22 04:44:23.116265	2015-06-22 04:44:23.845911	24
1148	9033149	https://github.com/github/dmca/commit/313ac74e3de8b692adfed5ef2bf60436aa8e2040	University of Illinois issues DMCA takedown for previous years' homework	2015-06-22 04:44:18.82307	2015-06-22 04:44:19.032968	4
1167	9043594	http://blog.noctua-software.com/c-tricks.html	C99 tricks	2015-06-22 04:45:41.702919	2015-06-22 04:45:42.028824	12
1149	9032685	https://www.adbusters.org/magazine/115/datacide-total-annihilation-life-we-know-it.html	DATAcide: The Total Annihilation of Life as We Know It	2015-06-22 04:44:19.426263	2015-06-22 04:44:23.932942	144
1137	9025572	https://github.com/Apple-FOSS-Mirror/Libc/blob/2ca2ae74647714acfc18674c3114b1a5d3325d7d/gen/wordexp.c#L192	Apple's libc shells out to Perl to implement wordexp	2015-06-22 04:43:14.046267	2015-06-22 04:43:16.509854	75
1140	9027180	https://lists.gnu.org/archive/html/emacs-devel/2015-02/msg00457.html	Defending GCC considered futile	2015-06-22 04:43:29.808447	2015-06-22 04:43:31.89135	51
1159	9038170	https://lists.gnupg.org/pipermail/gnupg-announce/2015q1/000361.html	GnuPG 2.1.2 released	2015-06-22 04:44:53.095578	2015-06-22 04:45:00.517469	211
1145	9031419	http://breakingmalware.com/vulnerabilities/one-bit-rule-bypassing-windows-10-protections-using-single-bit/	One-Bit to Rule Them All: Bypassing Windows’ 10 Protections Using a Single Bit	2015-06-22 04:43:57.248127	2015-06-22 04:44:12.850172	521
1165	9042858	http://nytimes.com/2015/02/13/business/media/david-carr-media-equation-columnist-for-the-times-is-dead-at-58.html	David Carr Dies at 58	2015-06-22 04:45:29.141089	2015-06-22 04:45:33.091525	143
1154	9035521	https://code.facebook.com/posts/717010588413497/introducing-6-pack-the-first-open-hardware-modular-switch/	Introducing “6-pack”: the first open hardware modular switch	2015-06-22 04:44:30.833165	2015-06-22 04:44:31.447217	17
1147	9032598	http://www.royvanrijn.com/blog/2015/02/paper-sizes/	Paper Sizes: Ban the US Letter Standard, Hurray for Math	2015-06-22 04:44:13.378844	2015-06-22 04:44:19.404426	150
1163	9040090	http://www.7xter.com/2015/02/how-i-hacked-your-facebook-photos.html	Deleting any Facebook album	2015-06-22 04:45:10.595619	2015-06-22 04:45:20.873964	357
1138	9026025	http://crockpotveggies.com/2015/02/09/automating-tinder-with-eigenfaces.html	Automating Tinder with Eigenfaces	2015-06-22 04:43:19.211734	2015-06-22 04:43:27.592195	263
1161	9038888	http://www.washingtonpost.com/blogs/the-switch/wp/2015/02/12/this-new-tesla-battery-will-power-your-home-and-maybe-the-electric-grid-too/	This new Tesla battery will power your home, and maybe the electric grid too	2015-06-22 04:45:02.917968	2015-06-22 04:45:06.999365	135
1155	9036028	https://www.rapidshare.com/home	RapidShare is Shutting down	2015-06-22 04:44:31.485015	2015-06-22 04:44:52.032339	659
1153	9035256	http://blog.ycombinator.com/yc-open-source-sales-agreement	YC Open-Source Sales Agreement	2015-06-22 04:44:26.551318	2015-06-22 04:44:30.791889	135
1146	9032226	http://githut.info	Programming Languages on GitHub	2015-06-22 04:44:12.874527	2015-06-22 04:44:13.357845	20
1156	9037325	http://www.nytimes.com/2015/02/15/magazine/the-stanford-undergraduate-and-the-mentor.html 	The Stanford Undergraduate and the Mentor	2015-06-22 04:44:47.072436	2015-06-22 04:44:47.241496	4
1157	9037939	http://bits.blogs.nytimes.com/2015/02/12/apple-pairs-with-pinterest-for-better-app-discovery/?_r=0	Aiming to Ease App Discovery, Apple Pairs With Pinterest	2015-06-22 04:44:52.053437	2015-06-22 04:44:53.005151	41
1158	9037115	http://coq-blog.clarus.me/a-blog-engine-written-and-proven-in-coq.html	A blog engine written and proven in Coq	2015-06-22 04:44:53.034098	2015-06-22 04:44:53.480995	16
1164	9042282	http://www.slate.com/articles/health_and_science/science/2015/02/fda_inspections_fraud_fabrication_and_scientific_misconduct_are_hidden_from.single.html	The FDA buries evidence of fraud in medical trials. My students and I dug it up	2015-06-22 04:45:20.900359	2015-06-22 04:45:39.361636	488
1160	9038505	http://www.michaelnielsen.org/ddi/lisp-as-the-maxwells-equations-of-software/	Lisp as the Maxwell Equations of Software	2015-06-22 04:45:00.544	2015-06-22 04:45:02.884933	64
1143	9029159	https://github.com/flipboard/react-canvas	Flipboard releases React Canvas	2015-06-22 04:43:39.5539	2015-06-22 04:43:44.756314	179
1144	9030314	http://blog.samaltman.com/farmlogs	FarmLogs	2015-06-22 04:43:44.779126	2015-06-22 04:43:57.220269	333
1166	9043524	http://gizmodo.com/why-is-my-smart-home-so-fucking-dumb-1684949715	Why Is My Smart Home So Dumb?	2015-06-22 04:45:38.976777	2015-06-22 04:45:41.669448	76
1162	9039754	http://www.scottaaronson.com/blog/?p=2212	Memrefuting	2015-06-22 04:45:07.038559	2015-06-22 04:45:10.572149	111
1139	9026730	http://futurice.com/blog/programmer-proverbs	Programmer proverbs	2015-06-22 04:43:27.227184	2015-06-22 04:43:29.768492	70
1170	9044805	http://www.bloomberg.com/news/articles/2015-02-12/goldman-sachs-ex-programmer-sues-fbi-agents-who-arrested-him	Goldman Sachs Ex-Programmer Sues FBI Agents Who Arrested Him	2015-06-22 04:45:50.665121	2015-06-22 04:45:52.19117	43
1142	9027743	http://ownme.ipredator.se	The Bitcoin Pinata	2015-06-22 04:43:32.98318	2015-06-22 04:43:39.620719	223
1152	9034319	http://blog.geoffralston.com/startup-priorities	Startup Priorities	2015-06-22 04:44:25.569467	2015-06-22 04:44:26.526269	36
1169	9044719	http://broadbandnow.com/report/2013-underserved/	More than 39M Americans Only Have Access to 1 Wired Broadband Provider	2015-06-22 04:45:48.099902	2015-06-22 04:45:50.802446	86
1171	9045305	http://gizmodo.com/fuck-it-im-going-back-to-firefox-1685425815	Fuck It, I'm Going Back to Firefox	2015-06-22 04:45:52.241656	2015-06-22 04:46:01.804989	315
1173	9048110	https://plus.google.com/115863474911002159675/posts/bpUvi6BBubm	Nest Protect is a terrible buggy product	2015-06-22 04:46:05.619146	2015-06-22 04:46:09.389907	146
1168	9044030	http://www.bbc.co.uk/news/science-environment-31450389	Google's Vint Cerf Warns of 'digital Dark Age'	2015-06-22 04:45:42.052129	2015-06-22 04:45:48.062571	173
1176	9048909	http://www.nostarch.com/xboxfree	An open letter from bunnie, author of Hacking the Xbox	2015-06-22 04:46:16.625097	2015-06-22 04:46:18.309757	58
1151	9034673	http://blog.samaltman.com/china	China	2015-06-22 04:44:23.969412	2015-06-22 04:44:25.534863	42
1175	9048772	http://www.theguardian.com/technology/2015/feb/13/apple-ceo-tim-cook-challenges-obama-privacy	Apple CEO Tim Cook challenges Obama with impassioned stand on privacy	2015-06-22 04:46:15.17083	2015-06-22 04:46:32.901419	447
1172	9047786	http://arxiv.org/pdf/1502.03167v1.pdf	Batch Normalization: Accelerating Deep Network Training [pdf]	2015-06-22 04:46:01.829686	2015-06-22 04:46:10.006071	133
1174	9046526	http://blog.rust-lang.org/2015/02/13/Final-1.0-timeline.html	Rust 1.0: Status report and final timeline	2015-06-22 04:46:09.662513	2015-06-22 04:46:15.147404	164
1177	9049592	http://blog.elementaryos.org/post/110481021076/freya-beta-2-is-here	Elementary OS Freya Beta 2 is here	2015-06-22 04:46:28.741803	2015-06-22 04:46:31.107132	27
1179	9049945	http://marc.info/?l=openbsd-tech&m=142356166731390&w=2	Authenticated TLS “contraints” in ntpd(8)	2015-06-22 04:46:32.92691	2015-06-22 04:46:34.392475	48
1180	9049988	http://www.nytimes.com/2015/02/14/world/europe/russian-tv-insider-says-putin-is-running-the-show-in-ukraine.html	A Russian TV Insider Describes a Modern Propaganda Machine	2015-06-22 04:46:34.424195	2015-06-22 04:46:37.703271	85
1181	9050199	http://footertext.tumblr.com/	Show HN: “Made With” Fetish – Footer Text	2015-06-22 04:46:35.242278	2015-06-22 04:46:35.304561	2
1222	9068334	http://www.bbc.co.uk/news/technology-31519068	Google faces Russia Android probe after Yandex protest	2015-06-22 04:49:20.554932	2015-06-22 04:49:23.878497	104
1199	9055953	https://nationalpostcom.files.wordpress.com/2012/05/fo0505_nuclearweaponsw25001.gif	Nukes ready to fly	2015-06-22 04:47:47.641585	2015-06-22 04:47:47.716653	4
1216	9065149	https://blog.shodan.io/duplicate-ssh-keys-everywhere/	Duplicate SSH Keys Everywhere	2015-06-22 04:48:52.561448	2015-06-22 04:48:59.853033	161
1215	9064257	http://www.pieria.co.uk/articles/why_the_worlds_biggest_military_keeps_losing_wars	Why the world's biggest military keeps losing wars	2015-06-22 04:48:50.137773	2015-06-22 04:48:52.481591	87
1217	9065476	http://blog.anylistapp.com/2015/02/open-letter-to-tim-cook-regarding-app-store-revenue-split/	An Open Letter to Tim Cook Regarding the App Store 70 / 30 Revenue Split	2015-06-22 04:48:55.995058	2015-06-22 04:48:58.146213	76
1201	9056041	http://YouDontKnowJS.com	You Don't Know JavaScript (JavaScript Book Series)	2015-06-22 04:47:49.30902	2015-06-22 04:47:50.805646	39
1191	9053496	http://crypto.stanford.edu/~blynn/rop/	64-bit Linux Return-Oriented Programming	2015-06-22 04:47:21.90437	2015-06-22 04:47:25.211926	66
1183	9050436	http://www.nytimes.com/2015/02/15/world/bank-hackers-steal-millions-via-malware.html	Bank Hackers Steal Millions via Malware	2015-06-22 04:46:38.689867	2015-06-22 04:46:43.508975	169
1213	9062420	http://netrunner-mag.com/libreoffice-4-4-review-finally-it-rocks/	LibreOffice 4.4 review – Finally, it rocks	2015-06-22 04:48:38.947256	2015-06-22 04:48:46.978082	213
1212	9061901	http://offgridquest.com/news/tesla-motors-announces-a-new-home-batter	Tesla Motors Announces a New Home Battery; Living Off the Grid Will Soon Be	2015-06-22 04:48:34.647385	2015-06-22 04:48:38.907671	101
1193	9053286	http://techspot.zzzeek.org/2015/02/15/asynchronous-python-and-databases/	Asynchronous Python and Databases	2015-06-22 04:47:25.241417	2015-06-22 04:47:29.334925	133
1190	9053255	http://www.nytimes.com/2015/02/15/jobs/the-tyranny-of-the-forced-smile.html	The Tyranny of the Forced Smile	2015-06-22 04:47:21.012547	2015-06-22 04:47:21.868235	30
1208	9058701	http://arstechnica.com/security/2015/02/how-omnipotent-hackers-tied-to-the-nsa-hid-for-14-years-and-were-found-at-last/	“Equation Group” ran the most advanced hacking operation ever uncovered	2015-06-22 04:48:05.550591	2015-06-22 04:48:25.211878	685
1205	9057493	http://gutsybroads.com/2015/02/investor-wanted-give-50000-heres-said-no/	An Investor Wanted to Give Me $50,000. Here’s Why I Said No	2015-06-22 04:47:58.560145	2015-06-22 04:47:58.634095	4
1198	9055861	https://bugzilla.mozilla.org/show_bug.cgi?id=949446	Mozilla Bug Report 949446: “i can see all source code of all projects”	2015-06-22 04:47:45.8952	2015-06-22 04:47:46.399899	22
1197	9055516	http://infolab.stanford.edu/~sergey/resume.html	Sergey Brin's Resume as a Student	2015-06-22 04:47:41.472662	2015-06-22 04:47:44.660417	88
1203	9056355	https://github.com/IonicaBizau/git-stats	Git-Stats, terminal GitHub-like commit calendar	2015-06-22 04:47:54.134473	2015-06-22 04:47:57.768225	140
1187	9052448	https://github.com/peenuty/BitcoinEmissions	Each Bitcoin in the near future will release 1.6 tonnes of CO2	2015-06-22 04:47:11.234886	2015-06-22 04:47:13.332101	71
1200	9055869	http://www.justice.gov/opa/pr/member-megaupload-conspiracy-pleads-guilty-copyright-infringement-charges-and-sentenced-one	Megaupload programmer goes to prison for one year	2015-06-22 04:47:48.135731	2015-06-22 04:47:49.274826	42
1196	9055189	http://framesynthesis.com/drivingsimulator/maps/	Google Maps 2D Driving Simulator	2015-06-22 04:47:40.585191	2015-06-22 04:47:48.113058	132
1189	9053263	http://crunchbangplusplus.org/	Crunchbang is not dead.	2015-06-22 04:47:17.852275	2015-06-22 04:47:20.984397	99
1182	9049467	https://spyder.wordpress.com/2014/03/16/why-ocaml-why-now/	Why OCaml, why now? (2014)	2015-06-22 04:46:37.726957	2015-06-22 04:46:38.661389	38
1186	9052129	https://www.haskell.org/?new	The New Haskell.org	2015-06-22 04:47:02.099596	2015-06-22 04:47:13.536343	283
1188	9052560	http://m0n0.ch/wall/end_announcement.php	End of the m0n0wall project	2015-06-22 04:47:13.560367	2015-06-22 04:47:17.660545	134
1206	9057122	http://sortieenmer.com	Sortie en mer – A trip out to sea	2015-06-22 04:48:00.494153	2015-06-22 04:48:01.20085	14
1211	9061765	http://blog.workshape.io/the-problem-with-job-titles/	The Problem with Job Titles	2015-06-22 04:48:33.293182	2015-06-22 04:48:38.237878	74
1204	9057133	http://chronicle.com/article/Can-the-Human-Brain-Project-Be/190031/?key=HWNxIQxsYHVGMS4wYG1KZz1dayFsMBl8Y35PPngjblFWFQ==	Can (and should) the Human Brain Project be saved?	2015-06-22 04:47:57.80268	2015-06-22 04:48:00.789884	107
1207	9057996	http://blog.samaltman.com/the-software-revolution	The Software Revolution	2015-06-22 04:48:01.229217	2015-06-22 04:48:05.40392	137
1184	9050970	http://websocketd.com/	Show HN: A Unixy approach to WebSockets	2015-06-22 04:46:43.530535	2015-06-22 04:47:02.073924	586
1209	9060062	http://www.oftenpaper.net/sierpinski.htm	The Sierpinski triangle page to end most Sierpinski triangle pages	2015-06-22 04:48:25.236601	2015-06-22 04:48:28.098122	78
1202	9056219	http://tech.mattmillman.com/8od/	Arduino styled single board computer uses Intel's 37 year old 8086 cpu	2015-06-22 04:47:50.83948	2015-06-22 04:47:54.112912	120
1192	9053621	https://exco.in/	Excoin exchange Bitcoins stolen, will be shutting down	2015-06-22 04:47:22.169861	2015-06-22 04:47:23.718647	50
1194	9054290	http://tmwhere.com/city_generation.html	Procedural City Generation	2015-06-22 04:47:29.376303	2015-06-22 04:47:34.258791	146
1185	9051827	http://daftpunkonsole.com/	Daftpunkonsole	2015-06-22 04:46:55.565534	2015-06-22 04:46:57.179576	53
1195	9054795	https://status.haskell.org/	Deb.haskell.org Security Breach	2015-06-22 04:47:34.294495	2015-06-22 04:47:40.55271	212
1210	9061309	http://joshsummers.co.uk/2015/02/16/Lego-1981-Beautiful-Advert/	Lego’s Beautiful 1981 Ad Campaign	2015-06-22 04:48:28.122787	2015-06-22 04:48:33.263238	163
1214	9063884	https://lists.freebsd.org/pipermail/freebsd-current/2015-February/054580.html	FreeBSD-CURRENT's RNG has broken for the last 4 months	2015-06-22 04:48:47.001933	2015-06-22 04:48:52.536367	94
1224	9069031	http://www.catb.org/esr/structure-packing/?src=yc	The Lost Art of C Structure Packing	2015-06-22 04:49:27.762911	2015-06-22 04:49:29.951898	78
1220	9067722	http://theinstructionlimit.com/i-know-this-global-game-jam-2015	I Know This – Hack Jurassic Park’s Security System	2015-06-22 04:49:15.60797	2015-06-22 04:49:20.526168	58
1219	9066796	https://twitter.com/renaudbedard/status/567827024775127040	“a spambot barfed its post recipe on my blog, it's beautiful”	2015-06-22 04:49:03.494773	2015-06-22 04:49:19.092607	470
1221	9067453	https://blog.shodan.io/the-country-of-vietnam-resolves-to-localhost/	The Country of Vietnam Resolves to Localhost	2015-06-22 04:49:17.188493	2015-06-22 04:49:18.923128	57
1218	9066379	https://www.mnot.net/blog/2015/02/18/http2	HTTP/2 is Done	2015-06-22 04:48:59.876556	2015-06-22 04:49:03.460598	122
1223	9068828	http://blog.taskulu.com/post/how-get-actionable-leads-twitter-real-time?utm_source=HN&utm_medium=social&utm_campaign=techblog	How to get actionable leads from Twitter with 50 lines of code	2015-06-22 04:49:23.934573	2015-06-22 04:49:27.738046	121
1225	9069747	http://pluto.jhuapl.edu/News-Center/News-Article.php?page=20150218	85 Years After Pluto’s Discovery, New Horizons Spots Small Moons Orbiting Pluto	2015-06-22 04:49:29.975628	2015-06-22 04:49:30.309444	14
1226	9070140	https://docs.google.com/document/u/2/d/197pwFltWL2HPnOAmC840sPHhjxqxiOnNVOuI_dnLLb4/pub	Whiteboard Clock	2015-06-22 04:49:30.33344	2015-06-22 04:49:50.715079	605
1257	9089756	http://www.buzzfeed.com/johnknefel/how-police-harassment-at-methadone-clinics-makes-quitting-he	The Common Cure for Heroin Addiction Is Also a Magnet for Police Harassment	2015-06-22 04:52:21.984989	2015-06-22 04:52:22.271026	11
1248	9084148	https://www.facebook.com/notes/protect-the-graph/windows-ssl-interception-gone-wild/1570074729899339	Windows SSL Interception Gone Wild	2015-06-22 04:51:10.9917	2015-06-22 04:51:31.731085	647
1239	9080117	http://blog.davidbanham.com/articles/coffeescript-psa/	Coffeescript 1.9.0 contains a backwards incompatible change	2015-06-22 04:50:51.10092	2015-06-22 04:50:51.373193	12
1242	9080665	http://stuartspencestuff.blogspot.com/2015/02/many-mcgill-education-students-cannot.html	Many McGill Education Students Cannot Calculate an Average	2015-06-22 04:50:53.235421	2015-06-22 04:50:56.168198	97
1233	9074110	http://blog.erratasec.com/2015/02/extracting-superfish-certificate.html	Extracting the SuperFish certificate	2015-06-22 04:50:10.077956	2015-06-22 04:50:14.633441	148
1229	9072842	http://www.sqlteaching.com/	Show HN: SQL Teaching – Codecademy for SQL	2015-06-22 04:49:57.281058	2015-06-22 04:50:01.07121	134
1231	9073504	http://www.nytimes.com/2015/02/19/opinion/oliver-sacks-on-learning-he-has-terminal-cancer.html	Oliver Sacks on learning he has terminal cancer	2015-06-22 04:50:02.7994	2015-06-22 04:50:10.053986	213
1230	9072408	http://www.wired.com/2015/02/hacker-claims-feds-hit-44-felonies-refused-fbi-spy/	Hacker Claims Feds Hit Him with 44 Felonies When He Refused to Be an FBI Spy	2015-06-22 04:50:01.101262	2015-06-22 04:50:02.879994	65
1228	9072953	https://status.cloud.google.com/incident/compute/15045	Google Compute Engine Down - All Regions	2015-06-22 04:49:56.045456	2015-06-22 04:49:56.124971	4
1227	9072424	http://thenextweb.com/insider/2015/02/19/lenovo-caught-installing-adware-new-computers/	Lenovo Caught Installing Adware on New Computers	2015-06-22 04:49:50.740526	2015-06-22 04:49:57.256633	225
1238	9079861	https://github.com/iojs/io.js/blob/v1.x/CHANGELOG.md#2015-02-20-version-130-rvagg	Io.js 1.3.0 released	2015-06-22 04:50:45.728975	2015-06-22 04:50:51.530656	203
1247	9083933	http://techcrunch.com/2015/02/20/software-eats-sex-trafficking-ycs-rescue-forensics-aids-law-enforcement-in-finding-victims/	Software Eats Sex Trafficking: YC’s Rescue Forensics Aids Law Enforcement	2015-06-22 04:51:09.309632	2015-06-22 04:51:10.967691	49
1251	9085921	https://github.com/yuin/gopher-lua	GopherLua: VM and Compiler for Lua in Go	2015-06-22 04:51:39.655143	2015-06-22 04:51:47.326827	253
1361	9143570	https://www.lawgeex.com	Understand contracts before you sign them	2015-06-22 04:59:45.531593	2015-06-22 04:59:46.391327	28
1260	9089634	http://nautil.us/blog/money-doesnt-buy-happiness-but-time-just-might-do-it?utm_source=tss&utm_medium=desktop&utm_campaign=linkfrom	Money Doesn’t Buy Happiness, but Time Just Might Do It	2015-06-22 04:52:24.10062	2015-06-22 04:52:24.353964	10
1236	9078247	https://bug1134506.bugzilla.mozilla.org/attachment.cgi?id=8566794	Browser Vulnerability to Superfish: A Fact-Finding Trip to Best Buy	2015-06-22 04:50:26.685289	2015-06-22 04:50:45.695688	333
1246	9082666	http://ir.netflix.com/long-term-view.cfm	Netflix Long Term View	2015-06-22 04:51:04.241124	2015-06-22 04:51:06.547645	68
1237	9078932	http://www.apple.com/ca/support/macbookpro-videoissues/	MacBook Pro Repair Extension Program for Video Issues	2015-06-22 04:50:34.710242	2015-06-22 04:50:43.320441	276
1235	9075945	https://stripe.com/bitcoin	Stripe: Bitcoin	2015-06-22 04:50:14.674369	2015-06-22 04:50:26.661202	390
1234	9074676	http://news.lenovo.com/article_display.cfm?article_id=1929	Lenovo Statement on Superfish	2015-06-22 04:50:11.574464	2015-06-22 04:50:12.25044	28
1241	9080834	http://www.wired.com/2015/02/lenovo-superfish/	Lenovo's Response to Its Dangerous Adware Is Astonishingly Clueless	2015-06-22 04:50:52.775354	2015-06-22 04:50:53.211064	18
1253	9087078	http://animagraffs.com/how-a-handgun-works-1911-45/	How a Handgun Works: 1911 .45	2015-06-22 04:51:49.220367	2015-06-22 04:51:49.426667	10
1244	9081088	http://jlongster.com/Radical-Statements-about-the-Mobile-Web	Radical Statements about the Mobile Web	2015-06-22 04:50:56.568964	2015-06-22 04:50:58.512205	58
1243	9080960	http://www.economist.com/blogs/buttonwood/2015/02/finance-sector-and-growth	Warning: too much finance is bad for the economy	2015-06-22 04:50:56.19904	2015-06-22 04:50:57.12921	26
1232	9074330	http://www.andjosh.com/2015/02/15/using-open-protocols/	Your app is not better than an open standard	2015-06-22 04:50:09.420622	2015-06-22 04:50:09.858581	12
1240	9080567	http://www.smithsonianmag.com/arts-culture/who-can-save-the-grand-canyon-180954329/?no-ist	Who Can Save the Grand Canyon?	2015-06-22 04:50:51.553633	2015-06-22 04:50:52.751842	42
1249	9084620	http://www.symantec.com/connect/blogs/gogo-inflight-internet-intentionally-issuing-fake-ssl-certificates	Lenovo not the only one spoofing SSL certificates	2015-06-22 04:51:15.563344	2015-06-22 04:51:17.044385	46
1250	9085411	http://www.iarc.fr/en/media-centre/pr/2015/pdfs/pr231_E.pdf	Most types of cancer not due to “bad luck” [pdf]	2015-06-22 04:51:31.756938	2015-06-22 04:51:39.631413	213
1265	9090525	http://ssj3gohan.tweakblogs.net/blog/11470/why-fuel-cell-cars-dont-work-part-1	Why fuel cell cars don't work	2015-06-22 04:52:30.322659	2015-06-22 04:52:32.16059	62
1258	9089863	http://www.theguardian.com/world/2014/feb/23/is-san-francisco-losing-its-soul	Is San Francisco losing its soul? (2014)	2015-06-22 04:52:22.297063	2015-06-22 04:52:23.150518	30
1255	9087037	http://blog.attractmo.de/post/111642896790/this-is-just-the-beginning-of-what-we-can-do-on	“Just the Beginning of What We Can Do on Super Nintendo”	2015-06-22 04:51:50.990765	2015-06-22 04:51:56.797179	173
1254	9086751	https://blog.jessfraz.com/posts/docker-containers-on-the-desktop.html	Docker containers on the desktop	2015-06-22 04:51:49.448279	2015-06-22 04:51:51.30373	64
1245	9082077	http://blog.samaltman.com/startup-advice-briefly	Startup advice, briefly	2015-06-22 04:50:58.535678	2015-06-22 04:51:09.263236	263
1252	9086516	http://astropad.com/	Astropad – Transform your iPad into a professional graphics tablet	2015-06-22 04:51:45.962414	2015-06-22 04:51:49.199883	71
1256	9087819	http://www.getmagicnow.com	Magic	2015-06-22 04:51:56.821286	2015-06-22 04:52:24.064073	885
1259	9089903	http://www.nytimes.com/2015/02/22/sunday-review/please-dont-thank-me-for-my-service.html	Please Don’t Thank Me for My Service	2015-06-22 04:52:23.662516	2015-06-22 04:52:23.760505	4
1262	9090100	http://www.jenniferaldoretta.com/2015/02/22/an-open-letter-to-jessica-livingston/	An Open Letter to Jessica Livingston About YC's Female Founders Conference	2015-06-22 04:52:25.79336	2015-06-22 04:52:27.342721	53
1264	9090756	https://www.chillingeffects.org/notices/10416081	DMCA (Copyright) Complaint to Google	2015-06-22 04:52:27.836409	2015-06-22 04:52:29.547724	49
1261	9090135	http://www.gigpeppers.com/if-you-are-storing-important-info-in-evernote-think-twice/	If you are storing important info in Evernote, think twice	2015-06-22 04:52:24.379348	2015-06-22 04:52:29.665892	63
1267	9091917	https://blog.hboeck.de/archives/865-Comodo-ships-Adware-Privdog-worse-than-Superfish.html	Comodo ships Adware Privdog worse than Superfish	2015-06-22 04:52:36.647443	2015-06-22 04:52:39.912906	112
1266	9090227	https://plus.google.com/+AddyOsmani/posts/DdWkiKsvbA2	Goodbye “undefined is not a function”	2015-06-22 04:52:32.01969	2015-06-22 04:52:40.12564	153
1263	9090394	https://ocaml.github.io/ocamlunix/	Unix system programming in OCaml	2015-06-22 04:52:27.374793	2015-06-22 04:52:30.29755	24
1268	9092110	http://www.philipotoole.com/replicating-sqlite-using-raft-consensus/	Replicated SQLite using Raft consensus	2015-06-22 04:52:39.938218	2015-06-22 04:52:40.180347	8
1281	9095032	http://www.washingtonpost.com/blogs/wonkblog/wp/2015/02/23/marijuana-may-be-even-safer-than-previously-thought-researchers-say/	Marijuana may be even safer than previously thought, researchers say	2015-06-22 04:53:06.229116	2015-06-22 04:53:06.273813	2
1303	9107496	https://www.schneier.com/essays/archives/2014/02/its_time_to_break_up.html	It's Time to Break Up the NSA	2015-06-22 04:54:32.085465	2015-06-22 04:54:35.8014	108
1301	9106794	http://googleblog.blogspot.com/2015/02/get-away-with-google-flights.html?m=0	Get away with Google Flights	2015-06-22 04:54:30.375271	2015-06-22 04:54:32.043299	38
1292	9100107	http://envisage-project.eu/proving-android-java-and-python-sorting-algorithm-is-broken-and-how-to-fix-it/	Proving that Android’s, Java’s and Python’s sorting algorithm is broken (withfix)	2015-06-22 04:53:43.495453	2015-06-22 04:53:48.106959	154
1269	9092210	http://www.wired.com/2015/02/nsa-firmware-hacking/	How the NSA’s Firmware Hacking Works and Why It’s So Unsettling	2015-06-22 04:52:40.203651	2015-06-22 04:52:48.831689	124
1275	9094021	https://lists.debian.org/debian-devel-announce/2015/02/msg00013.html	Debian: Transition plan to systemd by default	2015-06-22 04:52:59.049598	2015-06-22 04:53:01.317553	78
1294	9103050	https://www.unrealengine.com/blog/unreal-engine-47-released	Unreal Engine 4.7 Released	2015-06-22 04:53:58.633267	2015-06-22 04:54:01.620726	100
1280	9095023	http://ryanclark.me/getting-started-with-flux/	Introduction to Facebook's Flux architecture	2015-06-22 04:53:05.859824	2015-06-22 04:53:09.9629	78
1277	9094487	http://runemadsen.com/blog/on-meta-design-and-algorithmic-design-systems/	On meta-design and algorithmic design systems	2015-06-22 04:53:02.752653	2015-06-22 04:53:05.465243	94
1276	9094029	http://www.bbc.co.uk/news/technology-31587621	Battery power alone can be used to track Android phones	2015-06-22 04:53:02.127957	2015-06-22 04:53:02.727358	24
1270	9092437	https://www.eff.org/deeplinks/2015/02/laura-poitras-citizenfour-awarded-oscar-best-documentary-2014	Laura Poitras' CITIZENFOUR Awarded Oscar for Best Documentary in 2014	2015-06-22 04:52:42.367223	2015-06-22 04:52:46.878102	140
1273	9093394	http://zitseng.com/archives/7489	Government-Linked Certificate Authorities in OS X	2015-06-22 04:52:54.010548	2015-06-22 04:52:58.109903	152
1272	9092653	http://www.pcworld.com/article/2887392/lenovo-hit-with-lawsuit-over-superfish-snafu.html	Lenovo hit with lawsuit over Superfish snafu	2015-06-22 04:52:53.532879	2015-06-22 04:52:53.621672	4
1278	9094945	https://catechgory.com/2-letter-domain-names/	List of available 2 letter domain names	2015-06-22 04:53:05.283227	2015-06-22 04:53:05.525686	4
1284	9097404	https://github.com/golang/go/commit/b986f3e3b54499e63903405c90aa6a0abe93ad7a	“This change deletes the C implementations of the Go compiler and assembler”	2015-06-22 04:53:17.494054	2015-06-22 04:53:25.367493	275
1287	9098726	https://sourcegraph.com/blog/live/gopherconindia/111854129512	Simplicity and the ideas Go left behind	2015-06-22 04:53:34.69712	2015-06-22 04:53:35.181025	12
1421	9172373	http://techcrunch.com/2015/03/09/apple-introduces-a-reinvented-macbook-air/	Apple Introduces a Reinvented MacBook Air	2015-06-22 05:03:31.103708	2015-06-22 05:03:37.033065	170
1282	9095417	http://www.nytimes.com/2015/02/23/nyregion/as-office-space-shrinks-so-does-privacy-for-workers.html?hp&action=click&pgtype=Homepage&module=second-column-region&region=top-news&WT.nav=top-news	As Office Space Shrinks, So Does Privacy for Workers	2015-06-22 04:53:08.930879	2015-06-22 04:53:10.657973	38
1297	9105604	http://timkadlec.com/2015/02/apples-web/	Apple stifling the work of web standard	2015-06-22 04:54:17.200312	2015-06-22 04:54:17.365469	6
1289	9099604	http://genode.org/documentation/articles/trustzone	An Exploration of ARM TrustZone Technology	2015-06-22 04:53:37.612224	2015-06-22 04:53:41.678424	97
1286	9098501	http://nymag.com/daily/intelligencer/2015/02/jeff-wise-mh370-theory.html	How crazy am I to think I actually know where that Malaysia Airlines plane is?	2015-06-22 04:53:26.109778	2015-06-22 04:53:36.050504	292
1283	9096002	http://swizec.github.io/h1b-software-salaries/#2014-ca-engineer	Show HN: Just how much is an H1B visa in the software industry worth?	2015-06-22 04:53:10.695689	2015-06-22 04:53:17.468286	229
1271	9092968	http://daniel.haxx.se/blog/2015/02/23/bug-finding-is-slow-in-spite-of-many-eyeballs/	Bug finding is slow in spite of many eyeballs	2015-06-22 04:52:48.854634	2015-06-22 04:52:53.979904	160
1279	9094532	http://googleblog.blogspot.com/2015/02/youtube-kids.html?m=0	Our first building block in tech for tykes: YouTube Kids	2015-06-22 04:53:05.553006	2015-06-22 04:53:05.839474	13
1274	9093545	https://github.com/Swordfish90/cool-retro-term	Cool-retro-term	2015-06-22 04:52:58.132313	2015-06-22 04:53:02.101999	53
1285	9098396	http://www.nbcnews.com/news/us-news/northern-lights-alaska-tuesday-will-become-third-state-legal-marijuana-n311426	Alaska on Tuesday Will Become Third State with Legal Marijuana	2015-06-22 04:53:25.397242	2015-06-22 04:53:26.084323	24
1288	9098693	http://tgeonetta.com/cost-of-living-vs-salary-best-cities-for-software-developers-and-engineers/	Cities with High Salary to Cost of Living Ratios for Software Developers	2015-06-22 04:53:36.101129	2015-06-22 04:53:37.586472	48
1290	9098520	http://www.citylab.com/housing/2015/02/nobody-my-age-can-afford-to-stay-here-forever/385852/	'Nobody My Age Can Afford to Stay Here Forever'	2015-06-22 04:53:39.19771	2015-06-22 04:53:40.112196	28
1299	9106531	http://www.quirksmode.org/blog/archives/2015/02/tired_of_safari.html	Tired of Safari	2015-06-22 04:54:26.797241	2015-06-22 04:54:30.291685	113
1298	9105902	http://www.gemalto.com/press/Pages/Gemalto-presents-the-findings-of-its-investigations-into-the-alleged-hacking-of-SIM-card-encryption-keys.aspx	Gemalto presents the findings of its investigations alleged hacking of SIM cards	2015-06-22 04:54:19.795417	2015-06-22 04:54:26.662495	257
1293	9100866	https://www.kickstarter.com/projects/597507018/pebble-time-awesome-smartwatch-no-compromises	Introducing Pebble Time	2015-06-22 04:53:48.134892	2015-06-22 04:54:01.787287	330
1300	9106511	http://timkadlec.com/2015/02/apples-web	Is Apple stifling progress in Web standards?	2015-06-22 04:54:30.318471	2015-06-22 04:54:30.349112	2
1291	9098856	http://www.quora.com/Are-we-really-running-out-of-helium?share=1	Are we really running out of helium?	2015-06-22 04:53:41.70396	2015-06-22 04:53:43.470198	64
1295	9103596	http://blog.pyston.org/2015/02/24/pyston-0-3-self-hosting-sufficiency/	Pyston 0.3: Self-hosting Sufficiency	2015-06-22 04:54:01.646204	2015-06-22 04:54:02.507508	29
1302	9106983	http://www.antipope.org/charlie/blog-static/2015/02/a-different-cluetrain.html	A different cluetrain	2015-06-22 04:54:30.95254	2015-06-22 04:54:31.765437	20
1296	9104188	http://www.thoughtcrime.org/blog/gpg-and-me/	GPG and Me	2015-06-22 04:54:02.532316	2015-06-22 04:54:19.76772	596
1305	9108357	http://www.aau.edu/policy/article.aspx?id=15923	Universities warn Congress that patent reform would harm US innovation	2015-06-22 04:54:37.416401	2015-06-22 04:54:37.702591	12
1308	9110194	https://www.eff.org/deeplinks/2015/02/white-house-doesnt-want-you-know-tpp-effects-us-copyright-laws	White House Doesn't Want You to Know the TPP's Effects on U.S. Copyright Laws	2015-06-22 04:54:44.841203	2015-06-22 04:54:45.380631	20
1304	9108311	http://blog.samaltman.com/machine-intelligence-part-1	Machine intelligence, part 1	2015-06-22 04:54:35.825863	2015-06-22 04:54:37.366647	44
1306	9108628	http://paulgraham.com/altair.html	What Microsoft is this the Altair Basic of?	2015-06-22 04:54:37.72464	2015-06-22 04:54:41.371399	134
1307	9109182	https://googleforwork.blogspot.com/2015/02/android-is-ready-for-work.html	Google announces Android for Work	2015-06-22 04:54:41.396211	2015-06-22 04:54:59.925553	537
1310	9111447	http://www.sansbullshitsans.com/	Sans Bullshit Sans	2015-06-22 04:55:01.57409	2015-06-22 04:55:02.243647	18
1309	9111362	http://truongtx.me/2014/02/28/tree-structure-query-with-postgresql/	Tree structure query with PostgreSQL	2015-06-22 04:54:59.947173	2015-06-22 04:55:10.239098	237
1341	9130954	http://www.chris-granger.com/2015/01/26/coding-is-not-the-new-literacy/	Coding is not the new literacy	2015-06-22 04:58:05.038961	2015-06-22 04:58:15.072583	253
1340	9130707	http://jozefg.bitbucket.org/posts/2015-02-28-type-inference.html	An Explanation of Type Inference for ML/Haskell	2015-06-22 04:58:03.139571	2015-06-22 04:58:04.996833	50
1337	9129807	http://www.theguardian.com/science/brain-flapping/2014/sep/12/comment-sections-toxic-moderation	Comment sections are poison: handle with care or remove them	2015-06-22 04:57:50.958181	2015-06-22 04:57:52.510267	42
1331	9125474	http://www.xfce.org/about/news/?post=1425081600	Xfce 4.12 released	2015-06-22 04:57:03.757046	2015-06-22 04:57:11.324177	253
1332	9125912	https://github.com/rui314/8cc	8cc: A Small C Compiler	2015-06-22 04:57:11.34551	2015-06-22 04:57:21.245564	306
1325	9122155	http://techcrunch.com/2015/02/27/uber-database-breach-exposed-information-of-50000-drivers-company-confirms/	Uber Database Breach Exposed Information of 50,000 Drivers, Company Confirms	2015-06-22 04:56:15.574416	2015-06-22 04:56:27.9641	360
1317	9117928	https://groups.google.com/a/chromium.org/d/msg/blink-dev/2LXKVWYkOus/gT-ZamfwAKsJ	Blink - Intent to deprecate: Insecure usage of powerful features	2015-06-22 04:55:49.880519	2015-06-22 04:55:53.891292	132
1321	9119951	http://www.nytimes.com/2015/02/27/arts/television/leonard-nimoy-spock-of-star-trek-dies-at-83.html?smid=tw-bna	Leonard Nimoy, Spock of ‘Star Trek,’ Dies at 83	2015-06-22 04:56:02.180759	2015-06-22 04:56:03.180588	38
1315	9113976	http://techcrunch.com/2015/02/26/fcc-passes-strict-net-neutrality-regulations-on-3-2-vote/	FCC Passes Strict Net Neutrality Regulations on 3-2 Vote	2015-06-22 04:55:21.076673	2015-06-22 04:55:49.122223	694
1313	9111866	http://rob.conery.io/2015/02/24/embracing-sql-in-postgres/	Embracing SQL in Postgres	2015-06-22 04:55:10.264374	2015-06-22 04:55:12.332153	74
1322	9119587	https://www.videolan.org/vlc/releases/2.2.0.html	VLC 2.2.0 multi-releases	2015-06-22 04:56:03.210987	2015-06-22 04:56:10.132739	232
1333	9126491	http://sbstjn.github.io/timesheet.js/	Timesheet.js	2015-06-22 04:57:21.266935	2015-06-22 04:57:34.956625	414
1312	9111944	http://arewewebyet.com/	Are we web yet?	2015-06-22 04:55:09.144824	2015-06-22 04:55:09.174342	2
1339	9130423	http://www.aerogrammestudio.com/2015/02/24/stephen-king-everything-you-need-to-know-about-writing-successfully/?utm_source=pocket&utm_medium=email&utm_campaign=pockethits	“Everything You Need to Know About Writing – In Ten Minutes” by Stephen King	2015-06-22 04:57:59.065004	2015-06-22 04:58:03.107464	135
1327	9123577	https://mega.nz/#blog_33	PayPal/Visa/MasterCard block MEGA.nz	2015-06-22 04:56:42.326215	2015-06-22 04:56:46.960801	140
1324	9121448	https://github.com/kanaka/mal	Make a Lisp	2015-06-22 04:56:10.857344	2015-06-22 04:56:15.550338	168
1311	9111690	http://www.wsj.com/articles/viewers-dont-add-up-to-profit-for-youtube-1424897967	YouTube: 1B Viewers, No Profit	2015-06-22 04:55:08.558595	2015-06-22 04:55:09.587191	32
1328	9123822	http://dopeboy.github.io/consulting/	Consulting	2015-06-22 04:56:46.991656	2015-06-22 04:56:52.099749	172
1335	9127761	http://www.rogerebert.com/mzs/watching-aliens-for-the-first-time-again-with-a-bunch-of-kids	Notes on watching “Aliens” for the first time again, with a bunch of kids	2015-06-22 04:57:34.992152	2015-06-22 04:57:47.799277	413
1346	9132001	http://symplepc.com/blogs/news/16853255-symple-introduces-the-89-planet-friendly-ubuntu-linux-web-workstation	Symple Introduces the $89 Planet Friendly Ubuntu Linux Web Workstation	2015-06-22 04:58:18.937262	2015-06-22 04:58:20.724568	62
1326	9122742	http://ipython.org/ipython-doc/3/whatsnew/version3.html	IPython 3.0 released	2015-06-22 04:56:28.002191	2015-06-22 04:56:42.282203	386
1318	9118097	http://lightning.network/lightning-network.pdf	Lightning Network: “Bitcoin Doesn’t Scale” [pdf]	2015-06-22 04:55:53.918218	2015-06-22 04:55:57.916284	134
1336	9129199	http://www.wsj.com/articles/bitcoin-investment-trust-gets-finras-ok-to-become-public-bitcoin-fund-1425242094	BIT Poised to Become Publicly Traded Bitcoin Fund	2015-06-22 04:57:47.835629	2015-06-22 04:57:55.024158	131
1329	9124232	http://blog.ensolnepal.com/router_backdoor/	Hard-coded Backdoor found in more than 10 major home router vendor	2015-06-22 04:56:52.134547	2015-06-22 04:56:54.07338	62
1319	9118911	http://mentallandscape.com/C_Catalog.htm	Soviet Space Image Catalog	2015-06-22 04:55:57.943444	2015-06-22 04:55:59.059413	42
1330	9124530	http://www.evilmadscientist.com/2011/microwave-oven-diagnostics-with-indian-snack-food/	Microwave Oven Diagnostics with Indian Snack Food	2015-06-22 04:56:54.099521	2015-06-22 04:57:03.72351	265
1323	9121522	http://shop.nordstrom.com/robots.txt	Nordstroms Wins for Strangest Robots.txt	2015-06-22 04:56:10.165408	2015-06-22 04:56:10.831893	25
1320	9118977	http://hello-world.io/hello-world/	Hello, World!	2015-06-22 04:55:59.08455	2015-06-22 04:56:02.154316	102
1348	9135767	http://patrick.georgi-clan.de/2015/02/17/intel-boot-guard/	Coreboot Blocked from Recent Thinkpads by Intel Boot Guard	2015-06-22 04:58:42.615766	2015-06-22 04:58:44.643343	75
1349	9136546	http://www.e-siber.com/guvenlik/dropbox-accesses-all-the-files-in-your-pc-not-just-sync-folder-and-steals-everything/	Dropbox Accesses All the Files in Your PC (Not Just Its Folder), Gets Everything	2015-06-22 04:58:52.289254	2015-06-22 04:58:53.404173	38
1338	9129911	http://reactionwheel.net/2015/01/80s-vc.html	Venture Capital in the 1980s	2015-06-22 04:57:55.061442	2015-06-22 04:57:59.02986	126
1334	9127180	http://learnxinyminutes.com/docs/nim/	Learn Nim in Y minutes	2015-06-22 04:57:31.748923	2015-06-22 04:57:33.342683	44
1342	9131433	http://www.wsj.com/articles/do-cryptocurrencies-such-as-bitcoin-have-a-future-1425269375?mod=WSJ_hpp_sections_tech	Do Cryptocurrencies Such as Bitcoin Have a Future?	2015-06-22 04:58:13.201654	2015-06-22 04:58:14.220227	34
1345	9131592	http://wired.com/2015/03/wired-dot-com-from-the-devs/	Wired merges 100k posts, 12 databases, and 17 blogs into 1 WordPress install	2015-06-22 04:58:17.972178	2015-06-22 04:58:18.913889	40
1314	9112250	http://antirez.com/news/86	Side projects	2015-06-22 04:55:12.359418	2015-06-22 04:55:21.048475	296
1350	9136733	https://www.khronos.org/vulkan	Vulkan – Graphics and compute belong together	2015-06-22 04:58:53.672677	2015-06-22 04:59:00.029929	189
1344	9131756	https://privacyinternational.org/illegalspying	Did GCHQ illegally spy on you?	2015-06-22 04:58:15.109129	2015-06-22 04:58:17.950036	81
1343	9131556	http://amigan.1emu.net/kolsen/programming/sweet16.html	Sweet 16, the 6502 Dream Machine	2015-06-22 04:58:13.330742	2015-06-22 04:58:14.991476	18
1347	9132815	https://www.unrealengine.com/blog/ue4-is-free	Unreal Engine 4 is now available to everyone for free	2015-06-22 04:58:20.768297	2015-06-22 04:58:53.641742	836
1351	9137168	http://blog.queze.net/post/2015/03/03/Mozilla-not-accepted-for-Google-Summer-of-Code-2015	Mozilla not accepted for Google Summer of Code 2015	2015-06-22 04:59:00.05298	2015-06-22 04:59:05.197796	163
1352	9137736	https://rachelbythebay.com/w/2013/06/05/duck/	“Just remove the duck”	2015-06-22 04:59:05.2218	2015-06-22 04:59:15.680391	320
1353	9139887	http://www.reuters.com/article/2015/03/03/us-russia-usa-snowden-idUSKBN0LZ1U020150303	Snowden in talks on returning home: lawyer	2015-06-22 04:59:14.76168	2015-06-22 04:59:14.797658	2
1355	9140887	http://blog.achernya.com/2015/03/starting-off-in-rust-trying-to-write.html	Starting off in Rust: Trying to write a shell	2015-06-22 04:59:20.502486	2015-06-22 04:59:21.157443	24
1354	9139817	https://github.com/emberjs/ember.js/pull/10501	Ember's Glimmer Engine	2015-06-22 04:59:15.707146	2015-06-22 04:59:24.314422	231
1356	9141407	http://consumer.huawei.com/minisite/worldwide/huawei-watch/	Huawei Watch	2015-06-22 04:59:22.675152	2015-06-22 04:59:23.253484	22
1373	9150163	http://www.amazon.com/Programming-Language-Addison-Wesley-Professional-Computing/dp/0134190440/	The Go Programming Language by Brian W. Kernighan, Alan Donovan	2015-06-22 05:00:32.402773	2015-06-22 05:00:34.254476	69
1364	9144467	https://github.com/ryanmjacobs/c	C – Compile and execute C “scripts” in one go	2015-06-22 04:59:51.418021	2015-06-22 04:59:51.501636	4
1366	9146034	http://www.benkuhn.net/nonprog	What happened to all the non-programmers?	2015-06-22 04:59:59.124214	2015-06-22 04:59:59.24262	4
1389	9159557	http://sockpuppet.org/blog/2015/03/06/the-hiring-post/	The Hiring Post	2015-06-22 05:01:27.11829	2015-06-22 05:01:31.116479	107
1358	9142211	http://techcrunch.com/2015/03/03/valve-announces-source-2-and-itll-be-free/	Valve Announces Source 2, and It’ll Be Free	2015-06-22 04:59:32.189914	2015-06-22 04:59:45.70552	405
1392	9161309	http://www.smh.com.au/good-weekend/terence-tao-the-mozart-of-maths-20150306-13fwcv.html	Terence Tao: the Mozart of maths	2015-06-22 05:02:00.416652	2015-06-22 05:02:01.272602	30
1371	9149690	http://marcobambini.com/my-y-combinator-experience/	My Y Combinator experience	2015-06-22 05:00:24.349579	2015-06-22 05:00:29.800139	192
1359	9142819	https://sourcegraph.com/blog/live/gopherconindia/112656568167	From a Ruby monolith to microservices in Go, lessons learned	2015-06-22 04:59:35.569226	2015-06-22 04:59:36.650417	46
1368	9147252	http://foundersatwork.posthaven.com/the-social-radar-what-i-did-at-y-combinator	The Social Radar: What I Did at Y Combinator	2015-06-22 05:00:04.25329	2015-06-22 05:00:07.564903	103
1396	9162268	http://www.righto.com/2015/03/a-database-of-sms-cards-technology.html	A database of SMS cards: The technology inside IBM's 1960s mainframes	2015-06-22 05:02:05.291624	2015-06-22 05:02:09.339187	104
1369	9147719	http://archiveteam.org/index.php?title=INTERNETARCHIVE.BAK	Internetarchive.bak	2015-06-22 05:00:07.597281	2015-06-22 05:00:13.281558	187
1367	9146301	http://www.bloomberg.com/news/articles/2015-03-04/spacex-profitable-as-musk-pulls-in-nasa-contracts-google-cash	SpaceX Profitable as Musk Pulls in NASA Contracts, Google Cash	2015-06-22 05:00:00.064955	2015-06-22 05:00:04.226024	113
1360	9142771	http://kukuruku.co/hub/programming/i-do-not-know-c	C Questions and Answers	2015-06-22 04:59:36.671777	2015-06-22 04:59:37.036747	10
1376	9151799	http://sfconservancy.org/news/2015/mar/05/vmware-lawsuit/	VMWare Taken to Court Over GPL Violation	2015-06-22 05:00:39.47557	2015-06-22 05:00:52.611411	428
1362	9143823	http://www.nytimes.com/2015/03/04/us/politics/using-private-email-hillary-clinton-thwarted-record-requests.html	Using Private Email, Hillary Clinton Thwarted Record Requests	2015-06-22 04:59:46.416993	2015-06-22 04:59:51.258196	142
1363	9144563	http://www.theglobeandmail.com/news/national/education/university-labour-strife-underscores-job-security-plight-of-contract-faculty/article23276935/	University labour strife underscores cost of tenured academics	2015-06-22 04:59:51.282436	2015-06-22 04:59:52.916768	45
1383	9156644	http://sfconservancy.org/linux-compliance/vmware-lawsuit-appeal.html	The time has come to stand up for the GPL	2015-06-22 05:01:14.453735	2015-06-22 05:01:21.630239	261
1377	9153786	http://www.cbc.ca/news/canada/nova-scotia/quebec-resident-alain-philippon-to-fight-charge-for-not-giving-up-phone-password-at-airport-1.2982236	Canadian Charged for Not Unlocking Smartphone at Canadian Border	2015-06-22 05:00:46.44181	2015-06-22 05:00:47.250389	26
1374	9150927	http://www.jwz.org/blog/2015/03/google-seems-to-have-broken-email-forwarding/	Google seems to have broken email forwarding	2015-06-22 05:00:34.278231	2015-06-22 05:00:38.453589	122
1372	9150107	http://www.esquire.co.uk/culture/books/7933/exclusive-extract-from-jon-ronson-book-so-youve-been-publicly-shamed/	Jon Ronson: How a Tweet Can Ruin Your Life	2015-06-22 05:00:29.82238	2015-06-22 05:00:32.376652	94
1391	9161366	https://togototo.wordpress.com/2015/03/07/fulfilling-a-pikedream-the-ups-of-downs-of-porting-50k-lines-of-c-to-go/	Fulfilling a Pikedream: the ups of downs of porting 50k lines of C++ to Go	2015-06-22 05:01:49.773719	2015-06-22 05:01:49.860744	4
1370	9148746	http://gamerant.com/sims-city-developer-maxis-shut-down/	EA Shuts Down ‘SimCity’ and ‘The Sims’ Developer Maxis	2015-06-22 05:00:13.3152	2015-06-22 05:00:24.32482	376
1387	9158222	https://www.omniref.com/ruby/gems/stream_sampler/0.0.1/symbols/StreamSampler?#annotation=4094626&line=2	Algorithms Every Programmer Should Know: Reservoir Sampling	2015-06-22 05:01:21.851544	2015-06-22 05:01:23.694794	71
1365	9145007	http://www.ghostnoteapp.com/	Show HN: Ghostnote – Contextual notes and todo app	2015-06-22 04:59:52.944395	2015-06-22 05:00:00.03851	191
1384	9156963	http://www.lemonde.fr/pixels/visuel/2015/03/06/google-memorial-le-petit-musee-des-projets-google-abandonnes_4588392_4408996.html	Google Memorial: the small museum of projects abandoned by Google	2015-06-22 05:01:21.65187	2015-06-22 05:01:21.730757	4
1381	9156348	http://www.theguardian.com/technology/2015/mar/06/myspace-what-went-wrong-sean-percival-spotify	MySpace: what went wrong – by its former VP of online marketing	2015-06-22 05:01:10.63872	2015-06-22 05:01:11.394702	14
1378	9154776	https://gist.github.com/dergachev/4627207	OS X Screencast to animated GIF	2015-06-22 05:00:52.267646	2015-06-22 05:00:52.294887	2
1375	9151552	http://thad.frogley.info/archive/the_greatest_program.html	The Greatest Program Ever Written	2015-06-22 05:00:38.059816	2015-06-22 05:00:39.326484	34
1385	9156706	http://www.django-rest-framework.org/topics/3.1-announcement/	Django REST framework 3.1 released	2015-06-22 05:01:21.752939	2015-06-22 05:01:21.777499	2
1382	9156405	http://forum.utorrent.com/topic/95041-warning-epicscale-riskware-silently-installed-with-latest-utorrent/	Newest version of uTorrent has Bitcoin mining offer during install	2015-06-22 05:01:11.418058	2015-06-22 05:01:14.427027	98
1379	9154960	https://www.google.com/contributor/welcome/	Google Contributor	2015-06-22 05:00:52.635379	2015-06-22 05:01:03.583484	362
1386	9158232	http://blog.testmunk.com/10-interview-questions-for-qa-managers/	Interview questions for QA managers	2015-06-22 05:01:21.805197	2015-06-22 05:01:21.83002	2
1380	9155741	http://www.aaronsw.com/weblog/djb	Aaron Swartz's Thoughts on djb	2015-06-22 05:01:03.613166	2015-06-22 05:01:11.092866	267
1388	9158913	http://zachholman.com/posts/fired/	Fired	2015-06-22 05:01:23.717519	2015-06-22 05:01:27.096699	129
1390	9160052	https://people.torproject.org/~ioerror/skunkworks/forensics/valencia-tracking-device/	GPS tracking device found on an activist's car	2015-06-22 05:01:31.140237	2015-06-22 05:02:00.377059	897
1397	9162566	http://www.windows93.net/?	Windows 93 in JavaScript	2015-06-22 05:02:08.217814	2015-06-22 05:02:09.026775	30
1395	9162186	https://canary.silentcircle.com/?new-issue	Silent Circle Canary missing declaration	2015-06-22 05:02:03.470838	2015-06-22 05:02:05.675527	71
1394	9161777	https://chroniclevitae.com/news/929-academia-s-1-percent	Academia's 1%	2015-06-22 05:02:01.904876	2015-06-22 05:02:02.981155	34
1401	9164470	http://nymag.com/daily/intelligencer/2015/03/my-crazy-theory-about-mh370-went-viral-worldwide.html	What Jeff Wise has learned about MH370 since 2/23	2015-06-22 05:02:26.285002	2015-06-22 05:02:26.707186	16
1393	9161791	http://conkeror.org/	Conkeror	2015-06-22 05:02:01.092755	2015-06-22 05:02:03.446495	46
1398	9162730	http://grist.org/food/felons-addicts-immigrants-this-bakery-will-hire-anyone/	This bakery will hire anyone	2015-06-22 05:02:09.363856	2015-06-22 05:02:13.377006	137
1399	9163262	http://leancrew.com/all-this/2015/03/apple-gold/	Apple gold	2015-06-22 05:02:13.404243	2015-06-22 05:02:22.024486	257
1400	9163782	http://www.patrickcraig.co.uk/other/compression.htm	The $5000 Compression Challenge	2015-06-22 05:02:21.072912	2015-06-22 05:02:36.877894	503
1407	9166501	http://techcrunch.com/2015/03/08/on-secretly-terrible-engineers/	On Secretly Terrible Engineers	2015-06-22 05:02:49.734023	2015-06-22 05:02:55.827701	201
1428	9178543	https://docs.google.com/a/golang.org/document/d/1wmjrocXIWTr1JxU-3EQBI6BK6KgtiFArkG47XK73xIQ/edit#heading=h.q556xotjblu6	Go 1.5 concurrent garbage collector pacing	2015-06-22 05:04:11.475321	2015-06-22 05:04:12.814679	38
1419	9171346	https://jamfnation.jamfsoftware.com/discussion.html?id=13567	Java Runtime updater now installs ask.com toolbar on macs	2015-06-22 05:03:27.792555	2015-06-22 05:03:30.179156	74
1411	9168064	http://www.washingtonpost.com/posteverything/wp/2015/03/04/im-a-12-year-old-girl-why-dont-the-characters-in-my-apps-look-like-me/	I’m a 12-year-old girl. Why don’t the characters in my apps look like me?	2015-06-22 05:03:01.939427	2015-06-22 05:03:02.014007	4
1414	9168979	http://qz.com/353138/this-is-what-happens-to-your-brain-when-you-stop-eating-sugar/	What happens to your brain when you stop eating sugar	2015-06-22 05:03:11.767827	2015-06-22 05:03:12.477152	22
1416	9170100	http://nbviewer.ipython.org/github/rlabbe/Kalman-and-Bayesian-Filters-in-Python/blob/master/table_of_contents.ipynb	Kalman and Bayesian Filters in Python	2015-06-22 05:03:19.229223	2015-06-22 05:03:21.690503	53
1432	9183673	https://discussions.apple.com/thread/6868907	Apple Appstore STATUS_CODE_ERROR causes worldwide service problems	2015-06-22 05:04:46.278165	2015-06-22 05:04:47.292184	33
1436	9185356	http://melodykramer.github.io/how-betty-who-is-89-gets-her-news/	How Betty, Who Is 89, Gets Her News	2015-06-22 05:04:57.894544	2015-06-22 05:04:58.429869	14
1417	9170238	http://www.newsweek.com/japans-robot-dogs-get-funerals-sony-looks-away-312192	Japan's Robot Dogs Get Funerals as Sony Looks Away	2015-06-22 05:03:19.71417	2015-06-22 05:03:20.748822	40
1402	9165150	http://www.economist.com/news/technology-quarterly/21645505-protect-itself-attack-estonia-finding-ways-back-up-its-data-how?fsrc=scn/tw/te/pe/ed/howtobackupacountry	Internet security: How to back up a country	2015-06-22 05:02:36.908806	2015-06-22 05:02:39.515703	88
1423	9173939	http://www.kalzumeus.com/2015/03/09/announcing-starfighter/	Announcing Starfighter	2015-06-22 05:03:37.06089	2015-06-22 05:03:53.928527	575
1406	9165725	https://github.com/mroth/unindexed/blob/master/README.md	A website that irrevocably deletes itself once indexed by Google	2015-06-22 05:02:43.971744	2015-06-22 05:02:49.707227	189
1410	9167977	http://www.computerworld.com/article/2893514/an-incredibly-shrinking-firefox-faces-endangered-species-status.html	A shrinking Firefox faces endangered species status	2015-06-22 05:03:00.078972	2015-06-22 05:03:01.427816	30
1403	9165230	https://translate.google.com/translate?hl=en&sl=ca&tl=en&u=https%3A%2F%2Fdirecta.cat%2Funa-activista-de-barcelona-localitza-un-dispositiu-de-rastreig-gps-amagat-al-parafang-del-seu-cotxe	A Spanish activist found a tracking device on her car after a police check	2015-06-22 05:02:38.655161	2015-06-22 05:02:38.98681	6
1412	9167922	http://dropwizard.io	Dropwizard: A Java framework for ops-friendly, high-performance web services	2015-06-22 05:03:05.78542	2015-06-22 05:03:14.424448	209
1408	9166967	http://www.nytimes.com/interactive/2015/03/08/opinion/sunday/algorithm-human-quiz.html	Did a Human or a Computer Write This?	2015-06-22 05:02:54.561056	2015-06-22 05:02:59.284644	122
1404	9165298	http://jmonkeyengine.org/301602/in-the-age-of-free-aaa-game-engines-are-we-still-relevant/	AAA game engines are free – Is my open source project still relevant?	2015-06-22 05:02:39.540201	2015-06-22 05:02:43.303211	125
1433	9183725	http://developerblog.redhat.com/2015/03/11/introducing-the-rhel-container-for-rhel-atomic-host/	Introducing the “rhel-tools” for RHEL Atomic Host	2015-06-22 05:04:48.656296	2015-06-22 05:04:48.929391	10
1405	9165668	http://onlyagame.wbur.org/2015/03/07/schilling-twitter-daughter-baseball	Curt Schilling Fights Back Against Daughter’s Twitter Trolls	2015-06-22 05:02:43.332627	2015-06-22 05:02:44.102905	28
1409	9167781	http://tromp.github.io/go/legal.html	Number of legal 18x18 Go positions computed. One more to go	2015-06-22 05:02:59.327357	2015-06-22 05:03:05.760318	177
1413	9168608	http://ntietz.com/2015/03/08/midwest-defense.html	In Defense of the Midwest	2015-06-22 05:03:05.854172	2015-06-22 05:03:07.699718	57
1415	9168636	http://blog.goodstuff.im/pixie	Pixie: A sweet Clojure-ish language	2015-06-22 05:03:14.456718	2015-06-22 05:03:19.206422	172
1427	9178175	http://yabatadesign.github.io/afterglow-theme/	Afterglow: Beautiful Dark Theme for Sublime	2015-06-22 05:04:09.980463	2015-06-22 05:04:11.294205	40
1422	9172248	http://www.apple.com/live/2015-mar-event/f407b6b3-5575-4069-87c2-4d3ca949cb2c/	Apple Announces Research Kit	2015-06-22 05:03:31.533011	2015-06-22 05:03:32.07469	16
1420	9171722	http://googleprojectzero.blogspot.com/2015/03/exploiting-dram-rowhammer-bug-to-gain.html	Project Zero: Exploiting the DRAM rowhammer bug to gain kernel privileges	2015-06-22 05:03:30.201049	2015-06-22 05:03:31.505351	34
1418	9170511	http://www.jobsintech.io	Show HN: Find tech jobs that come with a visa	2015-06-22 05:03:21.714058	2015-06-22 05:03:27.762426	191
1437	9185732	http://www.cnn.com/interactive/2015/03/opinion/ctl-child-poverty	Poor Kids of Silicon Valley	2015-06-22 05:04:58.573779	2015-06-22 05:04:58.901558	14
1430	9181001	http://blog.ycombinator.com/welcome-peter	Welcome Peter	2015-06-22 05:04:20.55784	2015-06-22 05:04:40.556739	684
1426	9177881	http://www.washingtonpost.com/news/comic-riffs/wp/2015/03/09/bill-watterson-talks-this-is-why-you-must-read-the-new-exploring-calvin-and-hobbes-book/	Bill Watterson talks	2015-06-22 05:04:09.312466	2015-06-22 05:04:11.444087	23
1425	9176586	https://blog.wikimedia.org/2015/03/10/wikimedia-v-nsa/	Wikimedia v. NSA: Wikimedia Foundation files suit against NSA	2015-06-22 05:04:01.448544	2015-06-22 05:04:09.290193	285
1429	9178773	http://developer.olery.com/blog/goodbye-mongodb-hello-postgresql/	Goodbye MongoDB, Hello PostgreSQL	2015-06-22 05:04:12.83837	2015-06-22 05:04:20.535216	285
1439	9188776	http://googlefeud.com/	GoogleFeud	2015-06-22 05:05:13.376581	2015-06-22 05:05:13.618884	10
1431	9183012	http://vincebuffalo.com/2013/08/08/the-mighty-named-pipe.html	The Mighty Named Pipe	2015-06-22 05:04:40.580887	2015-06-22 05:04:48.626494	230
1442	9189611	https://github.com/wishstudio/flinux	Foreign LINUX	2015-06-22 05:05:24.581417	2015-06-22 05:05:35.767769	372
1424	9176195	http://kukuruku.co/hub/diy/usb-killer	USB Killer	2015-06-22 05:03:53.954875	2015-06-22 05:04:01.425872	243
1434	9183830	http://googlecloudplatform.blogspot.com/2015/03/introducing-Google-Cloud-Storage-Nearline-near-online-data-at-an-offline-price.html	Introducing Google Cloud Storage Nearline	2015-06-22 05:04:48.956886	2015-06-22 05:04:58.548834	259
1438	9188160	https://cryptoservices.github.io/openssl/2015/03/09/openssl-audit.html	OpenSSL Audit	2015-06-22 05:05:10.407301	2015-06-22 05:05:11.646199	16
1435	9185526	https://store.google.com/product/chromebook_pixel_2015	2015 Chromebook Pixel	2015-06-22 05:04:57.258272	2015-06-22 05:05:14.040574	453
1440	9188908	http://www.chromium.org/chromium-os/hoho	Open source USB Type-C to HDMI Adapter	2015-06-22 05:05:14.063707	2015-06-22 05:05:18.774292	159
1441	9189185	http://blogs.wsj.com/digits/2015/03/11/lyft-raises-530-million-in-fight-with-uber/	Lyft Raises $530M in Fight with Uber	2015-06-22 05:05:18.799607	2015-06-22 05:05:24.555285	183
1444	9191262	http://www.bbc.co.uk/news/entertainment-arts-31858156	Fantasy author Pratchett dies aged 66	2015-06-22 05:05:38.01323	2015-06-22 05:05:38.045471	2
1443	9191248	http://www.pjsmprints.com/	Sir Terry Pratchett has died at the age of 66	2015-06-22 05:05:35.794453	2015-06-22 05:05:38.397089	89
1458	9198260	http://www.latimes.com/opinion/op-ed/la-oe-famiglietti-drought-california-20150313-story.html	California has about one year of water left	2015-06-22 05:06:30.145487	2015-06-22 05:06:31.496478	44
1465	9202600	http://www.ciras.org.uk/report-library/train-operations/52131-issue-with-opening-class-377-doors-on-the-thameslink-route/	Train doors require GPS signal to open, despite some stations being underground	2015-06-22 05:07:09.108988	2015-06-22 05:07:13.157972	117
1466	9202633	http://www.tauday.com/	The Tau Manifesto	2015-06-22 05:07:13.184227	2015-06-22 05:07:13.218755	2
1448	9195778	http://www.nodontdie.com/al-lowe/	“Sierra… well, it was the poor victim of a hostile takeover by criminals”	2015-06-22 05:06:07.862896	2015-06-22 05:06:12.970456	129
1477	9205556	http://www.sunday-guardian.com/investigation/internetorg-will-finish-internet-the-way-we-know-it-hurt-indias-growth-potential	Internet.org will finish internet the way we know it, hurt India’s growth	2015-06-22 05:07:41.623526	2015-06-22 05:07:42.468969	22
1467	9202935	http://www.washingtonpost.com/blogs/worldviews/wp/2015/03/12/when-peeing-in-public-in-this-german-city-beware-walls-that-pee-back/	Beware walls that pee back	2015-06-22 05:07:13.246377	2015-06-22 05:07:14.508239	40
1468	9202689	https://localizejs.com/blog/startup/developer-productivity-saying-no	Developer productivity: The art of saying no	2015-06-22 05:07:14.545738	2015-06-22 05:07:16.197095	54
1446	9193521	http://www.gamedev.net/topic/666419-what-are-your-opinions-on-dx12vulkanmantle/?view=findpost&p=5215019	Former Nvidia  Dev: Why DX11/OpenGL Is So Complex; Thoughts on Vulkan/Mantle	2015-06-22 05:05:47.726707	2015-06-22 05:06:00.243338	350
1456	9197903	http://ebalaskas.gr/blog/2015/03/13/web-bank-security/	Bank harrasses user because he tweeted screenshot of their SSL certificate	2015-06-22 05:06:27.032513	2015-06-22 05:06:27.605416	14
1452	9197098	http://www.washingtonpost.com/news/morning-mix/wp/2015/03/13/apple-ceo-tim-cook-offered-steve-jobs-a-life-saving-gift-but-he-refused/	Apple CEO Tim Cook offered Steve Jobs a life-saving gift, but he refused	2015-06-22 05:06:22.633306	2015-06-22 05:06:24.648187	47
1485	9208321	http://yahoo.tumblr.com/post/113708033335/user-focused-security-end-to-end-encryption	End-to-End Encryption Plugin for Yahoo Mail	2015-06-22 05:08:12.206105	2015-06-22 05:08:16.335037	110
1451	9196868	http://www.bbc.com/earth/story/20150313-the-toughest-animals-on-earth	Tardigrades, toughest animal on Earth	2015-06-22 05:06:22.510536	2015-06-22 05:06:24.7281	20
1478	9206617	http://sourceforge.net/p/retext/home/ReText/	ReText – Markdown Editor with Live Preview	2015-06-22 05:07:56.861994	2015-06-22 05:07:59.337039	54
1479	9206674	http://www.theguardian.com/books/2015/mar/13/john-gray-steven-pinker-wrong-violence-war-declining	John Gray: Steven Pinker is wrong about violence and war	2015-06-22 05:07:58.410784	2015-06-22 05:07:58.940682	16
1447	9194951	http://med.stanford.edu/news/all-news/2015/03/stanford-neurosurgeon-writer-paul-kalanithi-dies-at-37.html	Paul Kalanithi, writer and neurosurgeon, dies at 37	2015-06-22 05:06:00.730753	2015-06-22 05:06:07.834605	181
1449	9196218	https://github.com/mackyle/sqlite/blob/3cf493d4018042c70a4db733dd38f96896cd825f/src/os.h#L52	SQLite developer must have received a lot of phone calls	2015-06-22 05:06:13.003111	2015-06-22 05:06:21.251566	255
1454	9197300	http://blogs.cisco.com/security/talos/whoisdisclosure	Hundreds of Thousands of Google Apps Domains’ Private WHOIS Leaked	2015-06-22 05:06:25.140588	2015-06-22 05:06:28.772526	83
1457	9197920	https://paulbakaus.com/2015/03/13/when-ie-gave-us-beautiful-fast-touch-interactions-and-nobody-cared/	When IE gave us beautiful, fast touch interactions, and nobody cared	2015-06-22 05:06:28.820955	2015-06-22 05:06:34.790871	139
1445	9191587	http://google-opensource.blogspot.com/2015/03/farewell-to-google-code.html	Bidding farewell to Google Code	2015-06-22 05:05:38.421624	2015-06-22 05:06:00.702884	329
1464	9202039	http://www.openbsd.org/papers/httpd-asiabsdcon2015.pdf	Introducing OpenBSD's new httpd [pdf]	2015-06-22 05:07:01.393431	2015-06-22 05:07:09.679857	243
1453	9197276	http://www.cypherpunks.ru/govpn/	GoVPN – simple secure free software virtual private network daemon	2015-06-22 05:06:24.764307	2015-06-22 05:06:25.109736	10
1450	9196231	http://www.bbc.co.uk/news/world-europe-31867829	Julian Assange case: Sweden offers to question him in UK	2015-06-22 05:06:21.276376	2015-06-22 05:06:22.480178	40
1455	9197873	http://blogs.perl.org/users/ovid/2015/03/fake-amazon-book-reviews-are-hurting-my-book.html	Fake Amazon Tech Book Reviews Are Hurting My Book	2015-06-22 05:06:26.751752	2015-06-22 05:06:26.907548	6
1469	9202919	http://www.bloomberg.com/graphics/2015-oil-rigs/	Watch Four Years of Oil Drilling Collapse in Seconds	2015-06-22 05:07:14.757566	2015-06-22 05:07:14.787269	2
1473	9203634	http://blog.stephenwyattbush.com/2012/04/07/dad-and-the-ten-commandments-of-egoless-programming	The Ten Commandments of Egoless Programming	2015-06-22 05:07:19.807204	2015-06-22 05:07:21.368973	36
1461	9201644	https://stallman.org/facebook.html	Reasons not to use Facebook	2015-06-22 05:06:53.119469	2015-06-22 05:06:55.307669	68
1472	9203359	https://www.fanfiction.net/s/5782108/1/Harry-Potter-and-the-Methods-of-Rationality	Harry Potter and the Methods of Rationality finished today	2015-06-22 05:07:17.158924	2015-06-22 05:07:17.403218	10
1459	9199500	http://www.linuxvoice.com/konrad-zuse-nearly-the-german-turing-5/	Konrad Zuse: Nearly the German Turing	2015-06-22 05:06:34.817581	2015-06-22 05:06:36.502328	54
1475	9204724	http://blogs.microsoft.com/firehose/2015/03/02/get-more-done-anywhere-anytime-on-virtually-any-device-with-the-new-universal-foldable-keyboard/	Microsoft's new foldable keyboard	2015-06-22 05:07:30.160004	2015-06-22 05:07:40.634084	319
1463	9201807	http://kcamara.com/analog-memory-desk	Analog Memory Desk	2015-06-22 05:06:59.674207	2015-06-22 05:07:01.362101	56
1462	9201828	https://docs.google.com/document/d/1rU5-t09tEBym1wD3NUr7s9mMgFBmfGJNBz3F8TGzDsU/edit?usp=sharing	Is web development the right career path for you? Realities of the industry	2015-06-22 05:06:58.491956	2015-06-22 05:06:58.549367	2
1460	9200017	https://www.balancedpayments.com/stripe	Balanced payments is shutting down	2015-06-22 05:06:36.527434	2015-06-22 05:06:59.649815	652
1476	9205435	https://www.khanacademy.org/computing/computer-science/algorithms	Khan Academy: Algorithms	2015-06-22 05:07:40.661806	2015-06-22 05:07:56.816467	479
1471	9203045	https://github.com/zxh0/jvm.go	Jvm.go: A JVM written in Go	2015-06-22 05:07:16.222898	2015-06-22 05:07:19.77822	107
1470	9203184	http://www.huffingtonpost.com/nathan-robinson/the-shocking-finding-from-the-doj-ferguson_b_6858388.html	Three out of four Ferguson residents have arrest warrants	2015-06-22 05:07:16.103074	2015-06-22 05:07:16.142789	2
1474	9203946	https://github.com/matiasinsaurralde/facebook-tunnel	Tunneling Internet traffic over FB chat	2015-06-22 05:07:21.409438	2015-06-22 05:07:30.127634	280
1480	9206689	http://www.nytimes.com/2015/03/15/your-money/how-many-mutual-funds-routinely-rout-the-market-zero.html	How Many Mutual Funds Routinely Rout the Market? Zero	2015-06-22 05:07:59.365638	2015-06-22 05:08:01.617055	57
1481	9206842	http://swiftwtf.tumblr.com/	Swift WTF	2015-06-22 05:07:59.422763	2015-06-22 05:08:00.243446	13
1483	9207229	http://www.reddit.com/r/sanfrancisco/comments/2z3wcf/insane_san_francisco_rent_increase/	Insane San Francisco Rent Increase	2015-06-22 05:08:03.351481	2015-06-22 05:08:03.381844	2
1482	9206782	http://utcc.utoronto.ca/~cks/space/blog/programming/GoFlagUIImportance	The importance of user interface, illustrated by the Go flag package	2015-06-22 05:08:01.64542	2015-06-22 05:08:06.229696	135
1484	9207576	https://joearms.github.io/2015/03/12/The_web_of_names.html	The web of names, hashes and UUIDs	2015-06-22 05:08:06.254725	2015-06-22 05:08:12.182222	189
1511	9222998	http://blog.mdsec.co.uk/2015/03/bruteforcing-ios-screenlock.html	Brute forcing the iPhone PIN and bypassing 10 attempt data deletion	2015-06-22 05:09:51.994797	2015-06-22 05:09:56.202643	131
1495	9213753	http://www.theguardian.com/us-news/2015/mar/16/portland-man-tortured-uae-behest-of-fbi	Portland Man: I was tortured in UAE for refusing to become an informant	2015-06-22 05:08:52.248422	2015-06-22 05:08:52.541996	8
1512	9223955	http://blog.hackermonthly.com/final-issue.html	Hacker Monthly will publish its final issue 12 months from now	2015-06-22 05:09:56.227534	2015-06-22 05:10:01.003448	169
1492	9210978	http://www.apertoire.net/gogs-an-alternative-to-gitlab/	Gogs, an alternative to Gitlab	2015-06-22 05:08:40.267888	2015-06-22 05:08:47.110546	229
1501	9217513	http://volumelabs.net/i-code-like-a-girl/	I code like a girl	2015-06-22 05:09:23.96209	2015-06-22 05:09:24.727882	24
1490	9210505	https://gist.github.com/drkarl/739a864b3275e901d317	Best Linux server backup system?	2015-06-22 05:08:33.555289	2015-06-22 05:08:34.562629	28
1509	9222364	http://www.wsj.com/articles/teslas-elon-musk-says-autonomous-driving-not-all-that-hard-to-achieve-1426624848	Tesla’s Elon Musk Says Autonomous Driving Not All That Hard to Achieve	2015-06-22 05:09:44.332014	2015-06-22 05:09:44.680922	14
1497	9214824	http://techcrunch.com/2015/03/16/pinterest-raises-367-million-pushing-it-past-1-billion-raised-in-all/	Pinterest Raises $367M at 11B valuation	2015-06-22 05:08:58.728982	2015-06-22 05:09:00.036546	44
1502	9217547	http://www.bostonglobe.com/magazine/2015/02/26/things-every-kid-should-master/uM72LGr63zeaStOp9zGyrJ/story.html	Things Every Kid Should Master	2015-06-22 05:09:26.311166	2015-06-22 05:09:26.971486	20
1487	9208501	http://antirez.com/news/88	Adventures in message queues	2015-06-22 05:08:21.760285	2015-06-22 05:08:29.582709	268
1491	9210285	https://ed.stanford.edu/news/stanford-study-shows-success-different-learning-styles-computer-science-class	Stanford study shows success of different programming styles in CS class	2015-06-22 05:08:38.472938	2015-06-22 05:08:40.237998	36
1518	9226497	http://lit.vulf.de/spotify-so-little/	Why Spotify Pays So Little	2015-06-22 05:10:13.267936	2015-06-22 05:10:22.242728	239
1488	9210274	https://outlookzen.wordpress.com/2015/03/15/life-lessons-from-machine-learning/	Life Lessons from Machine Learning	2015-06-22 05:08:29.60863	2015-06-22 05:08:39.027425	206
1500	9217022	http://marc.info/?l=openbsd-misc&m=142654095813320&w=2	Theo de Raadt: OpenSSL vulnerabilities coming on the 19th	2015-06-22 05:09:19.318797	2015-06-22 05:09:26.284071	205
1519	9228323	http://blogs.msdn.com/b/dotnet/archive/2015/03/18/msbuild-engine-is-now-open-source-on-github.aspx	MSBuild Engine is now Open Source on GitHub	2015-06-22 05:10:22.267663	2015-06-22 05:10:39.797434	551
1503	9217838	http://www.bloomberg.com/news/articles/2015-03-17/the-fuzzy-insane-math-that-s-creating-so-many-billion-dollar-tech-companies	The Fuzzy Math That's Creating So Many Billion-Dollar Tech Companies	2015-06-22 05:09:26.998332	2015-06-22 05:09:27.558059	22
1517	9225842	https://www.aerofs.com/blog/aerofs-is-now-free-up-to-30-users/	AeroFS is now free up to 30 users	2015-06-22 05:10:12.816097	2015-06-22 05:10:13.242417	16
1486	9208897	https://www.facebook.com/photo.php?fbid=10153190864139878	“Your monthly rent .. shall increase from $2145 to $8900”	2015-06-22 05:08:16.361681	2015-06-22 05:08:21.735649	195
1493	9212467	http://highscalability.com/blog/2015/3/16/how-and-why-swiftype-moved-from-ec2-to-real-hardware.html	How and Why Swiftype Moved from EC2 to Real Hardware	2015-06-22 05:08:47.135503	2015-06-22 05:08:50.763058	127
1505	9219432	http://tonyarcieri.com/would-rust-have-prevented-heartbleed-another-look	Would Rust have prevented Heartbleed? Another look	2015-06-22 05:09:34.1265	2015-06-22 05:09:34.482359	14
1489	9210484	https://code.google.com/p/chromium/issues/detail?id=378566	Chrome team planning to block all access from browser to localhost wss	2015-06-22 05:08:33.449602	2015-06-22 05:08:35.634899	26
1499	9216735	http://www.startribune.com/lifestyle/health/296404461.html	Coca-Cola pays nutritionists to suggest cola as healthy snack	2015-06-22 05:09:15.721548	2015-06-22 05:09:15.748335	2
1506	9220442	http://newsroom.fb.com/news/2015/03/send-money-to-friends-in-messenger/	Facebook Pay	2015-06-22 05:09:34.513247	2015-06-22 05:09:38.230398	119
1507	9221273	http://www.dvorak.org/blog/2015/03/16/breaking-news-spam-filtering-service-had-access-to-clinton-classified-emails/comment-page-1/	Spam Filtering Service Had Access to Clinton Classified Emails	2015-06-22 05:09:38.255999	2015-06-22 05:09:38.283021	2
1504	9218114	http://www.newyorker.com/business/currency/the-gnu-manifesto-turns-thirty?intcid=mod-latest	The GNU Manifesto Turns Thirty	2015-06-22 05:09:27.582272	2015-06-22 05:09:34.100244	215
1496	9214352	http://rachelnabors.com/2015/03/13/the-hating-game	The Hating Game	2015-06-22 05:08:56.540393	2015-06-22 05:08:56.713418	6
1498	9215890	http://carbon3d.com	Carbon3d – 3D Printing via Continuous Liquid Interface Production	2015-06-22 05:09:05.85239	2015-06-22 05:09:19.861285	467
1494	9212860	http://blog.pkh.me/p/21-high-quality-gif-with-ffmpeg.html	High quality GIF with FFmpeg	2015-06-22 05:08:50.681396	2015-06-22 05:09:05.82895	394
1508	9221292	http://www.google.com/makani/	Google Makani – Wind Energy Kites	2015-06-22 05:09:38.312687	2015-06-22 05:09:51.899823	428
1516	9225079	http://motherboard.vice.com/read/maxis-is-dead-but-this-game-is-better-than-simcity	The 'SimCity' Empire Has Fallen and 'Skylines' Is Picking Up the Pieces	2015-06-22 05:10:10.13051	2015-06-22 05:10:12.094181	71
1521	9231069	http://aws.amazon.com/about-aws/whats-new/2015/03/amazon-rds-for-postgresql-now-supports-94/	Amazon RDS now supports PostgreSQL 9.4.1	2015-06-22 05:10:51.170455	2015-06-22 05:10:53.966087	84
1520	9230239	http://blogs.msdn.com/b/windows_hardware_and_driver_developer_blog/archive/2015/03/18/windows-driver-frameworks-source-on-github.aspx	The Windows Driver Frameworks are on GitHub	2015-06-22 05:10:39.670871	2015-06-22 05:10:51.123758	311
1514	9224488	http://fasterstat.com	Show HN: New IDE and GUI for R language	2015-06-22 05:10:04.573626	2015-06-22 05:10:05.829449	46
1513	9223749	http://productionadvice.co.uk/youtube-loudness/	YouTube puts the final nail in the loudness wars' coffin	2015-06-22 05:10:01.025851	2015-06-22 05:10:04.542378	102
1510	9223197	http://staingate.org	Macbook screen coating issues	2015-06-22 05:09:51.929743	2015-06-22 05:09:52.640519	14
1515	9224776	http://riccardoscalco.github.io/textures/	Show HN: Textures.js, SVG Patterns for Data Visualization	2015-06-22 05:10:05.854418	2015-06-22 05:10:12.78246	171
1522	9231364	http://techcrunch.com/2013/03/14/adblock-plusresponds-to-google-play-bar/	Adblock Plus Removed from Google PlayStore	2015-06-22 05:10:53.987391	2015-06-22 05:10:54.010436	2
1523	9231157	http://www.visir.is/the-pirate-party-is-now-measured-as-the-biggest-party-in-iceland/article/2015150318848	The Pirate Party is now measured as the biggest political party in Iceland	2015-06-22 05:10:54.030556	2015-06-22 05:10:56.598159	98
1524	9231896	http://openssl.org/news/secadv_20150319.txt	OpenSSL Security Advisory	2015-06-22 05:10:56.62436	2015-06-22 05:11:05.265575	238
1525	9233286	http://yvonne.posthaven.com/a-not-so-obvious-reason-to-apply-to-yc	A not-so-obvious reason to apply to YC	2015-06-22 05:11:03.173468	2015-06-22 05:11:03.893236	26
1526	9233491	https://en.greatfire.org/blog/2015/mar/we-are-under-attack	We are under attack	2015-06-22 05:11:05.295817	2015-06-22 05:11:26.372875	702
1527	9235002	http://www.nytimes.com/2015/03/20/business/elon-musk-says-self-driving-tesla-cars-will-be-in-the-us-by-summer.html	Elon Musk: Self-Driving Tesla Cars Will Be in the U.S. By Summer	2015-06-22 05:11:13.88613	2015-06-22 05:11:14.492072	24
1528	9234229	http://artoo.io/	Artoo: Ruby on Robots	2015-06-22 05:11:26.399358	2015-06-22 05:11:27.792118	26
1564	9249753	https://mobile.twitter.com/MayaZigBee/status/579723961661022209	Zigbee light link master key	2015-06-22 05:13:56.466381	2015-06-22 05:14:01.903205	145
1542	9242925	http://www.npr.org/blogs/thetwo-way/2015/03/20/394340722/john-urschel-ravens-offensive-lineman-publishes-math-paper	Ravens Offensive Lineman Publishes Math Paper	2015-06-22 05:12:40.691106	2015-06-22 05:12:46.141046	149
1541	9243692	https://github.com/tom-lord/missy_elliot	Missy Elliot encryption algorithm	2015-06-22 05:12:40.462628	2015-06-22 05:12:40.6615	8
1533	9237137	http://lostinjit.blogspot.com/2015/03/hippyvm-goes-to-y-combinator-and-fails.html	HippyVM goes to Y Combinator and fails	2015-06-22 05:11:38.184694	2015-06-22 05:11:44.306998	157
1531	9236501	https://docs.google.com/document/d/1aa2-HtUglQrAps31s4LdTPVsiFb1BxhyjZolxeezzcI/edit	Eloquent JavaScript, The Annotated Version	2015-06-22 05:11:29.040019	2015-06-22 05:11:30.029314	16
1559	9248328	http://www.nytimes.com/2015/03/23/world/asia/lee-kuan-yew-founding-father-and-first-premier-of-singapore-dies-at-91.html	Lee Kuan Yew, Founding Father and First Premier of Singapore, Dies at 91	2015-06-22 05:13:34.744914	2015-06-22 05:13:35.730738	24
1534	9237822	http://johnathanward.com/make-money-online-failure/	Make Money Online: Documenting 10 Years of Failure	2015-06-22 05:11:44.333325	2015-06-22 05:11:48.927571	120
1553	9246958	http://techcrunch.com/2015/03/22/mentors-are-the-secret-weapons-of-successful-startups/	Mentors Are the Secret Weapons of Successful Startups	2015-06-22 05:13:21.718687	2015-06-22 05:13:22.9632	42
1535	9238639	https://threatpost.com/all-major-browsers-fall-at-pwn2own-day-2/111731	All Major Browsers Fall at Pwn2Own Day Two	2015-06-22 05:11:48.969661	2015-06-22 05:11:58.737537	276
1557	9247978	http://www.imf.org/external/pubs/ft/fandd/2015/03/jaumotte.htm	The decline in unionization has fed the rise in incomes at the top	2015-06-22 05:13:31.393922	2015-06-22 05:13:33.601981	38
1549	9245988	http://www.theguardian.com/books/2015/mar/21/books-interview-david-graeber-the-utopia-of-rules	“So many people spend their working lives doing jobs they think are unnecessary”	2015-06-22 05:13:08.942581	2015-06-22 05:13:10.459257	60
1548	9245862	http://www.nytimes.com/2015/03/22/opinion/sunday/judith-shulevitz-hiding-from-scary-ideas.html	In College and Hiding from Scary Ideas	2015-06-22 05:13:06.94758	2015-06-22 05:13:08.921628	79
1546	9245043	http://javadude.com/articles/passbyvalue.htm	Java is Pass-by-Value, Dammit	2015-06-22 05:13:05.260402	2015-06-22 05:13:06.925745	48
1539	9243018	http://www.wired.com/2015/03/google-android-broken-wifi/	Google Just Fixed One of Wi-Fi's Biggest Annoyances	2015-06-22 05:12:36.3079	2015-06-22 05:12:37.372905	29
1529	9236434	http://www.the-open-mind.com/deep-racism-the-forgotten-history-of-human-zoos-1/	The forgotten history of human zoos	2015-06-22 05:11:26.933005	2015-06-22 05:11:27.73948	26
1536	9240644	http://cocoamine.net/blog/2015/03/20/replacing-photoshop-with-nsstring/	Replacing Photoshop with NSString	2015-06-22 05:11:58.764163	2015-06-22 05:12:32.338951	1002
1530	9236384	http://gizmodo.com/why-does-the-international-space-station-have-such-a-we-1692193163	Why Does the International Space Station Have That Shape?	2015-06-22 05:11:27.81857	2015-06-22 05:11:29.15563	40
1532	9236551	http://daniel.haxx.se/blog/2015/03/20/curl-17-years-old-today/	Curl, 17 years old today	2015-06-22 05:11:30.078415	2015-06-22 05:11:38.278788	241
1537	9241802	https://index.docker.io/v1/_ping	Docker's index.docker.io serving up expired certificate	2015-06-22 05:12:11.205923	2015-06-22 05:12:11.419495	4
1560	9248388	http://apod.nasa.gov/apod/astropix.html	A Double Eclipse of the Sun	2015-06-22 05:13:35.767832	2015-06-22 05:13:35.811277	2
1538	9242836	https://github.com/AtnNn/rethinkdb-stream	Video Streaming with RethinkDB Changefeeds	2015-06-22 05:12:32.365386	2015-06-22 05:12:37.497504	120
1543	9244034	http://gamasutra.com/blogs/ArminIbrisagic/20150220/236427/Goat_Simulator_Post_Mortem.php	Goat Simulator Post Mortem	2015-06-22 05:12:46.16499	2015-06-22 05:13:06.362937	255
1540	9243163	http://www.righto.com/2015/03/12-minute-mandelbrot-fractals-on-50.html	12-minute Mandelbrot: fractals on a 50 year old IBM 1401 mainframe	2015-06-22 05:12:37.525383	2015-06-22 05:12:40.43757	86
1555	9247683	http://paulgraham.com/hijack.html	Hijacking is Buffer Overflow (2001)	2015-06-22 05:13:28.676604	2015-06-22 05:13:29.057659	12
1552	9246855	http://www.templeos.org/TempleOS.html	TempleOS is applying to Y Combinator. Partners desired, send an email	2015-06-22 05:13:19.972554	2015-06-22 05:13:21.519776	54
1554	9247223	http://www.clicknothing.typepad.com/click_nothing/2015/03/ten-years-down.html	“Splinter Cell: Chaos Theory gave me brain damage.”	2015-06-22 05:13:22.816689	2015-06-22 05:13:31.182518	195
1551	9246682	http://www.dsausa.org/shorter_work_weeks	Why We Should Demand a Shorter Workweek	2015-06-22 05:13:17.338216	2015-06-22 05:13:19.943121	69
1544	9245022	http://www.backfromnature.org/2015/03/i-gave-my-child-autism.html	I Gave My Child Autism	2015-06-22 05:12:54.647106	2015-06-22 05:13:00.897779	177
1547	9245584	http://techcrunch.com/2015/03/21/pao-vs-kleiner-defense-rests-its-case-showcasing-a-different-side-of-the-story/	Pao vs. Kleiner Defense Rests Its Case, Showcasing a Different Side of the Story	2015-06-22 05:13:05.697396	2015-06-22 05:13:06.033165	10
1545	9245441	http://sofard.tumblr.com/post/113616107456/the-decline-of-vancouver	The decline of Vancouver	2015-06-22 05:13:00.951463	2015-06-22 05:13:05.23633	116
1565	9249924	http://karpathy.github.io/neuralnets/	Hacker's guide to Neural Networks	2015-06-22 05:14:01.668344	2015-06-22 05:14:06.364314	129
1562	9249145	http://techcrunch.com/2015/03/22/razorpay-offers-stripe-style-payments-focused-squarely-on-indian-e-commerce-plays/	YC backed Razorpay offers Stripe style payment experience in India	2015-06-22 05:13:44.379418	2015-06-22 05:13:46.921111	60
1563	9249112	https://ilikerabbits.com	Show HN: Rabbits – Send an email to get any grunt-work programming job completed	2015-06-22 05:13:46.966741	2015-06-22 05:13:56.443661	263
1550	9245980	https://hsmr.cc/palinopsia/	Is Your VirtualBox Reading Your E-Mail? Reconstruction of FrameBuffers from VRAM	2015-06-22 05:13:10.487136	2015-06-22 05:13:21.697262	247
1556	9247877	http://kernelmag.dailydot.com/issue-sections/features-issue-sections/12228/mac-plus-modern-web/	Plugging a 1986 Mac Plus into the Modern Web	2015-06-22 05:13:31.215322	2015-06-22 05:13:31.35974	6
1568	9250505	http://carlcheo.com/fascinating-posts-from-tech-founders-who-changed-the-world	Fascinating early posts from Larry Page, Linus Torvalds, Jan Koum, and more	2015-06-22 05:14:11.37838	2015-06-22 05:14:13.544527	52
1567	9250774	http://www.bloomberg.com/news/articles/2015-03-23/see-through-solar-is-tomorrow-s-threat-to-oil	See-Through Solar Is Tomorrow’s Threat to Oil	2015-06-22 05:14:09.503937	2015-06-22 05:14:11.354929	59
1558	9247668	http://www.playboy.com/articles/pez-outlaw	The Pez Outlaw	2015-06-22 05:13:32.372181	2015-06-22 05:13:39.356789	179
1561	9248751	http://homepage.boetes.org/software/mg/	Mg: an emacs-like editor in ~160 kbytes	2015-06-22 05:13:39.383738	2015-06-22 05:13:44.337278	121
1572	9253290	http://hlinnaka.iki.fi/2015/03/23/pg_rewind-in-postgresql-9-5/	pg_rewind in PostgreSQL 9.5	2015-06-22 05:14:27.802711	2015-06-22 05:14:31.611224	124
1566	9250314	http://documentation.thebigrede.net/maintainers/howto-build-package.html	How to build debian package	2015-06-22 05:14:06.503789	2015-06-22 05:14:09.474546	84
1569	9250847	http://news.cornell.edu/stories/2015/03/images-fool-computer-vision-raise-security-concerns	Images that fool computer vision raise security concerns	2015-06-22 05:14:13.579811	2015-06-22 05:14:21.185293	163
1570	9251735	http://stripe.com/connect	Stripe Connect v2	2015-06-22 05:14:21.229962	2015-06-22 05:14:25.391962	115
1571	9252911	http://renderman.pixar.com/view/non-commercial-renderman	Free Non-Commercial Renderman	2015-06-22 05:14:25.41942	2015-06-22 05:14:27.778931	93
1582	9259986	http://techcrunch.com/2015/03/24/apple-acquires-durable-database-company-foundationdb	Apple Acquires FoundationDB	2015-06-22 05:15:14.509585	2015-06-22 05:15:37.617965	602
1574	9254876	https://bugzilla.redhat.com/show_bug.cgi?id=1202858	Bug 1202858 – restarting squid results in deleting all files in hard-drive	2015-06-22 05:14:40.8632	2015-06-22 05:14:54.130925	423
1583	9260963	http://theuserisdrunk.com/	The User Is Drunk	2015-06-22 05:15:21.540634	2015-06-22 05:15:23.304862	63
1573	9253497	http://fortune.com/2015/03/23/pinterest-employee-taxes/	Pinterest lets employees exercise options 7 years after leaving	2015-06-22 05:14:31.64853	2015-06-22 05:14:40.840395	287
1606	9275041	http://status.github.com/	GitHub hit by DDoS attack	2015-06-22 05:17:05.435644	2015-06-22 05:17:06.294962	30
1579	9258798	http://blog.samaltman.com/bubble-talk	Bubble talk	2015-06-22 05:15:09.20035	2015-06-22 05:15:11.10619	69
1591	9266769	https://developers.facebook.com/docs/chat	Facebook Messenger XMPP is going away	2015-06-22 05:16:01.979995	2015-06-22 05:16:02.879004	17
1600	9269660	http://techcrunch.com/2015/03/26/amazon-goes-after-dropbox-google-microsoft-with-unlimited-cloud-drive-storage/	Amazon Goes After Dropbox, Google, Microsoft with Unlimited Cloud Drive Storage	2015-06-22 05:16:29.005373	2015-06-22 05:16:30.23957	24
1585	9262230	http://espresso.economist.com/b10a2a12bd626d144ac39e21c894fd4f?%3F=fsrc%3Dscn%2Fesp%2Ftw&fsrc=scn%2Fesp%2FTW	Message from Facebook: this could be war	2015-06-22 05:15:37.648116	2015-06-22 05:15:38.504159	30
1589	9264195	http://blog.erratasec.com/2015/03/x86-is-high-level-language.html#.VRLn95PF_XE	X86 is a high-level language	2015-06-22 05:15:48.875891	2015-06-22 05:15:50.358969	50
1584	9261715	http://www.slackchats.com/	Slack Chats	2015-06-22 05:15:31.967829	2015-06-22 05:15:35.915958	109
1576	9255976	http://www.nytimes.com/2015/03/25/world/europe/germanwings-crash.html?hp&action=click&pgtype=Homepage&module=first-column-region&region=top-news&WT.nav=top-news&_r=0	Germanwings Flight to Düsseldorf from Barcelona Crashes in Southern France	2015-06-22 05:14:54.1544	2015-06-22 05:14:54.690895	14
1603	9271246	https://github.com/facebook/react-native	React-native is now open-source	2015-06-22 05:16:34.716088	2015-06-22 05:17:09.294021	563
1588	9262538	https://newsoffice.mit.edu/2015/michael-stonebraker-wins-turing-award-0325	Stonebraker wins Turing Award	2015-06-22 05:15:41.014228	2015-06-22 05:15:48.844424	239
1575	9255305	https://github.com/mikechau/react-primer-draft	A Primer for Building Single Page Applications with React	2015-06-22 05:14:52.966336	2015-06-22 05:14:55.803881	36
1586	9262260	https://fiddle.md/b836w36wh2h8mv3fj23t8r	Show HN: Fiddle.md – a collaborative writing tool by Swipe	2015-06-22 05:15:38.531078	2015-06-22 05:15:40.685962	63
1580	9259757	http://www.bbc.com/autos/story/20130109-why-do-americans-not-buy-diesels	Why do Americans not drive diesels?	2015-06-22 05:15:13.449801	2015-06-22 05:15:14.10926	20
1592	9265817	https://medium.com/matter/the-shut-in-economy-ec3ec1294816	The Shut-In Economy	2015-06-22 05:16:04.575768	2015-06-22 05:16:16.273797	320
1590	9264531	http://news.dartlang.org/2015/03/dart-for-entire-web.html	“We have decided not to integrate the Dart VM into Chrome”	2015-06-22 05:15:50.383818	2015-06-22 05:16:13.181765	440
1587	9262327	http://ioscodesamples.com/index.html	My Failed Product is now free – 134 iOS Code Samples	2015-06-22 05:15:40.732742	2015-06-22 05:15:40.974755	6
1577	9256082	https://www.paypal-engineering.com/2014/12/10/10-myths-of-enterprise-python/	10 Myths of Enterprise Python	2015-06-22 05:14:55.833596	2015-06-22 05:15:01.45944	161
1578	9256844	http://bazel.io/	Bazel – Correct, reproducible, fast builds for everyone	2015-06-22 05:15:01.493403	2015-06-22 05:15:14.378025	357
1581	9259790	https://github.com/clarus/falso	Proving false in Coq using an implementation bug	2015-06-22 05:15:14.401627	2015-06-22 05:15:14.477055	4
1612	9275464	http://boingboing.net/2015/03/26/australia-outlaws-warrant-cana.html	Australia outlaws warrant canaries	2015-06-22 05:17:20.470609	2015-06-22 05:17:20.672702	8
1598	9268904	http://practicaltypography.com/why-racket-why-lisp.html	Why Racket? Why Lisp? (2014)	2015-06-22 05:16:26.378078	2015-06-22 05:16:27.880697	57
1593	9267847	http://www.morganstanley.com/profiles/bjarne-stroustrup-managing-director-technology/	The Inventor of C++, Bjarne Stroustrup Works at Morgan Stanley	2015-06-22 05:16:10.102192	2015-06-22 05:16:11.015952	26
1596	9268277	http://www.wired.com/2015/03/google-sends-reporter-gif-instead-no-comment/	Google sends reporter a GIF instead of a 'no comment'	2015-06-22 05:16:20.471848	2015-06-22 05:16:25.242838	72
1597	9268946	http://www.bbc.co.uk/news/world-europe-32063587	Germanwings plane crash: Co-pilot 'wanted to destroy plane'	2015-06-22 05:16:25.271034	2015-06-22 05:16:26.345192	36
1595	9268000	http://marc.info/?l=best-of-security&m=96843702620513&w=2	Julian Assange: NSA is monitoring key Internet routers (1996)	2015-06-22 05:16:17.942452	2015-06-22 05:16:24.453729	163
1611	9276188	https://github.com/gizak/termui	Termui: build terminal interfaces in Go	2015-06-22 05:17:16.618957	2015-06-22 05:17:20.436916	130
1601	9269760	http://www.rferl.mobi/a/how-to-guide-russian-trolling-trolls/26919999.html	One Professional Russian Troll Tells All	2015-06-22 05:16:30.275006	2015-06-22 05:16:33.043849	86
1594	9268075	http://dnsperf.com/	Worldwide DNS Performance	2015-06-22 05:16:16.297452	2015-06-22 05:16:17.902255	48
1602	9270387	http://exchangel.co	Exchangel – Fantasy Angel Investing	2015-06-22 05:16:33.069587	2015-06-22 05:16:34.689905	50
1607	9275201	http://insight-labs.org/?p=1682	Baidu's traffic hijacked to DDoS GitHub.com	2015-06-22 05:17:06.320309	2015-06-22 05:17:06.509103	8
1599	9269465	https://pages.zend.com/TY-Infographic.html	PHP 7 – 5 things you need to know	2015-06-22 05:16:27.90562	2015-06-22 05:16:28.956325	30
1605	9274602	http://www.sec.gov/news/pressrelease/2015-49.html#.VRSPA_nF8qx	SEC Approves Equity Crowdfunding from Unaccredited Investors	2015-06-22 05:17:01.717815	2015-06-22 05:17:05.405409	111
1604	9273976	http://nuclide.io/	Nuclide: Facebook IDE	2015-06-22 05:16:47.955141	2015-06-22 05:16:59.111646	307
1608	9275357	http://learnpythonthehardway.org/book/	Learn Python the Hard Way	2015-06-22 05:17:09.32352	2015-06-22 05:17:16.220371	168
1609	9275817	http://www.dnalounge.com/backstage/log/2015/03/26.html	Wherein the Facebook Morality Police have decided that we are porn	2015-06-22 05:17:14.079329	2015-06-22 05:17:14.552771	16
1615	9279024	http://www.nytimes.com/2015/03/28/technology/ellen-pao-kleiner-perkins-case-decision.html	Ellen Pao Loses Silicon Valley Gender Bias Case Against Kleiner Perkins	2015-06-22 05:17:28.971719	2015-06-22 05:17:31.890197	94
1610	9275771	http://translate.google.ca/translate?hl=en&sl=zh-CN&u=https://iyouport.com/archives/25775&prev=search	Why Baidu Has Been Hijacked to Attack GitHub	2015-06-22 05:17:14.904407	2015-06-22 05:17:16.592286	55
1613	9276605	https://roystanross.wordpress.com/super-mario-64-hd/	Super Mario 64 HD	2015-06-22 05:17:20.704206	2015-06-22 05:17:21.051818	14
1616	9279659	http://www.latimes.com/business/la-fi-tn-tim-cook-fortune-20150327-story.html	Apple CEO Tim Cook says he'll donate his fortune to charity	2015-06-22 05:17:33.831297	2015-06-22 05:17:33.925054	4
1661	9297904	http://patrickjamesmcguire.com/2015/03/21/some-problems-shouldnt-be-solved/	Some Problems Shouldn't Be Solved	2015-06-22 05:20:31.395603	2015-06-22 05:20:31.445795	2
1617	9280276	http://www.openculture.com/2015/03/download-422-free-art-books-from-the-metropolitan-museum-of-art.html	422 Free Art Books from the Metropolitan Museum of Art	2015-06-22 05:17:42.332789	2015-06-22 05:17:42.377257	2
1614	9277370	http://slackhq.com/post/114696167740/march-2015-security-incident-and-launch-of-2fa	Slack was hacked	2015-06-22 05:17:21.077256	2015-06-22 05:17:59.318302	945
1629	9282927	https://day.arduino.cc/#/	Today is Arduino Day	2015-06-22 05:18:19.829285	2015-06-22 05:18:22.465527	78
1618	9280815	http://www.bloomberg.com/news/articles/2015-03-20/who-classifies-monsanto-s-glyphosate-as-probably-carcinogenic-	Monsanto Weedkiller Is  ‘ Probably Carcinogenic,’ WHO Says	2015-06-22 05:17:53.871536	2015-06-22 05:17:58.441957	88
1628	9282800	https://translate.google.com/translate?hl=en&sl=es&tl=en&u=https%3A%2F%2Ftwitter.com%2Fedgar_sk%2Fstatus%2F578993498252161024	Mexican taxi drivers beat up Uber with baseball bats. (Google translate)	2015-06-22 05:18:19.094592	2015-06-22 05:18:19.641759	20
1643	9288710	https://blog.cloudflare.com/improving-compression-with-preset-deflate-dictionary/	Improving compression with a preset DEFLATE dictionary	2015-06-22 05:19:32.511991	2015-06-22 05:19:35.676865	40
1639	9287287	http://www.washingtonpost.com/opinions/pro-discrimination-religious-freedom-laws-are-dangerous-to-america/2015/03/29/bdb4ce9e-d66d-11e4-ba28-f2a685dc7f89_story.html?tid=sm_tw	Tim Cook: Pro-discrimination ‘religious freedom’ laws are dangerous	2015-06-22 05:19:14.612482	2015-06-22 05:19:14.749406	6
1622	9281690	http://visualmess.com/index.html	Clean Up Your Mess – A Guide to Visual Design for Everyone	2015-06-22 05:18:06.763452	2015-06-22 05:18:18.420295	270
1640	9287706	http://www.washingtonpost.com/opinions/pro-discrimination-religious-freedom-laws-are-dangerous-to-america/2015/03/29/bdb4ce9e-d66d-11e4-ba28-f2a685dc7f89_story.html	Tim Cook: Pro-discrimination ‘religious freedom’ laws are dangerous	2015-06-22 05:19:19.865413	2015-06-22 05:19:21.000685	36
1620	9281222	https://github.com/thampiman/reverse-geocoder	A fast, offline reverse geocoder in Python	2015-06-22 05:17:59.351001	2015-06-22 05:18:06.738865	209
1626	9282748	http://www.nytimes.com/2015/03/29/magazine/debunking-the-myth-of-the-job-stealing-immigrant.html?_r=1	Debunking the Myth of the Job-Stealing Immigrant	2015-06-22 05:18:18.495312	2015-06-22 05:18:18.520848	2
1621	9281402	https://orionmagazine.org/article/defending-darwin/	Defending Darwin	2015-06-22 05:18:04.744195	2015-06-22 05:18:05.621245	20
1627	9282493	http://gregoryszorc.com/blog/2015/03/28/notes-from-facebook%27s-developer-infrastructure-at-scale-f8-talk/	Notes from Facebook's Developer Infrastructure at Scale F8 Talk	2015-06-22 05:18:18.592502	2015-06-22 05:18:19.802365	24
1624	9282218	http://blog.jgc.org/2015/03/gnu-make-insanity-finding-value-of-j.html	GNU make insanity: finding the value of the -j parameter	2015-06-22 05:18:13.420505	2015-06-22 05:18:18.567166	68
1635	9285245	http://www.contextfreeart.org/	Context Free Art	2015-06-22 05:18:54.564896	2015-06-22 05:18:58.024194	99
1632	9284782	http://www.wired.co.uk/magazine/archive/2015/03/features/messaging-apps	Messaging Apps Shouldn't Make Money	2015-06-22 05:18:51.963729	2015-06-22 05:18:54.381496	58
1623	9282223	http://www.businesstimes.com.sg/blogs/miss-ann-thrope/by-gum-the-west-is-wrong-about-singapore	By gum, the West is wrong about Singapore	2015-06-22 05:18:12.313645	2015-06-22 05:18:12.455857	6
1638	9286555	https://www.youtube.com/watch?v=u8I6qt_Z0Cg	Dot matrix printer playing “Eye of the Tiger” [video]	2015-06-22 05:19:08.491959	2015-06-22 05:19:25.055236	455
1619	9280889	http://blogs.law.harvard.edu/philg/2015/03/28/germanwings-tragedy-how-to-protect-against-mentally-ill-pilots/	Germanwings Tragedy: How to protect against mentally ill pilots?	2015-06-22 05:17:55.428676	2015-06-22 05:17:56.669253	35
1630	9283249	http://news.stanford.edu/news/2015/march/new-admits-finaid-032715.html	Stanford – Parents with annual family incomes below $125,000 will pay no tuition	2015-06-22 05:18:22.502713	2015-06-22 05:18:40.332835	586
1631	9284226	https://status.github.com/messages?latest	GitHub under mass DDOS attacks	2015-06-22 05:18:40.35709	2015-06-22 05:18:51.937774	334
1625	9282612	http://haxel.ca/the-anti-google.html	The Anti-Google	2015-06-22 05:18:16.818153	2015-06-22 05:18:16.916694	4
1646	9289317	http://www.cpushack.com/2015/03/29/i-just-poured-water-on-my-scanner/	I Just Poured Water on My Scanner…	2015-06-22 05:19:35.706437	2015-06-22 05:19:38.465438	89
1645	9289122	https://github.com/esneider/debug	Debugging like a sir	2015-06-22 05:19:35.37755	2015-06-22 05:19:35.455849	4
1637	9286442	http://m.timeline.com/stories/psychedelic-drugs-clinical-use-anxiety-terminally-ill-mdma-ecstasy-molly-lsd-magic-mushrooms	Psychedelics and Psychotherapy	2015-06-22 05:19:06.248021	2015-06-22 05:19:08.407814	50
1634	9285019	http://www.antonlindstrom.com/2015/03/29/introduction-to-apache-mesos.html	Introduction to Apache Mesos	2015-06-22 05:18:54.428168	2015-06-22 05:18:54.726213	8
1641	9287957	http://www.wired.com/2015/03/mercedes-benz-f-015-autonomous-car/	The Mercedes Robo-Car That Made Me Want to Stop Driving	2015-06-22 05:19:23.333266	2015-06-22 05:19:24.751255	38
1633	9285095	http://www.wsj.com/articles/u-s-coding-website-github-hit-with-cyberattack-1427638940	U.S. Coding Website GitHub Hit with Cyberattack – WSJ	2015-06-22 05:18:52.797405	2015-06-22 05:18:53.166496	14
1636	9285561	https://msol.io/blog/tech/2015/03/10/how-i-doubled-my-internet-speed-with-openwrt/	How I doubled my Internet speed with OpenWRT	2015-06-22 05:18:58.054744	2015-06-22 05:19:08.463102	245
1644	9288914	http://unredacted.redalemeden.com/2015/initial-thoughts-about-react-native/	React Native: Initial Thoughts	2015-06-22 05:19:33.254869	2015-06-22 05:19:35.180819	62
1648	9290394	http://www.nytimes.com/2015/03/31/nyregion/silk-road-case-federal-agents-charges.html	Two Federal Agents in Silk Road Case Face Fraud Charges	2015-06-22 05:19:40.166566	2015-06-22 05:19:40.287877	6
1654	9293849	http://www.netresec.com/?page=Blog&month=2015-03&post=China%27s-Man-on-the-Side-Attack-on-GitHub	China's Man-On-the-Side Attack on GitHub	2015-06-22 05:20:01.323124	2015-06-22 05:20:12.35084	362
1650	9290332	http://www.brianstorti.com/stop-using-tail/?utm_content=buffer13c97&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer	Stop using tail -f (mostly)	2015-06-22 05:19:40.691834	2015-06-22 05:19:56.503151	432
1642	9288084	https://www.amazon.com/services/	Amazon Home Services	2015-06-22 05:19:25.105976	2015-06-22 05:19:32.476825	228
1647	9290024	http://nobsgui.de/to/MATHandPHYSICS/	No bullshit guide to math and physics	2015-06-22 05:19:38.494622	2015-06-22 05:19:40.144108	54
1652	9293026	http://blogs.windows.com/bloggingwindows/2015/03/30/introducing-project-spartan-the-new-browser-built-for-windows-10/	More Details About Project Spartan	2015-06-22 05:19:53.722889	2015-06-22 05:19:55.312867	28
1649	9289939	http://www.hscott.net/ycapp.html?	Samuel Colt's YC app for the summer 1851 batch	2015-06-22 05:19:40.31062	2015-06-22 05:19:40.668466	16
1658	9296431	http://www.npr.org/2015/03/31/395829446/after-snowden-the-nsa-faces-recruitment-challenge	After Snowden, the NSA Faces Recruitment Challenge	2015-06-22 05:20:24.649577	2015-06-22 05:20:31.352891	40
1655	9294954	https://github.com/steeve/france.code-civil	French civil code now on GitHub	2015-06-22 05:20:12.376717	2015-06-22 05:20:22.64286	301
1651	9292831	https://www.facebook.com/photo.php?fbid=10101999874192881	Today we moved into our new Facebook building in Menlo Park, California	2015-06-22 05:19:52.484697	2015-06-22 05:19:56.572529	6
1653	9293488	https://www.owlfolio.org/htmletc/i-will-file-bugs-for-you/	I Will File Bugs for You	2015-06-22 05:19:56.608637	2015-06-22 05:20:01.29465	137
1657	9295987	http://www.scientificamerican.com/article/economic-inequality-it-s-far-worse-than-you-think	Economic Inequality: It’s Far Worse Than You Think	2015-06-22 05:20:23.029183	2015-06-22 05:20:23.059618	2
1656	9295964	http://blog.surface.com/2015/03/announcing-surface-3	Announcing the Surface 3	2015-06-22 05:20:22.125863	2015-06-22 05:20:25.164688	85
1659	9296440	https://www.google.com/maps/@43.0848052,-79.0949707,17z/data=!1e3	Google Maps Pacman	2015-06-22 05:20:25.1951	2015-06-22 05:20:25.22694	2
1682	9308050	http://googleonlinesecurity.blogspot.com/2015/03/maintaining-digital-certificate-security.html?m=1	Google pulling China CNNIC CA from its products (update)	2015-06-22 05:21:34.290978	2015-06-22 05:21:44.958536	355
1683	9308261	http://www.marketplace.org/topics/education/learning-curve/american-students-head-germany-free-college	American students head to Germany for free college	2015-06-22 05:21:44.991638	2015-06-22 05:21:46.062832	40
1674	9303609	http://techcrunch.com/2015/03/31/google-says-5-of-web-browsers-have-ad-injectors-installed/?ncid=rss&utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+Techcrunch+%28TechCrunch%29&utm_content=FaceBook#3Kwfc0:bu8K	Google Says 5% of Visitors to Its Sites Have Ad Injectors Installed	2015-06-22 05:21:09.63665	2015-06-22 05:21:12.346793	64
1670	9301298	http://samsaffron.com/archive/2015/03/31/debugging-memory-leaks-in-ruby	Debugging memory leaks in Ruby	2015-06-22 05:20:52.878147	2015-06-22 05:20:54.061056	47
1680	9307570	http://educationware.net/exercism-io-become-a-better-programmer/	Exercism.io – Become a better programmer	2015-06-22 05:21:27.816282	2015-06-22 05:21:29.483526	55
1662	9297935	http://chrome.blogspot.com/2015/03/more-chromebooks-for-everyone.html	$149 Chromebooks	2015-06-22 05:20:31.498452	2015-06-22 05:20:41.568017	287
1663	9298868	http://blog.flickr.net/en/2015/03/30/flickr-now-offers-public-domain-and-cc0-designations/	Flickr now offers Public Domain and CC0 designations	2015-06-22 05:20:39.355792	2015-06-22 05:20:40.378485	13
1673	9302637	http://www.gamedev.net/page/resources/_/technical/game-programming/doom3-is-the-proof-that-keep-it-simple-works-r4009	Doom3 is the proof that “keep it simple” works	2015-06-22 05:21:06.373803	2015-06-22 05:21:09.574519	99
1667	9301297	http://googleblog.blogspot.com/2015/03/smartbox-by-inbox-mailbox-of-tomorrow.html	Smartbox by Inbox by Gmail by Google	2015-06-22 05:20:50.112567	2015-06-22 05:20:50.4027	12
1695	9315404	https://groups.google.com/forum/#!topic/kivy-users/PZpI1g-W3do	Kivy 1.9 released! (Desktop/Mobile Python Framework)	2015-06-22 05:22:37.53591	2015-06-22 05:22:39.818725	59
1676	9306085	http://www.nytimes.com/2015/04/02/us/california-imposes-first-ever-water-restrictions-to-deal-with-drought.html	California Imposes First-Ever Water Restrictions to Deal with Drought	2015-06-22 05:21:21.028994	2015-06-22 05:21:23.626851	77
1692	9314523	http://hyperallergic.com/195922/what-happens-when-you-try-to-photoshop-money/	What Happens When You Try to Photoshop Money	2015-06-22 05:22:29.861513	2015-06-22 05:22:31.483169	43
1669	9301491	https://com.google	Google releases the first new site hosted on the .Google top-level domain	2015-06-22 05:20:51.037981	2015-06-22 05:20:52.5657	56
1666	9301151	http://www.washingtonpost.com/blogs/on-leadership/wp/2015/03/31/zappos-to-employees-get-behind-our-no-bosses-approach-or-leave-with-severance/	Zappos to employees: Get behind our ‘no bosses’ approach or leave with severance	2015-06-22 05:20:49.630454	2015-06-22 05:20:49.969044	12
1665	9300703	http://www.bloomberg.com/news/articles/2015-03-30/all-40-runners-fail-to-complete-100-mile-tennessee-mountain-race	All 40 Runners Fail at 100-Mile Tennessee Mountain Race	2015-06-22 05:20:48.183828	2015-06-22 05:20:50.760114	44
1681	9307685	http://arstechnica.com/gadgets/2015/04/googles-arc-opens-up-to-developers-runs-android-apps-on-most-desktop-oses/	Google’s ARC Now Runs Android Apps on Chrome OS, Windows, Mac, and Linux	2015-06-22 05:21:29.521466	2015-06-22 05:21:34.260447	163
1671	9301724	http://www.fastcoexist.com/3044360/costa-rica-is-now-running-on-100-renewable-electricity	Costa Rica Is Now Running on 100% Renewable Electricity	2015-06-22 05:20:54.087933	2015-06-22 05:21:06.346839	385
1668	9301121	http://firstdoit.com/ios-8-insidious-length-bug-on-jquery-and-underscore-each-map/	iOS 8 insidious length bug breaks jQuery and Underscore object iteration	2015-06-22 05:20:50.792007	2015-06-22 05:20:50.878983	4
1675	9304063	https://groups.google.com/forum/#!msg/redis-db/dO0bFyD_THQ/Uoo2GjIx6qgJ	Redis 3.0.0 is out	2015-06-22 05:21:12.390698	2015-06-22 05:21:23.740166	265
1664	9300349	https://www.meteor.com/blog/2015/03/31/meteor-11-microsoft-windows-mongodb-30	Meteor 1.1 Released – Now Supporting Microsoft Windows and MongoDB 3.0	2015-06-22 05:20:41.596265	2015-06-22 05:20:52.851434	237
1677	9306036	https://www.eff.org/deeplinks/2015/04/leaked-tpp-investment-chapter-reveals-serious-threat-user-safeguards	Leaked TPP Investment Chapter Reveals Serious Threat to User Safeguards	2015-06-22 05:21:23.216394	2015-06-22 05:21:23.355918	6
1679	9306198	https://ghostcall.io	Ghost Call – Secure, Encrypted, Anonymous Calling	2015-06-22 05:21:23.765225	2015-06-22 05:21:27.790819	126
1672	9302810	http://forum.nim-lang.org/t/1075	Nim article on Wikipedia about to be deleted again	2015-06-22 05:21:03.845227	2015-06-22 05:21:04.050598	8
1678	9306757	https://www.djangoproject.com/weblog/2015/apr/01/release-18-final/	Django 1.8 released	2015-06-22 05:21:23.381278	2015-06-22 05:21:23.411747	2
1686	9310928	http://blog.cryptographyengineering.com/2015/04/truecrypt-report.html	Truecrypt report	2015-06-22 05:21:56.474545	2015-06-22 05:22:07.121942	349
1688	9313004	http://www.myrmecos.net/2015/03/28/faq-so-your-company-has-been-found-using-alexs-photographs-without-permission-what-next/	So Your Company Has Been Found Using Alex’s Photographs Without Permission	2015-06-22 05:22:07.549541	2015-06-22 05:22:08.120717	20
1685	9310488	https://github.com/PixelsCommander/HTML-GL	Render HTML via WebGL for 60FPS and Shader Effects	2015-06-22 05:21:54.542513	2015-06-22 05:21:55.245363	26
1691	9314000	http://www.telegraph.co.uk/finance/economics/11513341/Greece-draws-up-drachma-plans-prepares-to-miss-IMF-payment.html	Greece draws up drachma plans, prepares to miss IMF payment	2015-06-22 05:22:25.896087	2015-06-22 05:22:28.09041	62
1684	9309459	https://www.scaleway.com/	Scaleway: Bare metal SSD ARM servers for 0.02€/hr	2015-06-22 05:21:46.092001	2015-06-22 05:21:56.448222	298
1690	9314269	http://www.ibtimes.co.uk/earth-receiving-mysterious-radio-signals-outer-space-alien-life-source-possibility-believe-1494686	Earth receiving mysterious radio signals	2015-06-22 05:22:20.269856	2015-06-22 05:22:24.479286	133
1694	9315277	http://www.wired.com/2015/04/microsoft-open-source-windows-definitely-possible/	Microsoft: An Open Source Windows Is 'Definitely Possible'	2015-06-22 05:22:36.674615	2015-06-22 05:22:37.509948	24
1687	9313056	https://github.com/google/yapf	A Python code formatter by Google	2015-06-22 05:22:07.14693	2015-06-22 05:22:09.316626	50
1693	9315156	https://github.com/porter-io/tag-github	Show HN: Tagging all GitHub repos	2015-06-22 05:22:33.076977	2015-06-22 05:22:36.650363	100
1689	9313182	http://blog.servo.org/2015/04/02/twis-29/	“The colored boxes indicate which CPU core performed layout for each node”	2015-06-22 05:22:09.348458	2015-06-22 05:22:33.041446	513
1697	9315847	http://www.codecademy.com/learn/learn-angularjs	Learn AngularJS	2015-06-22 05:22:40.294369	2015-06-22 05:22:44.217045	52
1696	9315503	http://staltz.com/dont-react/	Don't React	2015-06-22 05:22:38.744539	2015-06-22 05:22:42.751065	58
1698	9316022	http://www.bloombergview.com/articles/2015-04-02/tesla-stockholders-can-t-take-a-joke	Tesla Stockholders Can't Take a Joke	2015-06-22 05:22:40.666796	2015-06-22 05:22:44.57163	74
1700	9317159	http://codepen.io/jakealbaugh/full/PwLXXP/	Myself – v1.0.3	2015-06-22 05:22:48.481219	2015-06-22 05:22:51.658152	78
1699	9316856	https://ninjadoge24.github.io/#002-how-i-cracked-nq-vaults-encryption	How I cracked NQ Vault's “encryption”	2015-06-22 05:22:44.616609	2015-06-22 05:22:48.435642	95
1701	9317916	http://blog.ycombinator.com/new-hacker-news-guideline	New Hacker News Guideline: Avoid Gratuitous Negativity	2015-06-22 05:22:51.697153	2015-06-22 05:23:27.193961	814
1915	9422033	https://fi.google.com/about/	Project Fi by Google	2015-06-23 07:35:50.774843	2015-06-23 07:36:47.538911	972
1742	9338708	http://web.mit.edu/jemorris/humor/500-miles	The 500-mile email	2015-06-22 05:26:04.431153	2015-06-22 05:26:17.74198	450
1721	9327394	https://hackerone.com/reports/55017	$9000 bounty paid for Python bug	2015-06-22 05:24:47.836702	2015-06-22 05:24:51.620928	123
1714	9325637	http://www.nytimes.com/1985/12/08/business/the-executive-computer.html	What happened to the laptop computer? (1985)	2015-06-22 05:24:26.729081	2015-06-22 05:24:32.490841	189
1722	9327526	https://sploitfun.wordpress.com/2015/02/10/understanding-glibc-malloc/	Understanding glibc malloc	2015-06-22 05:24:48.042824	2015-06-22 05:24:48.070269	2
1733	9332223	https://www.eff.org/deeplinks/2015/04/whitehouses-new-executive-order-cyber-crime-unfortunately-no-joke	The Whitehouse’s New Executive Order on Cyber Crime Is (Unfortunately) No Joke	2015-06-22 05:25:21.675128	2015-06-22 05:25:23.647354	67
1728	9329138	http://animalnewyork.com/2015/theres-a-massive-illicit-bust-of-edward-snowden-stuck-to-a-war-monument-in-brooklyn/	Artists plant sculptured bust of Edward Snowden in Brooklyn park	2015-06-22 05:24:57.953369	2015-06-22 05:24:58.826951	20
1712	9325501	https://javascriptkicks.com/articles/2657	I won't be using Angular for my next projectand neither should you	2015-06-22 05:24:23.582457	2015-06-22 05:24:26.497761	71
1710	9324552	http://www.pcworld.com/article/2899351/everything-you-need-to-know-about-nvme.html	NVMe, the fast future for SSDs	2015-06-22 05:24:12.969946	2015-06-22 05:24:19.975318	237
1702	9319822	https://rare.us/story/obama-just-signed-an-executive-order-that-lets-the-government-seize-suspected-hackers-money-and-stuff/	Obama signs executive order allowing government to seize hackers assets	2015-06-22 05:23:08.389482	2015-06-22 05:23:12.920165	154
1735	9332718	http://frontendhq.com/pinger	Show HN: Get pinged when standards hit 90% browser support	2015-06-22 05:25:28.379941	2015-06-22 05:25:29.638449	39
1703	9320246	https://bitcoinfoundation.org/forum/index.php?/topic/1284-the-truth-about-the-bitcoin-foundation/	The truth about the Bitcoin Foundation	2015-06-22 05:23:22.689736	2015-06-22 05:23:26.803714	138
1713	9325707	https://medium.com/@gerstenzang/govco-6f4eb4ad18c9	GovCo	2015-06-22 05:24:26.522728	2015-06-22 05:24:26.70194	4
1705	9322904	https://wiki.debian.org/WhyTheName	Why the name?	2015-06-22 05:23:49.10356	2015-06-22 05:24:00.821409	388
1711	9325024	http://modeling-languages.com/javascript-drawing-libraries-diagrams/	JavaScript libraries to draw your own diagrams	2015-06-22 05:24:20.004282	2015-06-22 05:24:24.923305	144
1717	9326803	https://buttercoin.com/#/goodbye	Buttercoin is shutting down	2015-06-22 05:24:36.932187	2015-06-22 05:24:44.35412	247
1707	9323758	http://harpers.org/archive/2015/03/a-grand-juror-speaks/	A Grand Juror Speaks: The inside story of how prosecutors always get their way	2015-06-22 05:24:06.863602	2015-06-22 05:24:11.533504	170
1740	9336297	http://genius.com/5088475	John Resig annotates original jQuery source code	2015-06-22 05:25:45.804864	2015-06-22 05:25:59.320221	400
1715	9326183	http://utcc.utoronto.ca/~cks/space/blog/web/AdblockingAndMorality	A note on the argument about the 'morality' of adblockers	2015-06-22 05:24:32.515355	2015-06-22 05:24:35.809141	116
1708	9324209	http://www.catonmat.net/blog/programming-competitions-work-performance/	Programming competitions correlate negatively with being good on the job	2015-06-22 05:24:11.785215	2015-06-22 05:24:12.883409	31
1706	9323542	http://www.bbc.com/news/science-environment-32160755	LHC circulates first beam after long rebuild	2015-06-22 05:24:00.848903	2015-06-22 05:24:11.758147	205
1709	9324071	http://arstechnica.com/gadgets/2013/04/a-history-of-the-amiga-part-9-the-demo-scene/	A history of the Amiga – The demo scene (2013)	2015-06-22 05:24:12.910964	2015-06-22 05:24:12.942488	2
1724	9328123	http://www.nytimes.com/2015/04/05/opinion/sunday/nicholas-kristof-the-trader-who-donates-half-his-pay.html	The Trader Who Donates Half His Pay	2015-06-22 05:24:52.002524	2015-06-22 05:24:55.142496	89
1720	9327354	http://smcleod.net/building-a-high-performance-ssd-san/	Building a high performance SSD SAN -Part 1	2015-06-22 05:24:47.333605	2015-06-22 05:24:47.465118	6
1716	9326603	http://techcrunch.com/2015/04/05/when-buying-is-as-easy-as-liking/#.i6feph:9K0k	FacePay?	2015-06-22 05:24:35.97538	2015-06-22 05:24:36.905725	31
1731	9331688	https://www.eff.org/deeplinks/2015/04/new-south-wales-attacks-researchers-who-warned-internet-voting-vulnerabilities	New South Wales Attacks Researchers Who Found Internet Voting Vulnerabilities	2015-06-22 05:25:15.497064	2015-06-22 05:25:21.651229	193
1723	9327647	http://www.nytimes.com/2015/04/12/education/edlife/the-hackathon-fast-track-from-campus-to-silicon-valley.html	The Hackathon Fast Track: From Campus to Silicon Valley	2015-06-22 05:24:51.649012	2015-06-22 05:24:51.972898	12
1704	9320782	http://pid.codes/	Get your own USB PID	2015-06-22 05:23:27.218138	2015-06-22 05:23:49.249147	691
1725	9328494	http://cantheyseemydick.com/	Can they see my dick pic?	2015-06-22 05:24:54.171054	2015-06-22 05:24:54.621131	14
1726	9328684	https://techblog.livingsocial.com/blog/2015/04/06/responsive-tables-in-pure-css/	Responsive Tables in Pure CSS	2015-06-22 05:24:55.184838	2015-06-22 05:24:57.067371	56
1719	9327344	http://aimforsimplicity.com/post/3monitorswontsolveyourproblems/	3 monitors won't solve your problems	2015-06-22 05:24:46.151843	2015-06-22 05:24:47.085437	30
1730	9331559	http://www.bbc.com/news/magazine-24653643	The teenager who saved a man with an SS tattoo	2015-06-22 05:25:14.995433	2015-06-22 05:25:15.021384	2
1718	9327151	https://github.com/Microsoft/bond	Microsoft Bond	2015-06-22 05:24:44.376899	2015-06-22 05:24:47.812911	84
1736	9332889	https://porter.io/blog/hackernews-cheaters-catch-me-if-you-can/	HN Cheaters: Catch me if you can	2015-06-22 05:25:29.668084	2015-06-22 05:25:36.219146	185
1727	9328921	http://youtube-eng.blogspot.com/2015/04/vp9-faster-better-buffer-free-youtube.html	VP9: Faster, better, buffer-free YouTube videos	2015-06-22 05:24:57.096327	2015-06-22 05:25:09.582988	374
1732	9331912	https://techcrunch.com	TechCrunch using Wordpress certificate for SSL	2015-06-22 05:25:17.031489	2015-06-22 05:25:17.167691	6
1729	9331126	http://webglfundamentals.org/	WebGL Fundamentals	2015-06-22 05:25:09.618302	2015-06-22 05:25:27.111235	312
1734	9332630	http://www.sciencedaily.com/releases/2015/04/150406144600.htm	Facebook use linked to depressive symptoms	2015-06-22 05:25:27.144748	2015-06-22 05:25:28.352152	40
1738	9333330	http://www.talkingquickly.co.uk/2015/04/what-id-tell-myself-about-startups/	What I'd tell myself about startups if I could go back 5 years	2015-06-22 05:25:36.246305	2015-06-22 05:25:45.774484	283
1739	9335612	http://www.nytimes.com/2015/04/08/upshot/silicon-valley-perks-for-some-workers-struggles-for-parents.html	Silicon Valley: Perks for Some Workers, Struggles for Parents	2015-06-22 05:25:45.016635	2015-06-22 05:25:45.422201	14
1737	9333783	https://github.com/arduino-org/Arduino/issues/2	Arduino is undergoing a hostile fork	2015-06-22 05:25:35.104954	2015-06-22 05:25:36.110269	30
1745	9341238	http://www.dell.com/us/business/p/xps-13-linux/pd	Dell XPS 13 (2015) Developer Edition	2015-06-22 05:26:24.190238	2015-06-22 05:26:24.375684	8
1741	9338088	https://github.com/mrkrstphr/illacceptanything	I'll Accept Anything. The least ambitious open source project ever	2015-06-22 05:25:59.348795	2015-06-22 05:26:04.401897	149
1743	9340076	http://face.cbs.dtu.dk/	Get a prediction of how other people perceive your face	2015-06-22 05:26:17.766124	2015-06-22 05:26:19.503177	61
1744	9340246	http://getkaiwa.com	Show HN: Kaiwa, a Modern Open Source XMPP Web Client	2015-06-22 05:26:19.528627	2015-06-22 05:26:25.673086	199
1746	9341687	https://www.stellar.org/blog/stellar-consensus-protocol-proof-code/	Stellar Consensus Protocol: Proof and Code	2015-06-22 05:26:25.701186	2015-06-22 05:26:28.962055	106
2000	9476603	http://nikital.github.io/pid/	Show HN: 2D PID controller simulation	2015-06-23 08:05:37.774509	2015-06-23 08:05:41.552281	88
1753	9346731	http://www.eecs.umich.edu/eecs/about/articles/2015/Worlds-Smallest-Computer-Michigan-Micro-Mote.html	Michigan Micro Mote – World's Smallest Computer	2015-06-22 05:27:00.131592	2015-06-22 05:27:03.312467	114
1749	9344711	https://www.eff.org/deeplinks/2015/04/videogame-publishers-no-preserving-abandoned-games-even-museums-and-archives	Videogame Publishers: No Preserving Abandoned Games Because “Hacking” Is Illegal	2015-06-22 05:26:39.299954	2015-06-22 05:26:41.873812	85
1770	9359156	http://www.filfre.net/2015/04/the-68000-wars-part-3-we-made-amiga-they-fucked-it-up/	The 68000 Wars, Part 3: We Made Amiga, They Fucked It Up	2015-06-22 05:28:26.800491	2015-06-22 05:28:31.581167	161
1773	9359983	https://cloud.google.com/prediction/?ref=producthunt	Google Prediction API	2015-06-22 05:28:36.495178	2015-06-22 05:28:37.62433	44
1772	9359568	https://plot.ly/ipython-notebooks/big-data-analytics-with-pandas-and-sqlite/	Big data analytics with Pandas and SQLite	2015-06-22 05:28:31.611166	2015-06-22 05:28:38.461529	183
1758	9352397	http://www.bloombergview.com/articles/2015-04-09/new-york-discovers-wall-street-charges-fees	New York Discovers Wall Street Charges Fees	2015-06-22 05:27:28.654824	2015-06-22 05:27:35.997209	241
1755	9347669	https://truesecdev.wordpress.com/2015/04/09/hidden-backdoor-api-to-root-privileges-in-apple-os-x/	Hidden backdoor API to root privileges in Apple OS X	2015-06-22 05:27:06.199879	2015-06-22 05:27:28.748888	357
1748	9343021	https://github.com/blog/1986-announcing-git-large-file-storage-lfs	Announcing Git Large File Storage (LFS)	2015-06-22 05:26:30.736977	2015-06-22 05:26:42.243903	303
1774	9360098	https://kallithea-scm.org/	Kallithea – A free software source code management system	2015-06-22 05:28:38.161797	2015-06-22 05:28:38.880768	18
1775	9360352	http://bits.blogs.nytimes.com/2015/04/10/marissa-mayer-shuffles-yahoo-leadership-team/?_r=0	Marissa Mayer Shuffles Yahoo Leadership Team	2015-06-22 05:28:38.91094	2015-06-22 05:28:40.759172	65
1757	9352229	https://forum.linode.com/viewtopic.php?f=10&t=11734&sid=bff7a96f383b6219d88edad4a50b8546	My developers won't give me access to my server	2015-06-22 05:27:26.903334	2015-06-22 05:27:27.328613	10
1752	9346508	https://manjaro.github.io/expired_SSL_certificate/	Expired SSL certificate	2015-06-22 05:26:59.2872	2015-06-22 05:26:59.662787	8
1754	9347101	http://techcrunch.com/2015/04/09/linkedin-to-buy-online-education-site-lynda-com-for-1-5-billion/	LinkedIn to Buy Online Education Site Lynda.com for $1.5B	2015-06-22 05:27:03.335725	2015-06-22 05:27:06.168684	95
1747	9342369	http://azure.microsoft.com/blog/2015/04/08/microsoft-unveils-new-container-technologies-for-the-next-generation-cloud	Microsoft announces Hyper-V Containers	2015-06-22 05:26:28.994775	2015-06-22 05:26:30.713481	59
1750	9345215	https://blog.sandstorm.io/news/2015-04-08-osx-security-bug.html	Remotely send Chrome and Node.js into infinite loops via OS X kernel bug	2015-06-22 05:26:42.268706	2015-06-22 05:26:53.099422	361
1759	9352925	http://www.extremetech.com/gaming/202991-intels-erratic-core-m-performance-leaves-an-opening-for-amd	Intel’s erratic Core M performance leaves an opening for AMD	2015-06-22 05:27:36.024474	2015-06-22 05:27:38.894489	90
1763	9355382	http://blog.rust-lang.org/2015/04/10/Fearless-Concurrency.html	Fearless concurrency with Rust	2015-06-22 05:27:52.718579	2015-06-22 05:27:57.211421	140
1766	9356767	https://www.eff.org/press/releases/eff-busts-podcasting-patent-invalidating-key-claims-patent-office	Podcasting Patent Invalidated by EFF	2015-06-22 05:27:59.076004	2015-06-22 05:28:23.829133	533
1768	9358548	http://my.teslamotors.com/models/design	New Tesla 70D all-wheel drive, 240 mile range car for ~$75k	2015-06-22 05:28:15.74957	2015-06-22 05:28:15.878549	4
1756	9349501	http://aws.amazon.com/efs/	Amazon Elastic File System	2015-06-22 05:27:11.699983	2015-06-22 05:27:23.424641	388
1760	9353185	http://instantcloud.io	Instantcloud – Get your 30 minutes BareMetal SSD server with a click	2015-06-22 05:27:38.921167	2015-06-22 05:27:43.203447	147
1751	9346167	http://time.com/3801889/us-legalization-marijuana-trade/	U.S. Legalization of Marijuana Has Hit Mexican Cartels’ Cross-Border Trade	2015-06-22 05:26:53.131632	2015-06-22 05:27:00.106139	229
1765	9356508	https://code.facebook.com/posts/1639473982937255/updating-our-open-source-patent-grant/	Updating Our Open Source Patent Grant	2015-06-22 05:27:57.235172	2015-06-22 05:27:59.054365	67
1761	9353650	http://www.bq.com/es/ubuntu.html?utm_source=ubunteu&utm_medium=url_shortner&utm_term=04qQKE&utm_campaign=shortner	The Ubuntu Phone is now on sale	2015-06-22 05:27:43.22841	2015-06-22 05:27:52.200577	301
1767	9357898	http://blog.easydns.org/2015/04/10/why-we-will-not-be-registering-easydns-sucks/	Why we will not be registering easydns.sucks	2015-06-22 05:28:07.062221	2015-06-22 05:28:16.389642	311
1776	9360677	https://www.bsdfrog.org/tmp/gnome316.webm	GNOME 3.16 on OpenBSD [video]	2015-06-22 05:28:40.79044	2015-06-22 05:28:41.826754	40
1764	9356320	http://thread.gmane.org/gmane.emacs.devel/185268	Emacs 24.5 released	2015-06-22 05:27:56.75511	2015-06-22 05:27:56.863299	5
1762	9355233	https://mozilla.github.io/server-side-tls/ssl-config-generator/?1	Mozilla SSL Configuration Generator	2015-06-22 05:27:52.225376	2015-06-22 05:27:52.896758	25
1784	9362650	https://www.youtube.com/watch?v=OY3Qxm6BoUI	Varoufakis and Stiglitz [video]	2015-06-22 05:29:08.226867	2015-06-22 05:29:09.745236	48
1769	9359090	https://dncmagazine.blob.core.windows.net/downloads/AngularCheatSheet-DNCMagazine.pdf	The Ultimate AngularJS CheatSheet [pdf]	2015-06-22 05:28:23.859418	2015-06-22 05:28:26.771785	102
1771	9359112	https://docs.google.com/document/d/1QZxArgMwidgCrAbuSikcB2iBxkffH6w0YB0C1qCsuH0	React and Angular Meeting	2015-06-22 05:28:31.303408	2015-06-22 05:28:31.530813	10
1782	9362252	http://www.garlikov.com/Soc_Meth.html	The Socratic Method: Teaching by Asking Instead of by Telling	2015-06-22 05:29:00.22387	2015-06-22 05:29:11.28232	237
1781	9362307	http://www.rollingstone.com/culture/news/teenager-charged-with-felony-for-changing-teacher-s-desktop-photo-20150410	Teenager Charged with Felony for Changing Teacher's Desktop Photo	2015-06-22 05:28:59.314155	2015-06-22 05:28:59.956742	26
1780	9361580	http://improvingsoftware.com/2009/05/19/programmers-before-you-turn-40-get-a-plan-b/	Programmers: Before you turn 40, get a plan B (2009)	2015-06-22 05:28:53.735151	2015-06-22 05:29:00.199871	191
1777	9360553	http://www.washingtonpost.com/world/national%2dsecurity/as-encryption-spreads-us-worries-about-access-to-data-for-investigations/2015/04/10/7c1c7518-d401-11e4-a62f-ee745911a4ff_story.html	As encryption spreads, U.S. grapples with clash between privacy, security	2015-06-22 05:28:41.849788	2015-06-22 05:28:43.498694	50
1778	9360963	http://www.asterank.com/	Asteroid Database and Mining Rankings	2015-06-22 05:28:43.526345	2015-06-22 05:28:51.170944	249
1786	9363458	http://www.ribbonfarm.com/2015/04/08/the-essence-of-peopling/	The Essence of Peopling	2015-06-22 05:29:15.097489	2015-06-22 05:29:22.644531	68
1779	9361477	http://elementary.io	Elementary OS Freya Released	2015-06-22 05:28:50.897812	2015-06-22 05:28:53.709729	84
1783	9362786	http://www.viemu.com/a-why-vi-vim.html	Why, oh WHY, do those #? nutheads use vi?	2015-06-22 05:29:05.52707	2015-06-22 05:29:07.717239	77
1785	9363102	http://techcrunch.com/2015/04/11/twitter-cuts-off-datasift-to-step-up-its-own-b2b-big-data-analytics-business/#.acq8mm:kcu0	Twitter cuts off Datasift	2015-06-22 05:29:11.31319	2015-06-22 05:29:15.062322	113
1787	9363565	http://morris.guru/huthos-the-totally-100-legit-vps-provider/	Huthos VPS Provider: Totally legit, 1000% not a criminal organization	2015-06-22 05:29:15.473118	2015-06-22 05:29:20.023173	144
2001	9477006	http://techcrunch.com/2015/05/02/and-c-plus-plus-too/	Death to C	2015-06-23 08:05:43.127881	2015-06-23 08:05:44.813924	22
1788	9363871	https://www.tbray.org/ongoing/When/201x/2015/04/11/So-What	“So, …” What?	2015-06-22 05:29:20.047695	2015-06-22 05:29:22.843449	29
1791	9364319	http://sphia.org/index.html	Sophia: A modern embeddable key-value database – v1.2.2 released	2015-06-22 05:29:23.158953	2015-06-22 05:29:23.795384	24
1792	9364455	http://www.seattletimes.com/seattle-news/health/uw-scientists-biotech-firm-may-have-cure-for-colorblindness/	UW scientists, biotech firm may have cure for colorblindness	2015-06-22 05:29:23.820094	2015-06-22 05:29:23.850203	2
1790	9363577	http://coolwanglu.github.io/BrowserHack/	BrowserHack: NetHack ported to the web	2015-06-22 05:29:22.676234	2015-06-22 05:29:22.715713	2
1793	9364567	http://crpgaddict.blogspot.com/2015/04/game-183-shadowforge-1989.html	John Carmack's First Game	2015-06-22 05:29:23.876073	2015-06-22 05:29:30.334481	209
1801	9368017	https://blog.cloudflare.com/cloudflare-is-now-a-google-cloud-platform-technology-partner/	CloudFlare Is Now a Google Cloud Platform Technology Partner	2015-06-22 05:29:59.846083	2015-06-22 05:30:00.234043	14
1794	9365123	https://twitter.com/monstro/status/585797211679657984	Sprinklr Acquires GetSatisfaction, Founders Get Nothing	2015-06-22 05:29:30.363096	2015-06-22 05:29:40.171056	284
1820	9374028	http://bosnadev.com/2015/04/14/facebook-chats-are-being-scanned-by-a-cia-funded-company/	Facebook Privacy: Chats Are Being Scanned by a CIA Funded Company	2015-06-22 05:30:41.97888	2015-06-22 05:30:43.341658	42
1815	9372303	https://segment.com/blog/gotchas-from-two-years-of-node/	Gotchas from Two Years with Node	2015-06-22 05:30:34.213242	2015-06-22 05:30:34.29895	4
1808	9370979	http://www.excamera.com/sphinx/fpga-j1.html	The J1 Forth CPU	2015-06-22 05:30:12.30433	2015-06-22 05:30:15.245012	95
1789	9363824	http://adrianchadd.blogspot.com/2015/04/intel-ddio-llc-cache-buffer-alignment.html	Intel DDIO, LLC cache, buffer alignment, prefetching, and packet rates	2015-06-22 05:29:21.040711	2015-06-22 05:29:23.130372	16
1817	9373240	https://www.npmjs.com/private-modules	Npm Private Modules	2015-06-22 05:30:34.976716	2015-06-22 05:30:38.120273	102
1796	9365877	http://www.vox.com/2015/4/10/8383165/reddit-button-explained	The button: social experiment driving Reddit crazy	2015-06-22 05:29:40.196791	2015-06-22 05:29:49.79891	323
1811	9371854	http://www.nytimes.com/2015/04/14/business/owner-of-gravity-payments-a-credit-card-processor-is-setting-a-new-minimum-wage-70000-a-year.html	Owner of a Credit Card Processor Is Setting a New Minimum Wage: $70,000 a Year	2015-06-22 05:30:24.004787	2015-06-22 05:30:27.917927	119
1803	9369309	http://www.nealstephenson.com/news/2015/04/13/seveneves-excerpt/	First 26 pages of Neal Stephenson's new novel Seveneves	2015-06-22 05:30:05.280373	2015-06-22 05:30:06.136711	27
1798	9367055	http://www.bloomberg.com/news/articles/2015-04-12/saudi-arabia-s-plan-to-extend-the-age-of-oil	Saudi Arabia’s Plan to Extend the Age of Oil	2015-06-22 05:29:53.41732	2015-06-22 05:29:55.191713	56
1800	9367123	https://hbr.org/2014/01/to-raise-productivity-let-more-employees-work-from-home	To Raise Productivity, Let More Employees Work from Home (2014)	2015-06-22 05:29:56.143406	2015-06-22 05:29:59.819838	123
1799	9367483	http://blog.frite-camembert.net/got-leak.html	Game of Thrones leak and watermark: a stupid tracking system	2015-06-22 05:29:55.524378	2015-06-22 05:29:56.056394	20
1797	9366795	http://www.bbc.com/news/world-europe-32285705?ns_mchannel=social&ns_campaign=bbc_breaking&ns_source=twitter&ns_linkname=news_central	German author Guenter Grass dies	2015-06-22 05:29:49.823344	2015-06-22 05:29:56.116536	135
1795	9365317	https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=39a8804455fb23f09157341d3ba7db6d7ae6ee76	Linux 4.0	2015-06-22 05:29:34.378778	2015-06-22 05:29:35.47974	42
1805	9369885	http://www.uscis.gov/news/alerts/uscis-completes-h-1b-cap-random-selection-process-fy-2016	USCIS Completes the H-1B Cap Random Selection Process for FY 2016	2015-06-22 05:30:07.470202	2015-06-22 05:30:07.861148	14
1810	9371238	https://github.com/dotnet/llilc	LLILC – LLVM-Based Compiler for .NET CoreCLR	2015-06-22 05:30:17.800023	2015-06-22 05:30:23.973233	187
1806	9369826	http://techcrunch.com/2015/04/13/planet-labs-rockets-to-118-million-in-series-c-funding-to-cover-the-earth-in-tiny-satellites/	Planet Labs Raises $118M Series C to Cover the Earth in Tiny Satellites	2015-06-22 05:30:08.069994	2015-06-22 05:30:12.243655	99
1807	9368401	http://www.csicop.org/sb/show/shooting_for_the_sun/	Why the sun is a poor dumping ground for nuclear waste (2010)	2015-06-22 05:30:10.546976	2015-06-22 05:30:12.271341	29
1802	9368426	http://socket.io/blog/socket-io-cpp/	Socket.IO C++	2015-06-22 05:30:00.258375	2015-06-22 05:30:08.042488	196
1818	9373640	http://www.divorcedebbie.com/engineers-divorce-rates-better-spouses/	Do engineers really make better spouses?	2015-06-22 05:30:38.147981	2015-06-22 05:30:39.763907	52
1812	9372066	http://www.netflix.com/WiPlayer?movieid=70302182	Halt and Catch Fire (Season 1) available on Netflix	2015-06-22 05:30:27.130605	2015-06-22 05:30:27.220448	4
1804	9370068	http://www.nasa.gov/multimedia/nasatv/#.VKcrD3vO87w	SpaceX CRS-6 Launch Webcast – Liftoff at 4:33pm EST	2015-06-22 05:30:06.67231	2015-06-22 05:30:07.441658	28
1809	9371294	https://blog.torproject.org/blog/new-era-tor-project	A New Era at the Tor Project	2015-06-22 05:30:15.271462	2015-06-22 05:30:17.768933	82
1813	9372494	http://www.wsj.com/articles/etsy-vendors-to-get-a-piece-of-ipo-1428971989	Etsy Vendors to get option to buy $2,500 of shares before public float	2015-06-22 05:30:27.951039	2015-06-22 05:30:32.054438	134
1816	9373165	http://techcrunch.com/2015/04/14/docker-raises-95m-series-d-round-for-its-container-platform/	Docker Raises $95M Series D Round for Its Container Platform	2015-06-22 05:30:34.32407	2015-06-22 05:30:34.941909	16
1819	9373781	https://developer.apple.com/wwdc/index.html	Apple WWDC 2015	2015-06-22 05:30:39.795036	2015-06-22 05:30:41.941561	67
1822	9374927	http://rethinkdb.com/blog/2.0-release/	RethinkDB 2.0 is now production ready	2015-06-22 05:30:43.723103	2015-06-22 05:30:47.634235	118
1814	9372918	https://niltalk.com/	Show HN: Free, instant, secure, disposable chat rooms built in Go	2015-06-22 05:30:32.078231	2015-06-22 05:30:34.18232	71
1823	9375565	http://researchkit.github.io/index.html	Apple ResearchKit on GitHub	2015-06-22 05:30:47.660793	2015-06-22 05:30:51.941544	137
1821	9374215	https://www.twilio.com/video	Twilio Video – Real-time WebRTC video infrastructure	2015-06-22 05:30:43.370035	2015-06-22 05:30:43.695771	12
1825	9376592	http://www.nasa.gov/multimedia/nasatv/	SpaceX Dragon CRS-6 Launch Webcast	2015-06-22 05:30:52.685747	2015-06-22 05:30:55.65489	98
1826	9377506	http://www.devttys0.com/2015/04/what-the-ridiculous-fuck-d-link/	D-Link patch doesn’t address all bugs listed in their own security advisory	2015-06-22 05:30:55.690078	2015-06-22 05:31:03.421277	207
1824	9375886	http://www.windytan.com/2015/04/trackers-and-bank-accounts.html	Trackers and bank accounts	2015-06-22 05:30:51.967044	2015-06-22 05:30:52.663775	28
1828	9376391	http://lcamtuf.blogspot.com/2015/04/finding-bugs-in-sqlite-easy-way.html?m=1	Finding bugs in SQLite, the easy way	2015-06-22 05:31:03.459557	2015-06-22 05:31:10.954089	154
1827	9378227	http://arstechnica.com/security/2015/04/lawyer-representing-whistle-blowers-finds-malware-on-drive-supplied-by-cops/	Lawyer representing whistle blowers finds malware on drive supplied by cops	2015-06-22 05:31:01.861906	2015-06-22 05:31:03.333043	27
1829	9378449	https://technet.microsoft.com/library/security/ms15-034	Critical HTTP.sys Remote Code Execution Vulnerability	2015-06-22 05:31:05.321982	2015-06-22 05:31:06.594643	24
1831	9378861	http://ewontfix.com/18/	32-bit X86 Position Independent Code – It's That Bad	2015-06-22 05:31:10.980449	2015-06-22 05:31:11.321373	12
1830	9378741	http://www.scottaaronson.com/blog/?p=1820	Eigenmorality	2015-06-22 05:31:08.128599	2015-06-22 05:31:08.793869	23
1832	9378898	http://lwn.net/SubscriberLink/640179/06c2868dffb2aec3/	Making Python 3 more attractive	2015-06-22 05:31:11.347626	2015-06-22 05:31:15.206502	128
1855	9391148	http://bits.blogs.nytimes.com/2015/04/16/is-slack-really-worth-2-8-billion-a-conversation-with-stewart-butterfield/	Is Slack Really Worth $2.8B? A Conversation with Stewart Butterfield	2015-06-23 07:29:02.117176	2015-06-23 07:29:02.855195	14
1856	9391639	http://internals.rust-lang.org/t/priorities-after-1-0/1901	Rust Priorities after 1.0	2015-06-23 07:29:10.322125	2015-06-23 07:29:15.751701	85
1869	9396409	http://news.discovery.com/animals/female-chimps-seen-making-wielding-spears-150414.htm	Female Chimps Seen Making, Wielding Spears	2015-06-23 07:30:08.765088	2015-06-23 07:30:10.526584	34
1865	9396116	https://github.com/nvbn/thefuck	The Fuck – Correct your previous console command	2015-06-23 07:29:55.660247	2015-06-23 07:29:56.356975	12
1843	9386820	http://www.lemonde.fr/pixels/article/2015/04/16/les-deputes-approuvent-un-systeme-de-surveillance-du-trafic-sur-internet_4616652_4408996.html	French National Assembly approved Internet traffic monitoring system (French)	2015-06-23 07:28:18.936236	2015-06-23 07:28:33.420995	247
1838	9381524	http://www.gina.codes/2015/04/13/no-longer-an-inspiration.html	No Longer an Inspiration	2015-06-22 05:31:31.731737	2015-06-22 05:31:32.04854	10
1849	9389498	http://techcrunch.com/2015/04/16/used-daily-by-750k-workers-slack-raises-160m-to-value-collaboration-startup-at-2-8b/	Slack Raises $160M Series E at $2.8B Valuation	2015-06-23 07:28:45.28449	2015-06-23 07:28:46.47645	23
1846	9388168	http://www.latimes.com/nation/nationnow/la-na-seattle-ceo-pay-20150415-story.html	CEO cuts his pay by almost $1M to give his employees big raises	2015-06-23 07:28:35.873025	2015-06-23 07:28:38.118803	40
1868	9396950	http://cr.yp.to/talks/2015%2E04%2E16/slides-djb-20150416-a4.pdf	The death of optimizing compilers [pdf]	2015-06-23 07:30:03.19867	2015-06-23 07:30:12.945949	155
1847	9388176	http://nautil.us/issue/23/dominoes/yes-you-can-catch-insanity	Yes, You Can Catch Insanity	2015-06-23 07:28:38.172293	2015-06-23 07:28:50.117084	66
1851	9390104	https://www.eff.org/deeplinks/2015/04/police-must-respect-right-citizens-record-them	Police Must Respect the Right of Citizens to Record Them	2015-06-23 07:28:50.154626	2015-06-23 07:28:50.198388	2
1835	9379582	http://recode.net/2015/04/14/nokia-agrees-to-buy-alcatel-lucent-for-16-6-billion/	Nokia Agrees to Buy Alcatel-Lucent for $16.6B	2015-06-22 05:31:16.967054	2015-06-22 05:31:21.022866	136
1833	9379285	https://www.aclu-nm.org/victory-new-mexico-governor-signs-historic-property-rights-protections-into-law/2015/04/	New Mexico outlaws civil asset forfeiture	2015-06-22 05:31:15.232363	2015-06-22 05:31:16.881796	55
1834	9378952	http://jlebar.com/2011/12/16/Boolean_parameters_to_API_functions_considered_harmful..html	Boolean parameters to API functions considered harmful (2011)	2015-06-22 05:31:16.912945	2015-06-22 05:31:16.941846	2
1852	9388502	https://lists.debian.org/debian-devel-announce/2015/04/msg00005.html	Python 2, Python 3, Debian and Porting	2015-06-23 07:28:50.234532	2015-06-23 07:28:53.163016	64
1845	9388115	http://www.wired.com/2015/04/irobot-lawnbot/	The Roomba for Lawns Is Really Pissing Off Astronomers	2015-06-23 07:28:34.929758	2015-06-23 07:28:35.839058	20
1859	9392780	item?id=9392780	Ask HN: When do you know your startup has failed?	2015-06-23 07:29:24.903482	2015-06-23 07:29:34.625201	198
1841	9385538	http://hypercritical.co/2015/04/15/os-x-reviewed	OS X Reviewed	2015-06-23 07:27:54.21194	2015-06-23 07:28:04.693263	206
1842	9386004	http://acuman.us/	Show HN: I'm a 14 year-old dev who has programmed an artificial intelligence bot	2015-06-23 07:28:04.516606	2015-06-23 07:28:18.87672	245
1840	9383579	https://neil.fraser.name/news/2014/12/25/	“Papers Please” – Travel in the USA Requires ID	2015-06-22 05:31:38.896489	2015-06-22 05:31:39.219504	11
1839	9382933	http://www.huffingtonpost.in/2015/04/15/internetorg-withdrawal_n_7071532.html?utm_hp_ref=india	Blow to Internet.org as Indian Internet Companies Begin to Withdraw	2015-06-22 05:31:36.730292	2015-06-23 07:27:54.155796	461
1837	9380468	https://ma.ttias.be/remote-code-execution-via-http-request-in-iis-on-windows/?hn	CVE-2015-1635: the single HTTP call that can crash a Windows Server	2015-06-22 05:31:26.591773	2015-06-22 05:31:36.704685	291
1854	9390665	http://spiderwebforums.ipbhost.com/index.php?/topic/21512-why-we-are-no-longer-developing-for-the-ipad/	Why We Are No Longer Developing for the iPad – Spiderweb Software	2015-06-23 07:28:56.415696	2015-06-23 07:28:59.755835	64
1850	9389452	http://www.ikea.com/ms/en_US/pressroom/press_materials/USA_PR_Wireless_charging.pdf	IKEA introduces wireless charging furniture [pdf]	2015-06-23 07:28:48.611971	2015-06-23 07:28:49.458983	20
1836	9379981	http://www.junkyardsam.com/blog/2015/4/15/foursquare	Graph of Foursquare's Popularity After Removing Check-Ins	2015-06-22 05:31:21.047735	2015-06-22 05:31:26.544349	173
1853	9390574	http://blog.docker.com/2015/04/docker-release-1-6/	Docker 1.6: Engine and Orchestration Updates, Registry 2.0, and Windows Client	2015-06-23 07:28:53.20605	2015-06-23 07:29:17.080212	358
1844	9386994	http://superpowered.com/androidaudiopathlatency/	Android’s 10 Millisecond Problem explained	2015-06-23 07:28:33.484231	2015-06-23 07:28:34.877516	18
1848	9388950	https://github.com/blog/1987-github-s-2014-transparency-report	GitHub's 2014 Transparency Report	2015-06-23 07:28:40.377957	2015-06-23 07:28:48.57253	118
1857	9391818	https://www.eff.org/deeplinks/2015/04/fasttrack-bill-legitimize-white-house-secrecy-and-clear-way-anti-user	Bill Would Legitimize White House Secrecy and Clear the Way for Anti-User Deals	2015-06-23 07:29:17.149162	2015-06-23 07:29:18.458162	22
1861	9394176	http://amitkohli.com/?p=246	Chord progressions of 25,000 songs	2015-06-23 07:29:43.637493	2015-06-23 07:29:49.644232	135
1860	9393392	https://www.google.com/?q=x*sin(y)	X*sin(y)	2015-06-23 07:29:34.662034	2015-06-23 07:29:43.604876	192
1862	9395352	http://www.popsci.com/nasa-can-make-3-more-nuclear-batteries-and-thats-it	NASA Can Make 3 More Nuclear Batteries, and That's It	2015-06-23 07:29:49.713894	2015-06-23 07:29:54.533203	93
1863	9395944	http://www.npr.org/blogs/alltechconsidered/2015/04/16/400178385/the-hidden-fm-radio-inside-your-pocket-and-why-you-cant-use-it/	The hidden FM radio in your pocket and why you can't use it	2015-06-23 07:29:54.587157	2015-06-23 07:29:55.364198	14
1858	9392372	https://medium.com/bright/meet-the-school-that-hates-rules-d55fca40d28	The school that hates rules	2015-06-23 07:29:18.498146	2015-06-23 07:29:24.865009	146
1864	9395630	http://blog.chromium.org/2015/04/a-quic-update-on-googles-experimental.html	A QUIC update on Google’s experimental transport	2015-06-23 07:29:55.41209	2015-06-23 07:29:58.808536	58
1867	9396694	http://varianceexplained.org/programming/bad-code/	A Million Lines of Bad Code	2015-06-23 07:29:58.982617	2015-06-23 07:30:01.70419	48
1866	9395217	http://rob.conery.io/2015/04/17/rethinkdb-2-0-is-amazing/	RethinkDB 2.0 is amazing	2015-06-23 07:29:58.844398	2015-06-23 07:30:03.159476	30
1871	9398691	https://ma.ttias.be/double-clicking-on-the-web/	Why Aren't Double-Clicks a Solved Thing yet on the Web?	2015-06-23 07:30:34.576592	2015-06-23 07:30:40.466194	138
1873	9399394	http://techcrunch.com/2015/04/17/french-senate-backs-bid-to-force-google-to-disclose-search-algorithm-workings/#.dpycrz:HNHc	French Senate Votes to See Google's Algorithm	2015-06-23 07:30:52.119901	2015-06-23 07:30:53.160544	26
1870	9397320	http://python.org/dev/peps/pep-0492	PEP 492 – Coroutines with async and await syntax	2015-06-23 07:30:12.980227	2015-06-23 07:30:40.824997	490
1872	9398876	http://www.pizzahut.com/assets/pizzanet/home.html	PizzaHut still serves it's first Homepage	2015-06-23 07:30:40.964476	2015-06-23 07:30:52.081207	237
2002	9477032	https://github.com/mattgodbolt/zindex	Show HN: Efficiently searching compressed text files	2015-06-23 08:05:45.381125	2015-06-23 08:05:45.423544	2
1874	9399379	http://einsteinpapers.press.princeton.edu/vol8-trans/34	Einstein's Letter to Marie Curie	2015-06-23 07:30:53.194658	2015-06-23 07:31:07.295227	189
1892	9407282	http://blog.whatsapp.com/245/Why-we-dont-sell-ads	Why we don't sell ads – WhatsApp Blog	2015-06-23 07:33:03.522039	2015-06-23 07:33:04.880433	22
1875	9399640	http://www.theatlantic.com/business/archive/2015/04/ben-bernanke-isnt-the-problem-the-system-is-the-problem/390669/?single_page=true	Revolving Door: Ex-Fed Chairman Ben Bernanke Takes Job with Hedge Fund Citadel	2015-06-23 07:30:53.925817	2015-06-23 07:30:54.026928	4
1885	9403124	https://queue.acm.org/detail.cfm?id=2349257	A Generation Lost in the Bazaar	2015-06-23 07:32:00.636817	2015-06-23 07:32:01.108887	14
1879	9401453	http://www.washingtonpost.com/local/crime/fbi-overstated-forensic-hair-matches-in-nearly-all-criminal-trials-for-decades/2015/04/18/39c8d8c6-e515-11e4-b510-962fcfabc310_story.html	FBI overstated forensic hair matches in nearly all trials before 2000	2015-06-23 07:31:20.165932	2015-06-23 07:31:42.020487	291
1890	9405284	http://howtocenterincss.com/	How to Center in CSS	2015-06-23 07:32:24.889605	2015-06-23 07:33:03.760166	616
1881	9402093	http://www.nytimes.com/2015/04/20/business/media/buzzfeed-says-posts-were-deleted-because-of-advertising-pressure.html?partner=socialflow&smid=tw-nytimes&_r=0	BuzzFeed Says Posts Were Deleted Because of Advertising Pressure	2015-06-23 07:31:34.536572	2015-06-23 07:31:37.69906	75
1897	9409794	http://www.nytimes.com/interactive/2015/04/20/upshot/missing-black-men.html?hp&action=click&pgtype=Homepage&module=photo-spot-region&region=top-news&WT.nav=top-news&_r=0&abt=0002&abg=1	1.5 Million Missing Black Men	2015-06-23 07:33:23.731415	2015-06-23 07:33:25.584408	42
1883	9402404	http://kansasexposed.org/2015/04/17/kansas-police-shutdown-cannabis-oil-activists-facebook-to-prevent-her-from-raising-money-for-her-legal-defense/	Kansas Police shutdown cannabis oil activist’s Facebook	2015-06-23 07:31:51.580161	2015-06-23 07:31:52.677239	10
1876	9400425	http://www.wired.com/2015/04/microsoft-google-cyanogen/	Microsoft just took Androids future out of Google's hand	2015-06-23 07:31:02.549249	2015-06-23 07:31:07.147589	87
1909	9416549	http://news.nationalpost.com/full-comment/how-c-51-will-undermine-canadas-business-climate-an-open-letter-from-60-canadian-business-leaders	C-51 will undermine Canada’s businesses: Open letter from 60 business leaders	2015-06-23 07:34:37.25929	2015-06-23 07:34:47.293875	188
1904	9414211	http://www.wired.com/2015/04/dmca-ownership-john-deere/?mbid=social_fb	We Can’t Let John Deere Destroy the Very Idea of Ownership	2015-06-23 07:34:21.189958	2015-06-23 07:34:23.232817	48
1894	9408390	http://grafana.org/blog/2015/04/20/Grafana-2-Released.html	Grafana 2.0 Released	2015-06-23 07:33:12.67637	2015-06-23 07:33:13.510353	20
1889	9404656	http://venturebeat.com/2014/06/13/this-french-tech-school-has-no-teachers-no-books-no-tuition-and-it-could-change-everything/?hn=true	This French tech school has no teachers, no books, no tuition	2015-06-23 07:32:21.365486	2015-06-23 07:32:24.84318	66
1893	9407511	https://www.eff.org/deeplinks/2015/04/justice-charging-eight-grader-felony-hacking	Is This Justice? Charging an Eighth Grader with a Felony for “Hacking”	2015-06-23 07:33:04.67005	2015-06-23 07:33:12.645356	154
1891	9406876	https://github.com/WhiteHouse/https/issues/107	Please consider the impacts of banning HTTP	2015-06-23 07:32:54.509301	2015-06-23 07:33:02.564399	159
1880	9401799	http://www.hugs.io/2015/04/18/makerbot-and-the-osborne-effect.html	What doomed MakerBot? The Osborne effect	2015-06-23 07:31:30.008655	2015-06-23 07:31:38.317962	104
1888	9403571	http://fossdroid.com/	Fossdroid.com: Free and open source Android applications	2015-06-23 07:32:03.313419	2015-06-23 07:32:21.32993	371
1882	9402297	http://www.theguardian.com/science/2015/apr/19/clockmaker-john-harrison-vindicated-250-years-absurd-claims	Clockmaker John Harrison vindicated 250 years after ‘absurd’ claims	2015-06-23 07:31:42.068301	2015-06-23 07:31:52.392177	221
1902	9412600	http://www.wired.com/2015/04/reduce-vr-sickness-just-add-virtual-nose/	How to Reduce VR Sickness? Just Add a Virtual Nose	2015-06-23 07:33:57.47755	2015-06-23 07:34:10.095904	249
1884	9402744	http://radio.no/2015/04/norway-to-switch-off-fm-in-2017/	Norway to switch off FM in 2017	2015-06-23 07:31:52.715383	2015-06-23 07:32:01.989343	195
1887	9403385	http://www.newsweek.com/homeless-millennials-are-transforming-hobo-culture-323151	Homeless Millennials Are Transforming Hobo Culture	2015-06-23 07:32:02.182013	2015-06-23 07:32:03.279026	27
1886	9402397	http://blog.wizsec.jp/2015/04/the-missing-mtgox-bitcoins.html	The Missing Mt. Gox Bitcoins	2015-06-23 07:32:02.023364	2015-06-23 07:32:02.145601	4
1903	9413091	http://littlerock.com.mt/news/this-man-just-claimed-a-new-european-nation-160000-people-already-want-to-live-there/	This man just claimed a new European nation. 160,000 people want to live there	2015-06-23 07:34:10.136905	2015-06-23 07:34:21.143109	219
1877	9400739	http://chapters.marssociety.org/usa/oh/aero5.htm	Medical Emergencies In Space	2015-06-23 07:31:07.327356	2015-06-23 07:31:08.741537	22
1898	9410452	http://williamngan.github.io/kubist/	Show HN: Kubist, a little web app to make cubism-like images	2015-06-23 07:33:29.678619	2015-06-23 07:33:35.434588	125
1899	9411408	http://aurellem.org/thoughts/html/sussman-reading-list.html	Prof. Sussman's Reading List	2015-06-23 07:33:35.478762	2015-06-23 07:33:57.438295	423
1878	9400676	http://storagemojo.com/2015/04/13/how-doomed-is-netapp/	How Doomed is NetApp?	2015-06-23 07:31:07.994026	2015-06-23 07:31:20.122129	247
1896	9409423	http://blog.mailgun.com/introducing-a-new-cross-platform-debugger-for-go/	Introducing a cross-platform debugger for Go	2015-06-23 07:33:21.999215	2015-06-23 07:33:29.643816	126
1895	9408626	http://hg.nginx.org/nginx/rev/61d7ae76647d	NGINX open sources TCP load balancing (originally part of NGINX plus)	2015-06-23 07:33:13.546202	2015-06-23 07:33:21.928539	175
1910	9417773	https://aphyr.com/posts/322-call-me-maybe-mongodb-stale-reads	Call Me Maybe: MongoDB Stale Reads	2015-06-23 07:34:47.339766	2015-06-23 07:35:21.851357	535
1901	9412494	https://tls.so/results/saved.googlecom.1429596106.6f228b1cd37213931aef2193311d990a.html	Google.com is still SHA-1 [but they green light their domains]	2015-06-23 07:33:55.598838	2015-06-23 07:33:55.644614	2
1908	9416062	https://mitchkirby.wordpress.com/	When You Lose Weight, Where Does It Go?	2015-06-23 07:34:33.686627	2015-06-23 07:34:34.097633	10
1900	9410592	item?id=9410592	Ask HN: Being harassed by Odesk client, What should I do?	2015-06-23 07:33:49.961681	2015-06-23 07:33:50.583423	11
1905	9413992	http://blogs.wsj.com/digits/2015/04/20/websites-prep-for-googles-mobilegeddon/?mod=LS1	Websites Prep for Google’s ‘Mobilegeddon’	2015-06-23 07:34:22.11444	2015-06-23 07:34:22.285711	2
1907	9415316	https://square.github.io/keywhiz/	Keywhiz: Square's system for distributing and managing secrets	2015-06-23 07:34:29.556565	2015-06-23 07:34:37.217509	145
1906	9414629	http://nginx.org/?1.8	Nginx 1.8.0 stable has been released	2015-06-23 07:34:23.396645	2015-06-23 07:34:29.509636	123
1913	9419930	http://www.lbc.co.uk/why-do-pub-tvs-have-a-pint-glass-in-the-corner-7155	Why do pub TVs have a pint glass in the corner?	2015-06-23 07:35:35.169427	2015-06-23 07:35:41.44146	114
1911	9419035	http://www.pmo.gov.sg/mediacentre/transcript-speech-prime-minister-lee-hsien-loong-founders-forum-smart-nation-singapore	Prime Minister of Singapore Coded Sudoku Solver in C++	2015-06-23 07:35:17.436945	2015-06-23 07:35:21.475738	77
1912	9419188	http://www.vitavonni.de/blog/201503/2015031201-the-sad-state-of-sysadmin-in-the-age-of-containers.html	The sad state of sysadmin in the age of containers	2015-06-23 07:35:21.901267	2015-06-23 07:35:50.642883	317
1914	9421318	https://www.eff.org/es/deeplinks/2015/04/eff-congress-stop-cybersurveillance-bills	EFF to Congress: Stop the Cybersurveillance Bills	2015-06-23 07:35:46.005395	2015-06-23 07:35:48.238607	38
1945	9437591	http://earthquake.usgs.gov/earthquakes/eventpage/us20002926	M7.9 Earthquake in Nepal	2015-06-23 07:51:11.850153	2015-06-23 07:51:12.306462	12
1924	9427739	http://madebymany.com/blog/replacing-rails-part-1-lets-go	Replacing Ruby on Rails: Let's Go	2015-06-23 07:37:12.85804	2015-06-23 07:37:13.911484	14
1921	9426484	https://lists.torproject.org/pipermail/tor-talk/2015-April/037549.html	SIGAINT email service targeted by 70 bad TOR exit nodes	2015-06-23 07:37:01.916253	2015-06-23 07:37:11.504991	99
1918	9425867	https://github.com/dotnet/roslyn/issues/2136	C# 7 Work List of Features	2015-06-23 07:36:54.8728	2015-06-23 07:37:01.872613	110
1935	9431944	http://mechanical-elephant.com/thoughts/2015-04-20-becoming-productive-in-haskell/index.html	Becoming Productive in Haskell	2015-06-23 07:50:04.660481	2015-06-23 07:50:10.573081	140
1939	9434760	http://www.atlasobscura.com/articles/forgotten-wonders-of-the-digital-world-world-of-warcraft	Forgotten Corners of World of Warcraft	2015-06-23 07:50:28.814311	2015-06-23 07:50:45.503744	383
1949	9438926	https://ting.com/internet	Ting Gigabit Fiber Internet	2015-06-23 07:51:32.472855	2015-06-23 07:51:32.592268	2
1922	9427410	http://www.economist.com/blogs/democracyinamerica/2015/04/recycling-america?fsrc=scn%2Ftw%2Fte%2Fbl%2Fed%2Finthebin	America's recycling rate is so poor even Walmart wants to fix things	2015-06-23 07:37:08.539443	2015-06-23 07:37:09.935761	20
1920	9426542	http://forums.getpebble.com/discussion/22081/apple-now-rejecting-apps-with-pebble-smartwatch-support	Apple now rejecting apps with Pebble Smartwatch support	2015-06-23 07:37:01.069004	2015-06-23 07:37:03.75247	46
1926	9428907	http://www.washingtonpost.com/blogs/answer-sheet/wp/2015/04/23/jon-stewart-cheating-teachers-go-to-jail-cheating-wall-streeters-dont-whats-up-with-that/	Cheating teachers go to jail. Cheating Wall Streeters don’t. What’s up?	2015-06-23 07:37:19.594131	2015-06-23 07:37:19.71193	2
1917	9425561	http://www.theguardian.com/technology/2015/apr/22/wi-fi-hack-ios-iphone-ipad-apple	Wi-Fi hack creates 'no iOS zone' that cripples iPhones and iPads	2015-06-23 07:36:50.960757	2015-06-23 07:36:54.83093	67
1934	9431368	https://github.com/dotnet/coreclr/issues/793	Microsoft .NET CoreCLR is now running on FreeBSD 10.1 (amd64)	2015-06-23 07:49:54.169895	2015-06-23 07:50:04.557832	231
1916	9424328	http://incidentalcomplexity.com/2015/04/22/version-control/	Version control, collaborative editing and undo	2015-06-23 07:36:47.57484	2015-06-23 07:36:50.914561	62
1937	9432949	http://www.transformy.io/	Show HN: We made a tool that transforms your whole list with just one example	2015-06-23 07:50:20.624802	2015-06-23 07:50:46.835425	199
1919	9425959	https://github.com/capitainetrain/stations	List of (EU train/rails) stations and associated metadata	2015-06-23 07:36:55.122954	2015-06-23 07:36:55.285108	4
1946	9437892	https://release.debian.org/	Today is Debian 8 release day	2015-06-23 07:51:14.47618	2015-06-23 07:51:32.123968	395
1936	9432504	https://www.google.com/maps/place/33%C2%B030%2752.5%22N+73%C2%B003%2733.2%22E/@33.5117431,73.0558748,15z/data=!4m2!3m1!1s0x0:0x0	Android Is Peeing on Apple in Pakistan - Google Maps	2015-06-23 07:50:10.610427	2015-06-23 07:50:20.582421	226
1923	9427588	http://thenewinquiry.com/essays/foucaults-addendum/	Foucault’s lecture notes from 1970–71 demolish the caricatures of his thought	2015-06-23 07:37:10.745922	2015-06-23 07:37:12.781177	18
1927	9428197	https://software.intel.com/en-us/blogs/2015/04/22/the-last-line-effect	The Last Line Effect	2015-06-23 07:37:20.82087	2015-06-23 07:37:21.591678	16
1932	9430892	http://www.nytimes.com/2015/04/24/technology/kleiner-perkins-seeks-nearly-1-million-from-ellen-pao.html?module=WatchingPortal&region=c-column-middle-span-region&pgType=Homepage&action=click&mediaId=thumb_square&state=standard&contentPlacement=1&version=internal&contentCollection=www.nytimes.com&contentId=http%3A%2F%2Fwww.nytimes.com%2F2015%2F04%2F24%2Ftechnology%2Fkleiner-perkins-seeks-nearly-1-million-from-ellen-pao.html&eventName=Watching-article-click	Kleiner Perkins Seeks Nearly $1M from Ellen Pao	2015-06-23 07:49:48.879659	2015-06-23 07:49:48.936773	2
1928	9429035	http://www.bloomberg.com/news/articles/2015-04-23/comcast-plans-to-drop-time-warner-cable-deal	Comcast Plans to Drop Time Warner Cable Deal	2015-06-23 07:37:22.205229	2015-06-23 07:37:29.029934	119
1930	9429889	http://jmtd.net/log/deterministic_doom/	What happens if you remove randomness from Doom?	2015-06-23 07:37:39.810632	2015-06-23 07:49:50.798602	176
1929	9429865	http://www.bloomberg.com/news/articles/2015-04-23/amazon-finally-discloses-cloud-services-sales-showing-49-jump	Amazon Finally Discloses Cloud Services Sales, Showing 49% Jump	2015-06-23 07:37:29.068399	2015-06-23 07:37:39.764795	194
1925	9428043	http://kubernetesio.blogspot.com/2015/04/borg-predecessor-to-kubernetes.html	Borg: The Predecessor to Kubernetes	2015-06-23 07:37:13.969956	2015-06-23 07:37:22.157523	127
1933	9431017	http://www.caringbridge.org/visit/hudak/journal/view/id/5538f5cea589b4216c04438a	Paul Hudak is dead	2015-06-23 07:49:50.829925	2015-06-23 07:49:54.132467	71
1943	9437641	http://calacanis.com/2006/02/20/youtube-is-not-a-real-business/	“Digg, MySpace are the REAL deal; YouTube is not.” (2006)	2015-06-23 07:51:06.032211	2015-06-23 07:51:09.112448	56
1951	9439769	http://www.nytimes.com/2015/04/26/us/russian-hackers-read-obamas-unclassified-emails-officials-say.html	Russian Hackers Read Obama’s Unclassified Emails, Officials Say	2015-06-23 07:51:44.672198	2015-06-23 07:51:50.104074	110
1944	9437780	http://research.microsoft.com/en-us/um/people/bibuxton/buxtoncollection/detail.aspx?id=60	TrackPoint (2011)	2015-06-23 07:51:11.344797	2015-06-23 07:51:14.828786	70
1938	9434643	https://abevoelker.github.io/how-long-since-google-said-a-google-drive-linux-client-is-coming/	How long since Google said a Google Drive Linux client is coming?	2015-06-23 07:50:27.414501	2015-06-23 07:50:27.675838	6
1942	9437343	http://www.npr.org/blogs/krulwich/2011/05/02/134597833/cosmonaut-crashed-into-earth-crying-in-rage	Cosmonaut Crashed into Earth 'Crying in Rage'	2015-06-23 07:51:00.421374	2015-06-23 07:51:00.4632	2
1941	9436640	http://nbviewer.ipython.org/url/norvig.com/ipython/Cheryl.ipynb	When Is Cheryl's Birthday? (Peter Norvig's Solution)	2015-06-23 07:50:50.561099	2015-06-23 07:51:11.298562	386
1947	9438704	http://www.theguardian.com/world/2015/apr/24/liquid-mercury-mexican-pyramid-teotihuacan	Liquid mercury found under Mexican pyramid could lead to king's tomb	2015-06-23 07:51:30.175842	2015-06-23 07:51:32.003478	18
1940	9436405	http://ktgee.net/post/49423737148/thinkpad-guide#intel	Used ThinkPad Buyer's Guide	2015-06-23 07:50:46.869707	2015-06-23 07:50:50.5298	92
1950	9439041	https://kabukky.github.io/journey/	A minimal blog engine written in Go, compatible with Ghost themes	2015-06-23 07:51:32.632494	2015-06-23 07:51:44.62991	286
1948	9438717	https://github.com/adamwulf/app-launch-guide/blob/master/README.md	An App Launch Guide for Indie Developers	2015-06-23 07:51:32.152321	2015-06-23 07:51:32.441894	10
1953	9440208	item?id=9440208	Ask HN: What are the best product landing pages you've stumbled upon?	2015-06-23 07:51:55.629963	2015-06-23 07:52:12.899503	146
1952	9439778	http://marc.info/?l=openbsd-cvs&m=142989267412968&w=2	OpenBSD's safe, new file(1) implementation	2015-06-23 07:51:50.136001	2015-06-23 07:51:59.579438	133
1954	9440236	http://www.wsj.com/articles/pepsico-to-replace-aspartame-with-sucralose-in-diet-pepsi-in-u-s-1429885941?mod=trending_now_4	PepsiCo to Drop Aspartame from Diet Pepsi	2015-06-23 07:51:57.358928	2015-06-23 07:51:59.212533	32
1955	9440439	http://www.slate.com/articles/business/moneybox/2015/04/bot_makes_2_4_million_reading_twitter_meet_the_guy_it_cost_a_fortune.html	Bot makes $2.4M reading the Web: Meet the guy it cost a fortune	2015-06-23 07:51:59.612393	2015-06-23 07:52:03.555422	91
1965	9447185	https://github.com/antirez/disque	Disque – a distributed message broker	2015-06-23 07:53:40.593514	2015-06-23 07:53:47.716106	146
1956	9440595	http://www.businessinsider.com/science-of-elizabeth-holmes-theranos-2015-4#ixzz3YO784nGj	Scientists skeptical about blood test that made Elizabeth Holmes a billionaire	2015-06-23 07:52:03.195191	2015-06-23 07:52:07.637856	103
1990	9464348	http://www.dominik-schwarz.net/potpourri/worldmap/	Printing a wall-sized world map and what I've learned from it	2015-06-23 07:57:00.373431	2015-06-23 08:03:37.227079	255
1970	9451507	http://www.npr.org/blogs/thesalt/2015/04/27/402632212/chipotle-says-adios-to-gmos-as-food-industry-strips-away-ingredients	Chipotle Says Adios to GMOs, as Food Industry Strips Away Ingredients	2015-06-23 07:54:34.297175	2015-06-23 07:54:34.727521	12
1961	9443867	http://josipfranjkovic.blogspot.com/2015/04/race-conditions-on-facebook.html	Race conditions on Facebook, DigitalOcean and others (fixed)	2015-06-23 07:52:54.928606	2015-06-23 07:53:10.720605	366
1977	9453754	https://hashicorp.com/blog/vault.html	Vault – A tool for managing secrets	2015-06-23 07:54:48.062019	2015-06-23 07:54:56.518713	132
1993	9469201	http://www.teslamotors.com/livestream/	Tesla Motors Livestream	2015-06-23 08:04:08.134037	2015-06-23 08:04:09.861518	39
1975	9453041	http://www.forbes.com/sites/thomasbrewster/2015/04/28/tesla-opening-car-to-hackers/	Tesla Plans to Open Car Doors to All Hackers This Summer	2015-06-23 07:54:44.605672	2015-06-23 07:54:47.00983	54
1957	9440965	http://motherboard.vice.com/read/looking-up-symptoms-online-these-companies-are-collecting-your-data	Looking Up Symptoms Online? These Companies Are Tracking You	2015-06-23 07:52:12.944681	2015-06-23 07:52:18.782487	135
1962	9444675	http://minusbat.livejournal.com/180556.html	Under Pressure	2015-06-23 07:53:10.767974	2015-06-23 07:53:28.135235	350
1981	9456722	http://qz.com/393909/american-airlines-planes-are-grounded-because-their-pilots-ipads-have-crashed/	Some American Airlines planes are grounded because the pilots’ iPads crashed	2015-06-23 07:55:45.771592	2015-06-23 07:55:47.636427	40
1967	9450806	http://thread.gmane.org/gmane.linux.kernel/1930358/focus=1939166	Torvalds: “DBus is seriously screwed up”	2015-06-23 07:54:21.071799	2015-06-23 07:54:30.960742	210
1978	9454440	http://blog.samaltman.com/the-days-are-long-but-the-decades-are-short	The days are long but the decades are short	2015-06-23 07:54:55.86976	2015-06-23 07:55:32.796956	696
1963	9445831	http://undeadly.org/cgi?action=article&sid=20150427093546	EU study recommends OpenBSD	2015-06-23 07:53:28.192509	2015-06-23 07:53:36.730138	168
1960	9442254	https://chimeracoder.github.io/docker-without-docker/#1	Docker without Docker	2015-06-23 07:52:32.071553	2015-06-23 07:52:54.863039	503
1958	9441372	http://research.google.com/pubs/pub43447.html	Flywheel: Google's data compression proxy for mobile web in Go	2015-06-23 07:52:18.816174	2015-06-23 07:52:27.431158	199
1985	9459364	http://techcrunch.com/2015/04/29/microsoft-shocks-the-world-with-visual-studio-code-a-free-code-editor-for-os-x-linux-and-windows/	Microsoft Launches Visual Studio Code, a Free Cross-Platform Code Editor	2015-06-23 07:55:56.846406	2015-06-23 07:56:48.26099	958
1976	9453381	http://www.polyglotweekly.com/2015/04/24/thoughts-of-a-rustacean-learning-go.html	Polyglot Weekly: A Rust Contributor Tries Their Hand at Go	2015-06-23 07:54:47.133635	2015-06-23 07:54:48.503239	22
1959	9441749	https://github.com/jonathanslenders/pyvim	Pure Python Vim clone	2015-06-23 07:52:27.465013	2015-06-23 07:52:32.035701	106
1964	9446980	http://stedolan.github.io/jq/	Jq – A Command-line JSON processor	2015-06-23 07:53:36.762086	2015-06-23 07:53:40.552762	92
1974	9452606	https://caddyserver.com	Show HN: Caddy, a cross-platform HTTP/2 web server	2015-06-23 07:54:43.690242	2015-06-23 07:54:44.571278	23
1968	9451284	http://thread.gmane.org/gmane.linux.kernel/1930358/focus=1937733	Big-Endian “is effectively dead”	2015-06-23 07:54:31.016055	2015-06-23 07:54:34.257003	46
1966	9448686	http://incompleteness.me/blog/2015/02/09/console-dot-mihai/	Console.mihai();	2015-06-23 07:53:47.782029	2015-06-23 07:54:21.027763	705
1982	9457947	https://github.com/mafintosh/chromecasts	Query your local network for Chromecasts and have them play media	2015-06-23 07:55:49.355642	2015-06-23 07:55:52.000397	30
1969	9451528	http://www.bbc.co.uk/news/technology-32493895	Valve shuts down paid mod system after pressure from gamers	2015-06-23 07:54:32.711319	2015-06-23 07:54:35.474816	43
1972	9452225	http://www.bbc.com/capital/story/20140911-open-office-victims-push-back	Victims of Open Offices Are Pushing Back	2015-06-23 07:54:38.704635	2015-06-23 07:54:38.754508	2
1971	9451533	http://sveme.org/removing-eu-roaming-charges-is-a-big-deal.html	Removing EU roaming charges is a big deal	2015-06-23 07:54:35.535585	2015-06-23 07:54:39.885543	76
1973	9452117	http://madebymany.com/blog/apple-watch-what-can-you-do-with-it	Apple Watch – What can you do with it?	2015-06-23 07:54:39.923323	2015-06-23 07:54:43.647638	78
1984	9458283	http://www.hostmeinca.com	Take me as an Intern – 19yo student seeking internship	2015-06-23 07:55:51.501691	2015-06-23 07:55:56.804804	101
1980	9456931	http://go-talks.appspot.com/github.com/davecheney/presentations/reproducible-builds.slide	Reproducible Builds in Go	2015-06-23 07:55:32.834785	2015-06-23 07:55:49.321513	303
1979	9456154	https://www.google.com/patents/US20140229239	Bank of America Patent #20140229239 – “Face Retirement Tool”	2015-06-23 07:55:16.861837	2015-06-23 07:55:18.952527	44
1987	9463512	http://blog.arduino.cc/2015/04/30/microsoft-and-arduino-new-partnership/	Microsoft and Arduino Announce Partnership	2015-06-23 07:56:48.33162	2015-06-23 07:56:52.205293	80
1989	9463810	http://www.eisionline.org/index.php/sk/projekty-m-2/ochrana-sukromia/109-the-slovak-constitutional-court-cancelled-mass-surveillance-of-citizens	Slovak Constitutional Court cancels mass surveillance of citizens	2015-06-23 07:56:52.618147	2015-06-23 07:57:00.319272	137
1986	9463044	https://www.facebook.com/cnbc/videos/vb.97212224368/10153395251424369/?type=2&theater	11 yrs ago today, Mark Zuckerberg appeared on CNBC to discuss a social network	2015-06-23 07:56:35.007588	2015-06-23 07:56:35.764653	10
1983	9458212	http://www.bbc.co.uk/news/technology-32511932	How one tweet wiped $8bn off Twitter's value	2015-06-23 07:55:50.418043	2015-06-23 07:55:51.460169	24
1988	9463154	https://lists.debian.org/debian-hurd/2015/04/msg00047.html	Debian GNU/Hurd 2015 released	2015-06-23 07:56:52.240243	2015-06-23 07:56:52.378475	4
1991	9465999	https://messages.yale.edu/messages/University/univmsgs/detail/121669	Paul Hudak, creator of Haskell, has died	2015-06-23 08:03:37.281998	2015-06-23 08:04:08.096353	632
1995	9471287	item?id=9471287	Ask HN: Who is hiring? (May 2015)	2015-06-23 08:04:36.765751	2015-06-23 08:04:49.073313	275
1992	9468104	https://blog.mozilla.org/security/2015/04/30/deprecating-non-secure-http/	Mozilla deprecating non-secure HTTP	2015-06-23 08:03:57.443052	2015-06-23 08:03:58.734668	30
1994	9469316	http://www.teslamotors.com/presskit/teslaenergy	Tesla Energy	2015-06-23 08:04:09.89852	2015-06-23 08:04:36.731454	584
1996	9473481	http://blog.servo.org/2015/05/01/forward/	Servo Continues Pushing Forward	2015-06-23 08:04:49.204456	2015-06-23 08:04:53.952838	103
1998	9476373	http://calacanis.com/2015/04/30/lets-all-laugh-at-my-horrible-2006-post-youtube-is-not-a-real-business/	Let’s all laugh at my horrible 2006 post: “YouTube is not a real business”	2015-06-23 08:05:30.382138	2015-06-23 08:05:30.812428	12
1997	9474012	http://www.kalzumeus.com/2015/05/01/talking-about-money/	Talking About Money	2015-06-23 08:04:54.00954	2015-06-23 08:05:32.494561	805
1999	9476139	http://www.engadget.com/2015/05/01/boeing-787-dreamliner-software-bug/	Integer Overflow Bug in Boeing 787 Dreamliner	2015-06-23 08:05:32.537212	2015-06-23 08:05:47.126232	195
2014	9482469	https://blog.diasporafoundation.org/16-diaspora-version-0-5-0-0-released	Diaspora* version 0.5.0.0 released – The diaspora* Project	2015-06-23 08:07:05.530351	2015-06-23 08:07:07.885079	62
2035	9491365	http://www.washingtonpost.com/world/europe/nsa-scandal-rekindles-in-germany-with-an-ironic-twist/2015/04/30/030ec9e0-ee7e-11e4-8050-839e9234b303_story.html	Germans, still outraged by NSA spying, learn their country may have helped	2015-06-23 08:08:49.049531	2015-06-23 08:08:49.166983	4
2043	9498029	https://www.oculus.com/blog/first-look-at-the-rift-shipping-q1-2016/	Oculus shipping in Q1 2016	2015-06-23 08:10:23.638413	2015-06-23 08:10:32.691896	164
2018	9483997	http://www.catonmat.net/blog/top-100-books-part-two/	My Top 100 Programming, Computer and Science Books: Part Two	2015-06-23 08:07:24.604004	2015-06-23 08:07:25.145358	12
2140	9556082	http://nytimes.com/2015/05/16/opinion/it-is-in-fact-rocket-science.html	It Is, in Fact, Rocket Science	2015-06-23 08:23:23.67681	2015-06-23 08:23:27.553238	79
2016	9483335	http://www.nytimes.com/2015/05/01/us/politics/rules-change-on-irs-seizures-too-late-for-some.html	Rules Change on I.R.S. Seizures, Too Late for Some	2015-06-23 08:07:18.66024	2015-06-23 08:07:20.016321	30
2027	9487052	http://www.wired.com/2015/05/google-backs-alternative-docker-cloud-computing-s-next-big-idea/	Google Backs Alternative to Docker, Cloud Computing’s Next Big Thing	2015-06-23 08:08:06.872798	2015-06-23 08:08:07.004808	4
2008	9479679	http://garrett.damore.org/2015/05/macos-x-10103-update-is-toxic.html	MacOS X 10.10.3 Update is *TOXIC*	2015-06-23 08:06:23.5824	2015-06-23 08:06:26.277858	55
2044	9498139	http://www.generictestdomain.net/docker/weave/networking/stupidity/2015/04/05/weave-is-kinda-slow/	Weave is kinda slow	2015-06-23 08:10:32.729361	2015-06-23 08:10:36.481219	60
2022	9484933	http://techcrunch.com/2015/05/04/facebooks-internet-org-project-is-now-a-platform/	Facebook Opens Internet․Org to All Developers Due to Net Neutrality Concerns	2015-06-23 08:07:40.310207	2015-06-23 08:07:45.004189	96
2010	9480390	https://en.wikipedia.org/wiki/Peak_car	Peak car	2015-06-23 08:06:38.700002	2015-06-23 08:06:49.695174	240
2031	9488556	http://blogs.wsj.com/law/2015/05/04/is-it-ok-for-employers-to-seek-out-digital-natives/	Is It OK for Employers to Seek Out ‘Digital Natives’?	2015-06-23 08:08:12.390859	2015-06-23 08:08:13.272597	18
2024	9485237	https://drive.google.com/folderview?id=0B2G2LjIu7WbdfjhaUmVzc1lCR2hUdk5fZllCOHdtbFItbU5qYzdqZGVxdmlnRkJyYVQ4VU0&usp=sharing&usp=sharing&urp=https://drive.google.com/folderview?id%3D0B2G2LjIu7W#list	PM of Singapore Shares His C++ Sudoku Solver Source Code	2015-06-23 08:07:46.13305	2015-06-23 08:07:55.946167	221
2017	9483513	http://reneweconomy.com.au/2015/tesla-battery-storage-will-accelerate-exit-of-coal-generators-88203	Tesla battery storage will accelerate exit of coal generators	2015-06-23 08:07:22.911745	2015-06-23 08:07:26.301156	54
2005	9478906	http://www.smashcompany.com/technology/embarrassing-code-i-wrote-under-stress-at-a-job-interview	Embarrassing code I wrote under stress at a job interview	2015-06-23 08:06:13.784718	2015-06-23 08:06:16.208723	57
2020	9484195	http://rachelbythebay.com/w/2015/05/02/lockstep/	The dangers of resetting everything at once	2015-06-23 08:07:30.793	2015-06-23 08:07:30.945007	4
2025	9485992	http://teslaclubsweden.se/test-drive-of-a-petrol-car	Test drive of a petrol car	2015-06-23 08:07:55.985156	2015-06-23 08:08:00.714109	80
2021	9484224	http://www.wsj.com/article_email/artificial-intelligence-experts-are-in-high-demand-1430472782-lMyQjAxMTA1MzA2MTMwNTEyWj	Artificial-Intelligence Experts Are in High Demand	2015-06-23 08:07:31.111219	2015-06-23 08:07:40.425801	191
2013	9481385	http://www.nytimes.com/2015/04/12/magazine/how-to-beat-a-polygraph-test.html	How to Beat a Polygraph Test	2015-06-23 08:06:54.632847	2015-06-23 08:07:05.489603	253
2028	9486325	http://techcrunch.com/2015/05/04/microsoft-wants-to-bring-azure-to-your-data-center/	Microsoft Wants to Bring Azure to Your Data Center	2015-06-23 08:08:07.120321	2015-06-23 08:08:07.158536	2
2003	9477014	http://octarineparrot.com/assets/mrfloya-thesis-ba.pdf	Evaluation of C, Go, and Rust in the HPC environment [pdf]	2015-06-23 08:05:47.173119	2015-06-23 08:05:54.095383	115
2023	9484939	http://blog.brentlaabs.com/2015/05/three-tales-of-second-system-syndrome.html	Perl, Python, PHP: Three Tales of Second System Syndrome	2015-06-23 08:07:45.041795	2015-06-23 08:07:46.09834	26
2007	9479214	http://manishearth.github.io/blog/2015/05/03/where-rust-really-shines/	Where Rust really shines	2015-06-23 08:06:22.761937	2015-06-23 08:06:23.544466	18
2006	9479303	https://popehat.com/2015/04/29/cops-we-need-rights-more-than-you-citizen/	Cops: We Need Rights More Than You, Citizen	2015-06-23 08:06:16.692761	2015-06-23 08:06:21.807974	76
2004	9477667	https://www.facebook.com/zuck/posts/10102063979260811	Dave Goldberg, CEO of SurveyMonkey, has passed away	2015-06-23 08:05:54.140984	2015-06-23 08:06:28.919378	534
2019	9484085	http://prog21.dadgum.com/207.html	Reconsidering Functional Programming	2015-06-23 08:07:26.335501	2015-06-23 08:07:31.436426	99
2015	9482618	http://kivy.org/planet/2015/04/python-on%C2%A0android/	Python on Android	2015-06-23 08:07:07.916457	2015-06-23 08:07:24.05776	343
2041	9496672	http://pypyjs.org/	PyPy.js: A fast, compliant Python implementation for the web	2015-06-23 08:10:02.084808	2015-06-23 08:10:20.891133	322
2033	9490572	https://sourcegraph.com/blog/118135010314	Creator of Raft Algorithm introduces LogCabin	2015-06-23 08:08:35.019509	2015-06-23 08:08:43.454577	103
2026	9486391	http://lwn.net/SubscriberLink/641779/474137b50693725a/	The programming talent myth	2015-06-23 08:07:58.635628	2015-06-23 08:08:07.311805	147
2011	9481043	http://www.browserfordoing.com/	Microsoft Edge – The Browser for Doing	2015-06-23 08:06:49.728743	2015-06-23 08:06:50.90466	30
2036	9491774	http://org-trello.github.io/	Org-trello: Trello for org-mode	2015-06-23 08:08:59.160421	2015-06-23 08:09:04.178923	106
2012	9481074	http://c2.com/cgi/wiki?AlanKayOnMessaging	Alan Kay on Messaging (1998)	2015-06-23 08:06:50.938382	2015-06-23 08:06:54.592583	89
2030	9487941	http://blogs.msdn.com/b/johnshews_blog/archive/2015/04/30/build-2015-and-manifoldjs.aspx	Manifold.js – Create mobile apps from websites	2015-06-23 08:08:08.176829	2015-06-23 08:08:13.564959	93
2009	9479834	http://www.jsfuck.com	JSFuck – esoteric JavaScript	2015-06-23 08:06:28.956967	2015-06-23 08:06:38.660884	215
2029	9487903	item?id=9487903	Ask HN: Should I unplug my laptop charger at 100%?	2015-06-23 08:08:07.463219	2015-06-23 08:08:08.141387	18
2038	9493407	https://medium.com/inside-wattage/well-we-failed-77e795e16ecf	Well, We Failed – Wattage is shutting down	2015-06-23 08:09:23.14147	2015-06-23 08:09:29.022292	107
2037	9492110	http://hello-world.io/death-of-a-programmer	Death of a Programmer	2015-06-23 08:09:04.254106	2015-06-23 08:09:23.069927	347
2034	9490843	https://iojs.org/en/index.html?2.0.0	Iojs 2.0.0 Released	2015-06-23 08:08:39.750439	2015-06-23 08:08:42.408445	48
2040	9496006	http://mail.tarsnap.com/tarsnap-announce/msg00031.html	Tarsnap performance issues in late March / most of April	2015-06-23 08:09:49.618402	2015-06-23 08:10:02.01615	167
2032	9488532	http://sub.blue/fractal-lab	Fractal Lab	2015-06-23 08:08:13.626279	2015-06-23 08:08:59.119396	719
2039	9494663	https://aphyr.com/posts/324-call-me-maybe-aerospike	Call me maybe: Aerospike	2015-06-23 08:09:29.061921	2015-06-23 08:10:00.002443	402
2042	9497821	item?id=9497821	GitHub's down?	2015-06-23 08:10:20.928371	2015-06-23 08:10:23.603712	48
2046	9498874	http://novembermonk.github.io/kiui/article.html	Show HN: kiUi – Lightweight auto-layout stylable UI toolkit	2015-06-23 08:10:36.54447	2015-06-23 08:10:38.025977	22
2045	9498785	http://pando.com/2015/05/06/not-in-kansas-anymore-uber-leaves-kansas-after-lawmakers-demand-background-checks-and-more-insurance/	Uber leaves Kansas after lawmakers demand background checks and more insurance	2015-06-23 08:10:33.249542	2015-06-23 08:10:33.497167	7
2261	9611829	http://githubengineering.com/rearchitecting-github-pages/	Rearchitecting GitHub Pages	2015-06-23 08:37:58.888686	2015-06-23 08:38:53.505833	408
2072	9516910	http://heidiroizen.tumblr.com/post/118473647305/	How to Build a Unicorn from Scratch – And Walk Away with Nothing	2015-06-23 08:15:00.703664	2015-06-23 08:15:07.130273	107
2063	9514404	http://www.attn.com/stories/836/chile-makes-college-tuition-free	Chile is introducing free higher education	2015-06-23 08:13:52.664474	2015-06-23 08:14:03.947616	177
2059	9509870	http://git.postgresql.org/gitweb/?p=postgresql.git;a=commit;h=168d5805e4c08bed7b95d351bf097cff7c07dd65	Postgres gets support for INSERT  ON CONFLICT  UPDATE (aka upsert)	2015-06-23 08:12:45.428568	2015-06-23 08:13:20.49696	597
2048	9499803	https://developers.google.com/speed/pagespeed/service/Deprecation	Google Ends Page Speed Service	2015-06-23 08:10:38.396351	2015-06-23 08:10:38.602021	4
2047	9499331	http://www.reuters.com/article/2015/05/06/us-usa-fed-yellen-idUSKBN0NR1JI20150506	Yellen cites 'potential dangers' in U.S. stock valuations	2015-06-23 08:10:38.085738	2015-06-23 08:10:41.166946	38
2073	9516824	https://rya.nc/cert-tricks.html	Stupid certificate tricks	2015-06-23 08:15:07.179727	2015-06-23 08:15:16.626907	181
2070	9516719	http://o.canada.com/technology/swartz-doc-director-oracle-and-larry-ellison-killed-aarons-law	Larry Ellison Killed Aaron's Law (2014)	2015-06-23 08:14:57.814607	2015-06-23 08:14:58.044091	6
2054	9504204	https://blog.cloudflare.com/go-crypto-bridging-the-performance-gap/	Go crypto: bridging the performance gap	2015-06-23 08:11:43.419989	2015-06-23 08:11:52.590716	131
2068	9516217	http://www.clash-lang.org/	CλaSH – From Haskell to Hardware	2015-06-23 08:14:55.664983	2015-06-23 08:15:00.091588	72
2056	9506032	https://blog.heroku.com/archives/2015/5/7/heroku-free-dynos	Heroku’s Free (as in beer) Dynos	2015-06-23 08:11:59.932981	2015-06-23 08:12:00.101255	4
2064	9514961	http://www.bloomberg.com/news/articles/2015-05-07/here-s-how-much-new-york-and-san-francisco-s-tight-housing-markets-are-hurting-the-economy	How New York and San Francisco's Tight Housing Markets Are Hurting the Economy	2015-06-23 08:14:04.003197	2015-06-23 08:14:09.502494	90
2051	9503036	http://www.cbc.ca/news/politics/bill-c-51-passes-in-house-of-commons-1.3064235	Bill C-51 passes in House of Commons	2015-06-23 08:11:15.892517	2015-06-23 08:11:19.451189	58
2053	9504061	http://karpathy.github.io/2012/10/22/state-of-computer-vision/	The state of Computer Vision and AI: we are really, really far. (2012)	2015-06-23 08:11:41.480274	2015-06-23 08:11:43.259256	26
2050	9501703	http://www.npr.org/blogs/krulwich/2011/10/03/140815154/dissolve-my-nobel-prize-fast-a-true-story	How To Get Rid of a Nobel Prize Medal	2015-06-23 08:10:59.734154	2015-06-23 08:11:37.402633	601
2057	9506000	http://gizmodo.com/nasas-radar-found-4-men-trapped-in-rubble-in-nepal-by-t-1702553957	NASA's Radar Found 4 Men Trapped in Rubble in Nepal by Their Heartbeats	2015-06-23 08:12:02.236569	2015-06-23 08:12:09.609315	118
2055	9504939	http://www.reuters.com/article/2015/05/07/us-usa-security-nsa-idUSKBN0NS1IN20150507	NSA phone surveillance not authorized: U.S. appeals court	2015-06-23 08:11:52.641507	2015-06-23 08:12:02.196161	145
2052	9504028	http://asylum.madhouse-project.org/blog/2015/05/07/grepping-logs-is-still-terrible/	Grepping logs is still terrible	2015-06-23 08:11:37.457175	2015-06-23 08:11:41.435864	76
2067	9516093	https://www.eff.org/deeplinks/2015/05/how-tpp-and-fast-track-threaten-human-rights	UN Experts Say TPP and Fast Track Threaten Human Rights	2015-06-23 08:14:44.095578	2015-06-23 08:14:55.622469	221
2060	9511504	http://nate.io/posts/take-the-money-and-run.html	Take the Money and Run	2015-06-23 08:13:20.541243	2015-06-23 08:13:31.869707	189
2061	9512417	http://www.businessinsider.com/zappos-employees-take-buyouts-new-self-management-structure-2015-5	210 Zappos employees – 14% of the staff – take buyouts after CEO ultimatum	2015-06-23 08:13:31.963723	2015-06-23 08:13:52.623347	291
2066	9515137	https://code.facebook.com/posts/1433093613662262/-under-the-hood-facebook-s-cold-storage-system-/?hn=1	Details on Facebook’s cold storage system – “1 exabyte (1,000 PB) per data hall”	2015-06-23 08:14:11.27148	2015-06-23 08:14:44.03612	506
2065	9515156	https://plus.google.com/+WillCooke/posts/AxfoU3N1Ezo	Ubuntu Announces New Package Manager for Desktop, Snappy	2015-06-23 08:14:09.562987	2015-06-23 08:14:11.205141	24
2049	9500088	http://liveblog.co/users/davewiner/2015/05/06/iWouldHaveHiredDougBut.html	I would have hired Doug, but...	2015-06-23 08:10:41.226612	2015-06-23 08:10:59.696961	354
2062	9513850	http://techcrunch.com/2015/05/08/the-chip-is-a-9-computer-that-can-almost-do-it-all/	The CHIP Is a $9 Computer That Can Almost Do It All	2015-06-23 08:13:45.84297	2015-06-23 08:13:47.7993	40
2086	9523078	http://www.newyorker.com/magazine/2015/05/18/tomorrows-advance-man	The Mind of Marc Andreessen	2015-06-23 08:16:59.898554	2015-06-23 08:17:07.233637	152
2081	9519787	https://github.com/JetBrains/anko	Anko: pleasant Android development in Kotlin	2015-06-23 08:16:01.316021	2015-06-23 08:16:10.340234	171
2069	9516703	http://www.zeit.de/gesellschaft/2015-05/poverty-racism-black-neighborhoods-baltimore-ferguson-new-york/komplettansicht	USA: Where the Poor Live Dearly	2015-06-23 08:14:57.095418	2015-06-23 08:14:57.356826	4
2075	9518601	http://typedrummer.com	Typedrummer	2015-06-23 08:15:40.968128	2015-06-23 08:15:57.311281	173
2058	9506642	http://facebook.github.io/PathPicker/	Facebook PathPicker	2015-06-23 08:12:09.667569	2015-06-23 08:12:45.378529	558
2074	9517707	http://www.bostonglobe.com/metro/2015/05/05/harvard-class-cooks-ultimate-bbq-smoker/0O4fLQ0rbt9qMGsllPoTjK/story.html?p1=Article_Trending_Most_Viewed#	Harvard engineering students devise ultimate BBQ smoker	2015-06-23 08:15:16.666543	2015-06-23 08:15:40.849302	495
2077	9519504	http://www.nytimes.com/2015/05/07/business/business-travelers-want-to-be-left-to-their-own-devices.html	Business Travelers Want to Be Left to Their Own Devices	2015-06-23 08:15:54.092547	2015-06-23 08:15:55.544855	19
2076	9518920	http://www.theguardian.com/technology/2015/may/08/video-game-execution-guild-wars-2-arena-net	Video game execution watched by 325K players	2015-06-23 08:15:42.518321	2015-06-23 08:15:49.256322	139
2071	9516613	https://www.youtube.com/watch?v=YlUhPrAqiY0	Computational Hydrographic Printing (SIGGRAPH 2015)	2015-06-23 08:15:00.126767	2015-06-23 08:15:00.649791	12
2080	9519597	http://www.catalyticengineering.com/top-ten-facts-about-teslas-350kwh-powerwall-battery/	Top Ten Facts about Tesla’s $350/kWh (DC) PowerWall Battery	2015-06-23 08:15:58.504261	2015-06-23 08:16:01.267568	56
2083	9521151	http://m.bbc.com/news/technology-32658340	Microsoft to stop producing Windows versions	2015-06-23 08:16:24.354952	2015-06-23 08:16:42.123218	327
2078	9519474	http://www.home.superfish.com/	“Superfish is currently transitioning our focus”	2015-06-23 08:15:55.594357	2015-06-23 08:15:55.93476	6
2079	9519575	http://www.adam-bien.com/roller/abien/entry/a_java_ee_startup_filtering	Startup's secret weapon: modern Java EE	2015-06-23 08:15:57.34832	2015-06-23 08:15:58.456848	24
2082	9520145	http://maryrosecook.com/blog/post/git-in-six-hundred-words	Git in six hundred words	2015-06-23 08:16:10.108962	2015-06-23 08:16:24.157758	257
2084	9522213	http://eng.localytics.com/taming-aws-lambda-for-s3-and-kinesis-at-localytics/	Intro to Node on AWS Lambda for S3 and Kinesis	2015-06-23 08:16:42.174577	2015-06-23 08:16:47.007303	89
2085	9522489	http://deckofcardsapi.com	Show HN: Deck of Cards – A playing card API	2015-06-23 08:16:47.056481	2015-06-23 08:16:59.752683	249
2088	9523555	https://tutanota.de/blog/posts/republica-google-promotes-privacy-but-not-too-much	Re:publica: Google says end-to-end encryption is not meant for common use	2015-06-23 08:17:11.893465	2015-06-23 08:17:11.93659	2
2087	9523431	http://advice.datingring.com/fundraising-while-female/	Fundraising While Female	2015-06-23 08:17:07.274347	2015-06-23 08:17:12.358022	75
2122	9544728	https://certsimple.com/blog/chrome-outdated-cryptography	Why your 'A' grade SSL is 'outdated cryptography' on Chrome	2015-06-23 08:20:49.373038	2015-06-23 08:20:52.202146	52
2101	9531389	https://www.google.com/about/careers/students/guide-to-technical-development.html	Google's guide for becoming a Software Engineer	2015-06-23 08:18:28.681722	2015-06-23 08:18:37.277303	177
2102	9531265	http://ephemeralp2p.durazo.us/2bbbf21959178ef2f935e90fc60e5b6e368d27514fe305ca7dcecc32c0134838	Show HN: This page exists only if someone is looking at it	2015-06-23 08:18:37.317183	2015-06-23 08:18:37.457915	2
2103	9531941	https://chrome.google.com/webstore/detail/wait-google-sent-me/igloabeeeiagmdkhellmibpnlnjdmdbb	Wait, Google Sent Me	2015-06-23 08:18:37.513624	2015-06-23 08:18:37.566148	2
2095	9528698	http://techcrunch.com/2015/05/11/ftc-officials-back-teslas-right-to-sell-cars-direct-to-consumers/?ncid=rss&utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+Techcrunch+%28TechCrunch%29	FTC Officials Back Tesla’s Right to Sell Cars Direct to Consumers	2015-06-23 08:17:54.110018	2015-06-23 08:18:08.954336	299
2093	9527671	http://www.jpl.nasa.gov/spaceimages/details.php?id=pia19547	Ceres RC3 Animation: Bright spots revealed to be composed of many smaller spots	2015-06-23 08:17:39.730577	2015-06-23 08:17:40.699349	28
2089	9523835	https://productforums.google.com/forum/?hl=en#!category-topic/map-maker/news-and-announcements/crFEbGXJ-HI	Google Map Maker will be temporarily unavailable for editing	2015-06-23 08:17:12.152392	2015-06-23 08:17:18.947912	138
2090	9523982	http://cbloomrants.blogspot.com/2015/05/05-10-15-did-i-ever-mention-that-i.html	Did I ever mention that I fucking hate the fucking web	2015-06-23 08:17:18.99031	2015-06-23 08:17:19.036625	2
2092	9526602	https://medium.com/backchannel/the-view-from-the-front-seat-of-the-google-self-driving-car-46fc9f3e6088	The View from the Front Seat of the Google Self-Driving Car	2015-06-23 08:17:34.896794	2015-06-23 08:17:36.440315	34
2097	9530080	http://www.bbc.com/news/world-asia-32701385	Nepal earthquake, magnitude 7.3, strikes near Everest	2015-06-23 08:18:14.073678	2015-06-23 08:18:15.352163	8
2091	9524536	https://www.unitedstatescourts.org/federal/cand/284981/1-0.html	Class action lawsuit filed against Lenovo over Superfish	2015-06-23 08:17:19.078439	2015-06-23 08:17:39.703823	391
2118	9542185	http://www.nytimes.com/2015/05/14/us/house-votes-to-end-nsas-bulk-phone-data-collection.html?module=Notification&version=BreakingNews&region=FixedTop&action=Click&contentCollection=BreakingNews&contentID=34380121&pgtype=Homepage	House Votes to End N.S.A.’s Bulk Phone Data Collection	2015-06-23 08:20:07.798023	2015-06-23 08:20:09.241953	28
2116	9541138	http://blogs.s-osg.org/servo-the-embeddable-browser-engine/	Servo: Embeddable Browser Engine	2015-06-23 08:20:00.283746	2015-06-23 08:20:05.140294	94
2112	9539839	http://blog.rubyandduke.com/2015/05/13/how-we-built-e20000-in-monthly-recurring-revenue-for-our-start-up-within-90-days-of-launch/	Getting to €20k in MRR in 90 days	2015-06-23 08:19:50.248551	2015-06-23 08:19:51.214863	17
2108	9537641	http://www.theguardian.com/technology/2015/may/12/how-virtual-world-edge-of-apocalypse-and-back-again	How Eve Online went to the edge of apocalypse and back	2015-06-23 08:19:31.75053	2015-06-23 08:19:38.005131	125
2113	9539372	http://blogs.wsj.com/cio/2015/05/11/google-moves-its-corporate-applications-to-the-internet/	Google Moves Its Corporate Applications to the Internet	2015-06-23 08:19:51.61719	2015-06-23 08:19:58.810058	132
2106	9536697	http://www.washingtonpost.com/blogs/wonkblog/wp/2015/05/11/how-the-dea-took-a-young-mans-life-savings-without-ever-charging-him-of-a-crime/	How the DEA took a young man’s life savings without charging him with a crime	2015-06-23 08:19:15.778505	2015-06-23 08:19:25.049739	189
2096	9529829	http://uk.businessinsider.com/samsung-china-sales-q1-apple-xiaomi-idc-plummet-2015-5	Samsung is imploding in China	2015-06-23 08:18:08.998185	2015-06-23 08:18:15.865592	123
2115	9541134	http://bigeng.io/post/118399425343/why-the-way-we-look-at-technical-debt-is-wrong	Why the Way We Look at Technical Debt Is Wrong	2015-06-23 08:19:58.849319	2015-06-23 08:20:00.242868	23
2094	9527770	http://cs-blog.khanacademy.org/2015/05/just-released-full-introductory-sql.html	New Course: Learn SQL Interactively on Khan Academy	2015-06-23 08:17:40.728069	2015-06-23 08:17:54.066622	273
2107	9537009	http://www.redblobgames.com/grids/hexagons/implementation.html	Implementation of Hex Grids	2015-06-23 08:19:28.437075	2015-06-23 08:19:31.711672	66
2100	9530816	http://www.wsj.com/articles/verizon-to-buy-aol-for-4-4-billion-1431428458	Verizon to Buy AOL for $4.4B	2015-06-23 08:18:21.275129	2015-06-23 08:18:28.627847	144
2110	9538437	http://venom.crowdstrike.com/	VENOM VM escape vulnerability (QEmu, Xen, KVM vulnerable)	2015-06-23 08:19:39.361821	2015-06-23 08:19:51.466283	139
2105	9534310	http://boz.com/articles/be-kind.html	Be Kind	2015-06-23 08:18:57.606623	2015-06-23 08:19:26.25808	369
2111	9538858	http://blog.toolshed.com/2015/05/the-failure-of-agile.html	The Failure of Agile	2015-06-23 08:19:44.985235	2015-06-23 08:19:49.862439	80
2099	9529782	http://searchengineland.com/tested-googlebot-crawls-javascript-heres-learned-220157	How Googlebot crawls JavaScript	2015-06-23 08:18:19.463735	2015-06-23 08:18:19.584236	4
2109	9538135	http://anandtech.com/show/9193/the-xeon-e78800-v3-review	The Intel Xeon E7-8800 v3 Review: The POWER8 Killer?	2015-06-23 08:19:38.048169	2015-06-23 08:19:39.321964	28
2098	9530306	http://blog.elementary.io/post/110645528530/payments	Payments – Why we make you type "$0"	2015-06-23 08:18:15.911172	2015-06-23 08:18:21.224762	109
2117	9541569	http://www.modernluxury.com/san-francisco/story/why-are-palo-altos-kids-killing-themselves	Why Are Palo Alto's Kids Killing Themselves?	2015-06-23 08:20:05.215391	2015-06-23 08:20:07.754115	40
2104	9532777	https://www.lily.camera/	Lily – Drone camera	2015-06-23 08:18:37.617793	2015-06-23 08:19:28.395458	438
2114	9540094	http://www.latimes.com/local/california/la-fi-santa-monica-airbnb-20150512-htmlstory.html	Santa Monica council votes 7-0 to crack down on Airbnb	2015-06-23 08:19:54.154813	2015-06-23 08:19:54.762033	12
2119	9542267	https://github.com/iojs/io.js/issues/1664#issuecomment-101828384	Node.js and io.js are merging under the Node Foundation	2015-06-23 08:20:09.285013	2015-06-23 08:20:20.273034	238
2121	9543005	http://twenty.frenchguys.net	Show HN: Twenty	2015-06-23 08:20:22.806805	2015-06-23 08:20:49.336797	581
2120	9542548	https://groups.google.com/forum/#!topic/mechanical-sympathy/QbmpZxp6C64	Linux futex_wait() bug – update to latest patches now	2015-06-23 08:20:20.042688	2015-06-23 08:20:22.761716	54
2123	9545019	https://github.com/Microsoft/TouchDevelop	Microsoft TouchDevelop	2015-06-23 08:20:52.239915	2015-06-23 08:21:04.035329	249
2125	9547125	http://www.nytimes.com/interactive/2015/05/14/opinion/14-in-flight-mark-vanhoenacker.html	In Flight	2015-06-23 08:21:26.648551	2015-06-23 08:21:27.037435	10
2126	9548138	http://www.rfc-editor.org/rfc/rfc7540.txt	HTTP/2 is officially released as RFC7540	2015-06-23 08:21:27.077725	2015-06-23 08:21:35.981873	183
2124	9546311	item?id=9546311	Ask HN: How do I put together a computer for my blind mom?	2015-06-23 08:21:04.073066	2015-06-23 08:21:26.606192	414
2127	9548801	http://laphamsquarterly.org/roundtable/my-first-mistake	In 1962, a college student answers an ad: “Mortuary Assistant required”	2015-06-23 08:21:36.017372	2015-06-23 08:21:42.720102	148
2128	9549181	http://www.nytimes.com/2015/05/16/arts/music/b-b-king-blues-singer-dies-at-89.html	B. B. King, Defining Bluesman for Generations, Dies at 89	2015-06-23 08:21:42.755	2015-06-23 08:22:03.133548	414
2216	9592781	http://www.nextavenue.org/30-years-ago-they-retired-35-update/	30 Years Ago They Retired at 35: An Update	2015-06-23 08:32:35.796403	2015-06-23 08:32:37.941281	46
2129	9550353	http://www.nytimes.com/2015/05/17/business/decoding-the-enigma-of-satoshi-nakamoto-and-the-birth-of-bitcoin.html	Decoding the Enigma of Satoshi Nakamoto and the Birth of Bitcoin	2015-06-23 08:22:03.178844	2015-06-23 08:22:11.375972	153
2161	9562924	http://petuum.github.io/?	Petuum, a distributed machine learning framework	2015-06-23 08:25:19.708126	2015-06-23 08:25:23.100576	72
2157	9561645	http://www.nytimes.com/2015/05/17/opinion/sunday/poor-little-rich-women.html	Poor Little Rich Women	2015-06-23 08:24:52.564892	2015-06-23 08:24:53.176205	12
2130	9550629	http://strml.net/	STRML: Projects and Work	2015-06-23 08:22:11.416483	2015-06-23 08:22:11.551716	4
2131	9551378	http://brendaneich.github.io/ModernWeb.tw-2015/	JavaScript at 20	2015-06-23 08:22:11.598027	2015-06-23 08:22:14.170759	52
2132	9551937	http://blog.rust-lang.org/2015/05/15/Rust-1.0.html	Announcing Rust 1.0	2015-06-23 08:22:14.210855	2015-06-23 08:22:36.880283	460
2150	9559691	http://arstechnica.co.uk/tech-policy/2015/05/uk-government-quietly-rewrites-hacking-laws-to-grant-gchq-immunity/	UK government quietly rewrites hacking laws to give GCHQ immunity	2015-06-23 08:24:25.588461	2015-06-23 08:24:31.571845	116
2133	9554477	http://techcrunch.com/2015/05/15/clunk/	Clinkle Implodes as Employees Quit in Protest of CEO	2015-06-23 08:22:37.034271	2015-06-23 08:22:47.968628	209
2141	9556709	https://blog.indutny.com/c.cpp-in-node	Diving into C++ internals of Node	2015-06-23 08:23:27.598774	2015-06-23 08:23:36.588414	179
2148	9558996	http://moviecode.tumblr.com/post/119171520870/in-the-movie-ex-machina-which-is-really-great	Amazing Source Code Related Easter Egg in Ex Machina	2015-06-23 08:24:14.777428	2015-06-23 08:24:23.474428	164
2138	9555536	https://shapeoftheweb.mozilla.org/trust/governmentSurveillance	Mozilla's page talking about privacy has Google analytics enabled	2015-06-23 08:23:18.399674	2015-06-23 08:23:19.810432	28
2147	9558854	http://projectgus.com/2015/05/inside-a-34-dollar-smartphone/	Inside a $34 smartphone	2015-06-23 08:24:11.875993	2015-06-23 08:24:14.735756	46
2139	9556208	http://blog.higg.so/2015/05/14/hacking-the-reptilian-brain-by-seizing-to-analyze-2/?4636	Stop overanalyzing and become the best version of oneself	2015-06-23 08:23:21.171173	2015-06-23 08:23:22.861014	36
2144	9557853	https://developer.mozilla.org/en-US/Firefox/Multiprocess_Firefox	Multiprocess Firefox	2015-06-23 08:23:48.13421	2015-06-23 08:23:48.868016	14
2151	9559731	http://opinionator.blogs.nytimes.com//2015/05/16/no-longer-wanting-to-die/	No Longer Wanting to Die	2015-06-23 08:24:31.617999	2015-06-23 08:24:38.318807	141
2136	9555295	https://medium.com/basic-income/self-driving-trucks-are-going-to-hit-us-like-a-human-driven-truck-b8507d9c5961	Self-Driving Trucks Are Going to Hit Us Like a Human-Driven Truck	2015-06-23 08:23:04.569761	2015-06-23 08:23:05.210129	12
2137	9555628	http://www.alexvking.com/12_inch_macbook_and_windows_10.html	Testing the 12-inch MacBook's Performance with Windows 10	2015-06-23 08:23:07.817117	2015-06-23 08:23:20.216888	223
2156	9560839	http://andrea.corbellini.name/2015/05/17/elliptic-curve-cryptography-a-gentle-introduction/	Elliptic Curve Cryptography: a gentle introduction	2015-06-23 08:24:49.374019	2015-06-23 08:24:52.526276	66
2160	9562484	http://www.nytimes.com/2015/05/18/world/asia/fake-diplomas-real-cash-pakistani-company-axact-reaps-millions-columbiana-barkley.html	Fake Diplomas, Real Cash: Pakistani Company Axact Reaps Millions	2015-06-23 08:25:12.422174	2015-06-23 08:25:16.23919	74
2164	9564122	http://googlecloudplatform.blogspot.com/2015/05/Introducing-Preemptible-VMs-a-new-class-of-compute-available-at-70-off-standard-pricing.html	Introducing Preemptible VMs – Available at 70% Off Standard Pricing	2015-06-23 08:25:43.368487	2015-06-23 08:26:00.339399	237
2143	9557727	http://www.cjr.org/analysis/seymour_hersh_osama_bin_laden.php	The media’s reaction to Seymour Hersh’s bin Laden scoop has been disgraceful	2015-06-23 08:23:41.738192	2015-06-23 08:24:02.526381	309
2163	9563529	http://xn--thibaud-dya.fr/robots.txt.html	What one may find in robots.txt	2015-06-23 08:25:34.133006	2015-06-23 08:25:43.330705	155
2135	9555057	https://rachelbythebay.com/w/2015/05/15/pmtud/	Filter all ICMP and watch the world burn	2015-06-23 08:22:49.523622	2015-06-23 08:23:23.633355	356
2134	9554721	https://github.com/julialang/julia/issues/8839	Julia issue #8839 closed (Jeff Bezanson PhD)	2015-06-23 08:22:47.001955	2015-06-23 08:22:49.369877	36
2142	9557298	http://lg.io/2015/05/16/the-future-is-now-and-its-using-aws-lambda.html	AWS Lambda as a back end for a single-page app	2015-06-23 08:23:36.630904	2015-06-23 08:23:48.092523	147
2154	9560790	http://trilema.com/2015/full-disclosure-4096-rsa-key-in-the-strongset-factored/	Today, a 4096 bit RSA was factored by the phuctor	2015-06-23 08:24:41.862523	2015-06-23 08:24:45.558747	73
2146	9558196	https://kore.io	Kore: a fast web server for writing web apps in C	2015-06-23 08:24:02.564455	2015-06-23 08:24:11.837884	183
2145	9558455	http://www.ceri.memphis.edu/people/smalley/ESCI7205F2009/misc_files/The_truth_about_Unix_cleaned.pdf	The truth about Unix: The user interface is horrid (1981) [pdf]	2015-06-23 08:23:58.785014	2015-06-23 08:24:02.934598	47
2153	9560255	http://www.newscombinator.com/2015-05-16	Hacker News Classifier and Categorizer	2015-06-23 08:24:38.815077	2015-06-23 08:24:38.858507	2
2152	9560270	http://dnf.baseurl.org/2015/05/11/yum-is-dead-long-live-dnf/	Yum is dead, long live DNF	2015-06-23 08:24:38.36794	2015-06-23 08:24:41.817671	69
2155	9560904	http://blog.visual6502.org/2014/10/atari-2600-simulation.html	Transistor-level simulation of the Atari 2600 (2014)	2015-06-23 08:24:45.603757	2015-06-23 08:24:49.330796	76
2149	9558976	http://grail.cs.washington.edu/projects/timelapse/	Time-Lapse Mining from Internet Photos	2015-06-23 08:24:23.516521	2015-06-23 08:24:25.538158	41
2159	9561920	https://blog.hboeck.de/archives/872-About-the-supposed-factoring-of-a-4096-bit-RSA-key.html	About the supposed factoring of a 4096 bit RSA key	2015-06-23 08:24:56.32371	2015-06-23 08:25:19.668169	377
2158	9561599	https://www.imperialviolet.org/2015/05/16/aeads.html	AEADs: getting better at symmetric cryptography	2015-06-23 08:24:53.218646	2015-06-23 08:24:56.270457	61
2162	9563109	http://docs.aws.amazon.com/AmazonS3/latest/dev/S3Torrent.html	All Amazon S3 buckets are also BitTorrent trackers	2015-06-23 08:25:23.142326	2015-06-23 08:25:34.061408	209
2167	9565218	http://www.upedu.org/papers/ICSE2015_OrganizationalFactors/LavalleeRobillard_ICSE2015_WhyGoodDevelopersWriteBadCode.pdf	Why Good Developers Write Bad Code: An Observational Case Study [pdf]	2015-06-23 08:25:57.522113	2015-06-23 08:26:00.239377	22
2166	9565503	https://lists.w3.org/Archives/Public/www-style/2014Jun/0312.html	Adding 'rebeccapurple' color to CSS Color Level 4	2015-06-23 08:25:55.479811	2015-06-23 08:25:56.902078	28
2165	9564281	http://www.antipope.org/charlie/blog-static/2015/05/thoughtcrime.html	Thoughtcrime	2015-06-23 08:25:45.378554	2015-06-23 08:25:46.806705	28
2168	9565849	https://blog.sandstorm.io/news/2015-05-18-sandcats.html	Sandcats.io: free dynamic DNS for Sandstorm users	2015-06-23 08:26:00.38378	2015-06-23 08:26:01.105689	14
2169	9565891	http://www.adriancourreges.com/blog/2015/03/10/deus-ex-human-revolution-graphics-study/	Deus Ex: Human Revolution – Graphics Study	2015-06-23 08:26:01.162795	2015-06-23 08:26:07.06026	90
2170	9566441	http://fishshell.com/	Fish is a smart and friendly shell for OS X, Linux and the rest of the family	2015-06-23 08:26:07.10757	2015-06-23 08:26:29.886416	332
2171	9567176	https://groups.google.com/forum/m/#!msg/golang-codereviews/m5QTnSUZU6c/Jc5yaMyF2_QJ	Crypto optimizations for Go from CloudFlare/Intel blocked by licensing issues	2015-06-23 08:26:13.446436	2015-06-23 08:26:15.410854	34
2202	9586515	http://www.jimseven.com/2015/05/21/an-analysis-of-nespresso-part-i/	An Analysis of Nespresso	2015-06-23 08:30:50.724563	2015-06-23 08:30:56.682776	89
2194	9579901	http://ejohn.org/blog/using-waifu2x-to-upscale-japanese-prints/	Using Waifu2x to Upscale Japanese Prints	2015-06-23 08:29:02.915913	2015-06-23 08:29:32.630139	438
2177	9569315	https://instant.io/#c6642b73cf82dc52b5d538fabfdf9c8e3d9e850f	Instant.io – Streaming file transfer over WebTorrent	2015-06-23 08:27:07.69474	2015-06-23 08:27:08.241273	12
2188	9576042	http://www.dotnetfoundation.org/blog/wcf-is-open-source	WCF is Open Source	2015-06-23 08:28:28.259938	2015-06-23 08:28:38.997517	213
2184	9573673	http://theamericanreader.com/the-sound-of-ted-a-case-for-distaste/	The Sound of TED: A Case for Distaste	2015-06-23 08:27:51.488831	2015-06-23 08:27:56.652619	78
2173	9567976	https://www.eff.org/deeplinks/2015/05/internetorg-not-neutral-not-secure-and-not-internet	Internet.org Is Not Neutral, Not Secure, and Not the Internet	2015-06-23 08:26:37.378115	2015-06-23 08:26:53.079003	290
2185	9574408	https://weakdh.org/	Logjam TLS attack	2015-06-23 08:27:56.714538	2015-06-23 08:28:10.860167	243
2174	9568778	http://popcorninyourbrowser.net	Popcorn (Time) in Your Browser	2015-06-23 08:26:53.128894	2015-06-23 08:27:00.128225	110
2187	9574953	http://harvardlawreview.org/2015/04/policing-mass-imprisonment-and-the-failure-of-american-lawyers/	Policing, Mass Imprisonment, and the Failure of American Lawyers	2015-06-23 08:28:16.897596	2015-06-23 08:28:28.218303	195
2172	9567761	https://aws.amazon.com/blogs/aws/look-before-you-leap-the-coming-leap-second-and-aws/	Look Before You Leap – The Coming Leap Second and AWS	2015-06-23 08:26:29.954794	2015-06-23 08:26:37.330463	123
2213	9592085	http://www.psychologicalscience.org/index.php/news/releases/self-promoters-tend-to-misjudge-how-annoying-they-are-to-others.html#.VV_dj_UtOHY.twitter	Self-Promoters Tend to Misjudge How Annoying They Are to Others	2015-06-23 08:32:12.267318	2015-06-23 08:32:13.038617	16
2176	9569077	http://translate.google.com/translate?hl=en&sl=de&u=http://www.spiegel.de/politik/ausland/airbus-a400m-militaermaschine-stuerzte-wegen-software-problemen-ab-a-1034421.html	A400M Airbus Flier crashed because of software issues	2015-06-23 08:27:00.619109	2015-06-23 08:27:07.652556	119
2175	9568904	https://coinado.io/	Coinado – cloud torrenting for command line fans	2015-06-23 08:27:00.190689	2015-06-23 08:27:00.567647	8
2183	9570713	http://www.damninteresting.com/who-wants-to-be-a-thousandaire/	Who Wants to Be a Thousandaire?	2015-06-23 08:27:49.958861	2015-06-23 08:27:51.329106	30
2180	9572008	https://www.kickstarter.com/projects/ascentaerosystems/sprite-the-portable-rugged-totally-different-small	Sprite: portable and rugged. A totally different drone	2015-06-23 08:27:28.704431	2015-06-23 08:27:30.962836	34
2181	9572427	http://www.woothemes.com/2015/05/woothemes-joins-automattic/	WooThemes joins Automattic	2015-06-23 08:27:31.296601	2015-06-23 08:27:49.924141	286
2178	9569758	http://www.slate.com/blogs/moneybox/2015/05/18/ftc_radioshack_consumer_privacy_letter_court_should_protect_people_s_data.html	RadioShack Sold Your Data to Pay Off Its Debts	2015-06-23 08:27:08.286285	2015-06-23 08:27:11.33728	46
2189	9576396	http://www.bbc.com/news/technology-32810280	PayPal penalised for 'deceptive' practices	2015-06-23 08:28:39.033518	2015-06-23 08:28:47.334281	100
2201	9584325	http://karpathy.github.io/2015/05/21/rnn-effectiveness/	The Unreasonable Effectiveness of Recurrent Neural Networks	2015-06-23 08:30:18.768576	2015-06-23 08:30:57.491637	642
2200	9583357	http://iem.easydns.com/link.php?M=1080600&N=201&L=181&F=H	Unfortunately, we have renewed our ICANN accreditation	2015-06-23 08:30:08.299398	2015-06-23 08:30:18.719028	209
2186	9574954	https://en.wikipedia.org/wiki/Norwegian_butter_crisis	Norwegian butter crisis (2011)	2015-06-23 08:28:10.92	2015-06-23 08:28:16.854829	111
2179	9569934	http://getyourshittogether.org/	Get Your Shit Together	2015-06-23 08:27:11.394909	2015-06-23 08:27:50.213864	289
2196	9581225	http://regexr.com/	RegExr: A website for interactive regex prototyping with syntax highlighting	2015-06-23 08:29:32.713889	2015-06-23 08:29:48.567328	267
2191	9577920	https://github.com/venomous0x/WhatsAPI	“I'm wiping this repository away”	2015-06-23 08:28:44.809718	2015-06-23 08:28:46.396331	24
2199	9582340	http://lwn.net/SubscriberLink/645020/e1ba36cff8248df0/	PostgreSQL: the good, the bad, and the ugly	2015-06-23 08:30:07.685078	2015-06-23 08:30:08.255798	14
2182	9572915	http://zachholman.com/posts/0x-engineers/	Just Don't Hire 0x Engineers	2015-06-23 08:27:35.596454	2015-06-23 08:27:37.60626	34
2190	9577861	https://noncombatant.org/2014/03/03/downloading-software-safely-is-nearly-impossible/	Downloading PuTTY Safely Is Nearly Impossible	2015-06-23 08:28:41.813172	2015-06-23 08:28:42.77482	16
2198	9582512	http://home.web.cern.ch/about/updates/2015/05/first-images-collisions-13-tev	First images of collisions at 13 TeV	2015-06-23 08:30:03.836181	2015-06-23 08:30:07.636318	60
2195	9580702	https://hackerone.com/news/legally-blind-and-deaf	Help Reform Computer Crime Laws	2015-06-23 08:29:27.44139	2015-06-23 08:29:27.53524	2
2203	9586913	http://famous.org/	New Famo.us	2015-06-23 08:30:57.539466	2015-06-23 08:31:09.869508	226
2204	9587362	http://www.geeksnack.com/2015/05/22/firefox-will-show-ads-based-on-your-browsing-history/	Firefox will show ads on the new tab page based on browsing history	2015-06-23 08:31:04.997517	2015-06-23 08:31:05.854213	20
2211	9591124	http://www.latimes.com/entertainment/arts/miranda/la-et-cam-five-reasons-why-palmyra-matters-as-archaeological-ruins-site-20150520-column.html	Why Palmyra's ruins are so important	2015-06-23 08:31:53.373871	2015-06-23 08:31:57.605737	40
2210	9591348	https://www.eff.org/deeplinks/2015/05/why-mitch-mcconnell-cannot-be-allowed-decide-fate-patriot-act	Why Mitch McConnell Cannot Be Allowed to Decide the Fate of the Patriot Act	2015-06-23 08:31:49.841596	2015-06-23 08:31:50.718458	16
2208	9590672	http://www.vox.com/2015/5/22/8639717/reid-hoffman-the-alliance	LinkedIn Founder Reid Hoffman on the biggest lie employers tell employees	2015-06-23 08:31:40.298596	2015-06-23 08:31:46.569364	125
2206	9587947	http://www.thedailybeast.com/articles/2015/05/21/uber-disability-laws-don-t-apply-to-us.html	Uber: Disability Laws Don’t Apply to Us	2015-06-23 08:31:15.372804	2015-06-23 08:31:15.694526	8
2209	9590694	http://www.mrmoneymustache.com/2015/05/20/what-im-teaching-my-son-about-money/	What I’m Teaching my Son about Money	2015-06-23 08:31:46.624438	2015-06-23 08:31:46.678157	2
2193	9578440	http://www.idlewords.com/2015/05/ta_izz.htm	Ta'izz	2015-06-23 08:28:48.926036	2015-06-23 08:29:02.872249	179
2192	9577799	http://www.keybr.com/#!game	Improve your touch typing	2015-06-23 08:28:47.370583	2015-06-23 08:28:54.142932	60
2207	9588128	http://data.jobsintech.io	Show HN: Visa Explorer – Salaries, lawyers, companies of all H-1B in the USA	2015-06-23 08:31:17.120506	2015-06-23 08:32:01.069938	614
2197	9581862	http://yourdatafitsinram.com/	Your data fits in RAM	2015-06-23 08:29:48.609912	2015-06-23 08:30:03.773906	223
2205	9587627	https://philipwalton.github.io/solved-by-flexbox/	Solved by Flexbox	2015-06-23 08:31:09.915733	2015-06-23 08:31:17.077428	124
2212	9591739	http://www.scottaaronson.com/blog/?p=2293	NSA in P/poly: The Power of Precomputation	2015-06-23 08:32:01.115461	2015-06-23 08:32:25.648535	482
2214	9592493	https://thehacktimes.com/jonathan-james-and-aaron-swartz-two-obituaries-one-prosecutor/	Jonathan James and Aaron Swartz-Two Obituaries One Prosecutor 	2015-06-23 08:32:25.093128	2015-06-23 08:32:25.567654	6
2215	9592588	http://therealnews.com/t2/index.php?option=com_content&task=view&id=31&Itemid=74&jumival=13889	Five Big Banks Plead Guilty to Rigging Currency Markets and No One Goes to Jail	2015-06-23 08:32:25.690952	2015-06-23 08:32:35.759193	181
2230	9598210	https://ricochet.im/	Ricochet: An encrypted, anonymous IM client built on Tor hidden services	2015-06-23 08:34:41.042895	2015-06-23 08:34:49.207695	125
2231	9598674	http://www.aminariana.com/essays/million-dollar-handcuffs	What kind of jobs do the software engineers who earn $500K a year do?	2015-06-23 08:34:41.4055	2015-06-23 08:34:41.883725	12
2239	9601330	http://www.dell.com/support/article/us/en/04/SLN151664/en	Dell Publishes a Manual About: How to Install Ubuntu Linux on Your Dell PC	2015-06-23 08:35:33.173807	2015-06-23 08:35:34.375967	24
2227	9596841	http://shakycode.com/post/119775920434/losing-it-all	I Was Once a Homeless IT Guy	2015-06-23 08:34:05.110289	2015-06-23 08:34:05.537917	8
2243	9602957	https://rjlipton.wordpress.com/2015/05/25/john-and-alicia-nash-19281933-2015/	John and Alicia Nash, 1928,1933-2015	2015-06-23 08:36:12.925604	2015-06-23 08:36:13.99356	22
2226	9596268	https://www.nsa.gov/public_info/_files/nash_letters/nash_letters1.pdf	John Nash's 1955 letter to the NSA [pdf]	2015-06-23 08:34:03.597901	2015-06-23 08:34:05.622575	36
2235	9599722	http://benashford.github.io/blog/2015/05/24/rust-traits-for-developer-friendly-libraries/	Rust traits for developer friendly libraries	2015-06-23 08:35:20.22723	2015-06-23 08:35:20.852247	14
2218	9593085	https://medium.com/how-we-get-to-next/i-let-ibm-s-robot-chef-tell-me-what-to-cook-for-a-week-d881fc884748	I Let IBM’s Watson Tell Me What to Cook for a Week	2015-06-23 08:32:38.895127	2015-06-23 08:32:50.368834	209
2220	9594158	http://monica-at-mozilla.blogspot.com/2015/05/tracking-protection-for-firefox-at-web.html	Firefox tracking protection decreases page load time by 44%	2015-06-23 08:32:54.92992	2015-06-23 08:33:28.153934	619
2233	9599243	http://arstechnica.co.uk/tech-policy/2015/05/eu-dropped-plans-for-safer-pesticides-because-of-ttip-and-pressure-from-us/	EU dropped plans for safer pesticides because of TTIP and pressure from US	2015-06-23 08:34:58.333347	2015-06-23 08:35:15.791112	310
2224	9596160	http://www.nj.com/middlesex/index.ssf/2015/05/famed_a_beautiful_mind_mathematician_wife_killed_in_taxi_crash_police_say.html	John Nash Killed in Taxi Accident	2015-06-23 08:33:49.683958	2015-06-23 08:34:40.997944	710
2241	9603296	http://www.arabianbusiness.com/steve-wozniak-us-would-look-like-dubai-if-it-didn-t-spend-all-its-money-on-military--593703.html#.VWQXZ89VhBe	Woz on Snowden: "Total hero to me; total hero"	2015-06-23 08:36:11.424186	2015-06-23 08:36:11.738449	6
2252	9606345	http://www.washingtonpost.com/posteverything/wp/2015/05/26/powerpoint-should-be-banned-this-powerpoint-presentation-explains-why/?tid=pm_pop_b	Why PowerPoint should be banned	2015-06-23 08:36:45.86671	2015-06-23 08:36:51.67889	96
2238	9600015	http://www.unhappybirthday.com/	Unhappy Birthday	2015-06-23 08:35:30.145522	2015-06-23 08:36:11.865001	277
2223	9596033	http://www.economist.com/news/finance-and-economics/21651897-replacing-welfare-payments-basic-income-all-alluring	Replacing welfare payments with “basic income” for all is alluring, but expensive	2015-06-23 08:33:47.114896	2015-06-23 08:33:49.170356	40
2221	9595439	http://jackschaedler.github.io/circles-sines-signals/	Seeing Circles, Sines and Signals – A DSP Primer	2015-06-23 08:33:27.69812	2015-06-23 08:33:31.011415	51
2228	9598261	http://www.washingtonpost.com/blogs/the-fix/wp/2015/05/18/heres-how-much-of-your-life-the-united-states-has-been-at-war/	Here’s how much of your life the United States has been at war	2015-06-23 08:34:28.657202	2015-06-23 08:34:30.062904	26
2234	9599903	https://dolphin-emu.org/blog/2015/05/25/relicensing-dolphin/	Relicensing Dolphin: The long road to GPLv2+	2015-06-23 08:35:15.828242	2015-06-23 08:35:20.053384	76
2229	9597873	http://www.latimes.com/nation/la-na-nsa-tracking-program-20150523-story.html	After Senate vote, NSA prepares to shut down phone tracking program	2015-06-23 08:34:34.477666	2015-06-23 08:34:40.366009	94
2244	9602868	http://ascii.textfiles.com/archives/4636	The Backing Up of the Internet Archive Continues	2015-06-23 08:36:14.034616	2015-06-23 08:36:19.401009	110
2225	9596688	http://benlog.com/2015/05/23/the-responsibility-we-have-as-software-engineers/	The responsibility we have as software engineers	2015-06-23 08:34:00.096491	2015-06-23 08:34:03.555253	62
2222	9595579	http://play.rust-lang.org/	Play.rust-lang.org	2015-06-23 08:33:31.058026	2015-06-23 08:33:49.648891	283
2240	9602092	http://feinternational.com/buy-a-website/3745-software-business-in-education-niche-25k-gross-mo	Patio11's BingoCardCreator.com Sale Page	2015-06-23 08:35:44.27869	2015-06-23 08:36:08.284394	413
2242	9602055	http://spw15.langsec.org/papers/couprie-nom.pdf	Nom, a byte oriented, streaming, zero copy, parser combinators library in Rust [pdf]	2015-06-23 08:36:11.925997	2015-06-23 08:36:12.782627	15
2249	9604049	http://qz.com/411330/the-mystery-of-the-power-bank-phone-taking-over-ghana/	The mystery of the power bank phone taking over Ghana	2015-06-23 08:36:36.738079	2015-06-23 08:36:43.601863	110
2247	9603845	http://www.quirksmode.org/blog/archives/2015/05/web_vs_native_l.html	Web vs. native: let’s concede defeat	2015-06-23 08:36:22.61262	2015-06-23 08:36:27.962643	105
2232	9598972	http://typedetail.com/san-francisco.html	Show HN: Typedetail.com – featuring Apple's new typeface San Francisco	2015-06-23 08:34:49.300281	2015-06-23 08:34:58.293298	124
2219	9593916	https://gist.github.com/tqbf/be58d2d39690c3b366ad	Cryptographic Right Answers	2015-06-23 08:32:50.416404	2015-06-23 08:32:54.88297	85
2237	9600906	http://www.theguardian.com/technology/2015/may/25/philip-zimmermann-king-encryption-reveals-fears-privacy	Philip Zimmermann's fears for privacy	2015-06-23 08:35:28.544771	2015-06-23 08:35:29.786432	6
2251	9606001	http://news.yahoo.com/ultra-fast-hyperloop-train-gets-test-track-california-130857490.html	Hyperloop Gets Test Track in California	2015-06-23 08:36:43.649071	2015-06-23 08:36:45.827763	46
2236	9600364	http://jsemu.github.io/gba/	JavaScript GameBoy Advance Emulator	2015-06-23 08:35:20.899748	2015-06-23 08:35:30.072835	162
2248	9604203	http://jsblocks.com	Show HN: I Built Isomorphic JavaScript Framework Faster Than React	2015-06-23 08:36:27.660615	2015-06-23 08:36:36.59073	176
2245	9602954	http://www.bbc.com/earth/story/20150525-a-black-hole-would-clone-you	The strange fate of a person falling into a black hole	2015-06-23 08:36:19.011736	2015-06-23 08:36:21.913671	54
2250	9605262	http://blog.thecybershadow.net/2015/05/25/one-year-with-the-truly-ergonomic-keyboard/	One year with the Truly Ergonomic keyboard	2015-06-23 08:36:39.016155	2015-06-23 08:36:39.425927	10
2246	9603447	http://www.bbc.co.uk/news/magazine-32829232	Why do people waste so much time at work?	2015-06-23 08:36:21.777285	2015-06-23 08:36:22.556049	14
2254	9607911	http://www.nytimes.com/2015/05/27/business/media/vox-media-acquiring-recode.html?smid=tw-share	Vox Media Acquiring ReCode	2015-06-23 08:37:00.12133	2015-06-23 08:37:14.076136	266
2253	9606586	http://google-opensource.blogspot.com/2015/05/roboto-googles-signature-font-is-now.html	Roboto: Google’s signature font is now open source	2015-06-23 08:36:51.824093	2015-06-23 08:36:59.956851	133
2255	9608945	http://ascii.textfiles.com/archives/4641	MAME and the New Emulation Reality	2015-06-23 08:37:14.1188	2015-06-23 08:37:18.048798	78
2256	9609019	http://talks.golang.org/2015/state-of-go-may.slide#1	The State of Go	2015-06-23 08:37:18.094138	2015-06-23 08:37:19.392159	24
2257	9609230	http://talks.golang.org/2015/gogo.slide	Go in Go	2015-06-23 08:37:19.434399	2015-06-23 08:37:37.601519	304
2259	9610509	http://www.stavros.io/posts/irotary-saga/	Show HN: I converted an old rotary phone into a mobile phone	2015-06-23 08:37:49.929296	2015-06-23 08:37:56.679125	108
2258	9609955	http://lucumr.pocoo.org/2015/5/27/rust-for-pythonistas/	Rust for Python Programmers	2015-06-23 08:37:37.245607	2015-06-23 08:37:50.842449	185
2260	9611074	http://lwn.net/Articles/645862/rss	The end for Mandriva	2015-06-23 08:37:56.725961	2015-06-23 08:37:58.847423	42
2281	9622325	https://hyper.sh/	Announcing Hyper – The hypervisor-based Docker engine	2015-06-23 08:40:03.339898	2015-06-23 08:40:05.071153	35
2282	9622711	http://dearairbnb.tumblr.com/post/120063930038/i-am-homeless-because-of-airbnbs-xxx-freak-fest	Dear AirBNB, No Thank You for the XXX Freak Fest	2015-06-23 08:40:07.112842	2015-06-23 08:40:08.291804	26
2267	9615498	http://www.lapresse.ca/actualites/justice-et-affaires-criminelles/actualites-judiciaires/201505/26/01-4872822-saisie-chez-uber-des-donnees-auraient-ete-modifiees-a-distance.php	Uber Tries to Remotely Encrypt Corporate Data During Government Raid	2015-06-23 08:38:36.391659	2015-06-23 08:38:37.020941	16
2292	9628983	http://www.slate.com/articles/life/drink/2011/11/why_you_should_be_drinking_cheap_wine.html?wpsrc=fol_fb	Drink Cheap Wine	2015-06-23 08:41:33.905238	2015-06-23 08:41:38.184917	59
2277	9618672	http://www.amazon.com/b/ref=br_imp_ara-1?_encoding=UTF8&node=8729023011&pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-hero-A&pf_rd_r=17G0FQ73T3JJQA2N0T74&pf_rd_t=36701&pf_rd_p=2097006022&pf_rd_i=desktop	Amazon launches same day delivery for Prime customers	2015-06-23 08:39:27.695761	2015-06-23 08:39:29.643297	35
2262	9614128	http://lwn.net/Articles/646160	White House Sides with Oracle, Tells Supreme Court APIs Are Copyrightable	2015-06-23 08:38:21.251929	2015-06-23 08:38:21.557824	8
2276	9617710	http://www.npr.org/sections/money/2010/10/04/130329523/how-fake-money-saved-brazil	How Currency Abstraction Stopped Runaway Inflation in Brazil	2015-06-23 08:39:24.425583	2015-06-23 08:39:28.927694	62
2284	9623142	http://helb.github.io/goodbye-sourceforge/	Goodbye, Sourceforge	2015-06-23 08:40:17.057243	2015-06-23 08:40:17.283995	6
2279	9619367	http://www.reuters.com/article/2015/05/28/us-broadcom-m-a-avago-idUSKBN0OD18120150528	Avago to buy Broadcom for $37B in biggest-ever chip deal	2015-06-23 08:39:32.203928	2015-06-23 08:39:36.104015	86
2265	9614993	https://8ch.net/hola.html	Hola VPN turns 10M users into exit nodes	2015-06-23 08:38:31.120355	2015-06-23 08:38:31.476755	10
2266	9614226	http://opinionator.blogs.nytimes.com/2015/05/27/surviving-an-alcoholic/	Surviving an Alcoholic	2015-06-23 08:38:31.520696	2015-06-23 08:38:31.563427	2
2290	9628416	https://support.twitter.com/articles/20172069	We are only collecting the list of applications you have installed	2015-06-23 08:41:20.410437	2015-06-23 08:41:29.322635	126
2268	9615771	http://www.foxbusiness.com/technology/2015/05/27/what-heck-happened-to-google/	What the Heck Happened to Google?	2015-06-23 08:38:42.410512	2015-06-23 08:38:42.977696	10
2263	9614425	http://www.nytimes.com/2015/05/28/us/nebraska-abolishes-death-penalty.html	Nebraska Abolishes Death Penalty	2015-06-23 08:38:24.986786	2015-06-23 08:38:25.734753	12
2291	9628682	item?id=9628682	Ask HN: I Have Cancer. What Should I Do?	2015-06-23 08:41:29.372761	2015-06-23 08:41:32.375308	42
2273	9616810	http://hackershelf.com/browse/?popular=1	The Hacker Shelf: Collection of free books for the intellectually curious	2015-06-23 08:39:06.627487	2015-06-23 08:39:15.201044	159
2285	9623281	https://www.youtube.com/watch?v=_luhn7TLfWU	MIT cheetah robot lands the running jump [video]	2015-06-23 08:40:21.900188	2015-06-23 08:40:25.027325	49
2264	9613797	http://www.engadget.com/2015/05/27/pebble-time-review/	Pebble Time review: an underdog among smartwatches	2015-06-23 08:38:25.795454	2015-06-23 08:38:49.603628	369
2271	9616356	https://medium.com/working-life/why-should-we-support-the-idea-of-an-unconditional-basic-income-8a2680c73dd3	Why Should We Support the Idea of an Unconditional Basic Income?	2015-06-23 08:38:56.900638	2015-06-23 08:38:59.56557	47
2274	9616946	http://www.thepinchandzoom.com/blog/2015/5/14/facebook-stop	When will we stop using Facebook?	2015-06-23 08:39:15.254255	2015-06-23 08:39:15.399686	4
2278	9618827	http://www.nytimes.com/interactive/2015/05/28/upshot/you-draw-it-how-family-income-affects-childrens-college-chances.html	You Draw It: How Family Income Affects College Chances	2015-06-23 08:39:29.693578	2015-06-23 08:39:32.157404	56
2270	9616034	https://docs.google.com/document/d/1HDLRa6vKpclO1JtxbGB5NeAYWf8cf1UMGy22o8OZZq4	Accounting for Developers	2015-06-23 08:38:53.561662	2015-06-23 08:39:06.021887	154
2289	9626985	http://www.nytimes.com/2015/05/30/nyregion/ross-ulbricht-creator-of-silk-road-website-is-sentenced-to-life-in-prison.html	Ross Ulbricht, Creator of Silk Road Website, Is Sentenced to Life in Prison	2015-06-23 08:40:58.454899	2015-06-23 08:41:00.678812	32
2293	9628967	http://adage.com/article/digital/inside-google-s-secret-war-ad-fraud/298652/	Inside Google's Secret War Against Ad Fraud	2015-06-23 08:41:38.237778	2015-06-23 08:41:41.151651	30
2269	9615868	http://manishearth.github.io/blog/2015/05/28/github-streak-end-game-and-post-mortem/	GitHub streak: End-game and post-mortem	2015-06-23 08:38:49.681244	2015-06-23 08:38:52.549469	46
2275	9617285	https://sourceforge.net/blog/gimp-win-project-wasnt-hijacked-just-abandoned/	GIMP-Win project wasn’t hijacked, just abandoned – SourceForge Community Blog	2015-06-23 08:39:15.439424	2015-06-23 08:39:24.377242	164
2283	9622949	http://luckypeach.com/a-guide-to-the-regional-ramen-of-japan/	A Guide to the Regional Ramen of Japan	2015-06-23 08:40:11.347119	2015-06-23 08:40:21.854193	182
2296	9629797	http://chem.tufts.edu/answersinscience/relativityofwrong.htm	Isaac Asimov: The Relativity of Wrong (1989)	2015-06-23 08:42:07.514288	2015-06-23 08:42:08.923352	24
2272	9616583	http://submit.co	Submit.co – Where to get press coverage for your startup	2015-06-23 08:39:06.070961	2015-06-23 08:39:06.590481	12
2280	9620224	http://www.google.com/get/cardboard/jump/	Google – Jump	2015-06-23 08:39:36.152306	2015-06-23 08:40:11.290427	615
2286	9623609	http://www.mattkeeter.com/projects/antimony/3/	Antimony – A fresh look at CAD software	2015-06-23 08:40:25.068056	2015-06-23 08:40:41.928189	297
2294	9629466	http://en.wikipedia.org/wiki/Lojban	Lojban	2015-06-23 08:41:55.391925	2015-06-23 08:42:06.585156	74
2288	9625840	http://blog.printf.net/articles/2015/05/29/announcing-gittorrent-a-decentralized-github/	GitTorrent: A Decentralized GitHub	2015-06-23 08:40:48.924821	2015-06-23 08:42:07.457408	833
2287	9624673	https://percy.io/	Show HN: Percy.io, a continuous visual integration tool	2015-06-23 08:40:41.981007	2015-06-23 08:40:48.883974	130
2295	9629461	https://lkml.org/lkml/2012/7/11/103	Humans should think of sizeof() as a function, says Linus Torvalds	2015-06-23 08:42:03.596184	2015-06-23 08:42:03.994224	10
2299	9630873	https://rocketeer.be/blog/2015/05/google-photos/	Google Photos – Can I get out?	2015-06-23 08:42:26.122343	2015-06-23 08:42:28.356778	44
2300	9631598	http://www.latimes.com/business/la-fi-hy-musk-subsidies-20150531-story.html	Elon Musk's growing empire is fueled by government subsidies	2015-06-23 08:42:33.022644	2015-06-23 08:42:33.560391	8
2301	9631595	http://www.gnu.org/software/octave/NEWS-4.0.html	GNU Octave 4.0 released with a new GUI	2015-06-23 08:42:37.949942	2015-06-23 08:42:40.369922	28
2297	9629979	http://dns.js.org/	JS.org Sub-Domains for GitHub Pages	2015-06-23 08:42:08.982131	2015-06-23 08:42:14.86814	94
2298	9630335	http://blog.viraptor.info/post/i-wrote-a-website-in-rust-and-lived-to-tell-the-tale	I wrote a website in Rust and lived to tell the tale	2015-06-23 08:42:15.08028	2015-06-23 08:42:41.204336	301
2303	9631810	http://www.melconway.com/Home/Conways_Law.html	Conway's Law	2015-06-23 08:42:48.649758	2015-06-23 08:42:48.729988	2
2302	9631773	http://www.independent.co.uk/news/world/europe/italian-boy-survives-being-trapped-underwater-for-42-minutes-10280563.html	Italian boy survives being trapped underwater for 42 minutes	2015-06-23 08:42:41.302237	2015-06-23 08:43:03.422935	266
2305	9633960	http://www2.lib.uchicago.edu/keith/ocaml-class/home.html	OCaml for the Skeptical	2015-06-23 08:43:43.014397	2015-06-23 08:43:45.741763	36
2304	9632604	http://www.exquisitetweets.com/tweets?eids=SOlZp2L8I8.SOl4CsO6YC.SOmhNAiuES.SOmlJ2T2Gq.SOmpjeGn1w.SOmwta15gX.SOmB4207kO.SOmJPgkOFU.SOmOl1j08a.SOmW0jPTRA.SOm72fKFfE.SOncwNl2SP.SOnlkgH05k.SOntnuAhGw.SOqg0uZR8K.SOqkXGJtbU.SOqrXBJruS	LEGO Universe's Dong Detection Problem	2015-06-23 08:42:59.807979	2015-06-23 08:43:42.925892	648
2314	10913358	https://www.youtube.com/watch?v=s7WyhlRetU0	The Amiga Demoscene Mixtape Vol. 1 [video]	2016-01-16 01:12:02.621224	2016-01-16 02:27:01.87334	59
2317	10914359	http://www.bbc.com/news/blogs-news-from-elsewhere-35323237	Japan: Tardigrade reproduces after 30 years on ice	2016-01-16 06:51:49.481276	2016-01-16 07:02:23.513997	9
2306	9800230	http://techcrunch.com/2015/06/29/new-wikileaks-documents-reveal-nsa-spied-on-top-french-companies/	New WikiLeaks Documents Reveal NSA Spied on Top French Companies	2015-06-29 20:45:03.065075	2015-06-29 20:59:05.061197	15
2308	10910455	https://github.com/thank-you-github/thank-you-github	An open letter of gratitude to GitHub	2016-01-15 17:36:02.954706	2016-01-15 18:34:01.474108	43
2307	9861793	http://www.wsj.com/articles/moxie-marlinspike-the-coder-who-encrypted-your-texts-1436486274	The Coder Who Encrypted Your Texts	2015-07-10 05:51:03.379467	2015-07-10 05:54:01.614728	4
2311	10912225	https://www.google.com/finance?q=NASDAQ%3AETSY&ei=LWGZVoHMOtSSUMmBn6gL	Etsy stock has lost 76% of its value in 9 months	2016-01-15 22:47:02.50203	2016-01-15 23:13:01.307153	22
2310	10911066	http://blog.samaltman.com/before-growth	Before Growth	2016-01-15 18:35:04.830984	2016-01-16 01:29:01.602824	95
2309	10909886	http://avc.com/2016/01/bitcoin-is-dead-long-live-bitcoin/	Bitcoin is dead long live Bitcoin	2016-01-15 18:12:04.189293	2016-01-15 18:27:02.040806	16
2315	10913726	http://blogger.ghostweather.com/2016/01/teaching-semester-of-d3js.html	Teaching a Semester of D3.js	2016-01-16 03:13:57.470629	2016-01-16 06:50:46.514599	191
2312	10912880	http://priceonomics.com/how-police-officers-seize-cash-from-innocent/	How Police Officers Seize Cash from Innocent Americans	2016-01-15 23:14:02.543523	2016-01-16 00:13:01.432828	60
2316	10914021	http://arches.io/2016/01/hire-literally-anyone/	Hire Literally Anyone	2016-01-16 05:20:59.35789	2016-01-16 05:20:59.35789	1
2313	10912945	http://www.economist.com/news/business/21688390-glamorous-tech-startups-can-be-brutal-places-workers-other-side-paradise?fsrc=rss	Free food and misery: the life of a techie	2016-01-16 00:14:02.590686	2016-01-16 00:14:02.590686	1
2319	10914779	https://hintjens.gitbooks.io/scalable-c/content/preface.html	Scalable C – Writing Large-Scale Distributed C	2016-01-16 10:18:42.364563	2016-01-16 15:20:55.197816	66
2318	10914519	http://makezine.com/2016/01/15/electronics-that-last-how-i-built-an-heirloom-laptop/	Electronics That Last: How I Built an Heirloom Laptop	2016-01-16 07:03:23.980589	2016-01-16 10:19:40.559653	104
2321	10915268	https://akrzemi1.wordpress.com/2016/01/16/a-customizable-framework/	A customizable C++ framework	2016-01-16 15:58:57.335531	2016-01-16 16:12:56.159268	14
2320	10915044	https://github.com/NetBSDfr/sailor	Sailor, a native and portable container system for NetBSD and Mac OS X	2016-01-16 15:21:56.530752	2016-01-16 15:57:55.291305	37
2322	10915382	https://maikklein.github.io/2015/11/14/Converting-strings-to-types/	Type safe OpenGL – Converting strings into types in D	2016-01-16 16:09:57.86882	2016-01-16 16:37:55.484712	26
2340	10961355	https://github.com/dcunited001/mri-scans	MRI Scans of a person's brain	2016-01-24 03:57:37.18537	2016-01-24 09:19:02.159765	315
2329	10919623	http://blog.waleson.com/2016/01/parsing-10tb-of-metadata-26m-domains.html	Parsing 10TB of Metadata, 26M Domain Names and 1.4M SSL Certs for $10 on AWS	2016-01-17 18:02:04.800791	2016-01-17 18:52:03.651794	51
2333	10922527	https://www.oxfam.org/en/pressroom/pressreleases/2015-01-19/richest-1-will-own-more-all-rest-2016	Richest 1% will own more than all the rest by 2016	2016-01-18 05:10:46.344098	2016-01-18 05:15:45.20788	6
2349	10977786	http://www.spoon-tamago.com/2013/05/28/tatsuo-horiuchi-excel-spreadsheet-artist/	Tatsuo Horiuchi: The 73-year old Excel spreadsheet artist (2013)	2016-01-27 03:00:43.468341	2016-01-27 03:44:07.393658	37
2334	10922748	https://gist.github.com/roddds/a1f42bae598028ac7809	Adobe tries strong-arming customer into keeping Creative Cloud	2016-01-18 06:27:47.842708	2016-01-18 07:06:45.351144	40
2341	10961984	http://www.theatlantic.com/technology/archive/2016/01/pendulum-clock-john-harrison/424614/?single_page=true	Building an Impossible Clock	2016-01-24 09:20:03.183771	2016-01-24 09:58:47.394476	39
2335	10957762	http://www.reuters.com/article/us-philips-lumileds-sale-idUSKCN0V02D4	U.S. blocks Philips' $3.3B sale of Lumileds to Asian buyers	2016-01-23 10:13:54.314274	2016-01-23 10:54:40.05145	36
2327	10917403	http://www.nytimes.com/2016/01/17/world/middleeast/iran-sanctions-lifted-nuclear-deal.html?hp&action=click&pgtype=Homepage&clickSource=story-heading&module=a-lede-package-region&region=top-news&WT.nav=top-news&_r=0	Iran Complies with Nuclear Deal; Sanctions Are Lifted	2016-01-16 23:53:03.845053	2016-01-17 00:15:01.601287	23
2339	10959193	http://www.threadbase.com/unravelled	T-Shirts Unravelled	2016-01-23 18:06:54.64147	2016-01-24 03:56:46.66042	586
2337	10959046	https://www.washingtonpost.com/politics/michael-bloomberg-considers-a-presidential-run/2016/01/23/1a0f4176-c1ee-11e5-bcda-62a36b394160_story.html	Michael Bloomberg considers an independent presidential run	2016-01-23 17:43:54.67483	2016-01-23 17:56:53.311662	14
2325	10915735	https://blog.thiago.me/raspberry-pi-bare-metal-programming-with-rust/	Raspberry Pi Bare Metal Programming with Rust	2016-01-16 17:15:56.85509	2016-01-16 23:52:02.327355	114
2332	10921365	https://medium.com/@karppinen/how-i-ended-up-paying-150-for-a-single-60gb-download-from-amazon-glacier-6cb77b288c3e#.w582hjycu	I ended up paying $150 for a single 60GB download from Amazon Glacier	2016-01-17 23:13:14.445797	2016-01-18 10:07:41.692097	579
2330	10920290	http://thinkingmachines.mit.edu/blog/unreasonable-reputation-neural-networks	The Unreasonable Reputation of Neural Networks	2016-01-17 18:53:05.16601	2016-01-17 23:12:13.290161	31
2328	10917446	http://paulgraham.com/vb.html	Life is Short	2016-01-17 00:16:02.796123	2016-01-17 10:07:03.914826	439
2346	10963568	https://medium.com/@espringe/amazon-s-customer-service-backdoor-be375b3428c4#.lqxcfockn	Amazon's customer service backdoor	2016-01-25 01:23:30.179238	2016-01-25 10:22:06.844951	252
2323	10915506	http://www.loansafe.org/iceland-sentences-26-corrupt-bankers-to-74-years-in-prison	Iceland Sentences 26 Corrupt Bankers to 74 Years in Prison	2016-01-16 16:38:56.813325	2016-01-16 17:09:55.438035	32
2336	10957794	http://www.nybooks.com/articles/2016/02/11/europe-verge-collapse-interview/	The EU Is on the Verge of Collapse–An Interview with George Soros	2016-01-23 10:47:41.734261	2016-01-23 11:01:40.117761	11
2326	10916704	http://www.theguardian.com/uk-news/2016/jan/16/the-tube-at-a-standstill-why-tfl-stopped-people-walking-up-the-escalators	Why London Underground stopped people walking up the escalators	2016-01-16 21:30:07.886272	2016-01-16 23:33:01.578017	91
2324	10915761	https://ipalyzer.com	Show HN: IPalyzer – Analyze any IP for location, RDNS, blacklisting	2016-01-16 17:10:57.11919	2016-01-16 17:14:56.476758	5
2342	10961513	http://www.attn.com/stories/5314/virginia-tech-flint-water-crisis	Virginia Tech Professor Spent $147k to Help Uncover the Flint Water Scandal	2016-01-24 15:48:03.337947	2016-01-24 17:48:02.708085	121
2343	10963069	http://www.nytimes.com/2016/01/24/opinion/sunday/a-drug-to-cure-fear.html?_r=0	A Drug to Cure Fear	2016-01-24 17:49:04.254612	2016-01-24 17:50:02.556476	2
2338	10958186	http://include-what-you-use.org/	Include-what-you-use: clang tool to analyze #includes in C and C++ source files	2016-01-23 17:57:55.088697	2016-01-23 18:05:53.43601	9
2331	10920385	https://www.readthetpp.com/	Read the TPP	2016-01-17 18:54:04.148439	2016-01-17 20:08:04.095296	75
2347	10965124	https://github.com/kragniz/json-sempai/tree/master	Use JSON files as if they are python modules	2016-01-25 03:06:30.970445	2016-01-25 06:54:35.820018	192
2350	10977819	http://voxelcss.com/	Voxel.css	2016-01-27 05:09:06.481584	2016-01-27 05:57:46.720186	48
2344	10963809	http://www.pipeline.com/~hbaker1/	Henry Baker's Archive of Research Papers	2016-01-24 21:27:02.688104	2016-01-24 22:00:24.196718	30
2348	10976737	http://joearms.github.io/2016/01/28/A-Badass-Way-To-Connect-Programs-Together.html	A Badass Way to Connect Programs Together	2016-01-27 01:42:04.621908	2016-01-27 02:59:36.376708	74
2345	10964192	https://github.com/visualfc/goqt	GoQt	2016-01-24 22:01:25.430343	2016-01-25 01:22:28.598357	177
2351	11287540	https://github.com/ageitgey/amplify	Show HN: Using Google AMP to build a Medium-style Jekyll site that loads in 65ms	2016-03-15 05:29:04.257042	2016-03-15 05:32:02.428011	4
\.


--
-- Name: stories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hndev
--

SELECT pg_catalog.setval('stories_id_seq', 2351, true);


--
-- Data for Name: top_hits; Type: TABLE DATA; Schema: public; Owner: hndev
--

COPY top_hits (id, story_id, date_seen, created_at, updated_at) FROM stdin;
1	1	2014-10-14 22:38:00	2015-06-18 00:19:32.741281	2015-06-18 00:19:32.741281
2	2	2014-10-14 22:43:00	2015-06-18 00:19:32.933586	2015-06-18 00:19:32.933586
3	3	2014-10-15 05:57:00	2015-06-18 00:19:48.197831	2015-06-18 00:19:48.197831
4	4	2014-10-15 06:09:00	2015-06-18 00:19:48.7002	2015-06-18 00:19:48.7002
5	3	2014-10-15 06:30:00	2015-06-18 00:19:49.553503	2015-06-18 00:19:49.553503
6	5	2014-10-15 07:46:00	2015-06-18 00:19:51.658705	2015-06-18 00:19:51.658705
7	3	2014-10-15 07:48:00	2015-06-18 00:19:51.712604	2015-06-18 00:19:51.712604
8	6	2014-10-15 08:25:00	2015-06-18 00:19:52.853614	2015-06-18 00:19:52.853614
9	7	2014-10-15 12:43:00	2015-06-18 00:20:02.008722	2015-06-18 00:20:02.008722
10	8	2014-10-15 13:45:00	2015-06-18 00:20:03.810513	2015-06-18 00:20:03.810513
11	9	2014-10-15 15:11:00	2015-06-18 00:20:06.1748	2015-06-18 00:20:06.1748
12	8	2014-10-15 15:25:00	2015-06-18 00:20:06.52817	2015-06-18 00:20:06.52817
13	10	2014-10-15 16:19:00	2015-06-18 00:20:07.829155	2015-06-18 00:20:07.829155
14	11	2014-10-15 21:23:00	2015-06-18 00:20:15.853757	2015-06-18 00:20:15.853757
15	10	2014-10-15 21:36:00	2015-06-18 00:20:16.145407	2015-06-18 00:20:16.145407
16	12	2014-10-16 00:34:00	2015-06-18 00:20:20.734869	2015-06-18 00:20:20.734869
17	13	2014-10-16 06:39:00	2015-06-18 00:20:30.808417	2015-06-18 00:20:30.808417
18	14	2014-10-16 10:00:00	2015-06-18 00:20:36.202276	2015-06-18 00:20:36.202276
19	15	2014-10-16 12:22:00	2015-06-18 00:20:40.320925	2015-06-18 00:20:40.320925
20	14	2014-10-16 12:26:00	2015-06-18 00:20:40.42938	2015-06-18 00:20:40.42938
21	16	2014-10-16 13:08:00	2015-06-18 00:20:41.466319	2015-06-18 00:20:41.466319
22	17	2014-10-16 16:32:00	2015-06-18 00:20:46.602626	2015-06-18 00:20:46.602626
23	16	2014-10-16 17:14:00	2015-06-18 00:20:48.312683	2015-06-18 00:20:48.312683
24	18	2014-10-16 17:46:00	2015-06-18 00:20:49.142562	2015-06-18 00:20:49.142562
25	19	2014-10-16 18:35:00	2015-06-18 00:20:50.385288	2015-06-18 00:20:50.385288
26	20	2014-10-16 23:59:00	2015-06-18 00:20:59.367058	2015-06-18 00:20:59.367058
27	19	2014-10-17 00:10:00	2015-06-18 00:20:59.57554	2015-06-18 00:20:59.57554
28	21	2014-10-17 07:01:00	2015-06-18 00:21:10.445838	2015-06-18 00:21:10.445838
29	22	2014-10-17 07:56:00	2015-06-18 00:21:11.930735	2015-06-18 00:21:11.930735
30	23	2014-10-17 14:19:00	2015-06-18 00:21:23.160798	2015-06-18 00:21:23.160798
31	24	2014-10-17 14:31:00	2015-06-18 00:21:23.570539	2015-06-18 00:21:23.570539
32	25	2014-10-17 14:45:00	2015-06-18 00:21:24.212011	2015-06-18 00:21:24.212011
33	26	2014-10-17 17:19:00	2015-06-18 00:21:29.281003	2015-06-18 00:21:29.281003
34	25	2014-10-17 17:29:00	2015-06-18 00:21:29.667685	2015-06-18 00:21:29.667685
35	27	2014-10-17 19:39:00	2015-06-18 00:21:33.526422	2015-06-18 00:21:33.526422
36	28	2014-10-17 22:19:00	2015-06-18 00:21:37.437711	2015-06-18 00:21:37.437711
37	29	2014-10-17 22:33:00	2015-06-18 00:21:37.927623	2015-06-18 00:21:37.927623
38	27	2014-10-17 22:39:00	2015-06-18 00:21:38.091699	2015-06-18 00:21:38.091699
39	30	2014-10-17 23:22:00	2015-06-18 00:21:39.029268	2015-06-18 00:21:39.029268
40	27	2014-10-17 23:40:00	2015-06-18 00:21:39.76303	2015-06-18 00:21:39.76303
41	31	2014-10-18 00:22:00	2015-06-18 00:21:41.479373	2015-06-18 00:21:41.479373
42	27	2014-10-18 01:13:00	2015-06-18 00:21:42.917005	2015-06-18 00:21:42.917005
43	32	2014-10-18 01:33:00	2015-06-18 00:21:43.384382	2015-06-18 00:21:43.384382
44	33	2014-10-18 05:10:00	2015-06-18 00:21:48.339455	2015-06-18 00:21:48.339455
45	32	2014-10-18 05:16:00	2015-06-18 00:21:48.597106	2015-06-18 00:21:48.597106
46	33	2014-10-18 05:20:00	2015-06-18 00:21:48.697942	2015-06-18 00:21:48.697942
47	34	2014-10-18 14:13:00	2015-06-18 00:22:03.35729	2015-06-18 00:22:03.35729
48	33	2014-10-18 14:15:00	2015-06-18 00:22:03.406705	2015-06-18 00:22:03.406705
49	34	2014-10-18 14:17:00	2015-06-18 00:22:03.451908	2015-06-18 00:22:03.451908
50	35	2014-10-18 14:35:00	2015-06-18 00:22:03.993874	2015-06-18 00:22:03.993874
51	34	2014-10-18 15:24:00	2015-06-18 00:22:05.295368	2015-06-18 00:22:05.295368
52	33	2014-10-18 16:35:00	2015-06-18 00:22:07.387272	2015-06-18 00:22:07.387272
53	36	2014-10-18 16:39:00	2015-06-18 00:22:07.491226	2015-06-18 00:22:07.491226
54	37	2014-10-18 17:29:00	2015-06-18 00:22:09.853553	2015-06-18 00:22:09.853553
55	36	2014-10-18 17:51:00	2015-06-18 00:22:10.644645	2015-06-18 00:22:10.644645
56	38	2014-10-18 17:55:00	2015-06-18 00:22:10.751539	2015-06-18 00:22:10.751539
57	39	2014-10-18 19:18:00	2015-06-18 00:22:13.261769	2015-06-18 00:22:13.261769
58	40	2014-10-18 19:44:00	2015-06-18 00:22:13.916863	2015-06-18 00:22:13.916863
59	41	2014-10-18 21:53:00	2015-06-18 00:22:19.453478	2015-06-18 00:22:19.453478
60	42	2014-10-19 05:25:00	2015-06-18 00:22:39.813475	2015-06-18 00:22:39.813475
61	43	2014-10-19 12:27:00	2015-06-18 00:22:53.852066	2015-06-18 00:22:53.852066
62	44	2014-10-19 15:29:00	2015-06-18 00:23:00.092735	2015-06-18 00:23:00.092735
63	45	2014-10-19 21:32:00	2015-06-18 00:23:10.242933	2015-06-18 00:23:10.242933
64	46	2014-10-19 23:30:00	2015-06-18 00:23:13.712454	2015-06-18 00:23:13.712454
65	45	2014-10-20 02:22:00	2015-06-18 00:23:19.053868	2015-06-18 00:23:19.053868
66	47	2014-10-20 03:46:00	2015-06-18 00:23:21.293907	2015-06-18 00:23:21.293907
67	48	2014-10-20 08:09:00	2015-06-18 00:23:28.286098	2015-06-18 00:23:28.286098
68	49	2014-10-20 11:33:00	2015-06-18 00:23:33.900643	2015-06-18 00:23:33.900643
69	50	2014-10-20 13:22:00	2015-06-18 00:23:36.679	2015-06-18 00:23:36.679
70	49	2014-10-20 13:32:00	2015-06-18 00:23:36.934474	2015-06-18 00:23:36.934474
71	50	2014-10-20 13:34:00	2015-06-18 00:23:36.98129	2015-06-18 00:23:36.98129
72	49	2014-10-20 14:04:00	2015-06-18 00:23:37.843079	2015-06-18 00:23:37.843079
73	50	2014-10-20 14:06:00	2015-06-18 00:23:37.893666	2015-06-18 00:23:37.893666
74	51	2014-10-20 14:41:00	2015-06-18 00:23:38.695937	2015-06-18 00:23:38.695937
75	52	2014-10-20 16:31:00	2015-06-18 00:23:41.607009	2015-06-18 00:23:41.607009
76	51	2014-10-20 16:33:00	2015-06-18 00:23:41.660231	2015-06-18 00:23:41.660231
77	53	2014-10-20 20:08:00	2015-06-18 00:23:47.552757	2015-06-18 00:23:47.552757
78	54	2014-10-21 01:00:00	2015-06-18 00:23:56.194634	2015-06-18 00:23:56.194634
79	53	2014-10-21 02:01:00	2015-06-18 00:23:57.703284	2015-06-18 00:23:57.703284
80	55	2014-10-21 03:25:00	2015-06-18 00:23:59.757327	2015-06-18 00:23:59.757327
81	56	2014-10-21 12:17:00	2015-06-18 00:24:14.903882	2015-06-18 00:24:14.903882
82	57	2014-10-21 13:05:00	2015-06-18 00:24:16.391752	2015-06-18 00:24:16.391752
83	56	2014-10-21 13:07:00	2015-06-18 00:24:16.436756	2015-06-18 00:24:16.436756
84	58	2014-10-21 14:17:00	2015-06-18 00:24:18.292617	2015-06-18 00:24:18.292617
85	59	2014-10-21 14:55:00	2015-06-18 00:24:19.311237	2015-06-18 00:24:19.311237
86	56	2014-10-21 15:01:00	2015-06-18 00:24:19.455217	2015-06-18 00:24:19.455217
87	59	2014-10-21 15:07:00	2015-06-18 00:24:19.608109	2015-06-18 00:24:19.608109
88	56	2014-10-21 15:09:00	2015-06-18 00:24:19.657159	2015-06-18 00:24:19.657159
89	59	2014-10-21 15:15:00	2015-06-18 00:24:19.805695	2015-06-18 00:24:19.805695
90	60	2014-10-21 15:39:00	2015-06-18 00:24:20.378858	2015-06-18 00:24:20.378858
91	61	2014-10-21 16:27:00	2015-06-18 00:24:21.73018	2015-06-18 00:24:21.73018
92	62	2014-10-21 17:37:00	2015-06-18 00:24:23.656791	2015-06-18 00:24:23.656791
93	63	2014-10-22 07:16:00	2015-06-18 00:24:46.810526	2015-06-18 00:24:46.810526
94	62	2014-10-22 07:18:00	2015-06-18 00:24:46.859028	2015-06-18 00:24:46.859028
95	63	2014-10-22 07:20:00	2015-06-18 00:24:46.910444	2015-06-18 00:24:46.910444
96	62	2014-10-22 07:22:00	2015-06-18 00:24:46.961052	2015-06-18 00:24:46.961052
97	63	2014-10-22 07:26:00	2015-06-18 00:24:47.199718	2015-06-18 00:24:47.199718
98	62	2014-10-22 07:34:00	2015-06-18 00:24:47.452364	2015-06-18 00:24:47.452364
99	64	2014-10-22 08:05:00	2015-06-18 00:24:48.202984	2015-06-18 00:24:48.202984
100	65	2014-10-22 09:23:00	2015-06-18 00:24:50.265272	2015-06-18 00:24:50.265272
101	66	2014-10-22 13:47:00	2015-06-18 00:24:57.987475	2015-06-18 00:24:57.987475
102	67	2014-10-22 14:52:00	2015-06-18 00:24:59.673692	2015-06-18 00:24:59.673692
103	68	2014-10-22 17:06:00	2015-06-18 00:25:03.815669	2015-06-18 00:25:03.815669
104	69	2014-10-23 02:31:00	2015-06-18 00:25:19.706152	2015-06-18 00:25:19.706152
105	70	2014-10-23 04:35:00	2015-06-18 00:25:22.551487	2015-06-18 00:25:22.551487
106	71	2014-10-23 10:09:00	2015-06-18 00:25:32.379209	2015-06-18 00:25:32.379209
107	72	2014-10-23 12:37:00	2015-06-18 00:25:36.274129	2015-06-18 00:25:36.274129
108	73	2014-10-23 12:41:00	2015-06-18 00:25:36.403678	2015-06-18 00:25:36.403678
109	74	2014-10-23 13:45:00	2015-06-18 00:25:38.04032	2015-06-18 00:25:38.04032
110	75	2014-10-23 16:42:00	2015-06-18 00:25:42.714063	2015-06-18 00:25:42.714063
111	76	2014-10-23 20:33:00	2015-06-18 00:25:48.766497	2015-06-18 00:25:48.766497
112	77	2014-10-23 22:57:00	2015-06-18 00:25:53.105418	2015-06-18 00:25:53.105418
113	76	2014-10-23 23:01:00	2015-06-18 00:25:53.194743	2015-06-18 00:25:53.194743
114	78	2014-10-24 00:15:00	2015-06-18 00:25:55.273782	2015-06-18 00:25:55.273782
115	79	2014-10-24 07:07:00	2015-06-18 00:26:08.872341	2015-06-18 00:26:08.872341
116	78	2014-10-24 08:25:00	2015-06-18 00:26:11.953472	2015-06-18 00:26:11.953472
117	80	2014-10-24 08:27:00	2015-06-18 00:26:12.193102	2015-06-18 00:26:12.193102
118	78	2014-10-24 09:19:00	2015-06-18 00:26:14.051604	2015-06-18 00:26:14.051604
119	81	2014-10-24 09:29:00	2015-06-18 00:26:14.308478	2015-06-18 00:26:14.308478
120	78	2014-10-24 09:47:00	2015-06-18 00:26:14.946955	2015-06-18 00:26:14.946955
121	82	2014-10-24 11:17:00	2015-06-18 00:26:17.812774	2015-06-18 00:26:17.812774
122	83	2014-10-24 12:53:00	2015-06-18 00:26:21.072537	2015-06-18 00:26:21.072537
123	84	2014-10-24 14:21:00	2015-06-18 00:26:24.850353	2015-06-18 00:26:24.850353
124	85	2014-10-24 16:28:00	2015-06-18 00:26:27.895735	2015-06-18 00:26:27.895735
125	86	2014-10-24 17:57:00	2015-06-18 00:26:30.766454	2015-06-18 00:26:30.766454
126	87	2014-10-24 18:11:00	2015-06-18 00:26:31.215322	2015-06-18 00:26:31.215322
127	88	2014-10-25 05:59:00	2015-06-18 00:26:53.350916	2015-06-18 00:26:53.350916
128	87	2014-10-25 06:01:00	2015-06-18 00:26:53.438396	2015-06-18 00:26:53.438396
129	88	2014-10-25 06:13:00	2015-06-18 00:26:53.989579	2015-06-18 00:26:53.989579
130	87	2014-10-25 06:15:00	2015-06-18 00:26:54.07176	2015-06-18 00:26:54.07176
131	88	2014-10-25 06:25:00	2015-06-18 00:26:54.699813	2015-06-18 00:26:54.699813
132	87	2014-10-25 06:27:00	2015-06-18 00:26:54.77589	2015-06-18 00:26:54.77589
133	88	2014-10-25 06:45:00	2015-06-18 00:26:55.515164	2015-06-18 00:26:55.515164
134	87	2014-10-25 07:07:00	2015-06-18 00:26:56.246711	2015-06-18 00:26:56.246711
135	88	2014-10-25 07:16:00	2015-06-18 00:26:56.496226	2015-06-18 00:26:56.496226
136	87	2014-10-25 07:18:00	2015-06-18 00:26:56.553056	2015-06-18 00:26:56.553056
137	88	2014-10-25 07:28:00	2015-06-18 00:26:56.838004	2015-06-18 00:26:56.838004
138	87	2014-10-25 07:30:00	2015-06-18 00:26:56.899076	2015-06-18 00:26:56.899076
139	88	2014-10-25 07:32:00	2015-06-18 00:26:56.953732	2015-06-18 00:26:56.953732
140	87	2014-10-25 08:49:00	2015-06-18 00:26:59.654162	2015-06-18 00:26:59.654162
141	88	2014-10-25 08:53:00	2015-06-18 00:26:59.775436	2015-06-18 00:26:59.775436
142	87	2014-10-25 09:03:00	2015-06-18 00:27:00.048063	2015-06-18 00:27:00.048063
143	89	2014-10-25 10:05:00	2015-06-18 00:27:01.568362	2015-06-18 00:27:01.568362
144	90	2014-10-25 14:50:00	2015-06-18 00:27:09.129041	2015-06-18 00:27:09.129041
145	91	2014-10-25 16:03:00	2015-06-18 00:27:11.533608	2015-06-18 00:27:11.533608
146	92	2014-10-25 16:15:00	2015-06-18 00:27:11.899894	2015-06-18 00:27:11.899894
147	93	2014-10-25 19:14:00	2015-06-18 00:27:17.519229	2015-06-18 00:27:17.519229
148	92	2014-10-25 19:17:00	2015-06-18 00:27:17.581543	2015-06-18 00:27:17.581543
149	94	2014-10-25 21:38:00	2015-06-18 00:27:22.035954	2015-06-18 00:27:22.035954
150	95	2014-10-25 22:18:00	2015-06-18 00:27:23.134283	2015-06-18 00:27:23.134283
151	94	2014-10-25 23:03:00	2015-06-18 00:27:24.251766	2015-06-18 00:27:24.251766
152	96	2014-10-26 05:06:00	2015-06-18 00:27:32.826996	2015-06-18 00:27:32.826996
153	97	2014-10-26 06:02:00	2015-06-18 00:27:34.883962	2015-06-18 00:27:34.883962
154	96	2014-10-26 06:28:00	2015-06-18 00:27:35.507135	2015-06-18 00:27:35.507135
155	98	2014-10-26 07:23:00	2015-06-18 00:27:36.794989	2015-06-18 00:27:36.794989
156	99	2014-10-26 12:50:00	2015-06-18 00:27:45.940842	2015-06-18 00:27:45.940842
157	98	2014-10-26 12:54:00	2015-06-18 00:27:46.053286	2015-06-18 00:27:46.053286
158	99	2014-10-26 12:56:00	2015-06-18 00:27:46.106095	2015-06-18 00:27:46.106095
159	98	2014-10-26 13:00:00	2015-06-18 00:27:46.204866	2015-06-18 00:27:46.204866
160	100	2014-10-26 14:04:00	2015-06-18 00:27:47.757869	2015-06-18 00:27:47.757869
161	101	2014-10-26 15:11:00	2015-06-18 00:27:49.523766	2015-06-18 00:27:49.523766
162	100	2014-10-26 15:13:00	2015-06-18 00:27:49.694511	2015-06-18 00:27:49.694511
163	101	2014-10-26 15:22:00	2015-06-18 00:27:50.16751	2015-06-18 00:27:50.16751
164	100	2014-10-26 15:24:00	2015-06-18 00:27:50.256006	2015-06-18 00:27:50.256006
165	101	2014-10-26 15:26:00	2015-06-18 00:27:50.349597	2015-06-18 00:27:50.349597
166	100	2014-10-26 15:28:00	2015-06-18 00:27:50.45459	2015-06-18 00:27:50.45459
167	101	2014-10-26 15:36:00	2015-06-18 00:27:50.742543	2015-06-18 00:27:50.742543
168	102	2014-10-26 15:40:00	2015-06-18 00:27:50.875992	2015-06-18 00:27:50.875992
169	100	2014-10-26 15:44:00	2015-06-18 00:27:51.006035	2015-06-18 00:27:51.006035
170	102	2014-10-26 15:50:00	2015-06-18 00:27:51.183604	2015-06-18 00:27:51.183604
171	103	2014-10-26 16:08:00	2015-06-18 00:27:51.770312	2015-06-18 00:27:51.770312
172	102	2014-10-26 16:10:00	2015-06-18 00:27:51.854787	2015-06-18 00:27:51.854787
173	104	2014-10-26 20:41:00	2015-06-18 00:27:59.769733	2015-06-18 00:27:59.769733
174	105	2014-10-26 20:51:00	2015-06-18 00:28:00.141054	2015-06-18 00:28:00.141054
175	106	2014-10-26 22:41:00	2015-06-18 00:28:03.283182	2015-06-18 00:28:03.283182
176	107	2014-10-27 03:08:00	2015-06-18 00:28:12.864817	2015-06-18 00:28:12.864817
177	106	2014-10-27 06:35:00	2015-06-18 00:28:19.340338	2015-06-18 00:28:19.340338
178	108	2014-10-27 06:37:00	2015-06-18 00:28:19.391731	2015-06-18 00:28:19.391731
179	109	2014-10-27 07:28:00	2015-06-18 00:28:20.681102	2015-06-18 00:28:20.681102
180	110	2014-10-27 10:01:00	2015-06-18 00:28:26.226762	2015-06-18 00:28:26.226762
181	111	2014-10-27 12:36:00	2015-06-18 00:28:31.722672	2015-06-18 00:28:31.722672
182	112	2014-10-27 16:21:00	2015-06-18 00:28:38.345572	2015-06-18 00:28:38.345572
183	113	2014-10-27 17:35:00	2015-06-18 00:28:41.371188	2015-06-18 00:28:41.371188
184	114	2014-10-27 19:49:00	2015-06-18 00:28:45.903815	2015-06-18 00:28:45.903815
185	115	2014-10-28 00:19:00	2015-06-18 00:28:54.295398	2015-06-18 00:28:54.295398
186	114	2014-10-28 00:45:00	2015-06-18 00:28:54.898467	2015-06-18 00:28:54.898467
187	115	2014-10-28 00:55:00	2015-06-18 00:28:55.102473	2015-06-18 00:28:55.102473
188	116	2014-10-28 02:14:00	2015-06-18 00:28:56.927572	2015-06-18 00:28:56.927572
189	117	2014-10-28 08:43:00	2015-06-18 00:29:08.07596	2015-06-18 00:29:08.07596
190	116	2014-10-28 08:45:00	2015-06-18 00:29:08.182447	2015-06-18 00:29:08.182447
191	118	2014-10-28 13:31:00	2015-06-18 00:29:17.052946	2015-06-18 00:29:17.052946
192	119	2014-10-28 14:23:00	2015-06-18 00:29:19.162471	2015-06-18 00:29:19.162471
193	120	2014-10-28 14:33:00	2015-06-18 00:29:19.491539	2015-06-18 00:29:19.491539
194	121	2014-10-28 14:41:00	2015-06-18 00:29:19.699294	2015-06-18 00:29:19.699294
195	122	2014-10-28 17:30:00	2015-06-18 00:29:25.025493	2015-06-18 00:29:25.025493
196	123	2014-10-28 19:53:00	2015-06-18 00:29:28.58678	2015-06-18 00:29:28.58678
197	124	2014-10-28 22:37:00	2015-06-18 00:29:32.628578	2015-06-18 00:29:32.628578
198	125	2014-10-29 09:51:00	2015-06-18 00:29:53.542897	2015-06-18 00:29:53.542897
199	126	2014-10-29 14:43:00	2015-06-18 00:30:03.231831	2015-06-18 00:30:03.231831
200	127	2014-10-29 15:09:00	2015-06-18 00:30:03.942698	2015-06-18 00:30:03.942698
201	128	2014-10-29 16:38:00	2015-06-18 00:30:06.357817	2015-06-18 00:30:06.357817
202	129	2014-10-29 16:46:00	2015-06-18 00:30:06.549434	2015-06-18 00:30:06.549434
203	128	2014-10-29 17:49:00	2015-06-18 00:30:08.314996	2015-06-18 00:30:08.314996
204	130	2014-10-29 18:37:00	2015-06-18 00:30:09.756449	2015-06-18 00:30:09.756449
205	131	2014-10-29 20:56:00	2015-06-18 00:30:13.344921	2015-06-18 00:30:13.344921
206	132	2014-10-29 23:40:00	2015-06-18 00:30:17.260076	2015-06-18 00:30:17.260076
207	133	2014-10-30 00:55:00	2015-06-18 00:30:19.14213	2015-06-18 00:30:19.14213
208	132	2014-10-30 01:21:00	2015-06-18 00:30:19.913735	2015-06-18 00:30:19.913735
209	133	2014-10-30 01:23:00	2015-06-18 00:30:19.963429	2015-06-18 00:30:19.963429
210	132	2014-10-30 01:25:00	2015-06-18 00:30:20.012349	2015-06-18 00:30:20.012349
211	133	2014-10-30 01:41:00	2015-06-18 00:30:20.330008	2015-06-18 00:30:20.330008
212	134	2014-10-30 03:25:00	2015-06-18 00:30:22.732249	2015-06-18 00:30:22.732249
213	133	2014-10-30 03:29:00	2015-06-18 00:30:22.821734	2015-06-18 00:30:22.821734
214	135	2014-10-30 03:34:00	2015-06-18 00:30:22.922322	2015-06-18 00:30:22.922322
215	132	2014-10-30 03:40:00	2015-06-18 00:30:23.050857	2015-06-18 00:30:23.050857
216	135	2014-10-30 04:00:00	2015-06-18 00:30:23.648841	2015-06-18 00:30:23.648841
217	136	2014-10-30 11:34:00	2015-06-18 00:30:35.630063	2015-06-18 00:30:35.630063
218	137	2014-10-30 14:09:00	2015-06-18 00:30:40.969414	2015-06-18 00:30:40.969414
219	138	2014-10-30 15:14:00	2015-06-18 00:30:42.743111	2015-06-18 00:30:42.743111
220	139	2014-10-30 16:00:00	2015-06-18 00:30:44.103459	2015-06-18 00:30:44.103459
221	138	2014-10-30 16:08:00	2015-06-18 00:30:44.299856	2015-06-18 00:30:44.299856
222	136	2014-10-30 16:14:00	2015-06-18 00:30:44.456222	2015-06-18 00:30:44.456222
223	140	2014-10-31 01:55:00	2015-06-18 00:31:00.549573	2015-06-18 00:31:00.549573
224	141	2014-10-31 03:41:00	2015-06-18 00:31:03.577201	2015-06-18 00:31:03.577201
225	136	2014-10-31 07:45:00	2015-06-18 00:31:10.079325	2015-06-18 00:31:10.079325
226	142	2014-10-31 10:58:00	2015-06-18 00:31:16.341506	2015-06-18 00:31:16.341506
227	143	2014-10-31 15:43:00	2015-06-18 00:31:24.918121	2015-06-18 00:31:24.918121
228	144	2014-10-31 17:04:00	2015-06-18 00:31:27.572353	2015-06-18 00:31:27.572353
229	145	2014-10-31 18:42:00	2015-06-18 00:31:30.363592	2015-06-18 00:31:30.363592
230	144	2014-10-31 18:48:00	2015-06-18 00:31:30.515646	2015-06-18 00:31:30.515646
231	145	2014-10-31 19:32:00	2015-06-18 00:31:31.606337	2015-06-18 00:31:31.606337
232	146	2014-11-01 04:50:00	2015-06-18 00:31:48.061429	2015-06-18 00:31:48.061429
233	145	2014-11-01 05:35:00	2015-06-18 00:31:49.364878	2015-06-18 00:31:49.364878
234	147	2014-11-01 09:43:00	2015-06-18 00:31:56.883686	2015-06-18 00:31:56.883686
235	148	2014-11-01 13:55:00	2015-06-18 00:32:03.878052	2015-06-18 00:32:03.878052
236	149	2014-11-01 17:47:00	2015-06-18 00:32:11.429787	2015-06-18 00:32:11.429787
237	150	2014-11-01 19:03:00	2015-06-18 00:32:13.601778	2015-06-18 00:32:13.601778
238	151	2014-11-01 23:01:00	2015-06-18 00:32:20.220598	2015-06-18 00:32:20.220598
239	152	2014-11-02 04:37:00	2015-06-18 00:32:29.302311	2015-06-18 00:32:29.302311
240	153	2014-11-02 07:26:00	2015-06-18 00:32:34.109558	2015-06-18 00:32:34.109558
241	154	2014-11-02 14:38:00	2015-06-18 00:32:46.075321	2015-06-18 00:32:46.075321
242	155	2014-11-02 14:40:00	2015-06-18 00:32:46.143034	2015-06-18 00:32:46.143034
243	156	2014-11-02 21:57:00	2015-06-18 00:32:59.318822	2015-06-18 00:32:59.318822
244	157	2014-11-02 22:11:00	2015-06-18 00:32:59.662395	2015-06-18 00:32:59.662395
245	158	2014-11-02 23:08:00	2015-06-18 00:33:01.27693	2015-06-18 00:33:01.27693
246	159	2014-11-03 00:19:00	2015-06-18 00:33:03.236198	2015-06-18 00:33:03.236198
247	160	2014-11-03 04:45:00	2015-06-18 00:33:10.795842	2015-06-18 00:33:10.795842
248	161	2014-11-03 07:08:00	2015-06-18 00:33:14.743236	2015-06-18 00:33:14.743236
249	162	2014-11-03 08:12:00	2015-06-18 00:33:16.719402	2015-06-18 00:33:16.719402
250	163	2014-11-03 11:04:00	2015-06-18 00:33:21.654852	2015-06-18 00:33:21.654852
251	164	2014-11-03 13:03:00	2015-06-18 00:33:24.868413	2015-06-18 00:33:24.868413
252	165	2014-11-03 17:30:00	2015-06-18 00:33:32.126655	2015-06-18 00:33:32.126655
253	166	2014-11-03 20:05:00	2015-06-18 00:33:36.699411	2015-06-18 00:33:36.699411
254	167	2014-11-04 08:53:00	2015-06-18 00:33:59.476638	2015-06-18 00:33:59.476638
255	168	2014-11-04 09:15:00	2015-06-18 00:34:00.113103	2015-06-18 00:34:00.113103
256	167	2014-11-04 09:21:00	2015-06-18 00:34:00.271096	2015-06-18 00:34:00.271096
257	168	2014-11-04 09:25:00	2015-06-18 00:34:00.378836	2015-06-18 00:34:00.378836
258	169	2014-11-04 12:51:00	2015-06-18 00:34:06.609726	2015-06-18 00:34:06.609726
259	170	2014-11-04 15:55:00	2015-06-18 00:34:11.697011	2015-06-18 00:34:11.697011
260	171	2014-11-04 19:57:00	2015-06-18 00:34:18.928344	2015-06-18 00:34:18.928344
261	172	2014-11-04 20:58:00	2015-06-18 00:34:21.134154	2015-06-18 00:34:21.134154
262	173	2014-11-05 09:17:00	2015-06-18 00:34:40.322934	2015-06-18 00:34:40.322934
263	174	2014-11-05 10:39:00	2015-06-18 00:34:43.111108	2015-06-18 00:34:43.111108
264	175	2014-11-05 14:29:00	2015-06-18 00:34:50.705779	2015-06-18 00:34:50.705779
265	176	2014-11-05 19:28:00	2015-06-18 00:34:59.456604	2015-06-18 00:34:59.456604
266	177	2014-11-05 22:22:00	2015-06-18 00:35:04.423902	2015-06-18 00:35:04.423902
267	178	2014-11-05 22:47:00	2015-06-18 00:35:05.098446	2015-06-18 00:35:05.098446
268	179	2014-11-06 01:24:00	2015-06-18 00:35:09.500493	2015-06-18 00:35:09.500493
269	178	2014-11-06 02:19:00	2015-06-18 00:35:11.014166	2015-06-18 00:35:11.014166
270	180	2014-11-06 02:35:00	2015-06-18 00:35:11.466806	2015-06-18 00:35:11.466806
271	181	2014-11-06 03:15:00	2015-06-18 00:35:12.483854	2015-06-18 00:35:12.483854
272	180	2014-11-06 04:01:00	2015-06-18 00:35:13.867456	2015-06-18 00:35:13.867456
273	182	2014-11-06 04:17:00	2015-06-18 00:35:14.293596	2015-06-18 00:35:14.293596
274	183	2014-11-06 13:34:00	2015-06-18 00:35:32.003532	2015-06-18 00:35:32.003532
275	184	2014-11-06 15:01:00	2015-06-18 00:35:34.326927	2015-06-18 00:35:34.326927
276	185	2014-11-06 15:28:00	2015-06-18 00:35:34.942164	2015-06-18 00:35:34.942164
277	184	2014-11-06 16:14:00	2015-06-18 00:35:36.291342	2015-06-18 00:35:36.291342
278	186	2014-11-06 16:28:00	2015-06-18 00:35:36.642978	2015-06-18 00:35:36.642978
279	187	2014-11-06 17:19:00	2015-06-18 00:35:37.997043	2015-06-18 00:35:37.997043
280	186	2014-11-06 17:29:00	2015-06-18 00:35:38.238375	2015-06-18 00:35:38.238375
281	187	2014-11-06 18:03:00	2015-06-18 00:35:38.951155	2015-06-18 00:35:38.951155
282	186	2014-11-06 18:05:00	2015-06-18 00:35:38.991768	2015-06-18 00:35:38.991768
283	188	2014-11-06 19:23:00	2015-06-18 00:35:41.112913	2015-06-18 00:35:41.112913
284	187	2014-11-06 19:30:00	2015-06-18 00:35:41.268383	2015-06-18 00:35:41.268383
285	189	2014-11-06 19:50:00	2015-06-18 00:35:41.902043	2015-06-18 00:35:41.902043
286	190	2014-11-06 20:51:00	2015-06-18 00:35:43.423288	2015-06-18 00:35:43.423288
287	191	2014-11-06 23:00:00	2015-06-18 00:35:48.054867	2015-06-18 00:35:48.054867
288	192	2014-11-06 23:34:00	2015-06-18 00:35:48.970036	2015-06-18 00:35:48.970036
289	191	2014-11-06 23:38:00	2015-06-18 00:35:49.091188	2015-06-18 00:35:49.091188
290	193	2014-11-06 23:54:00	2015-06-18 00:35:49.452678	2015-06-18 00:35:49.452678
291	194	2014-11-07 02:46:00	2015-06-18 00:35:54.531856	2015-06-18 00:35:54.531856
292	195	2014-11-07 10:15:00	2015-06-18 00:36:06.094899	2015-06-18 00:36:06.094899
293	196	2014-11-07 12:57:00	2015-06-18 00:36:11.744572	2015-06-18 00:36:11.744572
294	197	2014-11-07 14:21:00	2015-06-18 00:36:13.909924	2015-06-18 00:36:13.909924
295	196	2014-11-07 14:39:00	2015-06-18 00:36:14.522709	2015-06-18 00:36:14.522709
296	197	2014-11-07 14:42:00	2015-06-18 00:36:14.59401	2015-06-18 00:36:14.59401
297	196	2014-11-07 14:50:00	2015-06-18 00:36:14.828804	2015-06-18 00:36:14.828804
298	197	2014-11-07 14:54:00	2015-06-18 00:36:14.940328	2015-06-18 00:36:14.940328
299	196	2014-11-07 15:00:00	2015-06-18 00:36:15.111835	2015-06-18 00:36:15.111835
300	198	2014-11-07 15:10:00	2015-06-18 00:36:15.36593	2015-06-18 00:36:15.36593
301	197	2014-11-07 15:17:00	2015-06-18 00:36:15.539595	2015-06-18 00:36:15.539595
302	198	2014-11-07 15:19:00	2015-06-18 00:36:15.596449	2015-06-18 00:36:15.596449
303	199	2014-11-07 15:51:00	2015-06-18 00:36:16.375726	2015-06-18 00:36:16.375726
304	198	2014-11-07 16:01:00	2015-06-18 00:36:16.820673	2015-06-18 00:36:16.820673
305	199	2014-11-07 16:09:00	2015-06-18 00:36:17.059095	2015-06-18 00:36:17.059095
306	198	2014-11-07 16:11:00	2015-06-18 00:36:17.120311	2015-06-18 00:36:17.120311
307	199	2014-11-07 16:13:00	2015-06-18 00:36:17.174129	2015-06-18 00:36:17.174129
308	200	2014-11-07 17:52:00	2015-06-18 00:36:19.965268	2015-06-18 00:36:19.965268
309	199	2014-11-07 18:24:00	2015-06-18 00:36:21.166695	2015-06-18 00:36:21.166695
310	201	2014-11-07 18:26:00	2015-06-18 00:36:21.215123	2015-06-18 00:36:21.215123
311	202	2014-11-07 19:54:00	2015-06-18 00:36:23.903331	2015-06-18 00:36:23.903331
312	203	2014-11-08 02:47:00	2015-06-18 00:36:34.969032	2015-06-18 00:36:34.969032
313	202	2014-11-08 03:01:00	2015-06-18 00:36:35.409	2015-06-18 00:36:35.409
314	204	2014-11-08 07:00:00	2015-06-18 00:36:42.384638	2015-06-18 00:36:42.384638
315	202	2014-11-08 07:04:00	2015-06-18 00:36:42.512363	2015-06-18 00:36:42.512363
316	204	2014-11-08 07:06:00	2015-06-18 00:36:42.566551	2015-06-18 00:36:42.566551
317	202	2014-11-08 07:50:00	2015-06-18 00:36:43.959758	2015-06-18 00:36:43.959758
318	205	2014-11-08 10:54:00	2015-06-18 00:36:50.557857	2015-06-18 00:36:50.557857
319	202	2014-11-08 10:56:00	2015-06-18 00:36:50.620939	2015-06-18 00:36:50.620939
320	205	2014-11-08 10:58:00	2015-06-18 00:36:50.683447	2015-06-18 00:36:50.683447
321	206	2014-11-08 12:55:00	2015-06-18 00:36:54.07896	2015-06-18 00:36:54.07896
322	205	2014-11-08 12:57:00	2015-06-18 00:36:54.131232	2015-06-18 00:36:54.131232
323	207	2014-11-08 13:43:00	2015-06-18 00:36:55.620343	2015-06-18 00:36:55.620343
324	208	2014-11-08 16:08:00	2015-06-18 00:37:00.72443	2015-06-18 00:37:00.72443
325	209	2014-11-08 19:58:00	2015-06-18 00:37:07.814222	2015-06-18 00:37:07.814222
326	210	2014-11-08 22:34:00	2015-06-18 00:37:12.756447	2015-06-18 00:37:12.756447
327	211	2014-11-09 07:28:00	2015-06-18 00:37:27.065253	2015-06-18 00:37:27.065253
328	212	2014-11-09 16:21:00	2015-06-18 00:37:42.579649	2015-06-18 00:37:42.579649
329	213	2014-11-09 18:17:00	2015-06-18 00:37:46.366764	2015-06-18 00:37:46.366764
330	212	2014-11-09 18:19:00	2015-06-18 00:37:46.431152	2015-06-18 00:37:46.431152
331	213	2014-11-09 18:21:00	2015-06-18 00:37:46.514931	2015-06-18 00:37:46.514931
332	214	2014-11-09 19:46:00	2015-06-18 00:37:49.402929	2015-06-18 00:37:49.402929
333	213	2014-11-09 20:52:00	2015-06-18 00:37:51.212319	2015-06-18 00:37:51.212319
334	215	2014-11-09 21:52:00	2015-06-18 00:37:52.936972	2015-06-18 00:37:52.936972
335	216	2014-11-09 22:44:00	2015-06-18 00:37:54.4572	2015-06-18 00:37:54.4572
336	217	2014-11-10 00:44:00	2015-06-18 00:37:58.228107	2015-06-18 00:37:58.228107
337	218	2014-11-10 00:52:00	2015-06-18 00:37:58.427814	2015-06-18 00:37:58.427814
338	219	2014-11-10 02:12:00	2015-06-18 00:38:00.674102	2015-06-18 00:38:00.674102
339	218	2014-11-10 02:20:00	2015-06-18 00:38:00.878993	2015-06-18 00:38:00.878993
340	219	2014-11-10 02:22:00	2015-06-18 00:38:01.068192	2015-06-18 00:38:01.068192
341	218	2014-11-10 02:24:00	2015-06-18 00:38:01.132956	2015-06-18 00:38:01.132956
342	219	2014-11-10 02:26:00	2015-06-18 00:38:01.198289	2015-06-18 00:38:01.198289
343	218	2014-11-10 02:28:00	2015-06-18 00:38:01.257376	2015-06-18 00:38:01.257376
344	220	2014-11-10 03:56:00	2015-06-18 00:38:04.101906	2015-06-18 00:38:04.101906
345	218	2014-11-10 07:04:00	2015-06-18 00:38:09.191532	2015-06-18 00:38:09.191532
346	221	2014-11-10 07:22:00	2015-06-18 00:38:09.838012	2015-06-18 00:38:09.838012
347	222	2014-11-10 07:39:00	2015-06-18 00:38:10.186047	2015-06-18 00:38:10.186047
348	223	2014-11-10 10:24:00	2015-06-18 00:38:15.353171	2015-06-18 00:38:15.353171
349	224	2014-11-10 11:20:00	2015-06-18 00:38:16.868293	2015-06-18 00:38:16.868293
350	225	2014-11-10 13:04:00	2015-06-18 00:38:19.602147	2015-06-18 00:38:19.602147
351	226	2014-11-10 14:22:00	2015-06-18 00:38:21.653204	2015-06-18 00:38:21.653204
352	227	2014-11-10 15:02:00	2015-06-18 00:38:23.003903	2015-06-18 00:38:23.003903
353	228	2014-11-10 19:47:00	2015-06-18 00:38:31.572167	2015-06-18 00:38:31.572167
354	229	2014-11-10 21:06:00	2015-06-18 00:38:34.119895	2015-06-18 00:38:34.119895
355	230	2014-11-10 22:30:00	2015-06-18 00:38:37.021029	2015-06-18 00:38:37.021029
356	231	2014-11-11 00:22:00	2015-06-18 00:38:40.307272	2015-06-18 00:38:40.307272
357	230	2014-11-11 01:08:00	2015-06-18 00:38:41.511398	2015-06-18 00:38:41.511398
358	232	2014-11-11 04:50:00	2015-06-18 00:38:46.960004	2015-06-18 00:38:46.960004
359	230	2014-11-11 06:57:00	2015-06-18 00:38:50.654168	2015-06-18 00:38:50.654168
360	233	2014-11-11 08:15:00	2015-06-18 00:38:53.39979	2015-06-18 00:38:53.39979
361	234	2014-11-11 10:13:00	2015-06-18 00:38:56.9798	2015-06-18 00:38:56.9798
362	233	2014-11-11 10:53:00	2015-06-18 00:38:58.596411	2015-06-18 00:38:58.596411
363	235	2014-11-11 11:23:00	2015-06-18 00:38:59.335885	2015-06-18 00:38:59.335885
364	236	2014-11-11 13:12:00	2015-06-18 00:39:02.590312	2015-06-18 00:39:02.590312
365	237	2014-11-11 14:35:00	2015-06-18 00:39:04.884767	2015-06-18 00:39:04.884767
366	238	2014-11-11 15:15:00	2015-06-18 00:39:05.85392	2015-06-18 00:39:05.85392
367	239	2014-11-11 19:50:00	2015-06-18 00:39:13.560888	2015-06-18 00:39:13.560888
368	240	2014-11-11 20:56:00	2015-06-18 00:39:15.112256	2015-06-18 00:39:15.112256
369	239	2014-11-11 21:06:00	2015-06-18 00:39:15.445687	2015-06-18 00:39:15.445687
370	241	2014-11-11 21:08:00	2015-06-18 00:39:15.498064	2015-06-18 00:39:15.498064
371	242	2014-11-11 22:45:00	2015-06-18 00:39:18.112227	2015-06-18 00:39:18.112227
372	243	2014-11-11 22:47:00	2015-06-18 00:39:18.16022	2015-06-18 00:39:18.16022
373	242	2014-11-11 22:49:00	2015-06-18 00:39:18.212319	2015-06-18 00:39:18.212319
374	244	2014-11-12 05:23:00	2015-06-18 00:39:28.522376	2015-06-18 00:39:28.522376
375	245	2014-11-12 07:54:00	2015-06-18 00:39:32.765146	2015-06-18 00:39:32.765146
376	246	2014-11-12 14:22:00	2015-06-18 00:39:44.560189	2015-06-18 00:39:44.560189
377	247	2014-11-12 15:44:00	2015-06-18 00:39:47.441099	2015-06-18 00:39:47.441099
378	248	2014-11-12 22:56:00	2015-06-18 00:40:00.707683	2015-06-18 00:40:00.707683
379	247	2014-11-13 00:10:00	2015-06-18 00:40:02.809787	2015-06-18 00:40:02.809787
380	249	2014-11-13 08:58:00	2015-06-18 00:40:18.347814	2015-06-18 00:40:18.347814
381	250	2014-11-13 09:02:00	2015-06-18 00:40:18.493883	2015-06-18 00:40:18.493883
382	249	2014-11-13 09:12:00	2015-06-18 00:40:18.937641	2015-06-18 00:40:18.937641
383	251	2014-11-13 09:50:00	2015-06-18 00:40:20.197026	2015-06-18 00:40:20.197026
384	249	2014-11-13 09:52:00	2015-06-18 00:40:20.258801	2015-06-18 00:40:20.258801
385	251	2014-11-13 10:02:00	2015-06-18 00:40:20.570327	2015-06-18 00:40:20.570327
386	249	2014-11-13 10:24:00	2015-06-18 00:40:21.126845	2015-06-18 00:40:21.126845
387	251	2014-11-13 10:34:00	2015-06-18 00:40:21.526629	2015-06-18 00:40:21.526629
388	252	2014-11-13 10:36:00	2015-06-18 00:40:21.602581	2015-06-18 00:40:21.602581
389	253	2014-11-13 16:31:00	2015-06-18 00:40:31.755065	2015-06-18 00:40:31.755065
390	254	2014-11-13 18:08:00	2015-06-18 00:40:35.682081	2015-06-18 00:40:35.682081
391	255	2014-11-13 19:28:00	2015-06-18 00:40:38.442306	2015-06-18 00:40:38.442306
392	256	2014-11-13 20:51:00	2015-06-18 00:40:41.07761	2015-06-18 00:40:41.07761
393	255	2014-11-13 22:06:00	2015-06-18 00:40:43.092928	2015-06-18 00:40:43.092928
394	257	2014-11-13 23:45:00	2015-06-18 00:40:46.875662	2015-06-18 00:40:46.875662
395	258	2014-11-14 01:14:00	2015-06-18 00:40:49.913027	2015-06-18 00:40:49.913027
396	259	2014-11-14 13:30:00	2015-06-18 00:41:14.63309	2015-06-18 00:41:14.63309
397	260	2014-11-14 15:50:00	2015-06-18 00:41:19.906893	2015-06-18 00:41:19.906893
398	261	2014-11-14 18:14:00	2015-06-18 00:41:24.927163	2015-06-18 00:41:24.927163
399	262	2014-11-14 19:57:00	2015-06-18 00:41:28.239661	2015-06-18 00:41:28.239661
400	263	2014-11-14 23:14:00	2015-06-18 00:41:34.733424	2015-06-18 00:41:34.733424
401	264	2014-11-15 04:16:00	2015-06-18 00:41:44.493116	2015-06-18 00:41:44.493116
402	265	2014-11-15 05:20:00	2015-06-18 00:41:46.151005	2015-06-18 00:41:46.151005
403	263	2014-11-15 05:24:00	2015-06-18 00:41:46.248669	2015-06-18 00:41:46.248669
404	266	2014-11-15 07:30:00	2015-06-18 00:41:49.599454	2015-06-18 00:41:49.599454
405	263	2014-11-15 07:38:00	2015-06-18 00:41:49.921508	2015-06-18 00:41:49.921508
406	267	2014-11-15 08:34:00	2015-06-18 00:41:52.226939	2015-06-18 00:41:52.226939
407	268	2014-11-15 08:38:00	2015-06-18 00:41:52.353531	2015-06-18 00:41:52.353531
408	269	2014-11-15 08:40:00	2015-06-18 00:41:52.41609	2015-06-18 00:41:52.41609
409	270	2014-11-15 14:59:00	2015-06-18 00:42:04.968687	2015-06-18 00:42:04.968687
410	269	2014-11-15 15:05:00	2015-06-18 00:42:05.228017	2015-06-18 00:42:05.228017
411	270	2014-11-15 15:07:00	2015-06-18 00:42:05.285901	2015-06-18 00:42:05.285901
412	271	2014-11-15 17:36:00	2015-06-18 00:42:09.683203	2015-06-18 00:42:09.683203
413	272	2014-11-15 18:37:00	2015-06-18 00:42:11.634015	2015-06-18 00:42:11.634015
414	273	2014-11-15 20:06:00	2015-06-18 00:42:14.455849	2015-06-18 00:42:14.455849
415	274	2014-11-15 21:08:00	2015-06-18 00:42:16.096563	2015-06-18 00:42:16.096563
416	275	2014-11-15 22:00:00	2015-06-18 00:42:17.877531	2015-06-18 00:42:17.877531
417	276	2014-11-15 23:24:00	2015-06-18 00:42:20.341429	2015-06-18 00:42:20.341429
418	275	2014-11-15 23:38:00	2015-06-18 00:42:20.691668	2015-06-18 00:42:20.691668
419	276	2014-11-15 23:40:00	2015-06-18 00:42:20.73825	2015-06-18 00:42:20.73825
420	275	2014-11-15 23:44:00	2015-06-18 00:42:20.87246	2015-06-18 00:42:20.87246
421	277	2014-11-16 03:28:00	2015-06-18 00:42:28.449851	2015-06-18 00:42:28.449851
422	278	2014-11-16 09:26:00	2015-06-18 00:42:41.2489	2015-06-18 00:42:41.2489
423	279	2014-11-16 12:18:00	2015-06-18 00:42:47.491723	2015-06-18 00:42:47.491723
424	277	2014-11-16 12:46:00	2015-06-18 00:42:48.346101	2015-06-18 00:42:48.346101
425	278	2014-11-16 14:23:00	2015-06-18 00:42:51.4696	2015-06-18 00:42:51.4696
426	279	2014-11-16 14:25:00	2015-06-18 00:42:51.550737	2015-06-18 00:42:51.550737
427	278	2014-11-16 15:40:00	2015-06-18 00:42:53.482267	2015-06-18 00:42:53.482267
428	280	2014-11-16 15:54:00	2015-06-18 00:42:53.939653	2015-06-18 00:42:53.939653
429	281	2014-11-16 16:36:00	2015-06-18 00:42:55.186049	2015-06-18 00:42:55.186049
430	282	2014-11-16 17:37:00	2015-06-18 00:42:57.594785	2015-06-18 00:42:57.594785
431	281	2014-11-16 17:41:00	2015-06-18 00:42:57.768632	2015-06-18 00:42:57.768632
432	282	2014-11-16 17:43:00	2015-06-18 00:42:57.852232	2015-06-18 00:42:57.852232
433	283	2014-11-16 17:51:00	2015-06-18 00:42:58.0913	2015-06-18 00:42:58.0913
434	284	2014-11-16 17:55:00	2015-06-18 00:42:58.197367	2015-06-18 00:42:58.197367
435	283	2014-11-16 17:59:00	2015-06-18 00:42:58.297605	2015-06-18 00:42:58.297605
436	285	2014-11-16 18:05:00	2015-06-18 00:42:58.426723	2015-06-18 00:42:58.426723
437	283	2014-11-16 18:07:00	2015-06-18 00:42:58.507789	2015-06-18 00:42:58.507789
438	285	2014-11-16 18:36:00	2015-06-18 00:42:59.949044	2015-06-18 00:42:59.949044
439	286	2014-11-16 20:58:00	2015-06-18 00:43:04.811584	2015-06-18 00:43:04.811584
440	287	2014-11-16 23:40:00	2015-06-18 00:43:11.051429	2015-06-18 00:43:11.051429
441	286	2014-11-16 23:50:00	2015-06-18 00:43:11.450842	2015-06-18 00:43:11.450842
442	287	2014-11-16 23:56:00	2015-06-18 00:43:11.68242	2015-06-18 00:43:11.68242
443	288	2014-11-16 23:58:00	2015-06-18 00:43:11.772326	2015-06-18 00:43:11.772326
444	287	2014-11-17 03:04:00	2015-06-18 00:43:18.17434	2015-06-18 00:43:18.17434
445	289	2014-11-17 03:14:00	2015-06-18 00:43:18.37176	2015-06-18 00:43:18.37176
446	290	2014-11-17 03:16:00	2015-06-18 00:43:18.419025	2015-06-18 00:43:18.419025
447	291	2014-11-17 04:14:00	2015-06-18 00:43:19.840461	2015-06-18 00:43:19.840461
448	292	2014-11-17 06:36:00	2015-06-18 00:43:24.834749	2015-06-18 00:43:24.834749
449	291	2014-11-17 06:42:00	2015-06-18 00:43:25.097383	2015-06-18 00:43:25.097383
450	293	2014-11-17 06:52:00	2015-06-18 00:43:25.4941	2015-06-18 00:43:25.4941
451	291	2014-11-17 06:54:00	2015-06-18 00:43:25.574532	2015-06-18 00:43:25.574532
452	293	2014-11-17 07:14:00	2015-06-18 00:43:26.332968	2015-06-18 00:43:26.332968
453	294	2014-11-17 07:56:00	2015-06-18 00:43:27.744513	2015-06-18 00:43:27.744513
454	295	2014-11-17 12:36:00	2015-06-18 00:43:37.592559	2015-06-18 00:43:37.592559
455	296	2014-11-17 13:23:00	2015-06-18 00:43:38.835626	2015-06-18 00:43:38.835626
456	297	2014-11-17 13:43:00	2015-06-18 00:43:39.266977	2015-06-18 00:43:39.266977
457	296	2014-11-17 13:45:00	2015-06-18 00:43:39.319267	2015-06-18 00:43:39.319267
458	297	2014-11-17 13:49:00	2015-06-18 00:43:39.413493	2015-06-18 00:43:39.413493
459	298	2014-11-17 14:48:00	2015-06-18 00:43:41.620266	2015-06-18 00:43:41.620266
460	299	2014-11-17 16:31:00	2015-06-18 00:43:44.691687	2015-06-18 00:43:44.691687
461	300	2014-11-17 16:35:00	2015-06-18 00:43:44.851471	2015-06-18 00:43:44.851471
462	301	2014-11-17 18:04:00	2015-06-18 00:43:48.79722	2015-06-18 00:43:48.79722
463	300	2014-11-17 18:08:00	2015-06-18 00:43:49.008305	2015-06-18 00:43:49.008305
464	302	2014-11-17 19:57:00	2015-06-18 00:43:52.811016	2015-06-18 00:43:52.811016
465	303	2014-11-17 21:14:00	2015-06-18 00:43:54.7349	2015-06-18 00:43:54.7349
466	304	2014-11-17 21:47:00	2015-06-18 00:43:55.951074	2015-06-18 00:43:55.951074
467	305	2014-11-18 08:49:00	2015-06-18 00:44:20.117715	2015-06-18 00:44:20.117715
468	304	2014-11-18 09:15:00	2015-06-18 00:44:20.943682	2015-06-18 00:44:20.943682
469	305	2014-11-18 09:17:00	2015-06-18 00:44:21.020915	2015-06-18 00:44:21.020915
470	304	2014-11-18 09:21:00	2015-06-18 00:44:21.195024	2015-06-18 00:44:21.195024
471	305	2014-11-18 09:25:00	2015-06-18 00:44:21.369945	2015-06-18 00:44:21.369945
472	304	2014-11-18 09:29:00	2015-06-18 00:44:21.538288	2015-06-18 00:44:21.538288
473	305	2014-11-18 09:33:00	2015-06-18 00:44:21.704105	2015-06-18 00:44:21.704105
474	304	2014-11-18 09:37:00	2015-06-18 00:44:21.867541	2015-06-18 00:44:21.867541
475	305	2014-11-18 09:41:00	2015-06-18 00:44:22.041898	2015-06-18 00:44:22.041898
476	304	2014-11-18 09:47:00	2015-06-18 00:44:22.304345	2015-06-18 00:44:22.304345
477	306	2014-11-18 10:13:00	2015-06-18 00:44:23.372394	2015-06-18 00:44:23.372394
478	307	2014-11-18 10:23:00	2015-06-18 00:44:23.822802	2015-06-18 00:44:23.822802
479	306	2014-11-18 10:43:00	2015-06-18 00:44:24.558241	2015-06-18 00:44:24.558241
480	304	2014-11-18 11:17:00	2015-06-18 00:44:25.914321	2015-06-18 00:44:25.914321
481	306	2014-11-18 11:23:00	2015-06-18 00:44:26.112512	2015-06-18 00:44:26.112512
482	304	2014-11-18 11:25:00	2015-06-18 00:44:26.201482	2015-06-18 00:44:26.201482
483	306	2014-11-18 11:31:00	2015-06-18 00:44:26.506633	2015-06-18 00:44:26.506633
484	304	2014-11-18 11:49:00	2015-06-18 00:44:27.077045	2015-06-18 00:44:27.077045
485	306	2014-11-18 11:51:00	2015-06-18 00:44:27.128376	2015-06-18 00:44:27.128376
486	308	2014-11-18 13:53:00	2015-06-18 00:44:31.323772	2015-06-18 00:44:31.323772
487	309	2014-11-18 15:38:00	2015-06-18 00:44:35.081568	2015-06-18 00:44:35.081568
488	310	2014-11-19 02:32:00	2015-06-18 00:44:58.279664	2015-06-18 00:44:58.279664
489	309	2014-11-19 02:36:00	2015-06-18 00:44:58.498757	2015-06-18 00:44:58.498757
490	311	2014-11-19 10:29:00	2015-06-18 00:45:13.982835	2015-06-18 00:45:13.982835
491	312	2014-11-19 15:29:00	2015-06-18 00:45:22.091511	2015-06-18 00:45:22.091511
492	313	2014-11-19 16:01:00	2015-06-18 00:45:22.892725	2015-06-18 00:45:22.892725
493	314	2014-11-19 17:01:00	2015-06-18 00:45:24.754374	2015-06-18 00:45:24.754374
494	315	2014-11-19 21:49:00	2015-06-18 00:45:33.317493	2015-06-18 00:45:33.317493
495	314	2014-11-19 22:35:00	2015-06-18 00:45:34.893898	2015-06-18 00:45:34.893898
496	315	2014-11-19 22:39:00	2015-06-18 00:45:35.046003	2015-06-18 00:45:35.046003
497	314	2014-11-19 22:49:00	2015-06-18 00:45:35.347862	2015-06-18 00:45:35.347862
498	316	2014-11-19 23:25:00	2015-06-18 00:45:36.647402	2015-06-18 00:45:36.647402
499	314	2014-11-20 00:33:00	2015-06-18 00:45:39.457182	2015-06-18 00:45:39.457182
500	317	2014-11-20 02:17:00	2015-06-18 00:45:42.949155	2015-06-18 00:45:42.949155
501	314	2014-11-20 02:21:00	2015-06-18 00:45:43.118521	2015-06-18 00:45:43.118521
502	317	2014-11-20 02:23:00	2015-06-18 00:45:43.17695	2015-06-18 00:45:43.17695
503	318	2014-11-20 02:39:00	2015-06-18 00:45:43.628767	2015-06-18 00:45:43.628767
504	319	2014-11-20 10:49:00	2015-06-18 00:45:56.406176	2015-06-18 00:45:56.406176
505	320	2014-11-20 11:09:00	2015-06-18 00:45:56.884596	2015-06-18 00:45:56.884596
506	321	2014-11-20 11:15:00	2015-06-18 00:45:57.034845	2015-06-18 00:45:57.034845
507	320	2014-11-20 11:21:00	2015-06-18 00:45:57.185083	2015-06-18 00:45:57.185083
508	321	2014-11-20 11:27:00	2015-06-18 00:45:57.34528	2015-06-18 00:45:57.34528
509	320	2014-11-20 11:35:00	2015-06-18 00:45:57.526816	2015-06-18 00:45:57.526816
510	322	2014-11-20 14:15:00	2015-06-18 00:46:01.64508	2015-06-18 00:46:01.64508
511	320	2014-11-20 14:19:00	2015-06-18 00:46:02.022354	2015-06-18 00:46:02.022354
512	322	2014-11-20 14:21:00	2015-06-18 00:46:02.116718	2015-06-18 00:46:02.116718
513	323	2014-11-20 14:25:00	2015-06-18 00:46:02.289736	2015-06-18 00:46:02.289736
514	324	2014-11-20 16:25:00	2015-06-18 00:46:05.641496	2015-06-18 00:46:05.641496
515	325	2014-11-20 17:17:00	2015-06-18 00:46:07.17952	2015-06-18 00:46:07.17952
516	324	2014-11-20 17:21:00	2015-06-18 00:46:07.276597	2015-06-18 00:46:07.276597
517	325	2014-11-20 17:25:00	2015-06-18 00:46:07.382392	2015-06-18 00:46:07.382392
518	324	2014-11-20 17:29:00	2015-06-18 00:46:07.478621	2015-06-18 00:46:07.478621
519	325	2014-11-20 17:31:00	2015-06-18 00:46:07.535841	2015-06-18 00:46:07.535841
520	324	2014-11-20 17:35:00	2015-06-18 00:46:07.637684	2015-06-18 00:46:07.637684
521	326	2014-11-20 17:53:00	2015-06-18 00:46:08.077279	2015-06-18 00:46:08.077279
522	327	2014-11-20 20:05:00	2015-06-18 00:46:11.695468	2015-06-18 00:46:11.695468
523	328	2014-11-20 22:33:00	2015-06-18 00:46:15.826792	2015-06-18 00:46:15.826792
524	329	2014-11-20 22:37:00	2015-06-18 00:46:15.927994	2015-06-18 00:46:15.927994
525	328	2014-11-20 22:39:00	2015-06-18 00:46:15.976376	2015-06-18 00:46:15.976376
526	329	2014-11-20 23:27:00	2015-06-18 00:46:17.345965	2015-06-18 00:46:17.345965
527	330	2014-11-21 00:23:00	2015-06-18 00:46:18.814727	2015-06-18 00:46:18.814727
528	331	2014-11-21 04:51:00	2015-06-18 00:46:25.594457	2015-06-18 00:46:25.594457
529	332	2014-11-21 08:04:00	2015-06-18 00:46:30.428779	2015-06-18 00:46:30.428779
530	331	2014-11-21 08:49:00	2015-06-18 00:46:31.690931	2015-06-18 00:46:31.690931
531	333	2014-11-21 10:15:00	2015-06-18 00:46:33.940635	2015-06-18 00:46:33.940635
532	334	2014-11-21 10:17:00	2015-06-18 00:46:34.020853	2015-06-18 00:46:34.020853
533	335	2014-11-21 13:13:00	2015-06-18 00:46:39.504196	2015-06-18 00:46:39.504196
534	336	2014-11-21 16:10:00	2015-06-18 00:46:44.668557	2015-06-18 00:46:44.668557
535	337	2014-11-21 17:13:00	2015-06-18 00:46:46.521782	2015-06-18 00:46:46.521782
536	338	2014-11-21 19:38:00	2015-06-18 00:46:51.04251	2015-06-18 00:46:51.04251
537	337	2014-11-21 19:46:00	2015-06-18 00:46:51.255229	2015-06-18 00:46:51.255229
538	339	2014-11-21 22:36:00	2015-06-18 00:46:56.106626	2015-06-18 00:46:56.106626
539	337	2014-11-21 22:38:00	2015-06-18 00:46:56.147631	2015-06-18 00:46:56.147631
540	339	2014-11-21 22:44:00	2015-06-18 00:46:56.267119	2015-06-18 00:46:56.267119
541	337	2014-11-21 23:21:00	2015-06-18 00:46:57.155345	2015-06-18 00:46:57.155345
542	339	2014-11-21 23:23:00	2015-06-18 00:46:57.21236	2015-06-18 00:46:57.21236
543	337	2014-11-21 23:25:00	2015-06-18 00:46:57.393024	2015-06-18 00:46:57.393024
544	339	2014-11-21 23:29:00	2015-06-18 00:46:57.525035	2015-06-18 00:46:57.525035
545	340	2014-11-22 00:15:00	2015-06-18 00:46:58.800503	2015-06-18 00:46:58.800503
546	341	2014-11-22 03:05:00	2015-06-18 00:47:04.093454	2015-06-18 00:47:04.093454
547	342	2014-11-22 03:35:00	2015-06-18 00:47:05.093583	2015-06-18 00:47:05.093583
548	343	2014-11-22 05:36:00	2015-06-18 00:47:08.463804	2015-06-18 00:47:08.463804
549	342	2014-11-22 05:38:00	2015-06-18 00:47:08.51656	2015-06-18 00:47:08.51656
550	343	2014-11-22 05:40:00	2015-06-18 00:47:08.56905	2015-06-18 00:47:08.56905
551	342	2014-11-22 05:42:00	2015-06-18 00:47:08.743311	2015-06-18 00:47:08.743311
552	344	2014-11-22 10:19:00	2015-06-18 00:47:16.69424	2015-06-18 00:47:16.69424
553	345	2014-11-22 13:50:00	2015-06-18 00:47:23.253937	2015-06-18 00:47:23.253937
554	344	2014-11-22 14:10:00	2015-06-18 00:47:23.779545	2015-06-18 00:47:23.779545
555	345	2014-11-22 14:12:00	2015-06-18 00:47:23.833566	2015-06-18 00:47:23.833566
556	346	2014-11-22 15:07:00	2015-06-18 00:47:25.49218	2015-06-18 00:47:25.49218
557	347	2014-11-22 19:15:00	2015-06-18 00:47:32.657142	2015-06-18 00:47:32.657142
558	346	2014-11-22 19:19:00	2015-06-18 00:47:32.795661	2015-06-18 00:47:32.795661
559	347	2014-11-22 19:39:00	2015-06-18 00:47:33.333754	2015-06-18 00:47:33.333754
560	346	2014-11-22 20:00:00	2015-06-18 00:47:34.037745	2015-06-18 00:47:34.037745
561	348	2014-11-22 22:37:00	2015-06-18 00:47:39.059694	2015-06-18 00:47:39.059694
562	349	2014-11-23 07:26:00	2015-06-18 00:47:53.906503	2015-06-18 00:47:53.906503
563	350	2014-11-23 08:56:00	2015-06-18 00:47:56.047726	2015-06-18 00:47:56.047726
564	351	2014-11-23 15:20:00	2015-06-18 00:48:06.448743	2015-06-18 00:48:06.448743
565	350	2014-11-23 15:32:00	2015-06-18 00:48:06.826617	2015-06-18 00:48:06.826617
566	351	2014-11-23 15:34:00	2015-06-18 00:48:06.891342	2015-06-18 00:48:06.891342
567	350	2014-11-23 15:40:00	2015-06-18 00:48:07.066933	2015-06-18 00:48:07.066933
568	351	2014-11-23 15:42:00	2015-06-18 00:48:07.129147	2015-06-18 00:48:07.129147
569	350	2014-11-23 16:31:00	2015-06-18 00:48:08.421	2015-06-18 00:48:08.421
570	351	2014-11-23 16:33:00	2015-06-18 00:48:08.615422	2015-06-18 00:48:08.615422
571	350	2014-11-23 19:26:00	2015-06-18 00:48:14.040965	2015-06-18 00:48:14.040965
572	352	2014-11-23 19:28:00	2015-06-18 00:48:14.100464	2015-06-18 00:48:14.100464
573	350	2014-11-23 19:30:00	2015-06-18 00:48:14.156692	2015-06-18 00:48:14.156692
574	352	2014-11-23 19:32:00	2015-06-18 00:48:14.2113	2015-06-18 00:48:14.2113
575	353	2014-11-23 19:44:00	2015-06-18 00:48:14.53643	2015-06-18 00:48:14.53643
576	354	2014-11-23 23:37:00	2015-06-18 00:48:22.264265	2015-06-18 00:48:22.264265
577	355	2014-11-24 01:34:00	2015-06-18 00:48:25.527296	2015-06-18 00:48:25.527296
578	356	2014-11-24 04:54:00	2015-06-18 00:48:31.127471	2015-06-18 00:48:31.127471
579	357	2014-11-24 10:16:00	2015-06-18 00:48:40.275332	2015-06-18 00:48:40.275332
580	358	2014-11-24 16:10:00	2015-06-18 00:48:52.411156	2015-06-18 00:48:52.411156
581	359	2014-11-24 17:41:00	2015-06-18 00:48:55.86904	2015-06-18 00:48:55.86904
582	360	2014-11-24 19:45:00	2015-06-18 00:48:59.126458	2015-06-18 00:48:59.126458
583	359	2014-11-24 19:47:00	2015-06-18 00:48:59.175854	2015-06-18 00:48:59.175854
584	360	2014-11-24 19:49:00	2015-06-18 00:48:59.228888	2015-06-18 00:48:59.228888
585	359	2014-11-24 20:08:00	2015-06-18 00:48:59.848273	2015-06-18 00:48:59.848273
586	361	2014-11-24 21:49:00	2015-06-18 00:49:02.254524	2015-06-18 00:49:02.254524
587	362	2014-11-25 03:12:00	2015-06-18 00:49:11.637426	2015-06-18 00:49:11.637426
588	361	2014-11-25 03:26:00	2015-06-18 00:49:11.922491	2015-06-18 00:49:11.922491
589	363	2014-11-25 04:12:00	2015-06-18 00:49:12.918441	2015-06-18 00:49:12.918441
590	361	2014-11-25 11:18:00	2015-06-18 00:49:24.816275	2015-06-18 00:49:24.816275
591	364	2014-11-25 14:01:00	2015-06-18 00:49:30.507823	2015-06-18 00:49:30.507823
592	365	2014-11-25 15:08:00	2015-06-18 00:49:32.832995	2015-06-18 00:49:32.832995
593	364	2014-11-25 15:24:00	2015-06-18 00:49:33.406094	2015-06-18 00:49:33.406094
594	366	2014-11-25 15:28:00	2015-06-18 00:49:33.578122	2015-06-18 00:49:33.578122
595	367	2014-11-25 17:45:00	2015-06-18 00:49:37.407126	2015-06-18 00:49:37.407126
596	368	2014-11-25 22:18:00	2015-06-18 00:49:45.57042	2015-06-18 00:49:45.57042
597	367	2014-11-25 22:23:00	2015-06-18 00:49:45.681018	2015-06-18 00:49:45.681018
598	369	2014-11-25 23:48:00	2015-06-18 00:49:47.637223	2015-06-18 00:49:47.637223
599	367	2014-11-26 00:20:00	2015-06-18 00:49:48.380351	2015-06-18 00:49:48.380351
600	370	2014-11-26 05:48:00	2015-06-18 00:49:57.250359	2015-06-18 00:49:57.250359
601	367	2014-11-26 05:50:00	2015-06-18 00:49:57.291137	2015-06-18 00:49:57.291137
602	370	2014-11-26 06:00:00	2015-06-18 00:49:57.528445	2015-06-18 00:49:57.528445
603	371	2014-11-26 09:53:00	2015-06-18 00:50:04.530842	2015-06-18 00:50:04.530842
604	372	2014-11-26 11:17:00	2015-06-18 00:50:06.927416	2015-06-18 00:50:06.927416
605	373	2014-11-26 12:57:00	2015-06-18 00:50:09.684497	2015-06-18 00:50:09.684497
606	374	2014-11-26 13:11:00	2015-06-18 00:50:10.038769	2015-06-18 00:50:10.038769
607	375	2014-11-26 15:11:00	2015-06-18 00:50:13.306093	2015-06-18 00:50:13.306093
608	376	2014-11-26 15:37:00	2015-06-18 00:50:13.95037	2015-06-18 00:50:13.95037
609	375	2014-11-26 15:39:00	2015-06-18 00:50:14.00612	2015-06-18 00:50:14.00612
610	376	2014-11-26 15:41:00	2015-06-18 00:50:14.055208	2015-06-18 00:50:14.055208
611	377	2014-11-26 16:34:00	2015-06-18 00:50:15.561123	2015-06-18 00:50:15.561123
612	378	2014-11-26 17:55:00	2015-06-18 00:50:17.872145	2015-06-18 00:50:17.872145
613	379	2014-11-26 17:57:00	2015-06-18 00:50:17.933265	2015-06-18 00:50:17.933265
614	380	2014-11-26 18:03:00	2015-06-18 00:50:18.083783	2015-06-18 00:50:18.083783
615	379	2014-11-26 18:07:00	2015-06-18 00:50:18.185026	2015-06-18 00:50:18.185026
616	380	2014-11-26 18:13:00	2015-06-18 00:50:18.341759	2015-06-18 00:50:18.341759
617	379	2014-11-26 18:23:00	2015-06-18 00:50:18.604947	2015-06-18 00:50:18.604947
618	381	2014-11-26 20:50:00	2015-06-18 00:50:23.246061	2015-06-18 00:50:23.246061
619	382	2014-11-27 00:00:00	2015-06-18 00:50:28.42894	2015-06-18 00:50:28.42894
620	381	2014-11-27 00:24:00	2015-06-18 00:50:29.254255	2015-06-18 00:50:29.254255
621	383	2014-11-27 00:40:00	2015-06-18 00:50:29.682965	2015-06-18 00:50:29.682965
622	384	2014-11-27 03:30:00	2015-06-18 00:50:35.061496	2015-06-18 00:50:35.061496
623	383	2014-11-27 03:52:00	2015-06-18 00:50:35.691409	2015-06-18 00:50:35.691409
624	385	2014-11-27 03:56:00	2015-06-18 00:50:35.807752	2015-06-18 00:50:35.807752
625	386	2014-11-27 04:36:00	2015-06-18 00:50:37.430598	2015-06-18 00:50:37.430598
626	385	2014-11-27 04:42:00	2015-06-18 00:50:37.652069	2015-06-18 00:50:37.652069
627	386	2014-11-27 04:44:00	2015-06-18 00:50:37.729001	2015-06-18 00:50:37.729001
628	387	2014-11-27 04:46:00	2015-06-18 00:50:37.81409	2015-06-18 00:50:37.81409
629	388	2014-11-27 11:28:00	2015-06-18 00:50:51.999295	2015-06-18 00:50:51.999295
630	389	2014-11-27 13:06:00	2015-06-18 00:50:55.40117	2015-06-18 00:50:55.40117
631	388	2014-11-27 13:24:00	2015-06-18 00:50:55.809318	2015-06-18 00:50:55.809318
632	390	2014-11-27 14:46:00	2015-06-18 00:50:58.337184	2015-06-18 00:50:58.337184
633	391	2014-11-27 16:34:00	2015-06-18 00:51:02.116621	2015-06-18 00:51:02.116621
634	392	2014-11-27 17:08:00	2015-06-18 00:51:03.299521	2015-06-18 00:51:03.299521
635	391	2014-11-27 17:47:00	2015-06-18 00:51:04.29523	2015-06-18 00:51:04.29523
636	393	2014-11-27 18:39:00	2015-06-18 00:51:05.89732	2015-06-18 00:51:05.89732
637	394	2014-11-27 18:55:00	2015-06-18 00:51:06.318551	2015-06-18 00:51:06.318551
638	395	2014-11-27 21:25:00	2015-06-18 00:51:11.186143	2015-06-18 00:51:11.186143
639	396	2014-11-28 00:38:00	2015-06-18 00:51:17.756091	2015-06-18 00:51:17.756091
640	395	2014-11-28 00:44:00	2015-06-18 00:51:17.930753	2015-06-18 00:51:17.930753
641	397	2014-11-28 01:25:00	2015-06-18 00:51:18.962109	2015-06-18 00:51:18.962109
642	398	2014-11-28 03:42:00	2015-06-18 00:51:22.808312	2015-06-18 00:51:22.808312
643	397	2014-11-28 03:44:00	2015-06-18 00:51:22.854346	2015-06-18 00:51:22.854346
644	398	2014-11-28 03:46:00	2015-06-18 00:51:22.903412	2015-06-18 00:51:22.903412
645	399	2014-11-28 04:24:00	2015-06-18 00:51:23.84422	2015-06-18 00:51:23.84422
646	400	2014-11-28 08:09:00	2015-06-18 00:51:31.041708	2015-06-18 00:51:31.041708
647	401	2014-11-28 09:59:00	2015-06-18 00:51:35.363788	2015-06-18 00:51:35.363788
648	402	2014-11-28 13:59:00	2015-06-18 00:51:42.813166	2015-06-18 00:51:42.813166
649	403	2014-11-28 22:30:00	2015-06-18 00:51:59.84777	2015-06-18 00:51:59.84777
650	402	2014-11-28 22:46:00	2015-06-18 00:52:00.528937	2015-06-18 00:52:00.528937
651	404	2014-11-28 22:54:00	2015-06-18 00:52:00.81989	2015-06-18 00:52:00.81989
652	405	2014-11-29 00:54:00	2015-06-18 00:52:04.625718	2015-06-18 00:52:04.625718
653	406	2014-11-29 02:12:00	2015-06-18 00:52:07.417385	2015-06-18 00:52:07.417385
654	404	2014-11-29 02:14:00	2015-06-18 00:52:07.482485	2015-06-18 00:52:07.482485
655	407	2014-11-29 05:00:00	2015-06-18 00:52:12.560752	2015-06-18 00:52:12.560752
656	404	2014-11-29 05:12:00	2015-06-18 00:52:12.935011	2015-06-18 00:52:12.935011
657	407	2014-11-29 05:16:00	2015-06-18 00:52:13.055369	2015-06-18 00:52:13.055369
658	404	2014-11-29 05:18:00	2015-06-18 00:52:13.111845	2015-06-18 00:52:13.111845
659	408	2014-11-29 05:20:00	2015-06-18 00:52:13.168276	2015-06-18 00:52:13.168276
660	409	2014-11-29 05:30:00	2015-06-18 00:52:13.555902	2015-06-18 00:52:13.555902
661	408	2014-11-29 05:34:00	2015-06-18 00:52:13.662494	2015-06-18 00:52:13.662494
662	409	2014-11-29 06:37:00	2015-06-18 00:52:15.646952	2015-06-18 00:52:15.646952
663	410	2014-11-29 10:07:00	2015-06-18 00:52:22.430307	2015-06-18 00:52:22.430307
664	409	2014-11-29 10:09:00	2015-06-18 00:52:22.483137	2015-06-18 00:52:22.483137
665	411	2014-11-29 10:31:00	2015-06-18 00:52:23.3513	2015-06-18 00:52:23.3513
666	412	2014-11-29 14:25:00	2015-06-18 00:52:31.258275	2015-06-18 00:52:31.258275
667	413	2014-11-29 16:39:00	2015-06-18 00:52:35.462544	2015-06-18 00:52:35.462544
668	414	2014-11-29 18:25:00	2015-06-18 00:52:38.20896	2015-06-18 00:52:38.20896
669	413	2014-11-29 18:33:00	2015-06-18 00:52:38.531016	2015-06-18 00:52:38.531016
670	414	2014-11-29 19:17:00	2015-06-18 00:52:40.114125	2015-06-18 00:52:40.114125
671	413	2014-11-29 19:37:00	2015-06-18 00:52:40.555777	2015-06-18 00:52:40.555777
672	415	2014-11-29 21:36:00	2015-06-18 00:52:43.650158	2015-06-18 00:52:43.650158
673	413	2014-11-29 22:57:00	2015-06-18 00:52:45.756115	2015-06-18 00:52:45.756115
674	416	2014-11-29 23:03:00	2015-06-18 00:52:45.900584	2015-06-18 00:52:45.900584
675	417	2014-11-30 02:55:00	2015-06-18 00:52:52.907643	2015-06-18 00:52:52.907643
676	418	2014-11-30 13:04:00	2015-06-18 00:53:10.274318	2015-06-18 00:53:10.274318
677	417	2014-11-30 13:12:00	2015-06-18 00:53:10.499237	2015-06-18 00:53:10.499237
678	419	2014-11-30 14:11:00	2015-06-18 00:53:12.11537	2015-06-18 00:53:12.11537
679	420	2014-11-30 15:50:00	2015-06-18 00:53:15.32787	2015-06-18 00:53:15.32787
680	421	2014-11-30 16:09:00	2015-06-18 00:53:15.998363	2015-06-18 00:53:15.998363
681	420	2014-11-30 16:15:00	2015-06-18 00:53:16.412701	2015-06-18 00:53:16.412701
682	421	2014-11-30 16:17:00	2015-06-18 00:53:16.485731	2015-06-18 00:53:16.485731
683	422	2014-11-30 16:21:00	2015-06-18 00:53:16.603187	2015-06-18 00:53:16.603187
684	420	2014-11-30 16:47:00	2015-06-18 00:53:17.240228	2015-06-18 00:53:17.240228
685	423	2014-11-30 16:49:00	2015-06-18 00:53:17.294565	2015-06-18 00:53:17.294565
686	424	2014-11-30 20:24:00	2015-06-18 00:53:23.84088	2015-06-18 00:53:23.84088
687	425	2014-11-30 20:54:00	2015-06-18 00:53:24.608724	2015-06-18 00:53:24.608724
688	424	2014-11-30 21:16:00	2015-06-18 00:53:25.343222	2015-06-18 00:53:25.343222
689	426	2014-11-30 22:30:00	2015-06-18 00:53:27.448195	2015-06-18 00:53:27.448195
690	427	2014-12-01 01:00:00	2015-06-18 00:53:31.894226	2015-06-18 00:53:31.894226
691	426	2014-12-01 01:04:00	2015-06-18 00:53:32.062812	2015-06-18 00:53:32.062812
692	427	2014-12-01 01:30:00	2015-06-18 00:53:33.013318	2015-06-18 00:53:33.013318
693	426	2014-12-01 02:02:00	2015-06-18 00:53:34.393586	2015-06-18 00:53:34.393586
694	427	2014-12-01 02:10:00	2015-06-18 00:53:34.679795	2015-06-18 00:53:34.679795
695	426	2014-12-01 02:12:00	2015-06-18 00:53:34.752335	2015-06-18 00:53:34.752335
696	427	2014-12-01 02:16:00	2015-06-18 00:53:34.892608	2015-06-18 00:53:34.892608
697	428	2014-12-01 03:59:00	2015-06-18 00:53:38.326992	2015-06-18 00:53:38.326992
698	429	2014-12-01 04:21:00	2015-06-18 00:53:39.21749	2015-06-18 00:53:39.21749
699	428	2014-12-01 04:23:00	2015-06-18 00:53:39.281807	2015-06-18 00:53:39.281807
700	429	2014-12-01 04:29:00	2015-06-18 00:53:39.468216	2015-06-18 00:53:39.468216
701	430	2014-12-01 09:14:00	2015-06-18 00:53:48.052538	2015-06-18 00:53:48.052538
702	429	2014-12-01 09:16:00	2015-06-18 00:53:48.103685	2015-06-18 00:53:48.103685
703	430	2014-12-01 09:18:00	2015-06-18 00:53:48.151849	2015-06-18 00:53:48.151849
704	429	2014-12-01 09:28:00	2015-06-18 00:53:48.391525	2015-06-18 00:53:48.391525
705	431	2014-12-01 10:46:00	2015-06-18 00:53:50.351438	2015-06-18 00:53:50.351438
706	432	2014-12-01 13:10:00	2015-06-18 00:53:55.249134	2015-06-18 00:53:55.249134
707	431	2014-12-01 16:00:00	2015-06-18 00:54:00.242176	2015-06-18 00:54:00.242176
708	433	2014-12-01 17:10:00	2015-06-18 00:54:02.294094	2015-06-18 00:54:02.294094
709	434	2014-12-01 17:48:00	2015-06-18 00:54:03.343045	2015-06-18 00:54:03.343045
710	435	2014-12-01 18:12:00	2015-06-18 00:54:03.892996	2015-06-18 00:54:03.892996
711	436	2014-12-01 22:07:00	2015-06-18 00:54:10.211896	2015-06-18 00:54:10.211896
712	437	2014-12-02 02:39:00	2015-06-18 00:54:18.111744	2015-06-18 00:54:18.111744
713	438	2014-12-02 13:41:00	2015-06-18 00:54:36.795087	2015-06-18 00:54:36.795087
714	439	2014-12-02 13:53:00	2015-06-18 00:54:37.091342	2015-06-18 00:54:37.091342
715	438	2014-12-02 13:55:00	2015-06-18 00:54:37.141863	2015-06-18 00:54:37.141863
716	440	2014-12-02 14:01:00	2015-06-18 00:54:37.291311	2015-06-18 00:54:37.291311
717	441	2014-12-02 17:05:00	2015-06-18 00:54:43.052697	2015-06-18 00:54:43.052697
718	442	2014-12-02 17:23:00	2015-06-18 00:54:43.621567	2015-06-18 00:54:43.621567
719	441	2014-12-02 17:27:00	2015-06-18 00:54:43.720308	2015-06-18 00:54:43.720308
720	443	2014-12-02 19:43:00	2015-06-18 00:54:47.378621	2015-06-18 00:54:47.378621
721	444	2014-12-03 01:13:00	2015-06-18 00:54:57.534527	2015-06-18 00:54:57.534527
722	443	2014-12-03 01:15:00	2015-06-18 00:54:57.603686	2015-06-18 00:54:57.603686
723	445	2014-12-03 06:57:00	2015-06-18 00:55:06.851915	2015-06-18 00:55:06.851915
724	443	2014-12-03 07:23:00	2015-06-18 00:55:07.514562	2015-06-18 00:55:07.514562
725	446	2014-12-03 09:29:00	2015-06-18 00:55:10.82428	2015-06-18 00:55:10.82428
726	447	2014-12-03 09:45:00	2015-06-18 00:55:11.178132	2015-06-18 00:55:11.178132
727	446	2014-12-03 09:47:00	2015-06-18 00:55:11.225507	2015-06-18 00:55:11.225507
728	448	2014-12-03 15:05:00	2015-06-18 00:55:21.015156	2015-06-18 00:55:21.015156
729	449	2014-12-03 16:23:00	2015-06-18 00:55:23.367029	2015-06-18 00:55:23.367029
730	450	2014-12-03 17:37:00	2015-06-18 00:55:25.534815	2015-06-18 00:55:25.534815
731	449	2014-12-03 18:01:00	2015-06-18 00:55:26.594487	2015-06-18 00:55:26.594487
732	451	2014-12-03 19:56:00	2015-06-18 00:55:30.249201	2015-06-18 00:55:30.249201
733	452	2014-12-03 22:03:00	2015-06-18 00:55:33.804336	2015-06-18 00:55:33.804336
734	453	2014-12-03 22:25:00	2015-06-18 00:55:34.444667	2015-06-18 00:55:34.444667
735	452	2014-12-03 22:49:00	2015-06-18 00:55:35.069268	2015-06-18 00:55:35.069268
736	454	2014-12-03 23:51:00	2015-06-18 00:55:36.627474	2015-06-18 00:55:36.627474
737	455	2014-12-04 03:44:00	2015-06-18 00:55:43.780436	2015-06-18 00:55:43.780436
738	454	2014-12-04 03:46:00	2015-06-18 00:55:43.827074	2015-06-18 00:55:43.827074
739	455	2014-12-04 03:50:00	2015-06-18 00:55:43.91254	2015-06-18 00:55:43.91254
740	456	2014-12-04 07:08:00	2015-06-18 00:55:51.62429	2015-06-18 00:55:51.62429
741	457	2014-12-04 07:36:00	2015-06-18 00:55:52.532265	2015-06-18 00:55:52.532265
742	456	2014-12-04 07:38:00	2015-06-18 00:55:52.617017	2015-06-18 00:55:52.617017
743	457	2014-12-04 07:40:00	2015-06-18 00:55:52.707264	2015-06-18 00:55:52.707264
744	458	2014-12-04 12:07:00	2015-06-18 00:56:03.06097	2015-06-18 00:56:03.06097
745	459	2014-12-04 12:15:00	2015-06-18 00:56:03.348275	2015-06-18 00:56:03.348275
746	460	2014-12-04 15:17:00	2015-06-18 00:56:09.235149	2015-06-18 00:56:09.235149
747	461	2014-12-04 17:08:00	2015-06-18 00:56:12.624752	2015-06-18 00:56:12.624752
748	462	2014-12-04 20:15:00	2015-06-18 00:56:20.117642	2015-06-18 00:56:20.117642
749	463	2014-12-04 22:14:00	2015-06-18 00:56:24.031442	2015-06-18 00:56:24.031442
750	462	2014-12-04 23:25:00	2015-06-18 00:56:25.98094	2015-06-18 00:56:25.98094
751	464	2014-12-05 03:15:00	2015-06-18 00:56:34.730721	2015-06-18 00:56:34.730721
752	462	2014-12-05 03:17:00	2015-06-18 00:56:34.778896	2015-06-18 00:56:34.778896
753	464	2014-12-05 03:19:00	2015-06-18 00:56:34.827333	2015-06-18 00:56:34.827333
754	462	2014-12-05 03:35:00	2015-06-18 00:56:35.173479	2015-06-18 00:56:35.173479
755	464	2014-12-05 03:43:00	2015-06-18 00:56:35.347038	2015-06-18 00:56:35.347038
756	465	2014-12-05 05:28:00	2015-06-18 00:56:39.217987	2015-06-18 00:56:39.217987
757	464	2014-12-05 05:32:00	2015-06-18 00:56:39.337588	2015-06-18 00:56:39.337588
758	466	2014-12-05 06:53:00	2015-06-18 00:56:42.660615	2015-06-18 00:56:42.660615
759	467	2014-12-05 07:17:00	2015-06-18 00:56:43.548416	2015-06-18 00:56:43.548416
760	468	2014-12-05 09:28:00	2015-06-18 00:56:47.67162	2015-06-18 00:56:47.67162
761	467	2014-12-05 09:30:00	2015-06-18 00:56:47.723166	2015-06-18 00:56:47.723166
762	469	2014-12-05 09:50:00	2015-06-18 00:56:48.390737	2015-06-18 00:56:48.390737
763	467	2014-12-05 10:49:00	2015-06-18 00:56:50.120219	2015-06-18 00:56:50.120219
764	470	2014-12-05 11:01:00	2015-06-18 00:56:50.660138	2015-06-18 00:56:50.660138
765	471	2014-12-05 12:26:00	2015-06-18 00:56:53.581828	2015-06-18 00:56:53.581828
766	472	2014-12-05 14:04:00	2015-06-18 00:56:56.786695	2015-06-18 00:56:56.786695
767	473	2014-12-05 15:39:00	2015-06-18 00:57:00.077269	2015-06-18 00:57:00.077269
768	474	2014-12-05 16:14:00	2015-06-18 00:57:01.138176	2015-06-18 00:57:01.138176
769	473	2014-12-05 17:12:00	2015-06-18 00:57:02.470376	2015-06-18 00:57:02.470376
770	475	2014-12-05 17:36:00	2015-06-18 00:57:03.169224	2015-06-18 00:57:03.169224
771	473	2014-12-05 18:05:00	2015-06-18 00:57:03.80343	2015-06-18 00:57:03.80343
772	476	2014-12-05 19:01:00	2015-06-18 00:57:05.29664	2015-06-18 00:57:05.29664
773	477	2014-12-05 20:48:00	2015-06-18 00:57:08.394631	2015-06-18 00:57:08.394631
774	478	2014-12-06 02:16:00	2015-06-18 00:57:19.935547	2015-06-18 00:57:19.935547
775	477	2014-12-06 03:54:00	2015-06-18 00:57:23.523375	2015-06-18 00:57:23.523375
776	479	2014-12-06 08:18:00	2015-06-18 00:57:32.805701	2015-06-18 00:57:32.805701
777	477	2014-12-06 14:05:00	2015-06-18 00:57:43.915796	2015-06-18 00:57:43.915796
778	479	2014-12-06 14:07:00	2015-06-18 00:57:43.998406	2015-06-18 00:57:43.998406
779	480	2014-12-06 14:23:00	2015-06-18 00:57:44.550727	2015-06-18 00:57:44.550727
780	481	2014-12-06 16:56:00	2015-06-18 00:57:50.536128	2015-06-18 00:57:50.536128
781	482	2014-12-06 17:06:00	2015-06-18 00:57:50.950006	2015-06-18 00:57:50.950006
782	483	2014-12-06 17:29:00	2015-06-18 00:57:52.057445	2015-06-18 00:57:52.057445
783	482	2014-12-06 17:35:00	2015-06-18 00:57:52.292497	2015-06-18 00:57:52.292497
784	484	2014-12-06 20:22:00	2015-06-18 00:57:58.69344	2015-06-18 00:57:58.69344
785	482	2014-12-06 20:36:00	2015-06-18 00:57:59.235773	2015-06-18 00:57:59.235773
786	485	2014-12-06 22:56:00	2015-06-18 00:58:05.060838	2015-06-18 00:58:05.060838
787	486	2014-12-06 23:46:00	2015-06-18 00:58:06.684121	2015-06-18 00:58:06.684121
788	487	2014-12-07 05:15:00	2015-06-18 00:58:18.020884	2015-06-18 00:58:18.020884
789	488	2014-12-07 05:31:00	2015-06-18 00:58:18.599851	2015-06-18 00:58:18.599851
790	487	2014-12-07 05:41:00	2015-06-18 00:58:18.968781	2015-06-18 00:58:18.968781
791	488	2014-12-07 05:45:00	2015-06-18 00:58:19.121018	2015-06-18 00:58:19.121018
792	489	2014-12-07 06:41:00	2015-06-18 00:58:21.252749	2015-06-18 00:58:21.252749
793	488	2014-12-07 06:47:00	2015-06-18 00:58:21.513687	2015-06-18 00:58:21.513687
794	490	2014-12-07 08:45:00	2015-06-18 00:58:26.075164	2015-06-18 00:58:26.075164
795	491	2014-12-07 12:44:00	2015-06-18 00:58:33.223821	2015-06-18 00:58:33.223821
796	492	2014-12-07 13:27:00	2015-06-18 00:58:34.799484	2015-06-18 00:58:34.799484
797	491	2014-12-07 13:29:00	2015-06-18 00:58:34.871206	2015-06-18 00:58:34.871206
798	492	2014-12-07 13:45:00	2015-06-18 00:58:35.5547	2015-06-18 00:58:35.5547
799	491	2014-12-07 13:50:00	2015-06-18 00:58:35.667984	2015-06-18 00:58:35.667984
800	492	2014-12-07 14:00:00	2015-06-18 00:58:35.9172	2015-06-18 00:58:35.9172
801	491	2014-12-07 14:06:00	2015-06-18 00:58:36.043853	2015-06-18 00:58:36.043853
802	492	2014-12-07 14:10:00	2015-06-18 00:58:36.12638	2015-06-18 00:58:36.12638
803	491	2014-12-07 14:20:00	2015-06-18 00:58:36.323082	2015-06-18 00:58:36.323082
804	492	2014-12-07 14:22:00	2015-06-18 00:58:36.364971	2015-06-18 00:58:36.364971
805	491	2014-12-07 14:24:00	2015-06-18 00:58:36.411121	2015-06-18 00:58:36.411121
806	492	2014-12-07 14:46:00	2015-06-18 00:58:37.195991	2015-06-18 00:58:37.195991
807	493	2014-12-07 16:22:00	2015-06-18 00:58:40.721304	2015-06-18 00:58:40.721304
808	494	2014-12-07 17:59:00	2015-06-18 00:58:43.731904	2015-06-18 00:58:43.731904
809	495	2014-12-07 21:25:00	2015-06-18 00:58:50.796116	2015-06-18 00:58:50.796116
810	496	2014-12-07 23:29:00	2015-06-18 00:58:55.644392	2015-06-18 00:58:55.644392
811	495	2014-12-07 23:47:00	2015-06-18 00:58:56.317021	2015-06-18 00:58:56.317021
812	497	2014-12-08 00:31:00	2015-06-18 00:58:58.039551	2015-06-18 00:58:58.039551
813	498	2014-12-08 03:00:00	2015-06-18 00:59:03.590526	2015-06-18 00:59:03.590526
814	499	2014-12-08 03:14:00	2015-06-18 00:59:04.118875	2015-06-18 00:59:04.118875
815	498	2014-12-08 04:59:00	2015-06-18 00:59:08.570469	2015-06-18 00:59:08.570469
816	500	2014-12-08 05:05:00	2015-06-18 00:59:08.740772	2015-06-18 00:59:08.740772
817	501	2014-12-08 05:23:00	2015-06-18 00:59:09.180003	2015-06-18 00:59:09.180003
818	500	2014-12-08 07:22:00	2015-06-18 00:59:12.470467	2015-06-18 00:59:12.470467
819	502	2014-12-08 07:47:00	2015-06-18 00:59:13.212216	2015-06-18 00:59:13.212216
820	503	2014-12-08 08:35:00	2015-06-18 00:59:15.204193	2015-06-18 00:59:15.204193
821	502	2014-12-08 08:37:00	2015-06-18 00:59:15.264729	2015-06-18 00:59:15.264729
822	503	2014-12-08 08:39:00	2015-06-18 00:59:15.327774	2015-06-18 00:59:15.327774
823	504	2014-12-08 09:38:00	2015-06-18 00:59:17.934776	2015-06-18 00:59:17.934776
824	505	2014-12-08 12:27:00	2015-06-18 00:59:24.499181	2015-06-18 00:59:24.499181
825	506	2014-12-08 14:36:00	2015-06-18 00:59:28.926073	2015-06-18 00:59:28.926073
826	507	2014-12-08 17:08:00	2015-06-18 00:59:33.19728	2015-06-18 00:59:33.19728
827	508	2014-12-08 17:10:00	2015-06-18 00:59:33.280762	2015-06-18 00:59:33.280762
828	509	2014-12-08 17:28:00	2015-06-18 00:59:34.256788	2015-06-18 00:59:34.256788
829	510	2014-12-08 20:09:00	2015-06-18 00:59:39.594428	2015-06-18 00:59:39.594428
830	509	2014-12-08 20:11:00	2015-06-18 00:59:39.691445	2015-06-18 00:59:39.691445
831	511	2014-12-08 20:18:00	2015-06-18 00:59:39.959578	2015-06-18 00:59:39.959578
832	512	2014-12-08 20:56:00	2015-06-18 00:59:41.081782	2015-06-18 00:59:41.081782
833	513	2014-12-09 00:07:00	2015-06-18 00:59:47.22041	2015-06-18 00:59:47.22041
834	514	2014-12-09 08:07:00	2015-06-18 01:00:02.373389	2015-06-18 01:00:02.373389
835	515	2014-12-09 09:57:00	2015-06-18 01:00:05.797648	2015-06-18 01:00:05.797648
836	516	2014-12-09 12:08:00	2015-06-18 01:00:09.612819	2015-06-18 01:00:09.612819
837	517	2014-12-09 13:45:00	2015-06-18 01:00:12.348371	2015-06-18 01:00:12.348371
838	516	2014-12-09 13:57:00	2015-06-18 01:00:12.673994	2015-06-18 01:00:12.673994
839	518	2014-12-09 14:49:00	2015-06-18 01:00:14.252986	2015-06-18 01:00:14.252986
840	516	2014-12-09 15:01:00	2015-06-18 01:00:14.561059	2015-06-18 01:00:14.561059
841	519	2014-12-09 15:22:00	2015-06-18 01:00:15.256381	2015-06-18 01:00:15.256381
842	516	2014-12-09 15:26:00	2015-06-18 01:00:15.385283	2015-06-18 01:00:15.385283
843	520	2014-12-09 15:30:00	2015-06-18 01:00:15.510338	2015-06-18 01:00:15.510338
844	521	2014-12-09 16:00:00	2015-06-18 01:00:16.307783	2015-06-18 01:00:16.307783
845	522	2014-12-09 16:36:00	2015-06-18 01:00:17.230522	2015-06-18 01:00:17.230522
846	523	2014-12-09 16:38:00	2015-06-18 01:00:17.283688	2015-06-18 01:00:17.283688
847	524	2014-12-09 16:44:00	2015-06-18 01:00:17.445255	2015-06-18 01:00:17.445255
848	523	2014-12-09 16:52:00	2015-06-18 01:00:17.83706	2015-06-18 01:00:17.83706
849	525	2014-12-09 17:38:00	2015-06-18 01:00:19.070353	2015-06-18 01:00:19.070353
850	526	2014-12-09 21:35:00	2015-06-18 01:00:25.927768	2015-06-18 01:00:25.927768
851	525	2014-12-09 21:53:00	2015-06-18 01:00:26.40314	2015-06-18 01:00:26.40314
852	527	2014-12-09 23:04:00	2015-06-18 01:00:28.479942	2015-06-18 01:00:28.479942
853	528	2014-12-10 00:57:00	2015-06-18 01:00:32.40974	2015-06-18 01:00:32.40974
854	529	2014-12-10 06:50:00	2015-06-18 01:00:42.240974	2015-06-18 01:00:42.240974
855	530	2014-12-10 07:45:00	2015-06-18 01:00:43.597994	2015-06-18 01:00:43.597994
856	531	2014-12-10 13:23:00	2015-06-18 01:00:54.873578	2015-06-18 01:00:54.873578
857	530	2014-12-10 13:53:00	2015-06-18 01:00:55.948701	2015-06-18 01:00:55.948701
858	532	2014-12-10 14:34:00	2015-06-18 01:00:57.482804	2015-06-18 01:00:57.482804
859	533	2014-12-10 18:03:00	2015-06-18 01:01:05.219824	2015-06-18 01:01:05.219824
860	534	2014-12-10 18:09:00	2015-06-18 01:01:05.408271	2015-06-18 01:01:05.408271
861	533	2014-12-10 18:20:00	2015-06-18 01:01:05.822388	2015-06-18 01:01:05.822388
862	535	2014-12-10 18:35:00	2015-06-18 01:01:06.197866	2015-06-18 01:01:06.197866
863	533	2014-12-10 18:53:00	2015-06-18 01:01:06.653312	2015-06-18 01:01:06.653312
864	536	2014-12-10 19:11:00	2015-06-18 01:01:07.245742	2015-06-18 01:01:07.245742
865	537	2014-12-11 02:42:00	2015-06-18 01:01:20.261391	2015-06-18 01:01:20.261391
866	538	2014-12-11 05:42:00	2015-06-18 01:01:25.291331	2015-06-18 01:01:25.291331
867	539	2014-12-11 05:44:00	2015-06-18 01:01:25.344757	2015-06-18 01:01:25.344757
868	540	2014-12-11 12:10:00	2015-06-18 01:01:35.962186	2015-06-18 01:01:35.962186
869	541	2014-12-11 15:10:00	2015-06-18 01:01:41.31264	2015-06-18 01:01:41.31264
870	542	2014-12-11 17:35:00	2015-06-18 01:01:45.850145	2015-06-18 01:01:45.850145
871	543	2014-12-11 17:53:00	2015-06-18 01:01:46.323126	2015-06-18 01:01:46.323126
872	544	2014-12-11 21:37:00	2015-06-18 01:01:52.673279	2015-06-18 01:01:52.673279
873	545	2014-12-12 00:16:00	2015-06-18 01:01:58.151654	2015-06-18 01:01:58.151654
874	544	2014-12-12 00:18:00	2015-06-18 01:01:58.208402	2015-06-18 01:01:58.208402
875	543	2014-12-12 00:45:00	2015-06-18 01:01:58.822003	2015-06-18 01:01:58.822003
876	546	2014-12-12 05:11:00	2015-06-18 01:02:06.579802	2015-06-18 01:02:06.579802
877	543	2014-12-12 05:15:00	2015-06-18 01:02:06.708139	2015-06-18 01:02:06.708139
878	547	2014-12-12 05:43:00	2015-06-18 01:02:07.43765	2015-06-18 01:02:07.43765
879	543	2014-12-12 05:47:00	2015-06-18 01:02:07.539666	2015-06-18 01:02:07.539666
880	548	2014-12-12 06:28:00	2015-06-18 01:02:08.842729	2015-06-18 01:02:08.842729
881	549	2014-12-12 08:13:00	2015-06-18 01:02:11.892726	2015-06-18 01:02:11.892726
882	550	2014-12-12 09:02:00	2015-06-18 01:02:13.191144	2015-06-18 01:02:13.191144
883	549	2014-12-12 09:12:00	2015-06-18 01:02:13.436376	2015-06-18 01:02:13.436376
884	551	2014-12-12 12:15:00	2015-06-18 01:02:19.356358	2015-06-18 01:02:19.356358
885	552	2014-12-12 13:49:00	2015-06-18 01:02:22.216566	2015-06-18 01:02:22.216566
886	553	2014-12-12 13:51:00	2015-06-18 01:02:22.268977	2015-06-18 01:02:22.268977
887	551	2014-12-12 14:15:00	2015-06-18 01:02:22.850982	2015-06-18 01:02:22.850982
888	554	2014-12-12 14:29:00	2015-06-18 01:02:23.181496	2015-06-18 01:02:23.181496
889	555	2014-12-12 14:37:00	2015-06-18 01:02:23.392589	2015-06-18 01:02:23.392589
890	556	2014-12-12 17:08:00	2015-06-18 01:02:27.918978	2015-06-18 01:02:27.918978
891	557	2014-12-12 21:02:00	2015-06-18 01:02:35.010359	2015-06-18 01:02:35.010359
892	558	2014-12-12 21:10:00	2015-06-18 01:02:35.225016	2015-06-18 01:02:35.225016
893	559	2014-12-12 22:34:00	2015-06-18 01:02:37.672623	2015-06-18 01:02:37.672623
894	560	2014-12-13 02:48:00	2015-06-18 01:02:45.044712	2015-06-18 01:02:45.044712
895	561	2014-12-13 09:40:00	2015-06-18 01:02:56.918725	2015-06-18 01:02:56.918725
896	562	2014-12-13 12:50:00	2015-06-18 01:03:02.517352	2015-06-18 01:03:02.517352
897	561	2014-12-13 12:52:00	2015-06-18 01:03:02.569573	2015-06-18 01:03:02.569573
898	562	2014-12-13 12:54:00	2015-06-18 01:03:02.624945	2015-06-18 01:03:02.624945
899	563	2014-12-13 15:55:00	2015-06-18 01:03:08.223673	2015-06-18 01:03:08.223673
900	564	2014-12-13 16:07:00	2015-06-18 01:03:08.56775	2015-06-18 01:03:08.56775
901	565	2014-12-13 17:45:00	2015-06-18 01:03:11.422362	2015-06-18 01:03:11.422362
902	564	2014-12-13 19:15:00	2015-06-18 01:03:14.123774	2015-06-18 01:03:14.123774
903	566	2014-12-13 19:43:00	2015-06-18 01:03:15.061932	2015-06-18 01:03:15.061932
904	564	2014-12-13 19:45:00	2015-06-18 01:03:15.126171	2015-06-18 01:03:15.126171
905	566	2014-12-13 20:05:00	2015-06-18 01:03:15.706633	2015-06-18 01:03:15.706633
906	564	2014-12-13 20:08:00	2015-06-18 01:03:15.793854	2015-06-18 01:03:15.793854
907	566	2014-12-13 20:10:00	2015-06-18 01:03:15.851036	2015-06-18 01:03:15.851036
908	567	2014-12-13 21:40:00	2015-06-18 01:03:18.519813	2015-06-18 01:03:18.519813
909	568	2014-12-14 01:32:00	2015-06-18 01:03:26.080972	2015-06-18 01:03:26.080972
910	569	2014-12-14 02:02:00	2015-06-18 01:03:27.103238	2015-06-18 01:03:27.103238
911	570	2014-12-14 14:59:00	2015-06-18 01:03:49.345655	2015-06-18 01:03:49.345655
912	569	2014-12-14 15:44:00	2015-06-18 01:03:50.473046	2015-06-18 01:03:50.473046
913	571	2014-12-14 16:02:00	2015-06-18 01:03:51.237452	2015-06-18 01:03:51.237452
914	572	2014-12-14 16:51:00	2015-06-18 01:03:52.537135	2015-06-18 01:03:52.537135
915	573	2014-12-14 21:51:00	2015-06-18 01:04:01.28224	2015-06-18 01:04:01.28224
916	574	2014-12-15 00:51:00	2015-06-18 01:04:06.033668	2015-06-18 01:04:06.033668
917	573	2014-12-15 00:55:00	2015-06-18 01:04:06.138571	2015-06-18 01:04:06.138571
918	574	2014-12-15 00:57:00	2015-06-18 01:04:06.191423	2015-06-18 01:04:06.191423
919	575	2014-12-15 01:01:00	2015-06-18 01:04:06.29115	2015-06-18 01:04:06.29115
920	574	2014-12-15 01:07:00	2015-06-18 01:04:06.442632	2015-06-18 01:04:06.442632
921	573	2014-12-15 01:09:00	2015-06-18 01:04:06.634599	2015-06-18 01:04:06.634599
922	574	2014-12-15 01:11:00	2015-06-18 01:04:06.700912	2015-06-18 01:04:06.700912
923	576	2014-12-15 02:27:00	2015-06-18 01:04:08.765052	2015-06-18 01:04:08.765052
924	577	2014-12-15 07:07:00	2015-06-18 01:04:16.259456	2015-06-18 01:04:16.259456
925	578	2014-12-15 08:13:00	2015-06-18 01:04:18.093776	2015-06-18 01:04:18.093776
926	577	2014-12-15 08:15:00	2015-06-18 01:04:18.149315	2015-06-18 01:04:18.149315
927	578	2014-12-15 08:19:00	2015-06-18 01:04:18.257669	2015-06-18 01:04:18.257669
928	579	2014-12-15 09:29:00	2015-06-18 01:04:20.347088	2015-06-18 01:04:20.347088
929	580	2014-12-15 12:17:00	2015-06-18 01:04:25.253954	2015-06-18 01:04:25.253954
930	579	2014-12-15 12:19:00	2015-06-18 01:04:25.319962	2015-06-18 01:04:25.319962
931	580	2014-12-15 12:27:00	2015-06-18 01:04:25.538944	2015-06-18 01:04:25.538944
932	581	2014-12-15 13:29:00	2015-06-18 01:04:27.101734	2015-06-18 01:04:27.101734
933	582	2014-12-15 14:38:00	2015-06-18 01:04:28.885191	2015-06-18 01:04:28.885191
934	583	2014-12-15 17:26:00	2015-06-18 01:04:33.613443	2015-06-18 01:04:33.613443
935	584	2014-12-15 18:04:00	2015-06-18 01:04:35.145476	2015-06-18 01:04:35.145476
936	583	2014-12-15 18:06:00	2015-06-18 01:04:35.203705	2015-06-18 01:04:35.203705
937	585	2014-12-15 18:42:00	2015-06-18 01:04:36.356574	2015-06-18 01:04:36.356574
938	586	2014-12-15 18:48:00	2015-06-18 01:04:36.529073	2015-06-18 01:04:36.529073
939	587	2014-12-16 02:31:00	2015-06-18 01:04:49.726912	2015-06-18 01:04:49.726912
940	588	2014-12-16 03:17:00	2015-06-18 01:04:50.851619	2015-06-18 01:04:50.851619
941	589	2014-12-16 09:47:00	2015-06-18 01:05:01.8639	2015-06-18 01:05:01.8639
942	590	2014-12-16 12:20:00	2015-06-18 01:05:06.067732	2015-06-18 01:05:06.067732
943	591	2014-12-16 14:37:00	2015-06-18 01:05:10.49839	2015-06-18 01:05:10.49839
944	592	2014-12-16 16:21:00	2015-06-18 01:05:13.333267	2015-06-18 01:05:13.333267
945	591	2014-12-16 16:23:00	2015-06-18 01:05:13.397319	2015-06-18 01:05:13.397319
946	593	2014-12-16 16:27:00	2015-06-18 01:05:13.504186	2015-06-18 01:05:13.504186
947	594	2014-12-16 17:13:00	2015-06-18 01:05:14.893364	2015-06-18 01:05:14.893364
948	595	2014-12-16 17:35:00	2015-06-18 01:05:15.447333	2015-06-18 01:05:15.447333
949	596	2014-12-16 19:55:00	2015-06-18 01:05:19.60117	2015-06-18 01:05:19.60117
950	597	2014-12-17 08:37:00	2015-06-18 01:05:44.382433	2015-06-18 01:05:44.382433
951	598	2014-12-17 11:54:00	2015-06-18 01:05:49.950165	2015-06-18 01:05:49.950165
952	599	2014-12-17 14:40:00	2015-06-18 01:05:54.716892	2015-06-18 01:05:54.716892
953	600	2014-12-17 16:11:00	2015-06-18 01:05:57.460376	2015-06-18 01:05:57.460376
954	601	2014-12-17 17:52:00	2015-06-18 01:06:00.24444	2015-06-18 01:06:00.24444
955	602	2014-12-17 19:27:00	2015-06-18 01:06:02.874322	2015-06-18 01:06:02.874322
956	603	2014-12-17 21:16:00	2015-06-18 01:06:06.106981	2015-06-18 01:06:06.106981
957	604	2014-12-17 22:55:00	2015-06-18 01:06:08.949018	2015-06-18 01:06:08.949018
958	605	2014-12-17 23:05:00	2015-06-18 01:06:09.203328	2015-06-18 01:06:09.203328
959	603	2014-12-17 23:13:00	2015-06-18 01:06:09.391291	2015-06-18 01:06:09.391291
960	606	2014-12-17 23:27:00	2015-06-18 01:06:09.729824	2015-06-18 01:06:09.729824
961	607	2014-12-17 23:35:00	2015-06-18 01:06:10.022818	2015-06-18 01:06:10.022818
962	606	2014-12-18 00:33:00	2015-06-18 01:06:11.726805	2015-06-18 01:06:11.726805
963	608	2014-12-18 02:35:00	2015-06-18 01:06:15.13473	2015-06-18 01:06:15.13473
964	609	2014-12-18 04:11:00	2015-06-18 01:06:17.830388	2015-06-18 01:06:17.830388
965	608	2014-12-18 04:54:00	2015-06-18 01:06:18.891205	2015-06-18 01:06:18.891205
966	609	2014-12-18 05:00:00	2015-06-18 01:06:19.039715	2015-06-18 01:06:19.039715
967	608	2014-12-18 05:04:00	2015-06-18 01:06:19.141028	2015-06-18 01:06:19.141028
968	609	2014-12-18 05:10:00	2015-06-18 01:06:19.424665	2015-06-18 01:06:19.424665
969	608	2014-12-18 05:12:00	2015-06-18 01:06:19.489234	2015-06-18 01:06:19.489234
970	610	2014-12-18 05:45:00	2015-06-18 01:06:20.482447	2015-06-18 01:06:20.482447
971	608	2014-12-18 05:49:00	2015-06-18 01:06:20.604139	2015-06-18 01:06:20.604139
972	610	2014-12-18 05:51:00	2015-06-18 01:06:20.656679	2015-06-18 01:06:20.656679
973	611	2014-12-18 07:43:00	2015-06-18 01:06:23.683781	2015-06-18 01:06:23.683781
974	612	2014-12-18 13:04:00	2015-06-18 01:06:33.122407	2015-06-18 01:06:33.122407
975	613	2014-12-18 15:07:00	2015-06-18 01:06:37.09338	2015-06-18 01:06:37.09338
976	614	2014-12-18 16:04:00	2015-06-18 01:06:38.544962	2015-06-18 01:06:38.544962
977	613	2014-12-18 16:10:00	2015-06-18 01:06:38.697518	2015-06-18 01:06:38.697518
978	614	2014-12-18 16:12:00	2015-06-18 01:06:38.749312	2015-06-18 01:06:38.749312
979	615	2014-12-18 17:56:00	2015-06-18 01:06:42.028818	2015-06-18 01:06:42.028818
980	614	2014-12-18 18:04:00	2015-06-18 01:06:42.227315	2015-06-18 01:06:42.227315
981	616	2014-12-18 21:04:00	2015-06-18 01:06:47.363007	2015-06-18 01:06:47.363007
982	617	2014-12-18 21:32:00	2015-06-18 01:06:47.995147	2015-06-18 01:06:47.995147
983	618	2014-12-19 06:09:00	2015-06-18 01:07:07.493042	2015-06-18 01:07:07.493042
984	617	2014-12-19 10:58:00	2015-06-18 01:07:17.368301	2015-06-18 01:07:17.368301
985	618	2014-12-19 11:00:00	2015-06-18 01:07:17.457436	2015-06-18 01:07:17.457436
986	617	2014-12-19 11:02:00	2015-06-18 01:07:17.536097	2015-06-18 01:07:17.536097
987	619	2014-12-19 12:44:00	2015-06-18 01:07:21.352826	2015-06-18 01:07:21.352826
988	620	2014-12-19 13:17:00	2015-06-18 01:07:22.211346	2015-06-18 01:07:22.211346
989	621	2014-12-19 16:21:00	2015-06-18 01:07:28.640297	2015-06-18 01:07:28.640297
990	620	2014-12-19 16:23:00	2015-06-18 01:07:28.734246	2015-06-18 01:07:28.734246
991	621	2014-12-19 16:25:00	2015-06-18 01:07:28.832135	2015-06-18 01:07:28.832135
992	620	2014-12-19 16:27:00	2015-06-18 01:07:28.931464	2015-06-18 01:07:28.931464
993	622	2014-12-19 16:33:00	2015-06-18 01:07:29.379821	2015-06-18 01:07:29.379821
994	623	2014-12-19 17:31:00	2015-06-18 01:07:31.846246	2015-06-18 01:07:31.846246
995	622	2014-12-19 17:51:00	2015-06-18 01:07:32.591436	2015-06-18 01:07:32.591436
996	624	2014-12-19 17:53:00	2015-06-18 01:07:32.655202	2015-06-18 01:07:32.655202
997	622	2014-12-19 17:57:00	2015-06-18 01:07:32.782749	2015-06-18 01:07:32.782749
998	624	2014-12-19 18:01:00	2015-06-18 01:07:32.905411	2015-06-18 01:07:32.905411
999	622	2014-12-19 18:03:00	2015-06-18 01:07:32.964347	2015-06-18 01:07:32.964347
1000	624	2014-12-19 18:05:00	2015-06-18 01:07:33.061784	2015-06-18 01:07:33.061784
1001	625	2014-12-19 19:28:00	2015-06-18 01:07:36.045077	2015-06-18 01:07:36.045077
1002	626	2014-12-19 19:42:00	2015-06-18 01:07:36.444574	2015-06-18 01:07:36.444574
1003	625	2014-12-19 19:46:00	2015-06-18 01:07:36.55582	2015-06-18 01:07:36.55582
1004	627	2014-12-19 20:32:00	2015-06-18 01:07:38.043901	2015-06-18 01:07:38.043901
1005	625	2014-12-19 20:38:00	2015-06-18 01:07:38.242735	2015-06-18 01:07:38.242735
1006	627	2014-12-19 20:42:00	2015-06-18 01:07:38.36846	2015-06-18 01:07:38.36846
1007	628	2014-12-19 22:09:00	2015-06-18 01:07:41.021526	2015-06-18 01:07:41.021526
1008	629	2014-12-19 22:27:00	2015-06-18 01:07:41.607203	2015-06-18 01:07:41.607203
1009	630	2014-12-20 08:41:00	2015-06-18 01:08:00.742288	2015-06-18 01:08:00.742288
1010	629	2014-12-20 08:51:00	2015-06-18 01:08:01.171237	2015-06-18 01:08:01.171237
1011	630	2014-12-20 08:55:00	2015-06-18 01:08:01.298187	2015-06-18 01:08:01.298187
1012	631	2014-12-20 11:47:00	2015-06-18 01:08:06.340853	2015-06-18 01:08:06.340853
1013	630	2014-12-20 11:49:00	2015-06-18 01:08:06.41435	2015-06-18 01:08:06.41435
1014	631	2014-12-20 12:07:00	2015-06-18 01:08:06.91634	2015-06-18 01:08:06.91634
1015	629	2014-12-20 14:03:00	2015-06-18 01:08:10.523974	2015-06-18 01:08:10.523974
1016	632	2014-12-20 14:13:00	2015-06-18 01:08:10.880564	2015-06-18 01:08:10.880564
1017	633	2014-12-20 16:05:00	2015-06-18 01:08:13.387824	2015-06-18 01:08:13.387824
1018	632	2014-12-20 16:35:00	2015-06-18 01:08:13.978244	2015-06-18 01:08:13.978244
1019	634	2014-12-20 17:11:00	2015-06-18 01:08:14.922554	2015-06-18 01:08:14.922554
1020	635	2014-12-20 17:13:00	2015-06-18 01:08:14.9642	2015-06-18 01:08:14.9642
1021	634	2014-12-20 17:15:00	2015-06-18 01:08:15.005151	2015-06-18 01:08:15.005151
1022	636	2014-12-20 17:41:00	2015-06-18 01:08:15.570437	2015-06-18 01:08:15.570437
1023	637	2014-12-20 17:43:00	2015-06-18 01:08:15.611611	2015-06-18 01:08:15.611611
1024	634	2014-12-20 17:45:00	2015-06-18 01:08:15.652101	2015-06-18 01:08:15.652101
1025	638	2014-12-20 17:47:00	2015-06-18 01:08:15.692969	2015-06-18 01:08:15.692969
1026	634	2014-12-20 17:51:00	2015-06-18 01:08:15.894291	2015-06-18 01:08:15.894291
1027	639	2014-12-20 18:00:00	2015-06-18 01:08:16.10677	2015-06-18 01:08:16.10677
1028	640	2014-12-21 00:37:00	2015-06-18 01:08:27.90715	2015-06-18 01:08:27.90715
1029	639	2014-12-21 00:41:00	2015-06-18 01:08:28.148201	2015-06-18 01:08:28.148201
1030	640	2014-12-21 00:43:00	2015-06-18 01:08:28.210422	2015-06-18 01:08:28.210422
1031	641	2014-12-21 00:57:00	2015-06-18 01:08:28.617875	2015-06-18 01:08:28.617875
1032	642	2014-12-21 12:07:00	2015-06-18 01:08:48.315703	2015-06-18 01:08:48.315703
1033	643	2014-12-21 16:17:00	2015-06-18 01:08:55.465131	2015-06-18 01:08:55.465131
1034	644	2014-12-21 16:19:00	2015-06-18 01:08:55.523617	2015-06-18 01:08:55.523617
1035	645	2014-12-21 17:42:00	2015-06-18 01:08:57.847892	2015-06-18 01:08:57.847892
1036	644	2014-12-21 17:52:00	2015-06-18 01:08:58.11264	2015-06-18 01:08:58.11264
1037	646	2014-12-21 17:54:00	2015-06-18 01:08:58.164414	2015-06-18 01:08:58.164414
1038	647	2014-12-21 18:45:00	2015-06-18 01:08:59.660438	2015-06-18 01:08:59.660438
1039	648	2014-12-21 21:14:00	2015-06-18 01:09:04.096458	2015-06-18 01:09:04.096458
1040	647	2014-12-21 21:20:00	2015-06-18 01:09:04.259506	2015-06-18 01:09:04.259506
1041	649	2014-12-21 21:50:00	2015-06-18 01:09:05.042715	2015-06-18 01:09:05.042715
1042	650	2014-12-22 08:46:00	2015-06-18 01:09:24.731246	2015-06-18 01:09:24.731246
1043	651	2014-12-22 13:04:00	2015-06-18 01:09:33.364556	2015-06-18 01:09:33.364556
1044	652	2014-12-22 14:11:00	2015-06-18 01:09:35.210268	2015-06-18 01:09:35.210268
1045	653	2014-12-22 15:26:00	2015-06-18 01:09:36.962054	2015-06-18 01:09:36.962054
1046	651	2014-12-22 15:28:00	2015-06-18 01:09:37.01518	2015-06-18 01:09:37.01518
1047	654	2014-12-22 16:12:00	2015-06-18 01:09:38.239698	2015-06-18 01:09:38.239698
1048	655	2014-12-22 18:52:00	2015-06-18 01:09:44.128418	2015-06-18 01:09:44.128418
1049	656	2014-12-22 19:56:00	2015-06-18 01:09:45.966252	2015-06-18 01:09:45.966252
1050	655	2014-12-22 19:58:00	2015-06-18 01:09:46.057556	2015-06-18 01:09:46.057556
1051	656	2014-12-22 20:00:00	2015-06-18 01:09:46.152727	2015-06-18 01:09:46.152727
1052	655	2014-12-22 23:46:00	2015-06-18 01:09:53.13428	2015-06-18 01:09:53.13428
1053	657	2014-12-22 23:52:00	2015-06-18 01:09:53.324222	2015-06-18 01:09:53.324222
1054	655	2014-12-23 00:45:00	2015-06-18 01:09:54.745885	2015-06-18 01:09:54.745885
1055	658	2014-12-23 01:23:00	2015-06-18 01:09:56.002342	2015-06-18 01:09:56.002342
1056	659	2014-12-23 05:39:00	2015-06-18 01:10:04.262492	2015-06-18 01:10:04.262492
1057	660	2014-12-23 06:13:00	2015-06-18 01:10:05.291465	2015-06-18 01:10:05.291465
1058	659	2014-12-23 07:01:00	2015-06-18 01:10:07.005302	2015-06-18 01:10:07.005302
1059	661	2014-12-23 07:33:00	2015-06-18 01:10:08.14818	2015-06-18 01:10:08.14818
1060	659	2014-12-23 07:35:00	2015-06-18 01:10:08.206543	2015-06-18 01:10:08.206543
1061	661	2014-12-23 07:41:00	2015-06-18 01:10:08.3709	2015-06-18 01:10:08.3709
1062	662	2014-12-23 09:21:00	2015-06-18 01:10:11.36746	2015-06-18 01:10:11.36746
1063	659	2014-12-23 09:31:00	2015-06-18 01:10:11.614855	2015-06-18 01:10:11.614855
1064	663	2014-12-23 11:48:00	2015-06-18 01:10:15.471021	2015-06-18 01:10:15.471021
1065	664	2014-12-23 12:24:00	2015-06-18 01:10:16.458147	2015-06-18 01:10:16.458147
1066	665	2014-12-23 13:45:00	2015-06-18 01:10:19.22007	2015-06-18 01:10:19.22007
1067	666	2014-12-23 16:45:00	2015-06-18 01:10:24.537181	2015-06-18 01:10:24.537181
1068	667	2014-12-23 18:41:00	2015-06-18 01:10:28.160936	2015-06-18 01:10:28.160936
1069	668	2014-12-23 18:47:00	2015-06-18 01:10:28.365949	2015-06-18 01:10:28.365949
1070	669	2014-12-23 21:29:00	2015-06-18 01:10:33.310338	2015-06-18 01:10:33.310338
1071	670	2014-12-23 22:29:00	2015-06-18 01:10:34.765978	2015-06-18 01:10:34.765978
1072	671	2014-12-24 02:43:00	2015-06-18 01:10:41.534896	2015-06-18 01:10:41.534896
1073	672	2014-12-24 09:16:00	2015-06-18 01:10:55.032281	2015-06-18 01:10:55.032281
1074	671	2014-12-24 09:18:00	2015-06-18 01:10:55.080573	2015-06-18 01:10:55.080573
1075	672	2014-12-24 09:41:00	2015-06-18 01:10:55.576443	2015-06-18 01:10:55.576443
1076	671	2014-12-24 09:43:00	2015-06-18 01:10:55.624684	2015-06-18 01:10:55.624684
1077	672	2014-12-24 09:45:00	2015-06-18 01:10:55.811479	2015-06-18 01:10:55.811479
1078	671	2014-12-24 09:47:00	2015-06-18 01:10:55.868635	2015-06-18 01:10:55.868635
1079	673	2014-12-24 12:32:00	2015-06-18 01:11:00.899642	2015-06-18 01:11:00.899642
1080	674	2014-12-24 14:44:00	2015-06-18 01:11:04.718811	2015-06-18 01:11:04.718811
1081	675	2014-12-24 16:20:00	2015-06-18 01:11:07.442862	2015-06-18 01:11:07.442862
1082	674	2014-12-24 16:26:00	2015-06-18 01:11:07.573778	2015-06-18 01:11:07.573778
1083	676	2014-12-24 16:35:00	2015-06-18 01:11:07.891201	2015-06-18 01:11:07.891201
1084	677	2014-12-24 16:43:00	2015-06-18 01:11:08.117022	2015-06-18 01:11:08.117022
1085	678	2014-12-24 17:33:00	2015-06-18 01:11:09.219287	2015-06-18 01:11:09.219287
1086	677	2014-12-24 17:41:00	2015-06-18 01:11:09.389634	2015-06-18 01:11:09.389634
1087	679	2014-12-24 20:51:00	2015-06-18 01:11:16.249826	2015-06-18 01:11:16.249826
1088	677	2014-12-24 23:53:00	2015-06-18 01:11:21.324358	2015-06-18 01:11:21.324358
1089	680	2014-12-25 01:49:00	2015-06-18 01:11:24.117058	2015-06-18 01:11:24.117058
1090	681	2014-12-25 02:03:00	2015-06-18 01:11:24.415931	2015-06-18 01:11:24.415931
1091	680	2014-12-25 02:11:00	2015-06-18 01:11:24.760409	2015-06-18 01:11:24.760409
1092	682	2014-12-25 08:13:00	2015-06-18 01:11:35.191734	2015-06-18 01:11:35.191734
1093	683	2014-12-25 10:44:00	2015-06-18 01:11:39.805197	2015-06-18 01:11:39.805197
1094	684	2014-12-25 15:22:00	2015-06-18 01:11:48.685593	2015-06-18 01:11:48.685593
1095	685	2014-12-25 15:36:00	2015-06-18 01:11:49.070058	2015-06-18 01:11:49.070058
1096	686	2014-12-25 16:20:00	2015-06-18 01:11:50.653996	2015-06-18 01:11:50.653996
1097	682	2014-12-25 16:22:00	2015-06-18 01:11:50.743152	2015-06-18 01:11:50.743152
1098	687	2014-12-25 16:37:00	2015-06-18 01:11:51.265585	2015-06-18 01:11:51.265585
1099	688	2014-12-25 17:30:00	2015-06-18 01:11:52.678734	2015-06-18 01:11:52.678734
1100	689	2014-12-25 20:37:00	2015-06-18 01:11:58.612611	2015-06-18 01:11:58.612611
1101	688	2014-12-25 20:47:00	2015-06-18 01:11:58.865563	2015-06-18 01:11:58.865563
1102	690	2014-12-25 20:57:00	2015-06-18 01:11:59.128152	2015-06-18 01:11:59.128152
1103	691	2014-12-25 21:22:00	2015-06-18 01:12:00.042474	2015-06-18 01:12:00.042474
1104	692	2014-12-26 01:31:00	2015-06-18 01:12:07.242074	2015-06-18 01:12:07.242074
1105	693	2014-12-26 06:46:00	2015-06-18 01:12:17.312019	2015-06-18 01:12:17.312019
1106	694	2014-12-26 15:53:00	2015-06-18 01:12:35.594142	2015-06-18 01:12:35.594142
1107	695	2014-12-26 16:07:00	2015-06-18 01:12:35.956394	2015-06-18 01:12:35.956394
1108	693	2014-12-26 16:25:00	2015-06-18 01:12:36.417	2015-06-18 01:12:36.417
1109	696	2014-12-26 17:09:00	2015-06-18 01:12:37.827423	2015-06-18 01:12:37.827423
1110	697	2014-12-26 18:32:00	2015-06-18 01:12:40.71064	2015-06-18 01:12:40.71064
1111	696	2014-12-26 18:58:00	2015-06-18 01:12:41.774914	2015-06-18 01:12:41.774914
1112	698	2014-12-26 19:44:00	2015-06-18 01:12:43.329451	2015-06-18 01:12:43.329451
1113	696	2014-12-26 23:34:00	2015-06-18 01:12:51.373782	2015-06-18 01:12:51.373782
1114	699	2014-12-27 00:11:00	2015-06-18 01:12:52.416577	2015-06-18 01:12:52.416577
1115	700	2014-12-27 00:52:00	2015-06-18 01:12:53.606646	2015-06-18 01:12:53.606646
1116	699	2014-12-27 00:54:00	2015-06-18 01:12:53.670666	2015-06-18 01:12:53.670666
1117	700	2014-12-27 00:58:00	2015-06-18 01:12:53.800543	2015-06-18 01:12:53.800543
1118	699	2014-12-27 01:02:00	2015-06-18 01:12:53.922548	2015-06-18 01:12:53.922548
1119	700	2014-12-27 01:04:00	2015-06-18 01:12:53.98251	2015-06-18 01:12:53.98251
1120	699	2014-12-27 01:06:00	2015-06-18 01:12:54.047194	2015-06-18 01:12:54.047194
1121	701	2014-12-27 05:24:00	2015-06-18 01:13:01.534998	2015-06-18 01:13:01.534998
1122	702	2014-12-27 09:00:00	2015-06-18 01:13:07.874081	2015-06-18 01:13:07.874081
1123	701	2014-12-27 09:02:00	2015-06-18 01:13:07.94432	2015-06-18 01:13:07.94432
1124	702	2014-12-27 09:10:00	2015-06-18 01:13:08.274641	2015-06-18 01:13:08.274641
1125	703	2014-12-27 09:46:00	2015-06-18 01:13:09.675282	2015-06-18 01:13:09.675282
1126	704	2014-12-27 13:34:00	2015-06-18 01:13:17.146871	2015-06-18 01:13:17.146871
1127	705	2014-12-27 16:05:00	2015-06-18 01:13:22.001479	2015-06-18 01:13:22.001479
1128	704	2014-12-27 16:33:00	2015-06-18 01:13:23.028517	2015-06-18 01:13:23.028517
1129	706	2014-12-27 18:16:00	2015-06-18 01:13:26.807367	2015-06-18 01:13:26.807367
1130	704	2014-12-27 18:58:00	2015-06-18 01:13:28.72618	2015-06-18 01:13:28.72618
1131	707	2014-12-27 19:05:00	2015-06-18 01:13:28.983877	2015-06-18 01:13:28.983877
1132	704	2014-12-27 19:45:00	2015-06-18 01:13:30.208261	2015-06-18 01:13:30.208261
1133	708	2014-12-27 23:10:00	2015-06-18 01:13:37.478486	2015-06-18 01:13:37.478486
1134	709	2014-12-28 03:13:00	2015-06-18 01:13:46.061936	2015-06-18 01:13:46.061936
1135	710	2014-12-28 04:49:00	2015-06-18 01:13:49.201632	2015-06-18 01:13:49.201632
1136	711	2014-12-28 16:40:00	2015-06-18 01:14:09.50122	2015-06-18 01:14:09.50122
1137	712	2014-12-28 17:22:00	2015-06-18 01:14:11.229659	2015-06-18 01:14:11.229659
1138	713	2014-12-28 18:12:00	2015-06-18 01:14:13.072694	2015-06-18 01:14:13.072694
1139	714	2014-12-28 20:18:00	2015-06-18 01:14:18.232722	2015-06-18 01:14:18.232722
1140	715	2014-12-28 21:24:00	2015-06-18 01:14:20.627201	2015-06-18 01:14:20.627201
1141	716	2014-12-29 04:42:00	2015-06-18 01:14:36.02986	2015-06-18 01:14:36.02986
1142	717	2014-12-29 05:13:00	2015-06-18 01:14:36.937754	2015-06-18 01:14:36.937754
1143	718	2014-12-29 08:28:00	2015-06-18 01:14:44.509721	2015-06-18 01:14:44.509721
1144	717	2014-12-29 08:58:00	2015-06-18 01:14:45.481513	2015-06-18 01:14:45.481513
1145	719	2014-12-29 10:39:00	2015-06-18 01:14:49.34688	2015-06-18 01:14:49.34688
1146	720	2014-12-29 13:16:00	2015-06-18 01:14:54.844707	2015-06-18 01:14:54.844707
1147	719	2014-12-29 14:51:00	2015-06-18 01:14:57.967507	2015-06-18 01:14:57.967507
1148	721	2014-12-29 15:44:00	2015-06-18 01:14:59.191504	2015-06-18 01:14:59.191504
1149	722	2014-12-29 16:16:00	2015-06-18 01:15:00.831099	2015-06-18 01:15:00.831099
1150	723	2014-12-29 16:52:00	2015-06-18 01:15:02.256993	2015-06-18 01:15:02.256993
1151	724	2014-12-29 17:38:00	2015-06-18 01:15:03.984388	2015-06-18 01:15:03.984388
1152	725	2014-12-29 18:00:00	2015-06-18 01:15:04.469948	2015-06-18 01:15:04.469948
1153	726	2014-12-29 18:39:00	2015-06-18 01:15:06.000657	2015-06-18 01:15:06.000657
1154	727	2014-12-30 01:43:00	2015-06-18 01:15:19.242993	2015-06-18 01:15:19.242993
1155	728	2014-12-30 05:13:00	2015-06-18 01:15:25.44677	2015-06-18 01:15:25.44677
1156	727	2014-12-30 05:15:00	2015-06-18 01:15:25.507321	2015-06-18 01:15:25.507321
1157	728	2014-12-30 05:17:00	2015-06-18 01:15:25.563336	2015-06-18 01:15:25.563336
1158	729	2014-12-30 07:13:00	2015-06-18 01:15:29.745063	2015-06-18 01:15:29.745063
1159	728	2014-12-30 07:27:00	2015-06-18 01:15:30.146787	2015-06-18 01:15:30.146787
1160	729	2014-12-30 07:33:00	2015-06-18 01:15:30.312326	2015-06-18 01:15:30.312326
1161	728	2014-12-30 08:02:00	2015-06-18 01:15:31.029533	2015-06-18 01:15:31.029533
1162	730	2014-12-30 09:25:00	2015-06-18 01:15:33.739108	2015-06-18 01:15:33.739108
1163	728	2014-12-30 09:35:00	2015-06-18 01:15:34.050142	2015-06-18 01:15:34.050142
1164	730	2014-12-30 10:03:00	2015-06-18 01:15:34.961373	2015-06-18 01:15:34.961373
1165	728	2014-12-30 10:39:00	2015-06-18 01:15:36.195428	2015-06-18 01:15:36.195428
1166	731	2014-12-30 10:47:00	2015-06-18 01:15:36.456131	2015-06-18 01:15:36.456131
1167	732	2014-12-30 12:26:00	2015-06-18 01:15:40.198304	2015-06-18 01:15:40.198304
1168	733	2014-12-30 14:25:00	2015-06-18 01:15:44.180858	2015-06-18 01:15:44.180858
1169	734	2014-12-30 15:57:00	2015-06-18 01:15:47.423734	2015-06-18 01:15:47.423734
1170	733	2014-12-30 16:19:00	2015-06-18 01:15:47.928504	2015-06-18 01:15:47.928504
1171	735	2014-12-30 16:21:00	2015-06-18 01:15:47.974279	2015-06-18 01:15:47.974279
1172	733	2014-12-30 17:21:00	2015-06-18 01:15:50.002811	2015-06-18 01:15:50.002811
1173	736	2014-12-30 19:32:00	2015-06-18 01:15:55.054401	2015-06-18 01:15:55.054401
1174	737	2014-12-30 23:40:00	2015-06-18 01:16:04.058299	2015-06-18 01:16:04.058299
1175	736	2014-12-31 00:46:00	2015-06-18 01:16:05.928676	2015-06-18 01:16:05.928676
1176	738	2014-12-31 00:50:00	2015-06-18 01:16:06.02991	2015-06-18 01:16:06.02991
1177	736	2014-12-31 01:16:00	2015-06-18 01:16:06.684745	2015-06-18 01:16:06.684745
1178	738	2014-12-31 01:22:00	2015-06-18 01:16:06.944582	2015-06-18 01:16:06.944582
1179	736	2014-12-31 01:38:00	2015-06-18 01:16:07.523525	2015-06-18 01:16:07.523525
1180	738	2014-12-31 01:40:00	2015-06-18 01:16:07.584459	2015-06-18 01:16:07.584459
1181	736	2014-12-31 02:02:00	2015-06-18 01:16:08.428543	2015-06-18 01:16:08.428543
1182	739	2014-12-31 03:38:00	2015-06-18 01:16:10.905043	2015-06-18 01:16:10.905043
1183	740	2014-12-31 10:08:00	2015-06-18 01:16:23.281025	2015-06-18 01:16:23.281025
1184	739	2014-12-31 10:10:00	2015-06-18 01:16:23.341223	2015-06-18 01:16:23.341223
1185	740	2014-12-31 10:12:00	2015-06-18 01:16:23.400097	2015-06-18 01:16:23.400097
1186	741	2014-12-31 12:39:00	2015-06-18 01:16:27.12746	2015-06-18 01:16:27.12746
1187	742	2014-12-31 13:45:00	2015-06-18 01:20:37.013042	2015-06-18 01:20:37.013042
1188	741	2014-12-31 13:47:00	2015-06-18 01:20:37.060837	2015-06-18 01:20:37.060837
1189	742	2014-12-31 13:51:00	2015-06-18 01:20:37.164595	2015-06-18 01:20:37.164595
1190	741	2014-12-31 13:58:00	2015-06-18 01:20:37.307365	2015-06-18 01:20:37.307365
1191	743	2014-12-31 14:09:00	2015-06-18 01:20:37.569089	2015-06-18 01:20:37.569089
1192	744	2014-12-31 14:57:00	2015-06-18 01:20:38.816824	2015-06-18 01:20:38.816824
1193	743	2014-12-31 15:07:00	2015-06-18 01:20:39.023563	2015-06-18 01:20:39.023563
1194	745	2014-12-31 15:55:00	2015-06-18 01:20:40.137233	2015-06-18 01:20:40.137233
1195	743	2014-12-31 16:15:00	2015-06-18 01:20:40.556003	2015-06-18 01:20:40.556003
1196	746	2014-12-31 16:45:00	2015-06-18 01:20:41.291387	2015-06-18 01:20:41.291387
1197	747	2014-12-31 17:50:00	2015-06-18 01:20:42.795778	2015-06-18 01:20:42.795778
1198	748	2014-12-31 22:12:00	2015-06-18 01:20:50.723721	2015-06-18 01:20:50.723721
1199	747	2014-12-31 22:16:00	2015-06-18 01:20:50.820157	2015-06-18 01:20:50.820157
1200	749	2015-01-01 03:29:00	2015-06-18 01:20:59.977535	2015-06-18 01:20:59.977535
1201	747	2015-01-01 03:51:00	2015-06-18 01:21:00.697119	2015-06-18 01:21:00.697119
1202	750	2015-01-01 09:28:00	2015-06-18 01:21:10.378123	2015-06-18 01:21:10.378123
1203	751	2015-01-01 11:09:00	2015-06-18 01:21:13.00868	2015-06-18 01:21:13.00868
1204	752	2015-01-01 13:49:00	2015-06-18 01:21:17.119585	2015-06-18 01:21:17.119585
1205	753	2015-01-01 16:00:00	2015-06-18 01:21:21.777272	2015-06-18 01:21:21.777272
1206	754	2015-01-01 21:40:00	2015-06-18 01:21:30.521183	2015-06-18 01:21:30.521183
1207	755	2015-01-01 23:40:00	2015-06-18 01:21:33.850964	2015-06-18 01:21:33.850964
1208	753	2015-01-02 00:08:00	2015-06-18 01:21:34.52716	2015-06-18 01:21:34.52716
1209	756	2015-01-02 00:28:00	2015-06-18 01:21:35.037296	2015-06-18 01:21:35.037296
1210	757	2015-01-02 03:56:00	2015-06-18 01:21:40.508717	2015-06-18 01:21:40.508717
1211	758	2015-01-02 04:00:00	2015-06-18 01:21:40.616614	2015-06-18 01:21:40.616614
1212	757	2015-01-02 04:02:00	2015-06-18 01:21:40.667408	2015-06-18 01:21:40.667408
1213	758	2015-01-02 04:04:00	2015-06-18 01:21:40.721018	2015-06-18 01:21:40.721018
1214	757	2015-01-02 04:06:00	2015-06-18 01:21:40.77296	2015-06-18 01:21:40.77296
1215	758	2015-01-02 04:27:00	2015-06-18 01:21:41.259277	2015-06-18 01:21:41.259277
1216	757	2015-01-02 06:03:00	2015-06-18 01:21:43.578801	2015-06-18 01:21:43.578801
1217	759	2015-01-02 07:09:00	2015-06-18 01:21:45.051351	2015-06-18 01:21:45.051351
1218	760	2015-01-02 09:13:00	2015-06-18 01:21:49.166088	2015-06-18 01:21:49.166088
1219	761	2015-01-02 14:05:00	2015-06-18 01:21:57.422128	2015-06-18 01:21:57.422128
1220	762	2015-01-02 15:52:00	2015-06-18 01:22:00.157786	2015-06-18 01:22:00.157786
1221	763	2015-01-02 16:37:00	2015-06-18 01:22:01.224442	2015-06-18 01:22:01.224442
1222	764	2015-01-02 17:34:00	2015-06-18 01:22:02.769338	2015-06-18 01:22:02.769338
1223	765	2015-01-02 17:56:00	2015-06-18 01:22:03.265537	2015-06-18 01:22:03.265537
1224	763	2015-01-02 18:02:00	2015-06-18 01:22:03.418169	2015-06-18 01:22:03.418169
1225	766	2015-01-02 18:10:00	2015-06-18 01:22:03.603811	2015-06-18 01:22:03.603811
1226	767	2015-01-02 19:20:00	2015-06-18 01:22:05.358398	2015-06-18 01:22:05.358398
1227	768	2015-01-02 19:30:00	2015-06-18 01:22:05.609411	2015-06-18 01:22:05.609411
1228	767	2015-01-02 20:19:00	2015-06-18 01:22:06.994043	2015-06-18 01:22:06.994043
1229	769	2015-01-02 20:41:00	2015-06-18 01:22:07.539821	2015-06-18 01:22:07.539821
1230	770	2015-01-02 21:06:00	2015-06-22 03:37:25.591978	2015-06-22 03:37:25.591978
1231	767	2015-01-02 21:10:00	2015-06-22 03:37:25.755712	2015-06-22 03:37:25.755712
1232	771	2015-01-02 22:50:00	2015-06-22 03:37:29.488881	2015-06-22 03:37:29.488881
1233	767	2015-01-02 22:54:00	2015-06-22 03:37:29.585743	2015-06-22 03:37:29.585743
1234	771	2015-01-02 23:06:00	2015-06-22 03:37:29.915373	2015-06-22 03:37:29.915373
1235	772	2015-01-03 00:00:00	2015-06-22 03:37:31.442729	2015-06-22 03:37:31.442729
1236	773	2015-01-03 04:55:00	2015-06-22 03:37:40.675013	2015-06-22 03:37:40.675013
1237	772	2015-01-03 05:54:00	2015-06-22 03:37:42.548917	2015-06-22 03:37:42.548917
1238	773	2015-01-03 06:24:00	2015-06-22 03:37:43.295826	2015-06-22 03:37:43.295826
1239	772	2015-01-03 06:26:00	2015-06-22 03:37:43.344917	2015-06-22 03:37:43.344917
1240	773	2015-01-03 06:30:00	2015-06-22 03:37:43.437422	2015-06-22 03:37:43.437422
1241	772	2015-01-03 06:34:00	2015-06-22 03:37:43.538118	2015-06-22 03:37:43.538118
1242	773	2015-01-03 06:36:00	2015-06-22 03:37:43.586642	2015-06-22 03:37:43.586642
1243	774	2015-01-03 09:29:00	2015-06-22 03:37:49.172522	2015-06-22 03:37:49.172522
1244	775	2015-01-03 13:17:00	2015-06-22 03:37:55.504852	2015-06-22 03:37:55.504852
1245	776	2015-01-03 13:58:00	2015-06-22 03:37:56.477926	2015-06-22 03:37:56.477926
1246	777	2015-01-03 16:29:00	2015-06-22 03:38:00.199039	2015-06-22 03:38:00.199039
1247	776	2015-01-03 16:33:00	2015-06-22 03:38:00.291369	2015-06-22 03:38:00.291369
1248	777	2015-01-03 16:39:00	2015-06-22 03:38:00.424868	2015-06-22 03:38:00.424868
1249	776	2015-01-03 16:43:00	2015-06-22 03:38:00.519015	2015-06-22 03:38:00.519015
1250	777	2015-01-03 17:16:00	2015-06-22 03:38:01.240575	2015-06-22 03:38:01.240575
1251	776	2015-01-03 17:18:00	2015-06-22 03:38:01.281523	2015-06-22 03:38:01.281523
1252	778	2015-01-03 17:32:00	2015-06-22 03:38:01.795054	2015-06-22 03:38:01.795054
1253	779	2015-01-03 17:42:00	2015-06-22 03:38:02.055015	2015-06-22 03:38:02.055015
1254	778	2015-01-03 17:44:00	2015-06-22 03:38:02.104503	2015-06-22 03:38:02.104503
1255	780	2015-01-03 18:02:00	2015-06-22 03:38:02.50719	2015-06-22 03:38:02.50719
1256	781	2015-01-03 20:14:00	2015-06-22 03:38:05.934402	2015-06-22 03:38:05.934402
1257	782	2015-01-04 02:45:00	2015-06-22 03:38:16.544197	2015-06-22 03:38:16.544197
1258	783	2015-01-04 05:45:00	2015-06-22 03:38:21.764166	2015-06-22 03:38:21.764166
1259	784	2015-01-04 07:54:00	2015-06-22 03:38:24.849645	2015-06-22 03:38:24.849645
1260	785	2015-01-04 08:35:00	2015-06-22 03:38:25.879529	2015-06-22 03:38:25.879529
1261	786	2015-01-04 15:56:00	2015-06-22 03:38:36.981465	2015-06-22 03:38:36.981465
1262	787	2015-01-04 17:31:00	2015-06-22 03:38:39.898377	2015-06-22 03:38:39.898377
1263	786	2015-01-04 17:35:00	2015-06-22 03:38:40.011546	2015-06-22 03:38:40.011546
1264	788	2015-01-04 20:02:00	2015-06-22 03:38:43.911685	2015-06-22 03:38:43.911685
1265	786	2015-01-04 20:18:00	2015-06-22 03:38:44.295672	2015-06-22 03:38:44.295672
1266	789	2015-01-04 20:26:00	2015-06-22 03:38:44.602897	2015-06-22 03:38:44.602897
1267	790	2015-01-04 21:12:00	2015-06-22 03:38:45.79622	2015-06-22 03:38:45.79622
1268	789	2015-01-04 21:29:00	2015-06-22 03:38:46.211555	2015-06-22 03:38:46.211555
1269	791	2015-01-04 23:02:00	2015-06-22 03:38:48.826171	2015-06-22 03:38:48.826171
1270	792	2015-01-04 23:42:00	2015-06-22 03:38:49.814091	2015-06-22 03:38:49.814091
1271	793	2015-01-05 01:57:00	2015-06-22 03:38:53.957268	2015-06-22 03:38:53.957268
1272	794	2015-01-05 03:24:00	2015-06-22 03:38:56.152237	2015-06-22 03:38:56.152237
1273	793	2015-01-05 04:45:00	2015-06-22 03:38:58.609511	2015-06-22 03:38:58.609511
1274	795	2015-01-05 10:48:00	2015-06-22 03:39:07.924699	2015-06-22 03:39:07.924699
1275	796	2015-01-05 13:07:00	2015-06-22 03:39:12.070785	2015-06-22 03:39:12.070785
1276	795	2015-01-05 13:19:00	2015-06-22 03:39:12.348181	2015-06-22 03:39:12.348181
1277	797	2015-01-05 13:58:00	2015-06-22 03:39:13.228372	2015-06-22 03:39:13.228372
1278	798	2015-01-05 17:34:00	2015-06-22 03:39:19.797567	2015-06-22 03:39:19.797567
1279	797	2015-01-05 18:52:00	2015-06-22 03:39:21.532115	2015-06-22 03:39:21.532115
1280	799	2015-01-05 19:23:00	2015-06-22 03:39:22.17784	2015-06-22 03:39:22.17784
1281	800	2015-01-05 19:49:00	2015-06-22 03:39:22.931402	2015-06-22 03:39:22.931402
1282	799	2015-01-05 20:06:00	2015-06-22 03:39:23.301531	2015-06-22 03:39:23.301531
1283	801	2015-01-05 20:10:00	2015-06-22 03:39:23.400777	2015-06-22 03:39:23.400777
1284	797	2015-01-05 20:20:00	2015-06-22 03:39:23.634359	2015-06-22 03:39:23.634359
1285	799	2015-01-05 20:26:00	2015-06-22 03:39:23.791578	2015-06-22 03:39:23.791578
1286	802	2015-01-05 20:46:00	2015-06-22 03:39:24.260364	2015-06-22 03:39:24.260364
1287	803	2015-01-05 21:46:00	2015-06-22 03:39:25.94184	2015-06-22 03:39:25.94184
1288	804	2015-01-05 22:31:00	2015-06-22 03:39:27.243116	2015-06-22 03:39:27.243116
1289	803	2015-01-05 22:35:00	2015-06-22 03:39:27.344158	2015-06-22 03:39:27.344158
1290	805	2015-01-06 06:54:00	2015-06-22 03:39:40.807185	2015-06-22 03:39:40.807185
1291	806	2015-01-06 08:39:00	2015-06-22 03:39:43.327834	2015-06-22 03:39:43.327834
1292	807	2015-01-06 09:47:00	2015-06-22 03:39:45.038823	2015-06-22 03:39:45.038823
1293	808	2015-01-06 13:57:00	2015-06-22 03:39:51.27615	2015-06-22 03:39:51.27615
1294	809	2015-01-06 16:30:00	2015-06-22 03:39:55.244147	2015-06-22 03:39:55.244147
1295	808	2015-01-06 17:10:00	2015-06-22 03:39:56.582927	2015-06-22 03:39:56.582927
1296	810	2015-01-06 17:41:00	2015-06-22 03:39:57.435171	2015-06-22 03:39:57.435171
1297	811	2015-01-06 22:04:00	2015-06-22 03:40:03.631534	2015-06-22 03:40:03.631534
1298	812	2015-01-06 22:40:00	2015-06-22 03:40:04.47079	2015-06-22 03:40:04.47079
1299	813	2015-01-07 00:34:00	2015-06-22 03:40:07.833438	2015-06-22 03:40:07.833438
1300	814	2015-01-07 01:30:00	2015-06-22 03:40:09.06418	2015-06-22 03:40:09.06418
1301	815	2015-01-07 08:36:00	2015-06-22 03:40:20.922584	2015-06-22 03:40:20.922584
1302	814	2015-01-07 08:38:00	2015-06-22 03:40:21.009283	2015-06-22 03:40:21.009283
1303	815	2015-01-07 08:40:00	2015-06-22 03:40:21.072765	2015-06-22 03:40:21.072765
1304	814	2015-01-07 09:08:00	2015-06-22 03:40:22.11414	2015-06-22 03:40:22.11414
1305	815	2015-01-07 09:12:00	2015-06-22 03:40:22.27401	2015-06-22 03:40:22.27401
1306	814	2015-01-07 09:16:00	2015-06-22 03:40:22.442419	2015-06-22 03:40:22.442419
1307	815	2015-01-07 09:20:00	2015-06-22 03:40:22.615249	2015-06-22 03:40:22.615249
1308	816	2015-01-07 09:22:00	2015-06-22 03:40:22.700475	2015-06-22 03:40:22.700475
1309	815	2015-01-07 09:24:00	2015-06-22 03:40:22.77934	2015-06-22 03:40:22.77934
1310	816	2015-01-07 09:28:00	2015-06-22 03:40:22.947811	2015-06-22 03:40:22.947811
1311	817	2015-01-07 12:02:00	2015-06-22 03:40:28.716186	2015-06-22 03:40:28.716186
1312	818	2015-01-07 16:17:00	2015-06-22 03:40:37.219759	2015-06-22 03:40:37.219759
1313	819	2015-01-07 16:19:00	2015-06-22 03:40:37.524749	2015-06-22 03:40:37.524749
1314	820	2015-01-07 16:23:00	2015-06-22 03:40:37.726795	2015-06-22 03:40:37.726795
1315	821	2015-01-07 16:29:00	2015-06-22 03:40:37.878288	2015-06-22 03:40:37.878288
1316	820	2015-01-07 16:31:00	2015-06-22 03:40:37.932629	2015-06-22 03:40:37.932629
1317	821	2015-01-07 17:03:00	2015-06-22 03:40:39.008429	2015-06-22 03:40:39.008429
1318	822	2015-01-07 17:14:00	2015-06-22 03:40:39.31845	2015-06-22 03:40:39.31845
1319	823	2015-01-07 17:54:00	2015-06-22 03:40:40.440144	2015-06-22 03:40:40.440144
1320	822	2015-01-07 18:00:00	2015-06-22 03:40:40.581953	2015-06-22 03:40:40.581953
1321	824	2015-01-07 19:06:00	2015-06-22 03:40:42.265421	2015-06-22 03:40:42.265421
1322	822	2015-01-07 19:08:00	2015-06-22 03:40:42.315593	2015-06-22 03:40:42.315593
1323	824	2015-01-07 19:12:00	2015-06-22 03:40:42.415093	2015-06-22 03:40:42.415093
1324	825	2015-01-07 22:18:00	2015-06-22 03:40:47.046776	2015-06-22 03:40:47.046776
1325	826	2015-01-07 23:45:00	2015-06-22 03:40:49.229092	2015-06-22 03:40:49.229092
1326	827	2015-01-08 00:11:00	2015-06-22 03:40:49.856486	2015-06-22 03:40:49.856486
1327	828	2015-01-08 04:21:00	2015-06-22 03:40:56.328291	2015-06-22 03:40:56.328291
1328	827	2015-01-08 04:23:00	2015-06-22 03:40:56.373116	2015-06-22 03:40:56.373116
1329	828	2015-01-08 04:25:00	2015-06-22 03:40:56.417037	2015-06-22 03:40:56.417037
1330	827	2015-01-08 04:27:00	2015-06-22 03:40:56.461053	2015-06-22 03:40:56.461053
1331	828	2015-01-08 04:39:00	2015-06-22 03:40:56.853689	2015-06-22 03:40:56.853689
1332	827	2015-01-08 04:41:00	2015-06-22 03:40:56.915133	2015-06-22 03:40:56.915133
1333	828	2015-01-08 04:44:00	2015-06-22 03:40:56.981616	2015-06-22 03:40:56.981616
1334	827	2015-01-08 05:00:00	2015-06-22 03:40:57.362359	2015-06-22 03:40:57.362359
1335	828	2015-01-08 05:16:00	2015-06-22 03:40:57.68283	2015-06-22 03:40:57.68283
1336	827	2015-01-08 06:18:00	2015-06-22 03:40:59.226951	2015-06-22 03:40:59.226951
1337	829	2015-01-08 08:11:00	2015-06-22 03:41:02.105912	2015-06-22 03:41:02.105912
1338	827	2015-01-08 11:03:00	2015-06-22 03:41:07.130748	2015-06-22 03:41:07.130748
1339	829	2015-01-08 11:07:00	2015-06-22 03:41:07.211954	2015-06-22 03:41:07.211954
1340	830	2015-01-08 11:13:00	2015-06-22 03:41:07.346213	2015-06-22 03:41:07.346213
1341	831	2015-01-08 11:47:00	2015-06-22 03:41:08.897849	2015-06-22 03:41:08.897849
1342	832	2015-01-08 11:53:00	2015-06-22 03:41:09.021692	2015-06-22 03:41:09.021692
1343	830	2015-01-08 12:07:00	2015-06-22 03:41:09.317396	2015-06-22 03:41:09.317396
1344	833	2015-01-08 12:15:00	2015-06-22 03:41:09.610519	2015-06-22 03:41:09.610519
1345	831	2015-01-08 12:47:00	2015-06-22 03:41:10.448128	2015-06-22 03:41:10.448128
1346	833	2015-01-08 12:49:00	2015-06-22 03:41:10.499922	2015-06-22 03:41:10.499922
1347	834	2015-01-08 12:59:00	2015-06-22 03:41:10.897584	2015-06-22 03:41:10.897584
1348	835	2015-01-08 15:04:00	2015-06-22 03:41:14.674523	2015-06-22 03:41:14.674523
1349	836	2015-01-08 15:59:00	2015-06-22 03:41:16.133765	2015-06-22 03:41:16.133765
1350	837	2015-01-08 19:49:00	2015-06-22 03:41:23.619339	2015-06-22 03:41:23.619339
1351	836	2015-01-08 20:25:00	2015-06-22 03:41:24.867714	2015-06-22 03:41:24.867714
1352	838	2015-01-08 20:31:00	2015-06-22 03:41:25.11415	2015-06-22 03:41:25.11415
1353	839	2015-01-08 22:13:00	2015-06-22 03:41:29.003216	2015-06-22 03:41:29.003216
1354	840	2015-01-09 03:29:00	2015-06-22 03:41:38.455028	2015-06-22 03:41:38.455028
1355	839	2015-01-09 03:38:00	2015-06-22 03:41:38.690982	2015-06-22 03:41:38.690982
1356	841	2015-01-09 03:48:00	2015-06-22 03:41:38.960753	2015-06-22 03:41:38.960753
1357	839	2015-01-09 03:50:00	2015-06-22 03:41:39.019633	2015-06-22 03:41:39.019633
1358	841	2015-01-09 03:52:00	2015-06-22 03:41:39.069541	2015-06-22 03:41:39.069541
1359	839	2015-01-09 03:54:00	2015-06-22 03:41:39.128287	2015-06-22 03:41:39.128287
1360	841	2015-01-09 03:56:00	2015-06-22 03:41:39.30189	2015-06-22 03:41:39.30189
1361	839	2015-01-09 04:18:00	2015-06-22 03:41:40.320927	2015-06-22 03:41:40.320927
1362	841	2015-01-09 04:20:00	2015-06-22 03:41:40.401982	2015-06-22 03:41:40.401982
1363	839	2015-01-09 04:22:00	2015-06-22 03:41:40.481321	2015-06-22 03:41:40.481321
1364	842	2015-01-09 06:06:00	2015-06-22 03:41:44.129499	2015-06-22 03:41:44.129499
1365	843	2015-01-09 10:30:00	2015-06-22 03:41:53.743836	2015-06-22 03:41:53.743836
1366	842	2015-01-09 10:32:00	2015-06-22 03:41:53.82446	2015-06-22 03:41:53.82446
1367	843	2015-01-09 10:34:00	2015-06-22 03:41:53.911996	2015-06-22 03:41:53.911996
1368	842	2015-01-09 10:46:00	2015-06-22 03:41:54.403063	2015-06-22 03:41:54.403063
1369	844	2015-01-09 10:50:00	2015-06-22 03:41:54.532514	2015-06-22 03:41:54.532514
1370	842	2015-01-09 10:53:00	2015-06-22 03:41:54.601943	2015-06-22 03:41:54.601943
1371	844	2015-01-09 10:55:00	2015-06-22 03:41:54.665783	2015-06-22 03:41:54.665783
1372	845	2015-01-09 15:35:00	2015-06-22 03:42:04.145473	2015-06-22 03:42:04.145473
1373	846	2015-01-09 16:11:00	2015-06-22 03:42:05.463352	2015-06-22 03:42:05.463352
1374	845	2015-01-09 17:20:00	2015-06-22 03:42:07.460439	2015-06-22 03:42:07.460439
1375	847	2015-01-09 17:22:00	2015-06-22 03:42:07.514018	2015-06-22 03:42:07.514018
1376	845	2015-01-09 17:38:00	2015-06-22 03:42:07.850784	2015-06-22 03:42:07.850784
1377	848	2015-01-09 17:50:00	2015-06-22 03:42:08.308173	2015-06-22 03:42:08.308173
1378	849	2015-01-09 18:23:00	2015-06-22 03:42:09.620348	2015-06-22 03:42:09.620348
1379	850	2015-01-10 10:33:00	2015-06-22 03:42:38.818068	2015-06-22 03:42:38.818068
1380	851	2015-01-10 14:57:00	2015-06-22 03:42:47.556419	2015-06-22 03:42:47.556419
1381	852	2015-01-10 16:08:00	2015-06-22 03:42:50.026415	2015-06-22 03:42:50.026415
1382	851	2015-01-10 16:50:00	2015-06-22 03:42:51.277088	2015-06-22 03:42:51.277088
1383	853	2015-01-10 19:01:00	2015-06-22 03:42:55.816338	2015-06-22 03:42:55.816338
1384	854	2015-01-10 21:40:00	2015-06-22 03:43:01.53781	2015-06-22 03:43:01.53781
1385	855	2015-01-10 22:28:00	2015-06-22 03:43:03.194173	2015-06-22 03:43:03.194173
1386	856	2015-01-10 22:32:00	2015-06-22 03:43:03.296479	2015-06-22 03:43:03.296479
1387	855	2015-01-10 23:44:00	2015-06-22 03:43:05.49844	2015-06-22 03:43:05.49844
1388	857	2015-01-11 02:47:00	2015-06-22 03:43:10.729687	2015-06-22 03:43:10.729687
1389	858	2015-01-11 05:14:00	2015-06-22 03:43:15.028577	2015-06-22 03:43:15.028577
1390	859	2015-01-11 06:37:00	2015-06-22 03:43:16.81212	2015-06-22 03:43:16.81212
1391	860	2015-01-11 08:09:00	2015-06-22 03:43:19.807619	2015-06-22 03:43:19.807619
1392	861	2015-01-11 14:03:00	2015-06-22 03:43:32.270492	2015-06-22 03:43:32.270492
1393	860	2015-01-11 15:56:00	2015-06-22 03:43:36.809651	2015-06-22 03:43:36.809651
1394	862	2015-01-11 17:52:00	2015-06-22 03:43:39.802963	2015-06-22 03:43:39.802963
1395	863	2015-01-12 00:02:00	2015-06-22 03:43:51.64446	2015-06-22 03:43:51.64446
1396	864	2015-01-12 02:15:00	2015-06-22 03:43:55.63523	2015-06-22 03:43:55.63523
1397	865	2015-01-12 10:52:00	2015-06-22 03:44:10.031831	2015-06-22 03:44:10.031831
1398	864	2015-01-12 11:00:00	2015-06-22 03:44:10.210051	2015-06-22 03:44:10.210051
1399	866	2015-01-12 11:06:00	2015-06-22 03:44:10.328307	2015-06-22 03:44:10.328307
1400	864	2015-01-12 11:14:00	2015-06-22 03:44:10.477997	2015-06-22 03:44:10.477997
1401	866	2015-01-12 11:18:00	2015-06-22 03:44:10.656774	2015-06-22 03:44:10.656774
1402	867	2015-01-12 12:28:00	2015-06-22 03:44:13.274914	2015-06-22 03:44:13.274914
1403	868	2015-01-12 13:48:00	2015-06-22 03:44:15.86668	2015-06-22 03:44:15.86668
1404	867	2015-01-12 14:06:00	2015-06-22 03:44:16.317874	2015-06-22 03:44:16.317874
1405	869	2015-01-12 14:28:00	2015-06-22 03:44:16.79784	2015-06-22 03:44:16.79784
1406	870	2015-01-12 14:40:00	2015-06-22 03:44:17.023624	2015-06-22 03:44:17.023624
1407	871	2015-01-12 15:28:00	2015-06-22 03:44:18.721314	2015-06-22 03:44:18.721314
1408	872	2015-01-12 16:00:00	2015-06-22 03:44:19.529308	2015-06-22 03:44:19.529308
1409	873	2015-01-12 16:51:00	2015-06-22 03:44:21.44377	2015-06-22 03:44:21.44377
1410	874	2015-01-12 17:21:00	2015-06-22 03:44:22.079533	2015-06-22 03:44:22.079533
1411	873	2015-01-12 17:25:00	2015-06-22 03:44:22.157704	2015-06-22 03:44:22.157704
1412	874	2015-01-12 17:27:00	2015-06-22 03:44:22.199706	2015-06-22 03:44:22.199706
1413	873	2015-01-12 17:33:00	2015-06-22 03:44:22.315502	2015-06-22 03:44:22.315502
1414	875	2015-01-12 20:53:00	2015-06-22 03:44:28.516324	2015-06-22 03:44:28.516324
1415	876	2015-01-12 21:33:00	2015-06-22 03:44:29.48699	2015-06-22 03:44:29.48699
1416	877	2015-01-13 03:18:00	2015-06-22 03:44:39.677116	2015-06-22 03:44:39.677116
1417	876	2015-01-13 03:20:00	2015-06-22 03:44:39.764967	2015-06-22 03:44:39.764967
1418	877	2015-01-13 03:22:00	2015-06-22 03:44:39.84348	2015-06-22 03:44:39.84348
1419	878	2015-01-13 05:39:00	2015-06-22 03:44:44.081472	2015-06-22 03:44:44.081472
1420	879	2015-01-13 10:28:00	2015-06-22 03:44:53.212729	2015-06-22 03:44:53.212729
1421	880	2015-01-13 12:27:00	2015-06-22 03:44:56.093841	2015-06-22 03:44:56.093841
1422	879	2015-01-13 13:54:00	2015-06-22 03:44:58.115578	2015-06-22 03:44:58.115578
1423	881	2015-01-13 14:14:00	2015-06-22 03:44:58.6853	2015-06-22 03:44:58.6853
1424	879	2015-01-13 14:16:00	2015-06-22 03:44:58.746233	2015-06-22 03:44:58.746233
1425	881	2015-01-13 14:30:00	2015-06-22 03:44:59.306861	2015-06-22 03:44:59.306861
1426	879	2015-01-13 14:44:00	2015-06-22 03:44:59.651296	2015-06-22 03:44:59.651296
1427	881	2015-01-13 14:50:00	2015-06-22 03:44:59.782949	2015-06-22 03:44:59.782949
1428	879	2015-01-13 14:54:00	2015-06-22 03:44:59.873022	2015-06-22 03:44:59.873022
1429	881	2015-01-13 15:04:00	2015-06-22 03:45:00.08487	2015-06-22 03:45:00.08487
1430	879	2015-01-13 15:10:00	2015-06-22 03:45:00.32779	2015-06-22 03:45:00.32779
1431	881	2015-01-13 15:18:00	2015-06-22 03:45:00.641869	2015-06-22 03:45:00.641869
1432	879	2015-01-13 15:20:00	2015-06-22 03:45:00.72077	2015-06-22 03:45:00.72077
1433	882	2015-01-13 15:40:00	2015-06-22 03:45:01.567991	2015-06-22 03:45:01.567991
1434	879	2015-01-13 15:44:00	2015-06-22 03:45:01.70563	2015-06-22 03:45:01.70563
1435	883	2015-01-13 15:50:00	2015-06-22 03:45:01.928802	2015-06-22 03:45:01.928802
1436	884	2015-01-13 16:17:00	2015-06-22 03:45:03.003179	2015-06-22 03:45:03.003179
1437	885	2015-01-13 19:44:00	2015-06-22 03:45:09.954462	2015-06-22 03:45:09.954462
1438	884	2015-01-13 20:20:00	2015-06-22 03:45:10.935452	2015-06-22 03:45:10.935452
1439	885	2015-01-13 20:22:00	2015-06-22 03:45:10.983679	2015-06-22 03:45:10.983679
1440	886	2015-01-13 20:31:00	2015-06-22 03:45:11.256592	2015-06-22 03:45:11.256592
1441	884	2015-01-13 20:43:00	2015-06-22 03:45:11.554002	2015-06-22 03:45:11.554002
1442	887	2015-01-13 21:04:00	2015-06-22 03:45:12.022728	2015-06-22 03:45:12.022728
1443	888	2015-01-14 00:55:00	2015-06-22 03:45:17.387788	2015-06-22 03:45:17.387788
1444	889	2015-01-14 03:49:00	2015-06-22 03:45:22.43547	2015-06-22 03:45:22.43547
1445	890	2015-01-14 08:16:00	2015-06-22 03:45:29.221038	2015-06-22 03:45:29.221038
1446	889	2015-01-14 09:50:00	2015-06-22 03:45:31.530047	2015-06-22 03:45:31.530047
1447	891	2015-01-14 13:21:00	2015-06-22 03:45:37.015399	2015-06-22 03:45:37.015399
1448	892	2015-01-14 13:47:00	2015-06-22 03:45:37.565922	2015-06-22 03:45:37.565922
1449	891	2015-01-14 13:51:00	2015-06-22 03:45:37.655521	2015-06-22 03:45:37.655521
1450	892	2015-01-14 13:53:00	2015-06-22 03:45:37.706847	2015-06-22 03:45:37.706847
1451	893	2015-01-14 14:36:00	2015-06-22 03:45:38.740395	2015-06-22 03:45:38.740395
1452	894	2015-01-14 18:14:00	2015-06-22 03:45:45.07168	2015-06-22 03:45:45.07168
1453	895	2015-01-14 20:11:00	2015-06-22 03:45:48.247041	2015-06-22 03:45:48.247041
1454	894	2015-01-14 22:10:00	2015-06-22 03:45:51.123941	2015-06-22 03:45:51.123941
1455	895	2015-01-14 22:22:00	2015-06-22 03:45:51.427661	2015-06-22 03:45:51.427661
1456	896	2015-01-14 22:32:00	2015-06-22 03:45:51.883273	2015-06-22 03:45:51.883273
1457	897	2015-01-15 01:26:00	2015-06-22 03:45:56.892411	2015-06-22 03:45:56.892411
1458	896	2015-01-15 05:25:00	2015-06-22 03:46:04.055836	2015-06-22 03:46:04.055836
1459	897	2015-01-15 05:29:00	2015-06-22 03:46:04.174857	2015-06-22 03:46:04.174857
1460	898	2015-01-15 10:44:00	2015-06-22 03:46:12.343572	2015-06-22 03:46:12.343572
1461	899	2015-01-15 15:02:00	2015-06-22 03:46:18.890815	2015-06-22 03:46:18.890815
1462	898	2015-01-15 15:06:00	2015-06-22 03:46:18.9748	2015-06-22 03:46:18.9748
1463	899	2015-01-15 15:08:00	2015-06-22 03:46:19.014565	2015-06-22 03:46:19.014565
1464	900	2015-01-15 15:12:00	2015-06-22 03:46:19.094555	2015-06-22 03:46:19.094555
1465	901	2015-01-15 16:08:00	2015-06-22 03:46:20.539248	2015-06-22 03:46:20.539248
1466	902	2015-01-15 16:14:00	2015-06-22 03:46:20.680114	2015-06-22 03:46:20.680114
1467	903	2015-01-15 19:10:00	2015-06-22 03:46:25.129814	2015-06-22 03:46:25.129814
1468	904	2015-01-15 20:40:00	2015-06-22 03:46:27.492449	2015-06-22 03:46:27.492449
1469	903	2015-01-15 22:04:00	2015-06-22 03:46:29.630485	2015-06-22 03:46:29.630485
1470	905	2015-01-15 23:02:00	2015-06-22 03:46:30.914669	2015-06-22 03:46:30.914669
1471	906	2015-01-16 00:10:00	2015-06-22 03:46:32.428434	2015-06-22 03:46:32.428434
1472	905	2015-01-16 00:26:00	2015-06-22 03:46:32.770729	2015-06-22 03:46:32.770729
1473	907	2015-01-16 09:11:00	2015-06-22 03:46:47.491453	2015-06-22 03:46:47.491453
1474	908	2015-01-16 09:15:00	2015-06-22 03:46:47.583238	2015-06-22 03:46:47.583238
1475	909	2015-01-16 14:27:00	2015-06-22 03:46:55.872906	2015-06-22 03:46:55.872906
1476	908	2015-01-16 14:33:00	2015-06-22 03:46:56.050235	2015-06-22 03:46:56.050235
1477	909	2015-01-16 14:39:00	2015-06-22 03:46:56.279668	2015-06-22 03:46:56.279668
1478	910	2015-01-16 15:20:00	2015-06-22 03:46:57.618985	2015-06-22 03:46:57.618985
1479	911	2015-01-16 17:51:00	2015-06-22 03:47:01.400101	2015-06-22 03:47:01.400101
1480	912	2015-01-16 17:59:00	2015-06-22 03:47:01.725789	2015-06-22 03:47:01.725789
1481	913	2015-01-16 18:58:00	2015-06-22 03:47:03.016893	2015-06-22 03:47:03.016893
1482	914	2015-01-16 21:13:00	2015-06-22 03:47:06.533959	2015-06-22 03:47:06.533959
1483	913	2015-01-16 21:33:00	2015-06-22 03:47:07.063988	2015-06-22 03:47:07.063988
1484	915	2015-01-16 21:43:00	2015-06-22 03:47:07.304222	2015-06-22 03:47:07.304222
1485	916	2015-01-16 22:46:00	2015-06-22 03:47:09.065342	2015-06-22 03:47:09.065342
1486	917	2015-01-17 04:41:00	2015-06-22 03:47:20.875501	2015-06-22 03:47:20.875501
1487	916	2015-01-17 06:47:00	2015-06-22 03:47:24.923082	2015-06-22 03:47:24.923082
1488	917	2015-01-17 06:59:00	2015-06-22 03:47:25.259258	2015-06-22 03:47:25.259258
1489	916	2015-01-17 07:01:00	2015-06-22 03:47:25.310909	2015-06-22 03:47:25.310909
1490	918	2015-01-17 14:18:00	2015-06-22 03:47:36.805187	2015-06-22 03:47:36.805187
1491	916	2015-01-17 15:37:00	2015-06-22 03:47:38.919214	2015-06-22 03:47:38.919214
1492	919	2015-01-17 15:41:00	2015-06-22 03:47:39.014049	2015-06-22 03:47:39.014049
1493	920	2015-01-17 17:00:00	2015-06-22 03:47:41.106015	2015-06-22 03:47:41.106015
1494	921	2015-01-17 17:46:00	2015-06-22 03:47:42.379732	2015-06-22 03:47:42.379732
1495	920	2015-01-17 17:56:00	2015-06-22 03:47:42.623186	2015-06-22 03:47:42.623186
1496	922	2015-01-17 20:24:00	2015-06-22 03:47:46.714045	2015-06-22 03:47:46.714045
1497	923	2015-01-18 01:26:00	2015-06-22 03:47:54.694207	2015-06-22 03:47:54.694207
1498	924	2015-01-18 04:15:00	2015-06-22 03:47:59.319033	2015-06-22 03:47:59.319033
1499	923	2015-01-18 04:25:00	2015-06-22 03:47:59.579394	2015-06-22 03:47:59.579394
1500	924	2015-01-18 04:27:00	2015-06-22 03:47:59.63241	2015-06-22 03:47:59.63241
1501	925	2015-01-18 09:10:00	2015-06-22 03:48:07.647258	2015-06-22 03:48:07.647258
1502	926	2015-01-18 14:19:00	2015-06-22 03:48:15.961831	2015-06-22 03:48:15.961831
1503	925	2015-01-18 14:21:00	2015-06-22 03:48:16.022011	2015-06-22 03:48:16.022011
1504	926	2015-01-18 16:12:00	2015-06-22 03:48:19.614079	2015-06-22 03:48:19.614079
1505	925	2015-01-18 16:14:00	2015-06-22 03:48:19.666445	2015-06-22 03:48:19.666445
1506	926	2015-01-18 16:16:00	2015-06-22 03:48:19.722071	2015-06-22 03:48:19.722071
1507	927	2015-01-18 16:18:00	2015-06-22 03:48:19.771466	2015-06-22 03:48:19.771466
1508	928	2015-01-18 20:08:00	2015-06-22 03:48:26.682934	2015-06-22 03:48:26.682934
1509	929	2015-01-19 02:23:00	2015-06-22 03:48:37.165286	2015-06-22 03:48:37.165286
1510	930	2015-01-19 07:20:00	2015-06-22 03:48:45.50493	2015-06-22 03:48:45.50493
1511	929	2015-01-19 07:28:00	2015-06-22 03:48:45.70927	2015-06-22 03:48:45.70927
1512	930	2015-01-19 07:32:00	2015-06-22 03:48:45.815463	2015-06-22 03:48:45.815463
1513	929	2015-01-19 07:36:00	2015-06-22 03:48:45.935225	2015-06-22 03:48:45.935225
1514	928	2015-01-19 08:22:00	2015-06-22 03:48:47.311085	2015-06-22 03:48:47.311085
1515	931	2015-01-19 09:28:00	2015-06-22 03:48:49.12302	2015-06-22 03:48:49.12302
1516	932	2015-01-19 11:06:00	2015-06-22 03:48:51.818022	2015-06-22 03:48:51.818022
1517	933	2015-01-19 13:02:00	2015-06-22 03:48:55.334377	2015-06-22 03:48:55.334377
1518	934	2015-01-19 15:54:00	2015-06-22 03:48:59.953416	2015-06-22 03:48:59.953416
1519	935	2015-01-19 16:04:00	2015-06-22 03:49:00.220865	2015-06-22 03:49:00.220865
1520	936	2015-01-19 17:00:00	2015-06-22 03:49:01.691388	2015-06-22 03:49:01.691388
1521	935	2015-01-19 17:53:00	2015-06-22 03:49:03.214422	2015-06-22 03:49:03.214422
1522	937	2015-01-19 18:17:00	2015-06-22 03:49:03.804986	2015-06-22 03:49:03.804986
1523	938	2015-01-20 00:43:00	2015-06-22 03:49:16.404464	2015-06-22 03:49:16.404464
1524	939	2015-01-20 01:23:00	2015-06-22 03:49:17.3949	2015-06-22 03:49:17.3949
1525	940	2015-01-20 08:10:00	2015-06-22 03:49:28.674152	2015-06-22 03:49:28.674152
1526	941	2015-01-20 09:54:00	2015-06-22 03:49:31.374022	2015-06-22 03:49:31.374022
1527	942	2015-01-20 15:12:00	2015-06-22 03:49:39.225291	2015-06-22 03:49:39.225291
1528	943	2015-01-20 17:21:00	2015-06-22 03:49:42.765161	2015-06-22 03:49:42.765161
1529	944	2015-01-20 18:12:00	2015-06-22 03:49:44.242201	2015-06-22 03:49:44.242201
1530	943	2015-01-20 18:14:00	2015-06-22 03:49:44.29363	2015-06-22 03:49:44.29363
1531	945	2015-01-20 19:57:00	2015-06-22 03:49:47.092652	2015-06-22 03:49:47.092652
1532	946	2015-01-20 22:26:00	2015-06-22 03:49:51.410372	2015-06-22 03:49:51.410372
1533	947	2015-01-21 02:30:00	2015-06-22 03:49:57.5297	2015-06-22 03:49:57.5297
1534	948	2015-01-21 04:03:00	2015-06-22 03:50:00.050998	2015-06-22 03:50:00.050998
1535	947	2015-01-21 04:07:00	2015-06-22 03:50:00.277533	2015-06-22 03:50:00.277533
1536	948	2015-01-21 04:25:00	2015-06-22 03:50:00.77182	2015-06-22 03:50:00.77182
1537	949	2015-01-21 05:01:00	2015-06-22 03:50:01.672703	2015-06-22 03:50:01.672703
1538	950	2015-01-21 06:18:00	2015-06-22 03:50:03.9434	2015-06-22 03:50:03.9434
1539	947	2015-01-21 10:07:00	2015-06-22 03:50:09.957066	2015-06-22 03:50:09.957066
1540	951	2015-01-21 10:09:00	2015-06-22 03:50:10.012141	2015-06-22 03:50:10.012141
1541	952	2015-01-21 11:57:00	2015-06-22 03:50:13.308593	2015-06-22 03:50:13.308593
1542	953	2015-01-21 14:31:00	2015-06-22 03:50:18.058103	2015-06-22 03:50:18.058103
1543	954	2015-01-21 15:15:00	2015-06-22 03:50:19.228967	2015-06-22 03:50:19.228967
1544	955	2015-01-21 17:10:00	2015-06-22 03:50:22.169929	2015-06-22 03:50:22.169929
1545	956	2015-01-21 19:17:00	2015-06-22 03:50:25.52777	2015-06-22 03:50:25.52777
1546	957	2015-01-22 08:44:00	2015-06-22 03:50:47.119981	2015-06-22 03:50:47.119981
1547	958	2015-01-22 10:59:00	2015-06-22 03:50:51.6438	2015-06-22 03:50:51.6438
1548	959	2015-01-22 13:37:00	2015-06-22 03:50:55.820336	2015-06-22 03:50:55.820336
1549	960	2015-01-22 14:23:00	2015-06-22 03:50:56.940773	2015-06-22 03:50:56.940773
1550	961	2015-01-22 16:53:00	2015-06-22 03:51:01.071001	2015-06-22 03:51:01.071001
1551	962	2015-01-22 19:33:00	2015-06-22 03:51:05.289685	2015-06-22 03:51:05.289685
1552	963	2015-01-22 23:42:00	2015-06-22 03:51:12.938749	2015-06-22 03:51:12.938749
1553	964	2015-01-23 02:53:00	2015-06-22 03:51:18.223705	2015-06-22 03:51:18.223705
1554	963	2015-01-23 03:01:00	2015-06-22 03:51:18.531305	2015-06-22 03:51:18.531305
1555	965	2015-01-23 04:04:00	2015-06-22 03:51:20.238832	2015-06-22 03:51:20.238832
1556	966	2015-01-23 06:40:00	2015-06-22 03:51:24.294767	2015-06-22 03:51:24.294767
1557	965	2015-01-23 07:54:00	2015-06-22 03:51:26.369191	2015-06-22 03:51:26.369191
1558	967	2015-01-23 11:18:00	2015-06-22 03:51:32.497852	2015-06-22 03:51:32.497852
1559	968	2015-01-23 11:58:00	2015-06-22 03:51:33.993691	2015-06-22 03:51:33.993691
1560	969	2015-01-23 12:14:00	2015-06-22 03:51:34.383882	2015-06-22 03:51:34.383882
1561	968	2015-01-23 15:16:00	2015-06-22 03:51:39.741117	2015-06-22 03:51:39.741117
1562	969	2015-01-23 15:20:00	2015-06-22 03:51:39.848074	2015-06-22 03:51:39.848074
1563	970	2015-01-23 16:03:00	2015-06-22 03:51:40.96718	2015-06-22 03:51:40.96718
1564	969	2015-01-23 16:45:00	2015-06-22 03:51:42.183009	2015-06-22 03:51:42.183009
1565	970	2015-01-23 16:49:00	2015-06-22 03:51:42.267405	2015-06-22 03:51:42.267405
1566	969	2015-01-23 16:51:00	2015-06-22 03:51:42.320085	2015-06-22 03:51:42.320085
1567	970	2015-01-23 16:59:00	2015-06-22 03:51:42.590223	2015-06-22 03:51:42.590223
1568	969	2015-01-23 17:01:00	2015-06-22 03:51:42.671138	2015-06-22 03:51:42.671138
1569	971	2015-01-23 17:11:00	2015-06-22 03:51:43.060302	2015-06-22 03:51:43.060302
1570	972	2015-01-23 17:17:00	2015-06-22 03:51:43.282004	2015-06-22 03:51:43.282004
1571	973	2015-01-23 20:43:00	2015-06-22 03:51:49.195438	2015-06-22 03:51:49.195438
1572	974	2015-01-24 16:10:00	2015-06-22 03:52:24.621483	2015-06-22 03:52:24.621483
1573	975	2015-01-24 16:26:00	2015-06-22 03:52:25.062648	2015-06-22 03:52:25.062648
1574	976	2015-01-24 17:26:00	2015-06-22 03:52:26.706983	2015-06-22 03:52:26.706983
1575	977	2015-01-24 20:54:00	2015-06-22 03:52:32.330025	2015-06-22 03:52:32.330025
1576	976	2015-01-24 21:05:00	2015-06-22 03:52:32.57026	2015-06-22 03:52:32.57026
1577	977	2015-01-24 21:07:00	2015-06-22 03:52:32.624613	2015-06-22 03:52:32.624613
1578	978	2015-01-24 21:31:00	2015-06-22 03:52:33.445865	2015-06-22 03:52:33.445865
1579	979	2015-01-25 05:32:00	2015-06-22 03:52:47.645491	2015-06-22 03:52:47.645491
1580	980	2015-01-25 06:40:00	2015-06-22 03:52:49.404125	2015-06-22 03:52:49.404125
1581	979	2015-01-25 06:42:00	2015-06-22 03:52:49.449596	2015-06-22 03:52:49.449596
1582	980	2015-01-25 06:46:00	2015-06-22 03:52:49.54252	2015-06-22 03:52:49.54252
1583	981	2015-01-25 08:38:00	2015-06-22 03:52:52.54529	2015-06-22 03:52:52.54529
1584	980	2015-01-25 09:28:00	2015-06-22 03:52:53.865905	2015-06-22 03:52:53.865905
1585	982	2015-01-25 13:53:00	2015-06-22 03:53:01.748696	2015-06-22 03:53:01.748696
1586	983	2015-01-25 17:31:00	2015-06-22 03:53:08.124912	2015-06-22 03:53:08.124912
1587	982	2015-01-25 17:39:00	2015-06-22 03:53:08.360237	2015-06-22 03:53:08.360237
1588	983	2015-01-25 17:41:00	2015-06-22 03:53:08.440847	2015-06-22 03:53:08.440847
1589	982	2015-01-25 17:47:00	2015-06-22 03:53:08.706809	2015-06-22 03:53:08.706809
1590	984	2015-01-25 20:20:00	2015-06-22 03:53:13.47062	2015-06-22 03:53:13.47062
1591	985	2015-01-25 22:59:00	2015-06-22 03:53:17.642154	2015-06-22 03:53:17.642154
1592	986	2015-01-25 23:04:00	2015-06-22 03:53:17.738594	2015-06-22 03:53:17.738594
1593	987	2015-01-26 00:28:00	2015-06-22 03:53:20.209632	2015-06-22 03:53:20.209632
1594	985	2015-01-26 04:00:00	2015-06-22 03:53:25.984533	2015-06-22 03:53:25.984533
1595	988	2015-01-26 05:42:00	2015-06-22 03:53:29.247803	2015-06-22 03:53:29.247803
1596	989	2015-01-26 14:31:00	2015-06-22 03:53:45.964827	2015-06-22 03:53:45.964827
1597	990	2015-01-26 14:37:00	2015-06-22 03:53:46.094189	2015-06-22 03:53:46.094189
1598	991	2015-01-26 16:28:00	2015-06-22 03:53:49.49973	2015-06-22 03:53:49.49973
1599	992	2015-01-26 17:33:00	2015-06-22 03:53:51.79781	2015-06-22 03:53:51.79781
1600	993	2015-01-26 19:08:00	2015-06-22 03:53:54.960631	2015-06-22 03:53:54.960631
1601	994	2015-01-27 00:39:00	2015-06-22 03:54:04.226505	2015-06-22 03:54:04.226505
1602	995	2015-01-27 05:21:00	2015-06-22 03:54:11.648508	2015-06-22 03:54:11.648508
1603	996	2015-01-27 06:26:00	2015-06-22 03:54:13.362783	2015-06-22 03:54:13.362783
1604	995	2015-01-27 06:30:00	2015-06-22 03:54:13.462306	2015-06-22 03:54:13.462306
1605	996	2015-01-27 06:36:00	2015-06-22 03:54:13.60903	2015-06-22 03:54:13.60903
1606	995	2015-01-27 08:57:00	2015-06-22 03:54:17.347549	2015-06-22 03:54:17.347549
1607	996	2015-01-27 09:05:00	2015-06-22 03:54:17.537556	2015-06-22 03:54:17.537556
1608	995	2015-01-27 09:09:00	2015-06-22 03:54:17.626951	2015-06-22 03:54:17.626951
1609	997	2015-01-27 09:33:00	2015-06-22 03:54:18.371132	2015-06-22 03:54:18.371132
1610	998	2015-01-27 11:24:00	2015-06-22 03:54:21.231696	2015-06-22 03:54:21.231696
1611	999	2015-01-27 13:01:00	2015-06-22 03:54:23.823059	2015-06-22 03:54:23.823059
1612	1000	2015-01-27 16:21:00	2015-06-22 03:54:29.066023	2015-06-22 03:54:29.066023
1613	1001	2015-01-27 18:54:00	2015-06-22 03:54:33.26216	2015-06-22 03:54:33.26216
1614	1002	2015-01-27 21:10:00	2015-06-22 03:54:36.927677	2015-06-22 03:54:36.927677
1615	1003	2015-01-28 03:09:00	2015-06-22 03:54:48.11875	2015-06-22 03:54:48.11875
1616	1002	2015-01-28 03:23:00	2015-06-22 03:54:48.441399	2015-06-22 03:54:48.441399
1617	1004	2015-01-28 07:19:00	2015-06-22 03:54:55.602839	2015-06-22 03:54:55.602839
1618	1002	2015-01-28 07:23:00	2015-06-22 03:54:55.718852	2015-06-22 03:54:55.718852
1619	1005	2015-01-28 09:17:00	2015-06-22 03:54:58.681247	2015-06-22 03:54:58.681247
1620	1002	2015-01-28 09:19:00	2015-06-22 03:54:58.729768	2015-06-22 03:54:58.729768
1621	1005	2015-01-28 09:21:00	2015-06-22 03:54:58.777772	2015-06-22 03:54:58.777772
1622	1006	2015-01-28 11:58:00	2015-06-22 03:55:03.795796	2015-06-22 03:55:03.795796
1623	1007	2015-01-28 14:47:00	2015-06-22 03:55:08.296737	2015-06-22 03:55:08.296737
1624	1008	2015-01-28 16:41:00	2015-06-22 03:55:11.315413	2015-06-22 03:55:11.315413
1625	1007	2015-01-28 17:35:00	2015-06-22 03:55:12.8674	2015-06-22 03:55:12.8674
1626	1009	2015-01-28 18:45:00	2015-06-22 03:55:14.630293	2015-06-22 03:55:14.630293
1627	1010	2015-01-28 18:55:00	2015-06-22 03:55:14.845443	2015-06-22 03:55:14.845443
1628	1011	2015-01-28 20:27:00	2015-06-22 03:55:16.938268	2015-06-22 03:55:16.938268
1629	1012	2015-01-28 21:48:00	2015-06-22 03:55:18.870909	2015-06-22 03:55:18.870909
1630	1013	2015-01-28 23:35:00	2015-06-22 03:55:21.502755	2015-06-22 03:55:21.502755
1631	1014	2015-01-29 04:11:00	2015-06-22 03:55:28.67694	2015-06-22 03:55:28.67694
1632	1015	2015-01-29 10:39:00	2015-06-22 03:55:39.402805	2015-06-22 03:55:39.402805
1633	1016	2015-01-29 14:03:00	2015-06-22 03:55:44.606831	2015-06-22 03:55:44.606831
1634	1015	2015-01-29 14:25:00	2015-06-22 03:55:45.14408	2015-06-22 03:55:45.14408
1635	1017	2015-01-29 15:31:00	2015-06-22 03:55:47.285467	2015-06-22 03:55:47.285467
1636	1018	2015-01-29 16:00:00	2015-06-22 03:55:48.229825	2015-06-22 03:55:48.229825
1637	1019	2015-01-29 18:08:00	2015-06-22 03:55:51.352047	2015-06-22 03:55:51.352047
1638	1020	2015-01-29 18:13:00	2015-06-22 03:55:51.455169	2015-06-22 03:55:51.455169
1639	1021	2015-01-29 20:10:00	2015-06-22 03:55:55.098167	2015-06-22 03:55:55.098167
1640	1022	2015-01-30 00:52:00	2015-06-22 03:56:02.267746	2015-06-22 03:56:02.267746
1641	1023	2015-01-30 09:59:00	2015-06-22 03:56:16.793502	2015-06-22 03:56:16.793502
1642	1022	2015-01-30 11:18:00	2015-06-22 03:56:19.230454	2015-06-22 03:56:19.230454
1643	1023	2015-01-30 11:20:00	2015-06-22 03:56:19.29586	2015-06-22 03:56:19.29586
1644	1024	2015-01-30 11:24:00	2015-06-22 03:56:19.417787	2015-06-22 03:56:19.417787
1645	1025	2015-01-30 14:10:00	2015-06-22 03:56:25.249175	2015-06-22 03:56:25.249175
1646	1026	2015-01-30 14:50:00	2015-06-22 03:56:26.705657	2015-06-22 03:56:26.705657
1647	1027	2015-01-30 17:08:00	2015-06-22 03:56:32.002421	2015-06-22 03:56:32.002421
1648	1026	2015-01-30 17:51:00	2015-06-22 03:56:33.93665	2015-06-22 03:56:33.93665
1649	1028	2015-01-30 17:53:00	2015-06-22 03:56:33.991449	2015-06-22 03:56:33.991449
1650	1029	2015-01-30 18:20:00	2015-06-22 03:56:34.56022	2015-06-22 03:56:34.56022
1651	1030	2015-01-30 21:50:00	2015-06-22 03:56:40.432741	2015-06-22 03:56:40.432741
1652	1031	2015-01-30 22:06:00	2015-06-22 03:56:41.075984	2015-06-22 03:56:41.075984
1653	1032	2015-01-30 23:28:00	2015-06-22 03:56:44.044414	2015-06-22 03:56:44.044414
1654	1033	2015-01-30 23:30:00	2015-06-22 03:56:44.116177	2015-06-22 03:56:44.116177
1655	1032	2015-01-30 23:34:00	2015-06-22 03:56:44.244866	2015-06-22 03:56:44.244866
1656	1034	2015-01-31 01:55:00	2015-06-22 03:56:48.140084	2015-06-22 03:56:48.140084
1657	1032	2015-01-31 02:07:00	2015-06-22 03:56:48.39679	2015-06-22 03:56:48.39679
1658	1035	2015-01-31 05:15:00	2015-06-22 03:56:54.135542	2015-06-22 03:56:54.135542
1659	1032	2015-01-31 05:57:00	2015-06-22 03:56:55.137582	2015-06-22 03:56:55.137582
1660	1035	2015-01-31 05:59:00	2015-06-22 03:56:55.190139	2015-06-22 03:56:55.190139
1661	1032	2015-01-31 06:01:00	2015-06-22 03:56:55.238702	2015-06-22 03:56:55.238702
1662	1035	2015-01-31 06:05:00	2015-06-22 03:56:55.468548	2015-06-22 03:56:55.468548
1663	1036	2015-01-31 11:03:00	2015-06-22 03:57:04.984167	2015-06-22 03:57:04.984167
1664	1035	2015-01-31 11:12:00	2015-06-22 03:57:05.42832	2015-06-22 03:57:05.42832
1665	1036	2015-01-31 11:41:00	2015-06-22 03:57:06.332115	2015-06-22 03:57:06.332115
1666	1037	2015-01-31 11:43:00	2015-06-22 03:57:06.396317	2015-06-22 03:57:06.396317
1667	1036	2015-01-31 11:47:00	2015-06-22 03:57:06.505252	2015-06-22 03:57:06.505252
1668	1037	2015-01-31 12:01:00	2015-06-22 03:57:06.841357	2015-06-22 03:57:06.841357
1669	1038	2015-01-31 13:45:00	2015-06-22 04:36:18.282507	2015-06-22 04:36:18.282507
1670	1037	2015-01-31 13:49:00	2015-06-22 04:36:18.376621	2015-06-22 04:36:18.376621
1671	1038	2015-01-31 13:51:00	2015-06-22 04:36:18.452577	2015-06-22 04:36:18.452577
1672	1039	2015-01-31 16:09:00	2015-06-22 04:36:23.454539	2015-06-22 04:36:23.454539
1673	1040	2015-01-31 20:13:00	2015-06-22 04:36:30.029328	2015-06-22 04:36:30.029328
1674	1041	2015-01-31 20:41:00	2015-06-22 04:36:30.711028	2015-06-22 04:36:30.711028
1675	1042	2015-01-31 21:55:00	2015-06-22 04:36:32.925383	2015-06-22 04:36:32.925383
1676	1041	2015-01-31 22:01:00	2015-06-22 04:36:33.092478	2015-06-22 04:36:33.092478
1677	1042	2015-01-31 22:07:00	2015-06-22 04:36:33.244981	2015-06-22 04:36:33.244981
1678	1041	2015-01-31 22:11:00	2015-06-22 04:36:33.351816	2015-06-22 04:36:33.351816
1679	1043	2015-02-01 00:17:00	2015-06-22 04:36:36.72211	2015-06-22 04:36:36.72211
1680	1044	2015-02-01 00:29:00	2015-06-22 04:36:37.021516	2015-06-22 04:36:37.021516
1681	1043	2015-02-01 00:35:00	2015-06-22 04:36:37.162044	2015-06-22 04:36:37.162044
1682	1044	2015-02-01 00:37:00	2015-06-22 04:36:37.212584	2015-06-22 04:36:37.212584
1683	1043	2015-02-01 01:07:00	2015-06-22 04:36:38.038039	2015-06-22 04:36:38.038039
1684	1044	2015-02-01 01:11:00	2015-06-22 04:36:38.152242	2015-06-22 04:36:38.152242
1685	1045	2015-02-01 03:12:00	2015-06-22 04:36:41.654125	2015-06-22 04:36:41.654125
1686	1046	2015-02-01 08:13:00	2015-06-22 04:36:51.166564	2015-06-22 04:36:51.166564
1687	1047	2015-02-01 11:10:00	2015-06-22 04:36:56.563501	2015-06-22 04:36:56.563501
1688	1048	2015-02-01 12:58:00	2015-06-22 04:36:59.949281	2015-06-22 04:36:59.949281
1689	1049	2015-02-01 14:40:00	2015-06-22 04:37:02.986237	2015-06-22 04:37:02.986237
1690	1050	2015-02-01 15:20:00	2015-06-22 04:37:04.150737	2015-06-22 04:37:04.150737
1691	1049	2015-02-01 18:26:00	2015-06-22 04:37:09.313293	2015-06-22 04:37:09.313293
1692	1051	2015-02-01 20:05:00	2015-06-22 04:37:12.548984	2015-06-22 04:37:12.548984
1693	1052	2015-02-02 02:55:00	2015-06-22 04:37:25.333454	2015-06-22 04:37:25.333454
1694	1053	2015-02-02 09:42:00	2015-06-22 04:37:37.836661	2015-06-22 04:37:37.836661
1695	1054	2015-02-02 16:26:00	2015-06-22 04:37:49.643583	2015-06-22 04:37:49.643583
1696	1055	2015-02-02 17:00:00	2015-06-22 04:37:50.524647	2015-06-22 04:37:50.524647
1697	1054	2015-02-02 17:20:00	2015-06-22 04:37:51.145623	2015-06-22 04:37:51.145623
1698	1056	2015-02-02 17:36:00	2015-06-22 04:37:51.582531	2015-06-22 04:37:51.582531
1699	1054	2015-02-02 17:54:00	2015-06-22 04:37:52.037926	2015-06-22 04:37:52.037926
1700	1057	2015-02-02 18:29:00	2015-06-22 04:37:52.964337	2015-06-22 04:37:52.964337
1701	1058	2015-02-02 18:59:00	2015-06-22 04:37:53.698594	2015-06-22 04:37:53.698594
1702	1059	2015-02-02 22:39:00	2015-06-22 04:38:00.482417	2015-06-22 04:38:00.482417
1703	1060	2015-02-03 04:36:00	2015-06-22 04:38:11.712317	2015-06-22 04:38:11.712317
1704	1061	2015-02-03 10:28:00	2015-06-22 04:38:21.44094	2015-06-22 04:38:21.44094
1705	1062	2015-02-03 11:10:00	2015-06-22 04:38:22.324791	2015-06-22 04:38:22.324791
1706	1063	2015-02-03 12:06:00	2015-06-22 04:38:23.641731	2015-06-22 04:38:23.641731
1707	1062	2015-02-03 14:28:00	2015-06-22 04:38:27.933587	2015-06-22 04:38:27.933587
1708	1064	2015-02-03 15:04:00	2015-06-22 04:38:28.880551	2015-06-22 04:38:28.880551
1709	1065	2015-02-03 16:44:00	2015-06-22 04:38:32.376976	2015-06-22 04:38:32.376976
1710	1064	2015-02-03 16:53:00	2015-06-22 04:38:32.708648	2015-06-22 04:38:32.708648
1711	1066	2015-02-03 17:40:00	2015-06-22 04:38:34.017911	2015-06-22 04:38:34.017911
1712	1067	2015-02-03 18:22:00	2015-06-22 04:38:35.546287	2015-06-22 04:38:35.546287
1713	1068	2015-02-03 18:24:00	2015-06-22 04:38:35.623776	2015-06-22 04:38:35.623776
1714	1069	2015-02-03 21:56:00	2015-06-22 04:38:41.793298	2015-06-22 04:38:41.793298
1715	1068	2015-02-03 22:26:00	2015-06-22 04:38:42.55322	2015-06-22 04:38:42.55322
1716	1070	2015-02-04 00:44:00	2015-06-22 04:38:46.409174	2015-06-22 04:38:46.409174
1717	1071	2015-02-04 01:42:00	2015-06-22 04:38:48.091515	2015-06-22 04:38:48.091515
1718	1070	2015-02-04 02:18:00	2015-06-22 04:38:49.048158	2015-06-22 04:38:49.048158
1719	1068	2015-02-04 03:37:00	2015-06-22 04:38:51.375951	2015-06-22 04:38:51.375951
1720	1072	2015-02-04 08:07:00	2015-06-22 04:38:59.393677	2015-06-22 04:38:59.393677
1721	1073	2015-02-04 10:27:00	2015-06-22 04:39:03.232692	2015-06-22 04:39:03.232692
1722	1074	2015-02-04 12:41:00	2015-06-22 04:39:07.247103	2015-06-22 04:39:07.247103
1723	1075	2015-02-04 14:47:00	2015-06-22 04:39:10.775457	2015-06-22 04:39:10.775457
1724	1076	2015-02-04 15:44:00	2015-06-22 04:39:12.31695	2015-06-22 04:39:12.31695
1725	1075	2015-02-04 15:46:00	2015-06-22 04:39:12.365777	2015-06-22 04:39:12.365777
1726	1076	2015-02-04 15:48:00	2015-06-22 04:39:12.428606	2015-06-22 04:39:12.428606
1727	1077	2015-02-04 15:54:00	2015-06-22 04:39:12.577914	2015-06-22 04:39:12.577914
1728	1078	2015-02-04 16:26:00	2015-06-22 04:39:13.483672	2015-06-22 04:39:13.483672
1729	1079	2015-02-04 21:23:00	2015-06-22 04:39:21.717352	2015-06-22 04:39:21.717352
1730	1078	2015-02-04 21:59:00	2015-06-22 04:39:22.858946	2015-06-22 04:39:22.858946
1731	1080	2015-02-04 23:04:00	2015-06-22 04:39:24.65605	2015-06-22 04:39:24.65605
1732	1078	2015-02-04 23:06:00	2015-06-22 04:39:24.705873	2015-06-22 04:39:24.705873
1733	1081	2015-02-05 04:03:00	2015-06-22 04:39:32.65831	2015-06-22 04:39:32.65831
1734	1078	2015-02-05 04:05:00	2015-06-22 04:39:32.716683	2015-06-22 04:39:32.716683
1735	1081	2015-02-05 04:11:00	2015-06-22 04:39:32.869804	2015-06-22 04:39:32.869804
1736	1078	2015-02-05 04:15:00	2015-06-22 04:39:32.973879	2015-06-22 04:39:32.973879
1737	1082	2015-02-05 04:27:00	2015-06-22 04:39:33.311973	2015-06-22 04:39:33.311973
1738	1083	2015-02-05 06:56:00	2015-06-22 04:39:37.893922	2015-06-22 04:39:37.893922
1739	1084	2015-02-05 09:16:00	2015-06-22 04:39:42.059816	2015-06-22 04:39:42.059816
1740	1083	2015-02-05 10:24:00	2015-06-22 04:39:44.010691	2015-06-22 04:39:44.010691
1741	1085	2015-02-05 12:08:00	2015-06-22 04:39:46.903886	2015-06-22 04:39:46.903886
1742	1086	2015-02-05 15:12:00	2015-06-22 04:39:52.349106	2015-06-22 04:39:52.349106
1743	1087	2015-02-05 17:16:00	2015-06-22 04:39:55.56323	2015-06-22 04:39:55.56323
1744	1088	2015-02-05 17:22:00	2015-06-22 04:39:55.729957	2015-06-22 04:39:55.729957
1745	1089	2015-02-06 10:31:00	2015-06-22 04:40:25.866853	2015-06-22 04:40:25.866853
1746	1090	2015-02-06 11:05:00	2015-06-22 04:40:26.900207	2015-06-22 04:40:26.900207
1747	1091	2015-02-06 11:07:00	2015-06-22 04:40:26.958576	2015-06-22 04:40:26.958576
1748	1092	2015-02-06 13:59:00	2015-06-22 04:40:31.534491	2015-06-22 04:40:31.534491
1749	1093	2015-02-06 14:09:00	2015-06-22 04:40:31.779501	2015-06-22 04:40:31.779501
1750	1092	2015-02-06 14:13:00	2015-06-22 04:40:31.87486	2015-06-22 04:40:31.87486
1751	1093	2015-02-06 14:29:00	2015-06-22 04:40:32.280721	2015-06-22 04:40:32.280721
1752	1094	2015-02-06 15:05:00	2015-06-22 04:40:33.361894	2015-06-22 04:40:33.361894
1753	1095	2015-02-06 15:21:00	2015-06-22 04:40:33.751992	2015-06-22 04:40:33.751992
1754	1096	2015-02-06 16:21:00	2015-06-22 04:40:35.358783	2015-06-22 04:40:35.358783
1755	1097	2015-02-06 16:52:00	2015-06-22 04:40:36.069509	2015-06-22 04:40:36.069509
1756	1098	2015-02-06 17:04:00	2015-06-22 04:40:36.373211	2015-06-22 04:40:36.373211
1757	1099	2015-02-06 17:12:00	2015-06-22 04:40:36.721746	2015-06-22 04:40:36.721746
1758	1098	2015-02-06 17:16:00	2015-06-22 04:40:36.837731	2015-06-22 04:40:36.837731
1759	1099	2015-02-06 17:49:00	2015-06-22 04:40:37.619037	2015-06-22 04:40:37.619037
1760	1100	2015-02-06 21:28:00	2015-06-22 04:40:43.992502	2015-06-22 04:40:43.992502
1761	1101	2015-02-06 22:18:00	2015-06-22 04:40:45.732336	2015-06-22 04:40:45.732336
1762	1102	2015-02-07 06:14:00	2015-06-22 04:40:59.393557	2015-06-22 04:40:59.393557
1763	1101	2015-02-07 06:42:00	2015-06-22 04:41:00.241628	2015-06-22 04:41:00.241628
1764	1102	2015-02-07 07:08:00	2015-06-22 04:41:00.906435	2015-06-22 04:41:00.906435
1765	1103	2015-02-07 08:12:00	2015-06-22 04:41:02.618021	2015-06-22 04:41:02.618021
1766	1104	2015-02-07 13:46:00	2015-06-22 04:41:12.170228	2015-06-22 04:41:12.170228
1767	1105	2015-02-07 16:27:00	2015-06-22 04:41:16.772167	2015-06-22 04:41:16.772167
1768	1106	2015-02-07 16:29:00	2015-06-22 04:41:16.832315	2015-06-22 04:41:16.832315
1769	1107	2015-02-07 16:57:00	2015-06-22 04:41:17.546442	2015-06-22 04:41:17.546442
1770	1108	2015-02-07 17:17:00	2015-06-22 04:41:18.20836	2015-06-22 04:41:18.20836
1771	1109	2015-02-07 17:19:00	2015-06-22 04:41:18.264365	2015-06-22 04:41:18.264365
1772	1106	2015-02-07 17:31:00	2015-06-22 04:41:18.591375	2015-06-22 04:41:18.591375
1773	1110	2015-02-07 18:50:00	2015-06-22 04:41:20.733224	2015-06-22 04:41:20.733224
1774	1111	2015-02-07 21:33:00	2015-06-22 04:41:25.893674	2015-06-22 04:41:25.893674
1775	1112	2015-02-07 21:43:00	2015-06-22 04:41:26.276361	2015-06-22 04:41:26.276361
1776	1111	2015-02-07 21:59:00	2015-06-22 04:41:27.113918	2015-06-22 04:41:27.113918
1777	1113	2015-02-07 22:57:00	2015-06-22 04:41:29.04943	2015-06-22 04:41:29.04943
1778	1111	2015-02-07 22:59:00	2015-06-22 04:41:29.09896	2015-06-22 04:41:29.09896
1779	1113	2015-02-07 23:01:00	2015-06-22 04:41:29.145991	2015-06-22 04:41:29.145991
1780	1111	2015-02-07 23:05:00	2015-06-22 04:41:29.251902	2015-06-22 04:41:29.251902
1781	1113	2015-02-07 23:07:00	2015-06-22 04:41:29.303963	2015-06-22 04:41:29.303963
1782	1114	2015-02-08 00:15:00	2015-06-22 04:41:31.165223	2015-06-22 04:41:31.165223
1783	1115	2015-02-08 08:13:00	2015-06-22 04:41:47.996473	2015-06-22 04:41:47.996473
1784	1116	2015-02-08 10:12:00	2015-06-22 04:41:52.223125	2015-06-22 04:41:52.223125
1785	1115	2015-02-08 10:20:00	2015-06-22 04:41:52.549689	2015-06-22 04:41:52.549689
1786	1114	2015-02-08 11:14:00	2015-06-22 04:41:54.504216	2015-06-22 04:41:54.504216
1787	1117	2015-02-08 11:22:00	2015-06-22 04:41:54.720989	2015-06-22 04:41:54.720989
1788	1114	2015-02-08 11:56:00	2015-06-22 04:41:55.540779	2015-06-22 04:41:55.540779
1789	1117	2015-02-08 12:00:00	2015-06-22 04:41:55.630921	2015-06-22 04:41:55.630921
1790	1114	2015-02-08 12:04:00	2015-06-22 04:41:55.723205	2015-06-22 04:41:55.723205
1791	1118	2015-02-08 12:25:00	2015-06-22 04:41:56.27776	2015-06-22 04:41:56.27776
1792	1114	2015-02-08 12:39:00	2015-06-22 04:41:56.653351	2015-06-22 04:41:56.653351
1793	1118	2015-02-08 12:45:00	2015-06-22 04:41:56.794664	2015-06-22 04:41:56.794664
1794	1114	2015-02-08 13:03:00	2015-06-22 04:41:57.216944	2015-06-22 04:41:57.216944
1795	1118	2015-02-08 13:05:00	2015-06-22 04:41:57.264138	2015-06-22 04:41:57.264138
1796	1119	2015-02-08 16:27:00	2015-06-22 04:42:02.746163	2015-06-22 04:42:02.746163
1797	1120	2015-02-08 17:15:00	2015-06-22 04:42:04.264054	2015-06-22 04:42:04.264054
1798	1119	2015-02-08 17:17:00	2015-06-22 04:42:04.31181	2015-06-22 04:42:04.31181
1799	1120	2015-02-08 17:19:00	2015-06-22 04:42:04.472571	2015-06-22 04:42:04.472571
1800	1121	2015-02-08 19:35:00	2015-06-22 04:42:08.220905	2015-06-22 04:42:08.220905
1801	1122	2015-02-08 21:21:00	2015-06-22 04:42:11.644848	2015-06-22 04:42:11.644848
1802	1123	2015-02-08 22:32:00	2015-06-22 04:42:14.453607	2015-06-22 04:42:14.453607
1803	1124	2015-02-09 01:07:00	2015-06-22 04:42:20.06822	2015-06-22 04:42:20.06822
1804	1125	2015-02-09 03:41:00	2015-06-22 04:42:24.759343	2015-06-22 04:42:24.759343
1805	1126	2015-02-09 09:20:00	2015-06-22 04:42:36.5296	2015-06-22 04:42:36.5296
1806	1127	2015-02-09 11:45:00	2015-06-22 04:42:40.502998	2015-06-22 04:42:40.502998
1807	1126	2015-02-09 11:47:00	2015-06-22 04:42:40.565498	2015-06-22 04:42:40.565498
1808	1128	2015-02-09 12:19:00	2015-06-22 04:42:41.499789	2015-06-22 04:42:41.499789
1809	1126	2015-02-09 12:25:00	2015-06-22 04:42:41.629918	2015-06-22 04:42:41.629918
1810	1128	2015-02-09 13:02:00	2015-06-22 04:42:42.574199	2015-06-22 04:42:42.574199
1811	1126	2015-02-09 13:08:00	2015-06-22 04:42:42.694786	2015-06-22 04:42:42.694786
1812	1128	2015-02-09 13:14:00	2015-06-22 04:42:42.827639	2015-06-22 04:42:42.827639
1813	1126	2015-02-09 13:20:00	2015-06-22 04:42:42.949739	2015-06-22 04:42:42.949739
1814	1128	2015-02-09 13:30:00	2015-06-22 04:42:43.15243	2015-06-22 04:42:43.15243
1815	1129	2015-02-09 14:35:00	2015-06-22 04:42:45.357865	2015-06-22 04:42:45.357865
1816	1130	2015-02-09 14:59:00	2015-06-22 04:42:46.078592	2015-06-22 04:42:46.078592
1817	1131	2015-02-09 15:25:00	2015-06-22 04:42:46.874501	2015-06-22 04:42:46.874501
1818	1132	2015-02-09 16:52:00	2015-06-22 04:42:50.036944	2015-06-22 04:42:50.036944
1819	1131	2015-02-09 17:50:00	2015-06-22 04:42:51.941142	2015-06-22 04:42:51.941142
1820	1133	2015-02-09 17:52:00	2015-06-22 04:42:52.008662	2015-06-22 04:42:52.008662
1821	1134	2015-02-09 18:47:00	2015-06-22 04:42:53.578607	2015-06-22 04:42:53.578607
1822	1135	2015-02-09 21:04:00	2015-06-22 04:42:57.771696	2015-06-22 04:42:57.771696
1823	1136	2015-02-10 01:11:00	2015-06-22 04:43:04.628409	2015-06-22 04:43:04.628409
1824	1137	2015-02-10 06:35:00	2015-06-22 04:43:14.052635	2015-06-22 04:43:14.052635
1825	1136	2015-02-10 07:50:00	2015-06-22 04:43:16.560324	2015-06-22 04:43:16.560324
1826	1138	2015-02-10 09:11:00	2015-06-22 04:43:19.218803	2015-06-22 04:43:19.218803
1827	1139	2015-02-10 13:21:00	2015-06-22 04:43:27.231179	2015-06-22 04:43:27.231179
1828	1138	2015-02-10 13:23:00	2015-06-22 04:43:27.28013	2015-06-22 04:43:27.28013
1829	1139	2015-02-10 13:37:00	2015-06-22 04:43:27.620491	2015-06-22 04:43:27.620491
1830	1140	2015-02-10 14:45:00	2015-06-22 04:43:29.817619	2015-06-22 04:43:29.817619
1831	1141	2015-02-10 15:36:00	2015-06-22 04:43:31.927715	2015-06-22 04:43:31.927715
1832	1142	2015-02-10 16:05:00	2015-06-22 04:43:32.994247	2015-06-22 04:43:32.994247
1833	1143	2015-02-10 19:46:00	2015-06-22 04:43:39.557564	2015-06-22 04:43:39.557564
1834	1142	2015-02-10 19:48:00	2015-06-22 04:43:39.602035	2015-06-22 04:43:39.602035
1835	1143	2015-02-10 19:50:00	2015-06-22 04:43:39.643078	2015-06-22 04:43:39.643078
1836	1144	2015-02-10 22:48:00	2015-06-22 04:43:44.783633	2015-06-22 04:43:44.783633
1837	1145	2015-02-11 04:23:00	2015-06-22 04:43:57.25818	2015-06-22 04:43:57.25818
1838	1146	2015-02-11 13:06:00	2015-06-22 04:44:12.878625	2015-06-22 04:44:12.878625
1839	1147	2015-02-11 13:26:00	2015-06-22 04:44:13.382623	2015-06-22 04:44:13.382623
1840	1148	2015-02-11 15:39:00	2015-06-22 04:44:18.828674	2015-06-22 04:44:18.828674
1841	1147	2015-02-11 15:41:00	2015-06-22 04:44:18.896798	2015-06-22 04:44:18.896798
1842	1148	2015-02-11 15:45:00	2015-06-22 04:44:19.008354	2015-06-22 04:44:19.008354
1843	1147	2015-02-11 15:47:00	2015-06-22 04:44:19.062979	2015-06-22 04:44:19.062979
1844	1149	2015-02-11 16:01:00	2015-06-22 04:44:19.430032	2015-06-22 04:44:19.430032
1845	1150	2015-02-11 18:23:00	2015-06-22 04:44:23.120019	2015-06-22 04:44:23.120019
1846	1149	2015-02-11 18:47:00	2015-06-22 04:44:23.898171	2015-06-22 04:44:23.898171
1847	1151	2015-02-11 18:49:00	2015-06-22 04:44:23.975427	2015-06-22 04:44:23.975427
1848	1152	2015-02-11 19:32:00	2015-06-22 04:44:25.575009	2015-06-22 04:44:25.575009
1849	1153	2015-02-11 20:08:00	2015-06-22 04:44:26.555737	2015-06-22 04:44:26.555737
1850	1154	2015-02-11 22:23:00	2015-06-22 04:44:30.840489	2015-06-22 04:44:30.840489
1851	1155	2015-02-11 22:41:00	2015-06-22 04:44:31.495992	2015-06-22 04:44:31.495992
1852	1156	2015-02-12 07:06:00	2015-06-22 04:44:47.079782	2015-06-22 04:44:47.079782
1853	1155	2015-02-12 07:10:00	2015-06-22 04:44:47.303601	2015-06-22 04:44:47.303601
1854	1157	2015-02-12 09:47:00	2015-06-22 04:44:52.057301	2015-06-22 04:44:52.057301
1855	1158	2015-02-12 10:29:00	2015-06-22 04:44:53.038183	2015-06-22 04:44:53.038183
1856	1159	2015-02-12 10:31:00	2015-06-22 04:44:53.09965	2015-06-22 04:44:53.09965
1857	1158	2015-02-12 10:33:00	2015-06-22 04:44:53.159405	2015-06-22 04:44:53.159405
1858	1159	2015-02-12 10:47:00	2015-06-22 04:44:53.51407	2015-06-22 04:44:53.51407
1859	1160	2015-02-12 14:16:00	2015-06-22 04:45:00.54909	2015-06-22 04:45:00.54909
1860	1161	2015-02-12 15:21:00	2015-06-22 04:45:02.922214	2015-06-22 04:45:02.922214
1861	1162	2015-02-12 17:36:00	2015-06-22 04:45:07.044137	2015-06-22 04:45:07.044137
1862	1163	2015-02-12 19:28:00	2015-06-22 04:45:10.603195	2015-06-22 04:45:10.603195
1863	1164	2015-02-13 01:28:00	2015-06-22 04:45:20.904265	2015-06-22 04:45:20.904265
1864	1165	2015-02-13 06:02:00	2015-06-22 04:45:29.145854	2015-06-22 04:45:29.145854
1865	1164	2015-02-13 08:25:00	2015-06-22 04:45:33.119181	2015-06-22 04:45:33.119181
1866	1166	2015-02-13 11:58:00	2015-06-22 04:45:38.98083	2015-06-22 04:45:38.98083
1867	1164	2015-02-13 12:02:00	2015-06-22 04:45:39.211269	2015-06-22 04:45:39.211269
1868	1166	2015-02-13 12:04:00	2015-06-22 04:45:39.271866	2015-06-22 04:45:39.271866
1869	1164	2015-02-13 12:06:00	2015-06-22 04:45:39.333963	2015-06-22 04:45:39.333963
1870	1166	2015-02-13 12:08:00	2015-06-22 04:45:39.397875	2015-06-22 04:45:39.397875
1871	1167	2015-02-13 13:18:00	2015-06-22 04:45:41.708416	2015-06-22 04:45:41.708416
1872	1168	2015-02-13 13:30:00	2015-06-22 04:45:42.056493	2015-06-22 04:45:42.056493
1873	1169	2015-02-13 16:24:00	2015-06-22 04:45:48.10591	2015-06-22 04:45:48.10591
1874	1170	2015-02-13 17:46:00	2015-06-22 04:45:50.669251	2015-06-22 04:45:50.669251
1875	1169	2015-02-13 17:48:00	2015-06-22 04:45:50.728804	2015-06-22 04:45:50.728804
1876	1170	2015-02-13 17:52:00	2015-06-22 04:45:50.829502	2015-06-22 04:45:50.829502
1877	1171	2015-02-13 18:33:00	2015-06-22 04:45:52.248991	2015-06-22 04:45:52.248991
1878	1172	2015-02-13 23:49:00	2015-06-22 04:46:01.833882	2015-06-22 04:46:01.833882
1879	1173	2015-02-14 01:49:00	2015-06-22 04:46:05.623242	2015-06-22 04:46:05.623242
1880	1172	2015-02-14 04:16:00	2015-06-22 04:46:09.412884	2015-06-22 04:46:09.412884
1881	1174	2015-02-14 04:28:00	2015-06-22 04:46:09.665978	2015-06-22 04:46:09.665978
1882	1172	2015-02-14 04:36:00	2015-06-22 04:46:09.958008	2015-06-22 04:46:09.958008
1883	1174	2015-02-14 04:38:00	2015-06-22 04:46:10.058639	2015-06-22 04:46:10.058639
1884	1175	2015-02-14 07:14:00	2015-06-22 04:46:15.174714	2015-06-22 04:46:15.174714
1885	1176	2015-02-14 08:05:00	2015-06-22 04:46:16.62905	2015-06-22 04:46:16.62905
1886	1175	2015-02-14 09:03:00	2015-06-22 04:46:18.338886	2015-06-22 04:46:18.338886
1887	1177	2015-02-14 14:43:00	2015-06-22 04:46:28.747639	2015-06-22 04:46:28.747639
1888	1178	2015-02-14 15:06:00	2015-06-22 04:46:29.460325	2015-06-22 04:46:29.460325
1889	1177	2015-02-14 16:01:00	2015-06-22 04:46:31.032365	2015-06-22 04:46:31.032365
1890	1175	2015-02-14 16:05:00	2015-06-22 04:46:31.136247	2015-06-22 04:46:31.136247
1891	1179	2015-02-14 17:03:00	2015-06-22 04:46:32.931262	2015-06-22 04:46:32.931262
1892	1180	2015-02-14 17:51:00	2015-06-22 04:46:34.431947	2015-06-22 04:46:34.431947
1893	1181	2015-02-14 18:09:00	2015-06-22 04:46:35.253778	2015-06-22 04:46:35.253778
1894	1180	2015-02-14 18:11:00	2015-06-22 04:46:35.35326	2015-06-22 04:46:35.35326
1895	1182	2015-02-14 19:18:00	2015-06-22 04:46:37.731328	2015-06-22 04:46:37.731328
1896	1183	2015-02-14 19:57:00	2015-06-22 04:46:38.694405	2015-06-22 04:46:38.694405
1897	1184	2015-02-14 22:46:00	2015-06-22 04:46:43.534544	2015-06-22 04:46:43.534544
1898	1185	2015-02-15 05:53:00	2015-06-22 04:46:55.56936	2015-06-22 04:46:55.56936
1899	1184	2015-02-15 06:46:00	2015-06-22 04:46:57.218422	2015-06-22 04:46:57.218422
1900	1186	2015-02-15 09:29:00	2015-06-22 04:47:02.104659	2015-06-22 04:47:02.104659
1901	1187	2015-02-15 13:57:00	2015-06-22 04:47:11.238972	2015-06-22 04:47:11.238972
1902	1186	2015-02-15 14:39:00	2015-06-22 04:47:12.478231	2015-06-22 04:47:12.478231
1903	1187	2015-02-15 14:47:00	2015-06-22 04:47:12.677764	2015-06-22 04:47:12.677764
1904	1186	2015-02-15 15:16:00	2015-06-22 04:47:13.359125	2015-06-22 04:47:13.359125
1905	1188	2015-02-15 15:24:00	2015-06-22 04:47:13.564373	2015-06-22 04:47:13.564373
1906	1189	2015-02-15 17:39:00	2015-06-22 04:47:17.858578	2015-06-22 04:47:17.858578
1907	1190	2015-02-15 19:18:00	2015-06-22 04:47:21.01716	2015-06-22 04:47:21.01716
1908	1191	2015-02-15 19:48:00	2015-06-22 04:47:21.908725	2015-06-22 04:47:21.908725
1909	1192	2015-02-15 19:58:00	2015-06-22 04:47:22.174971	2015-06-22 04:47:22.174971
1910	1191	2015-02-15 20:39:00	2015-06-22 04:47:23.225959	2015-06-22 04:47:23.225959
1911	1192	2015-02-15 20:43:00	2015-06-22 04:47:23.441528	2015-06-22 04:47:23.441528
1912	1191	2015-02-15 20:53:00	2015-06-22 04:47:23.748177	2015-06-22 04:47:23.748177
1913	1193	2015-02-15 21:45:00	2015-06-22 04:47:25.245877	2015-06-22 04:47:25.245877
1914	1194	2015-02-15 23:58:00	2015-06-22 04:47:29.384106	2015-06-22 04:47:29.384106
1915	1195	2015-02-16 02:25:00	2015-06-22 04:47:34.298721	2015-06-22 04:47:34.298721
1916	1196	2015-02-16 05:58:00	2015-06-22 04:47:40.591871	2015-06-22 04:47:40.591871
1917	1197	2015-02-16 06:28:00	2015-06-22 04:47:41.477711	2015-06-22 04:47:41.477711
1918	1196	2015-02-16 07:57:00	2015-06-22 04:47:44.694262	2015-06-22 04:47:44.694262
1919	1198	2015-02-16 08:40:00	2015-06-22 04:47:45.899234	2015-06-22 04:47:45.899234
1920	1196	2015-02-16 09:02:00	2015-06-22 04:47:46.429924	2015-06-22 04:47:46.429924
1921	1199	2015-02-16 09:46:00	2015-06-22 04:47:47.645458	2015-06-22 04:47:47.645458
1922	1196	2015-02-16 09:50:00	2015-06-22 04:47:47.741944	2015-06-22 04:47:47.741944
1923	1200	2015-02-16 10:06:00	2015-06-22 04:47:48.139806	2015-06-22 04:47:48.139806
1924	1201	2015-02-16 10:48:00	2015-06-22 04:47:49.313073	2015-06-22 04:47:49.313073
1925	1202	2015-02-16 11:27:00	2015-06-22 04:47:50.845301	2015-06-22 04:47:50.845301
1926	1203	2015-02-16 13:28:00	2015-06-22 04:47:54.138298	2015-06-22 04:47:54.138298
1927	1204	2015-02-16 15:50:00	2015-06-22 04:47:57.807088	2015-06-22 04:47:57.807088
1928	1205	2015-02-16 16:20:00	2015-06-22 04:47:58.564235	2015-06-22 04:47:58.564235
1929	1204	2015-02-16 16:24:00	2015-06-22 04:47:58.658859	2015-06-22 04:47:58.658859
1930	1206	2015-02-16 17:30:00	2015-06-22 04:48:00.498139	2015-06-22 04:48:00.498139
1931	1204	2015-02-16 17:32:00	2015-06-22 04:48:00.546905	2015-06-22 04:48:00.546905
1932	1206	2015-02-16 17:43:00	2015-06-22 04:48:00.817284	2015-06-22 04:48:00.817284
1933	1207	2015-02-16 17:55:00	2015-06-22 04:48:01.233151	2015-06-22 04:48:01.233151
1934	1208	2015-02-16 20:52:00	2015-06-22 04:48:05.554967	2015-06-22 04:48:05.554967
1935	1209	2015-02-17 08:20:00	2015-06-22 04:48:25.240639	2015-06-22 04:48:25.240639
1936	1210	2015-02-17 09:38:00	2015-06-22 04:48:28.127208	2015-06-22 04:48:28.127208
1937	1211	2015-02-17 12:21:00	2015-06-22 04:48:33.29745	2015-06-22 04:48:33.29745
1938	1212	2015-02-17 13:08:00	2015-06-22 04:48:34.650941	2015-06-22 04:48:34.650941
1939	1211	2015-02-17 14:37:00	2015-06-22 04:48:36.999075	2015-06-22 04:48:36.999075
1940	1212	2015-02-17 15:03:00	2015-06-22 04:48:38.106094	2015-06-22 04:48:38.106094
1941	1211	2015-02-17 15:05:00	2015-06-22 04:48:38.196698	2015-06-22 04:48:38.196698
1942	1212	2015-02-17 15:07:00	2015-06-22 04:48:38.29059	2015-06-22 04:48:38.29059
1943	1213	2015-02-17 15:17:00	2015-06-22 04:48:38.953634	2015-06-22 04:48:38.953634
1944	1214	2015-02-17 18:51:00	2015-06-22 04:48:47.005949	2015-06-22 04:48:47.005949
1945	1215	2015-02-17 20:23:00	2015-06-22 04:48:50.142037	2015-06-22 04:48:50.142037
1946	1214	2015-02-17 21:51:00	2015-06-22 04:48:52.513365	2015-06-22 04:48:52.513365
1947	1216	2015-02-17 21:53:00	2015-06-22 04:48:52.565426	2015-06-22 04:48:52.565426
1948	1217	2015-02-17 23:33:00	2015-06-22 04:48:55.999243	2015-06-22 04:48:55.999243
1949	1216	2015-02-18 00:49:00	2015-06-22 04:48:58.173528	2015-06-22 04:48:58.173528
1950	1218	2015-02-18 01:51:00	2015-06-22 04:48:59.880426	2015-06-22 04:48:59.880426
1951	1219	2015-02-18 03:53:00	2015-06-22 04:49:03.499246	2015-06-22 04:49:03.499246
1952	1220	2015-02-18 10:53:00	2015-06-22 04:49:15.612132	2015-06-22 04:49:15.612132
1953	1219	2015-02-18 10:59:00	2015-06-22 04:49:15.884929	2015-06-22 04:49:15.884929
1954	1221	2015-02-18 11:49:00	2015-06-22 04:49:17.192705	2015-06-22 04:49:17.192705
1955	1220	2015-02-18 12:46:00	2015-06-22 04:49:18.955486	2015-06-22 04:49:18.955486
1956	1219	2015-02-18 12:50:00	2015-06-22 04:49:19.065678	2015-06-22 04:49:19.065678
1957	1220	2015-02-18 12:52:00	2015-06-22 04:49:19.12121	2015-06-22 04:49:19.12121
1958	1222	2015-02-18 13:41:00	2015-06-22 04:49:20.559314	2015-06-22 04:49:20.559314
1959	1223	2015-02-18 15:25:00	2015-06-22 04:49:23.943003	2015-06-22 04:49:23.943003
1960	1224	2015-02-18 17:27:00	2015-06-22 04:49:27.767492	2015-06-22 04:49:27.767492
1961	1225	2015-02-18 18:45:00	2015-06-22 04:49:29.979725	2015-06-22 04:49:29.979725
1962	1226	2015-02-18 18:59:00	2015-06-22 04:49:30.337467	2015-06-22 04:49:30.337467
1963	1227	2015-02-19 05:06:00	2015-06-22 04:49:50.745381	2015-06-22 04:49:50.745381
1964	1228	2015-02-19 08:16:00	2015-06-22 04:49:56.049636	2015-06-22 04:49:56.049636
1965	1227	2015-02-19 08:20:00	2015-06-22 04:49:56.155747	2015-06-22 04:49:56.155747
1966	1229	2015-02-19 08:56:00	2015-06-22 04:49:57.289576	2015-06-22 04:49:57.289576
1967	1230	2015-02-19 11:11:00	2015-06-22 04:50:01.105719	2015-06-22 04:50:01.105719
1968	1231	2015-02-19 12:14:00	2015-06-22 04:50:02.803456	2015-06-22 04:50:02.803456
1969	1230	2015-02-19 12:16:00	2015-06-22 04:50:02.856489	2015-06-22 04:50:02.856489
1970	1231	2015-02-19 12:18:00	2015-06-22 04:50:02.912174	2015-06-22 04:50:02.912174
1971	1232	2015-02-19 15:42:00	2015-06-22 04:50:09.42508	2015-06-22 04:50:09.42508
1972	1231	2015-02-19 15:54:00	2015-06-22 04:50:09.892654	2015-06-22 04:50:09.892654
1973	1233	2015-02-19 16:02:00	2015-06-22 04:50:10.082716	2015-06-22 04:50:10.082716
1974	1234	2015-02-19 17:00:00	2015-06-22 04:50:11.5784	2015-06-22 04:50:11.5784
1975	1233	2015-02-19 17:28:00	2015-06-22 04:50:12.276266	2015-06-22 04:50:12.276266
1976	1235	2015-02-19 18:59:00	2015-06-22 04:50:14.681905	2015-06-22 04:50:14.681905
1977	1236	2015-02-20 01:31:00	2015-06-22 04:50:26.691827	2015-06-22 04:50:26.691827
1978	1237	2015-02-20 05:43:00	2015-06-22 04:50:34.714685	2015-06-22 04:50:34.714685
1979	1236	2015-02-20 10:20:00	2015-06-22 04:50:43.349311	2015-06-22 04:50:43.349311
1980	1238	2015-02-20 11:43:00	2015-06-22 04:50:45.735088	2015-06-22 04:50:45.735088
1981	1239	2015-02-20 15:00:00	2015-06-22 04:50:51.105002	2015-06-22 04:50:51.105002
1982	1238	2015-02-20 15:12:00	2015-06-22 04:50:51.404919	2015-06-22 04:50:51.404919
1983	1240	2015-02-20 15:18:00	2015-06-22 04:50:51.557676	2015-06-22 04:50:51.557676
1984	1241	2015-02-20 16:01:00	2015-06-22 04:50:52.779377	2015-06-22 04:50:52.779377
1985	1242	2015-02-20 16:19:00	2015-06-22 04:50:53.239941	2015-06-22 04:50:53.239941
1986	1243	2015-02-20 17:56:00	2015-06-22 04:50:56.203147	2015-06-22 04:50:56.203147
1987	1244	2015-02-20 18:10:00	2015-06-22 04:50:56.573162	2015-06-22 04:50:56.573162
1988	1243	2015-02-20 18:16:00	2015-06-22 04:50:56.724841	2015-06-22 04:50:56.724841
1989	1244	2015-02-20 18:18:00	2015-06-22 04:50:56.77558	2015-06-22 04:50:56.77558
1990	1243	2015-02-20 18:20:00	2015-06-22 04:50:56.831461	2015-06-22 04:50:56.831461
1991	1244	2015-02-20 18:28:00	2015-06-22 04:50:57.048578	2015-06-22 04:50:57.048578
1992	1243	2015-02-20 18:30:00	2015-06-22 04:50:57.104055	2015-06-22 04:50:57.104055
1993	1244	2015-02-20 18:32:00	2015-06-22 04:50:57.167467	2015-06-22 04:50:57.167467
1994	1245	2015-02-20 19:20:00	2015-06-22 04:50:58.539739	2015-06-22 04:50:58.539739
1995	1246	2015-02-20 22:32:00	2015-06-22 04:51:04.246224	2015-06-22 04:51:04.246224
1996	1245	2015-02-20 23:40:00	2015-06-22 04:51:06.589474	2015-06-22 04:51:06.589474
1997	1247	2015-02-21 00:53:00	2015-06-22 04:51:09.317016	2015-06-22 04:51:09.317016
1998	1248	2015-02-21 01:42:00	2015-06-22 04:51:10.999871	2015-06-22 04:51:10.999871
1999	1249	2015-02-21 04:41:00	2015-06-22 04:51:15.567576	2015-06-22 04:51:15.567576
2000	1248	2015-02-21 05:27:00	2015-06-22 04:51:17.095066	2015-06-22 04:51:17.095066
2001	1250	2015-02-21 13:19:00	2015-06-22 04:51:31.761223	2015-06-22 04:51:31.761223
2002	1251	2015-02-21 16:53:00	2015-06-22 04:51:39.659439	2015-06-22 04:51:39.659439
2003	1252	2015-02-21 20:41:00	2015-06-22 04:51:45.966939	2015-06-22 04:51:45.966939
2004	1251	2015-02-21 20:49:00	2015-06-22 04:51:46.298385	2015-06-22 04:51:46.298385
2005	1252	2015-02-21 21:15:00	2015-06-22 04:51:47.3735	2015-06-22 04:51:47.3735
2006	1253	2015-02-21 22:19:00	2015-06-22 04:51:49.224134	2015-06-22 04:51:49.224134
2007	1254	2015-02-21 22:29:00	2015-06-22 04:51:49.452272	2015-06-22 04:51:49.452272
2008	1255	2015-02-21 23:27:00	2015-06-22 04:51:50.99812	2015-06-22 04:51:50.99812
2009	1254	2015-02-21 23:29:00	2015-06-22 04:51:51.090445	2015-06-22 04:51:51.090445
2010	1255	2015-02-21 23:35:00	2015-06-22 04:51:51.351944	2015-06-22 04:51:51.351944
2011	1256	2015-02-22 02:27:00	2015-06-22 04:51:56.825385	2015-06-22 04:51:56.825385
2012	1257	2015-02-22 16:51:00	2015-06-22 04:52:21.989327	2015-06-22 04:52:21.989327
2013	1258	2015-02-22 17:02:00	2015-06-22 04:52:22.301678	2015-06-22 04:52:22.301678
2014	1256	2015-02-22 17:08:00	2015-06-22 04:52:22.475071	2015-06-22 04:52:22.475071
2015	1258	2015-02-22 17:10:00	2015-06-22 04:52:22.535659	2015-06-22 04:52:22.535659
2016	1256	2015-02-22 17:34:00	2015-06-22 04:52:23.180133	2015-06-22 04:52:23.180133
2017	1259	2015-02-22 17:48:00	2015-06-22 04:52:23.666769	2015-06-22 04:52:23.666769
2018	1256	2015-02-22 17:52:00	2015-06-22 04:52:23.799572	2015-06-22 04:52:23.799572
2019	1260	2015-02-22 18:02:00	2015-06-22 04:52:24.104832	2015-06-22 04:52:24.104832
2020	1261	2015-02-22 18:12:00	2015-06-22 04:52:24.383652	2015-06-22 04:52:24.383652
2021	1262	2015-02-22 19:00:00	2015-06-22 04:52:25.797913	2015-06-22 04:52:25.797913
2022	1263	2015-02-22 19:54:00	2015-06-22 04:52:27.379366	2015-06-22 04:52:27.379366
2023	1261	2015-02-22 19:58:00	2015-06-22 04:52:27.510572	2015-06-22 04:52:27.510572
2024	1264	2015-02-22 20:10:00	2015-06-22 04:52:27.840837	2015-06-22 04:52:27.840837
2025	1261	2015-02-22 20:59:00	2015-06-22 04:52:29.580414	2015-06-22 04:52:29.580414
2026	1263	2015-02-22 21:03:00	2015-06-22 04:52:29.697181	2015-06-22 04:52:29.697181
2027	1265	2015-02-22 21:23:00	2015-06-22 04:52:30.326808	2015-06-22 04:52:30.326808
2028	1266	2015-02-22 22:21:00	2015-06-22 04:52:32.024253	2015-06-22 04:52:32.024253
2029	1265	2015-02-22 22:23:00	2015-06-22 04:52:32.07849	2015-06-22 04:52:32.07849
2030	1266	2015-02-22 22:27:00	2015-06-22 04:52:32.191401	2015-06-22 04:52:32.191401
2031	1267	2015-02-23 00:57:00	2015-06-22 04:52:36.651828	2015-06-22 04:52:36.651828
2032	1268	2015-02-23 02:51:00	2015-06-22 04:52:39.942598	2015-06-22 04:52:39.942598
2033	1266	2015-02-23 02:57:00	2015-06-22 04:52:40.101735	2015-06-22 04:52:40.101735
2034	1268	2015-02-23 02:59:00	2015-06-22 04:52:40.155265	2015-06-22 04:52:40.155265
2035	1269	2015-02-23 03:01:00	2015-06-22 04:52:40.208021	2015-06-22 04:52:40.208021
2036	1270	2015-02-23 04:00:00	2015-06-22 04:52:42.374516	2015-06-22 04:52:42.374516
2037	1269	2015-02-23 06:21:00	2015-06-22 04:52:46.905505	2015-06-22 04:52:46.905505
2038	1271	2015-02-23 07:26:00	2015-06-22 04:52:48.858702	2015-06-22 04:52:48.858702
2039	1272	2015-02-23 09:53:00	2015-06-22 04:52:53.537166	2015-06-22 04:52:53.537166
2040	1271	2015-02-23 09:57:00	2015-06-22 04:52:53.651429	2015-06-22 04:52:53.651429
2041	1273	2015-02-23 10:11:00	2015-06-22 04:52:54.015321	2015-06-22 04:52:54.015321
2042	1274	2015-02-23 12:44:00	2015-06-22 04:52:58.136383	2015-06-22 04:52:58.136383
2043	1275	2015-02-23 13:15:00	2015-06-22 04:52:59.0539	2015-06-22 04:52:59.0539
2044	1274	2015-02-23 14:33:00	2015-06-22 04:53:01.350228	2015-06-22 04:53:01.350228
2045	1276	2015-02-23 14:55:00	2015-06-22 04:53:02.13259	2015-06-22 04:53:02.13259
2046	1277	2015-02-23 15:19:00	2015-06-22 04:53:02.756862	2015-06-22 04:53:02.756862
2047	1278	2015-02-23 16:48:00	2015-06-22 04:53:05.291908	2015-06-22 04:53:05.291908
2048	1277	2015-02-23 16:50:00	2015-06-22 04:53:05.343002	2015-06-22 04:53:05.343002
2049	1278	2015-02-23 16:56:00	2015-06-22 04:53:05.501664	2015-06-22 04:53:05.501664
2050	1279	2015-02-23 16:58:00	2015-06-22 04:53:05.557351	2015-06-22 04:53:05.557351
2051	1280	2015-02-23 17:11:00	2015-06-22 04:53:05.863762	2015-06-22 04:53:05.863762
2052	1281	2015-02-23 17:21:00	2015-06-22 04:53:06.236193	2015-06-22 04:53:06.236193
2053	1280	2015-02-23 17:23:00	2015-06-22 04:53:06.329098	2015-06-22 04:53:06.329098
2054	1282	2015-02-23 18:21:00	2015-06-22 04:53:08.937534	2015-06-22 04:53:08.937534
2055	1280	2015-02-23 18:35:00	2015-06-22 04:53:09.518913	2015-06-22 04:53:09.518913
2056	1282	2015-02-23 18:43:00	2015-06-22 04:53:09.789443	2015-06-22 04:53:09.789443
2057	1280	2015-02-23 18:47:00	2015-06-22 04:53:09.935329	2015-06-22 04:53:09.935329
2058	1282	2015-02-23 18:49:00	2015-06-22 04:53:09.999829	2015-06-22 04:53:09.999829
2059	1283	2015-02-23 19:09:00	2015-06-22 04:53:10.703662	2015-06-22 04:53:10.703662
2060	1284	2015-02-23 22:59:00	2015-06-22 04:53:17.498123	2015-06-22 04:53:17.498123
2061	1285	2015-02-24 03:37:00	2015-06-22 04:53:25.402658	2015-06-22 04:53:25.402658
2062	1286	2015-02-24 04:01:00	2015-06-22 04:53:26.114281	2015-06-22 04:53:26.114281
2063	1287	2015-02-24 08:32:00	2015-06-22 04:53:34.704415	2015-06-22 04:53:34.704415
2064	1286	2015-02-24 08:44:00	2015-06-22 04:53:35.238126	2015-06-22 04:53:35.238126
2065	1288	2015-02-24 09:06:00	2015-06-22 04:53:36.10722	2015-06-22 04:53:36.10722
2066	1289	2015-02-24 09:54:00	2015-06-22 04:53:37.616511	2015-06-22 04:53:37.616511
2067	1290	2015-02-24 10:39:00	2015-06-22 04:53:39.203663	2015-06-22 04:53:39.203663
2068	1289	2015-02-24 11:07:00	2015-06-22 04:53:40.14116	2015-06-22 04:53:40.14116
2069	1291	2015-02-24 12:00:00	2015-06-22 04:53:41.708331	2015-06-22 04:53:41.708331
2070	1292	2015-02-24 13:04:00	2015-06-22 04:53:43.499618	2015-06-22 04:53:43.499618
2071	1293	2015-02-24 15:39:00	2015-06-22 04:53:48.139533	2015-06-22 04:53:48.139533
2072	1294	2015-02-24 21:07:00	2015-06-22 04:53:58.637767	2015-06-22 04:53:58.637767
2073	1295	2015-02-24 22:47:00	2015-06-22 04:54:01.650366	2015-06-22 04:54:01.650366
2074	1293	2015-02-24 22:49:00	2015-06-22 04:54:01.712805	2015-06-22 04:54:01.712805
2075	1295	2015-02-24 22:53:00	2015-06-22 04:54:01.815909	2015-06-22 04:54:01.815909
2076	1296	2015-02-24 23:20:00	2015-06-22 04:54:02.536651	2015-06-22 04:54:02.536651
2077	1297	2015-02-25 07:51:00	2015-06-22 04:54:17.204811	2015-06-22 04:54:17.204811
2078	1296	2015-02-25 07:57:00	2015-06-22 04:54:17.403397	2015-06-22 04:54:17.403397
2079	1298	2015-02-25 09:25:00	2015-06-22 04:54:19.799523	2015-06-22 04:54:19.799523
2080	1299	2015-02-25 13:43:00	2015-06-22 04:54:26.801162	2015-06-22 04:54:26.801162
2081	1300	2015-02-25 15:37:00	2015-06-22 04:54:30.323122	2015-06-22 04:54:30.323122
2082	1301	2015-02-25 15:39:00	2015-06-22 04:54:30.379923	2015-06-22 04:54:30.379923
2083	1302	2015-02-25 15:57:00	2015-06-22 04:54:30.956687	2015-06-22 04:54:30.956687
2084	1301	2015-02-25 15:59:00	2015-06-22 04:54:31.02084	2015-06-22 04:54:31.02084
2085	1302	2015-02-25 16:01:00	2015-06-22 04:54:31.081313	2015-06-22 04:54:31.081313
2086	1301	2015-02-25 16:05:00	2015-06-22 04:54:31.203059	2015-06-22 04:54:31.203059
2087	1302	2015-02-25 16:15:00	2015-06-22 04:54:31.459798	2015-06-22 04:54:31.459798
2088	1301	2015-02-25 16:29:00	2015-06-22 04:54:31.807326	2015-06-22 04:54:31.807326
2089	1303	2015-02-25 16:37:00	2015-06-22 04:54:32.093224	2015-06-22 04:54:32.093224
2090	1304	2015-02-25 18:26:00	2015-06-22 04:54:35.830165	2015-06-22 04:54:35.830165
2091	1305	2015-02-25 19:10:00	2015-06-22 04:54:37.421648	2015-06-22 04:54:37.421648
2092	1306	2015-02-25 19:22:00	2015-06-22 04:54:37.728629	2015-06-22 04:54:37.728629
2093	1307	2015-02-25 21:37:00	2015-06-22 04:54:41.400182	2015-06-22 04:54:41.400182
2094	1308	2015-02-25 22:59:00	2015-06-22 04:54:44.845717	2015-06-22 04:54:44.845717
2095	1307	2015-02-25 23:19:00	2015-06-22 04:54:45.413004	2015-06-22 04:54:45.413004
2096	1309	2015-02-26 07:09:00	2015-06-22 04:54:59.951007	2015-06-22 04:54:59.951007
2097	1310	2015-02-26 07:47:00	2015-06-22 04:55:01.582003	2015-06-22 04:55:01.582003
2098	1309	2015-02-26 08:05:00	2015-06-22 04:55:02.281434	2015-06-22 04:55:02.281434
2099	1311	2015-02-26 11:05:00	2015-06-22 04:55:08.563237	2015-06-22 04:55:08.563237
2100	1312	2015-02-26 11:27:00	2015-06-22 04:55:09.149315	2015-06-22 04:55:09.149315
2101	1311	2015-02-26 11:29:00	2015-06-22 04:55:09.203805	2015-06-22 04:55:09.203805
2102	1309	2015-02-26 11:39:00	2015-06-22 04:55:09.623023	2015-06-22 04:55:09.623023
2103	1313	2015-02-26 11:59:00	2015-06-22 04:55:10.29393	2015-06-22 04:55:10.29393
2104	1314	2015-02-26 13:13:00	2015-06-22 04:55:12.36332	2015-06-22 04:55:12.36332
2105	1315	2015-02-26 18:12:00	2015-06-22 04:55:21.081984	2015-06-22 04:55:21.081984
2106	1316	2015-02-27 04:41:00	2015-06-22 04:55:40.308093	2015-06-22 04:55:40.308093
2107	1315	2015-02-27 08:54:00	2015-06-22 04:55:47.18496	2015-06-22 04:55:47.18496
2108	1316	2015-02-27 10:03:00	2015-06-22 04:55:49.277713	2015-06-22 04:55:49.277713
2109	1317	2015-02-27 10:23:00	2015-06-22 04:55:49.885139	2015-06-22 04:55:49.885139
2110	1318	2015-02-27 12:36:00	2015-06-22 04:55:53.922773	2015-06-22 04:55:53.922773
2111	1319	2015-02-27 14:52:00	2015-06-22 04:55:57.947633	2015-06-22 04:55:57.947633
2112	1320	2015-02-27 15:34:00	2015-06-22 04:55:59.092796	2015-06-22 04:55:59.092796
2113	1321	2015-02-27 17:17:00	2015-06-22 04:56:02.184791	2015-06-22 04:56:02.184791
2114	1322	2015-02-27 17:55:00	2015-06-22 04:56:03.215208	2015-06-22 04:56:03.215208
2115	1323	2015-02-27 21:48:00	2015-06-22 04:56:10.169559	2015-06-22 04:56:10.169559
2116	1324	2015-02-27 22:13:00	2015-06-22 04:56:10.861821	2015-06-22 04:56:10.861821
2117	1325	2015-02-28 01:02:00	2015-06-22 04:56:15.57855	2015-06-22 04:56:15.57855
2118	1326	2015-02-28 07:04:00	2015-06-22 04:56:28.009207	2015-06-22 04:56:28.009207
2119	1327	2015-02-28 13:33:00	2015-06-22 04:56:42.332706	2015-06-22 04:56:42.332706
2120	1328	2015-02-28 15:54:00	2015-06-22 04:56:46.99611	2015-06-22 04:56:46.99611
2121	1329	2015-02-28 18:48:00	2015-06-22 04:56:52.140591	2015-06-22 04:56:52.140591
2122	1330	2015-02-28 19:50:00	2015-06-22 04:56:54.105536	2015-06-22 04:56:54.105536
2123	1331	2015-03-01 00:19:00	2015-06-22 04:57:03.762857	2015-06-22 04:57:03.762857
2124	1332	2015-03-01 04:33:00	2015-06-22 04:57:11.349319	2015-06-22 04:57:11.349319
2125	1333	2015-03-01 09:43:00	2015-06-22 04:57:21.270704	2015-06-22 04:57:21.270704
2126	1334	2015-03-01 16:15:00	2015-06-22 04:57:31.755681	2015-06-22 04:57:31.755681
2127	1333	2015-03-01 16:59:00	2015-06-22 04:57:33.382378	2015-06-22 04:57:33.382378
2128	1335	2015-03-01 17:46:00	2015-06-22 04:57:34.997244	2015-06-22 04:57:34.997244
2129	1336	2015-03-02 00:41:00	2015-06-22 04:57:47.842393	2015-06-22 04:57:47.842393
2130	1337	2015-03-02 01:52:00	2015-06-22 04:57:50.962746	2015-06-22 04:57:50.962746
2131	1336	2015-03-02 02:34:00	2015-06-22 04:57:52.561264	2015-06-22 04:57:52.561264
2132	1338	2015-03-02 03:35:00	2015-06-22 04:57:55.067542	2015-06-22 04:57:55.067542
2133	1339	2015-03-02 05:52:00	2015-06-22 04:57:59.071353	2015-06-22 04:57:59.071353
2134	1340	2015-03-02 08:08:00	2015-06-22 04:58:03.14494	2015-06-22 04:58:03.14494
2135	1341	2015-03-02 08:58:00	2015-06-22 04:58:05.046174	2015-06-22 04:58:05.046174
2136	1342	2015-03-02 13:10:00	2015-06-22 04:58:13.205282	2015-06-22 04:58:13.205282
2137	1343	2015-03-02 13:16:00	2015-06-22 04:58:13.334889	2015-06-22 04:58:13.334889
2138	1342	2015-03-02 13:20:00	2015-06-22 04:58:13.424169	2015-06-22 04:58:13.424169
2139	1343	2015-03-02 13:49:00	2015-06-22 04:58:14.26725	2015-06-22 04:58:14.26725
2140	1341	2015-03-02 14:03:00	2015-06-22 04:58:15.035974	2015-06-22 04:58:15.035974
2141	1344	2015-03-02 14:05:00	2015-06-22 04:58:15.114833	2015-06-22 04:58:15.114833
2142	1345	2015-03-02 15:27:00	2015-06-22 04:58:17.976076	2015-06-22 04:58:17.976076
2143	1346	2015-03-02 16:08:00	2015-06-22 04:58:18.941611	2015-06-22 04:58:18.941611
2144	1347	2015-03-02 17:10:00	2015-06-22 04:58:20.775853	2015-06-22 04:58:20.775853
2145	1348	2015-03-03 03:17:00	2015-06-22 04:58:42.619744	2015-06-22 04:58:42.619744
2146	1347	2015-03-03 04:33:00	2015-06-22 04:58:44.672893	2015-06-22 04:58:44.672893
2147	1349	2015-03-03 08:17:00	2015-06-22 04:58:52.29352	2015-06-22 04:58:52.29352
2148	1347	2015-03-03 08:31:00	2015-06-22 04:58:52.631186	2015-06-22 04:58:52.631186
2149	1349	2015-03-03 08:33:00	2015-06-22 04:58:52.681784	2015-06-22 04:58:52.681784
2150	1347	2015-03-03 08:37:00	2015-06-22 04:58:52.792419	2015-06-22 04:58:52.792419
2151	1349	2015-03-03 08:39:00	2015-06-22 04:58:52.849068	2015-06-22 04:58:52.849068
2152	1347	2015-03-03 08:49:00	2015-06-22 04:58:53.106978	2015-06-22 04:58:53.106978
2153	1349	2015-03-03 08:51:00	2015-06-22 04:58:53.15798	2015-06-22 04:58:53.15798
2154	1347	2015-03-03 09:01:00	2015-06-22 04:58:53.432098	2015-06-22 04:58:53.432098
2155	1350	2015-03-03 09:05:00	2015-06-22 04:58:53.676732	2015-06-22 04:58:53.676732
2156	1351	2015-03-03 12:15:00	2015-06-22 04:59:00.057173	2015-06-22 04:59:00.057173
2157	1352	2015-03-03 14:58:00	2015-06-22 04:59:05.225664	2015-06-22 04:59:05.225664
2158	1353	2015-03-03 19:45:00	2015-06-22 04:59:14.7665	2015-06-22 04:59:14.7665
2159	1352	2015-03-03 19:47:00	2015-06-22 04:59:14.830457	2015-06-22 04:59:14.830457
2160	1354	2015-03-03 20:21:00	2015-06-22 04:59:15.711463	2015-06-22 04:59:15.711463
2161	1355	2015-03-03 22:45:00	2015-06-22 04:59:20.506845	2015-06-22 04:59:20.506845
2162	1354	2015-03-03 23:09:00	2015-06-22 04:59:21.18497	2015-06-22 04:59:21.18497
2163	1356	2015-03-04 00:01:00	2015-06-22 04:59:22.679376	2015-06-22 04:59:22.679376
2164	1354	2015-03-04 00:24:00	2015-06-22 04:59:23.279854	2015-06-22 04:59:23.279854
2165	1357	2015-03-04 01:00:00	2015-06-22 04:59:24.348276	2015-06-22 04:59:24.348276
2166	1358	2015-03-04 04:56:00	2015-06-22 04:59:32.197788	2015-06-22 04:59:32.197788
2167	1359	2015-03-04 06:57:00	2015-06-22 04:59:35.573756	2015-06-22 04:59:35.573756
2168	1360	2015-03-04 07:43:00	2015-06-22 04:59:36.675726	2015-06-22 04:59:36.675726
2169	1358	2015-03-04 07:53:00	2015-06-22 04:59:37.072688	2015-06-22 04:59:37.072688
2170	1361	2015-03-04 12:35:00	2015-06-22 04:59:45.535642	2015-06-22 04:59:45.535642
2171	1358	2015-03-04 12:37:00	2015-06-22 04:59:45.603184	2015-06-22 04:59:45.603184
2172	1361	2015-03-04 12:41:00	2015-06-22 04:59:45.73872	2015-06-22 04:59:45.73872
2173	1362	2015-03-04 13:07:00	2015-06-22 04:59:46.421194	2015-06-22 04:59:46.421194
2174	1363	2015-03-04 15:29:00	2015-06-22 04:59:51.291669	2015-06-22 04:59:51.291669
2175	1364	2015-03-04 15:34:00	2015-06-22 04:59:51.42182	2015-06-22 04:59:51.42182
2176	1363	2015-03-04 15:38:00	2015-06-22 04:59:51.530434	2015-06-22 04:59:51.530434
2177	1365	2015-03-04 16:19:00	2015-06-22 04:59:52.948633	2015-06-22 04:59:52.948633
2178	1366	2015-03-04 19:04:00	2015-06-22 04:59:59.130919	2015-06-22 04:59:59.130919
2179	1365	2015-03-04 19:08:00	2015-06-22 04:59:59.284835	2015-06-22 04:59:59.284835
2180	1367	2015-03-04 19:35:00	2015-06-22 05:00:00.069625	2015-06-22 05:00:00.069625
2181	1368	2015-03-04 21:28:00	2015-06-22 05:00:04.257668	2015-06-22 05:00:04.257668
2182	1369	2015-03-04 23:11:00	2015-06-22 05:00:07.602048	2015-06-22 05:00:07.602048
2183	1370	2015-03-05 02:19:00	2015-06-22 05:00:13.319345	2015-06-22 05:00:13.319345
2184	1371	2015-03-05 08:37:00	2015-06-22 05:00:24.354032	2015-06-22 05:00:24.354032
2185	1372	2015-03-05 12:01:00	2015-06-22 05:00:29.826501	2015-06-22 05:00:29.826501
2186	1373	2015-03-05 13:35:00	2015-06-22 05:00:32.406744	2015-06-22 05:00:32.406744
2187	1374	2015-03-05 15:04:00	2015-06-22 05:00:34.282356	2015-06-22 05:00:34.282356
2188	1375	2015-03-05 16:54:00	2015-06-22 05:00:38.064949	2015-06-22 05:00:38.064949
2189	1374	2015-03-05 16:56:00	2015-06-22 05:00:38.128941	2015-06-22 05:00:38.128941
2190	1375	2015-03-05 17:08:00	2015-06-22 05:00:38.482263	2015-06-22 05:00:38.482263
2191	1376	2015-03-05 17:40:00	2015-06-22 05:00:39.479963	2015-06-22 05:00:39.479963
2192	1377	2015-03-05 21:42:00	2015-06-22 05:00:46.445945	2015-06-22 05:00:46.445945
2193	1376	2015-03-05 22:08:00	2015-06-22 05:00:47.284542	2015-06-22 05:00:47.284542
2194	1378	2015-03-06 01:04:00	2015-06-22 05:00:52.271783	2015-06-22 05:00:52.271783
2195	1376	2015-03-06 01:06:00	2015-06-22 05:00:52.323422	2015-06-22 05:00:52.323422
2196	1379	2015-03-06 01:18:00	2015-06-22 05:00:52.63961	2015-06-22 05:00:52.63961
2197	1380	2015-03-06 07:22:00	2015-06-22 05:01:03.617533	2015-06-22 05:01:03.617533
2198	1381	2015-03-06 11:34:00	2015-06-22 05:01:10.642828	2015-06-22 05:01:10.642828
2199	1380	2015-03-06 11:36:00	2015-06-22 05:01:10.702515	2015-06-22 05:01:10.702515
2200	1381	2015-03-06 11:52:00	2015-06-22 05:01:11.121329	2015-06-22 05:01:11.121329
2201	1382	2015-03-06 12:04:00	2015-06-22 05:01:11.421987	2015-06-22 05:01:11.421987
2202	1383	2015-03-06 13:42:00	2015-06-22 05:01:14.458173	2015-06-22 05:01:14.458173
2203	1384	2015-03-06 18:04:00	2015-06-22 05:01:21.656923	2015-06-22 05:01:21.656923
2204	1385	2015-03-06 18:08:00	2015-06-22 05:01:21.756915	2015-06-22 05:01:21.756915
2205	1386	2015-03-06 18:10:00	2015-06-22 05:01:21.809244	2015-06-22 05:01:21.809244
2206	1387	2015-03-06 18:12:00	2015-06-22 05:01:21.855472	2015-06-22 05:01:21.855472
2207	1388	2015-03-06 19:24:00	2015-06-22 05:01:23.721501	2015-06-22 05:01:23.721501
2208	1389	2015-03-06 21:34:00	2015-06-22 05:01:27.122085	2015-06-22 05:01:27.122085
2209	1390	2015-03-06 23:22:00	2015-06-22 05:01:31.14416	2015-06-22 05:01:31.14416
2210	1391	2015-03-07 09:25:00	2015-06-22 05:01:49.778641	2015-06-22 05:01:49.778641
2211	1390	2015-03-07 09:30:00	2015-06-22 05:01:49.894076	2015-06-22 05:01:49.894076
2212	1392	2015-03-07 14:55:00	2015-06-22 05:02:00.421165	2015-06-22 05:02:00.421165
2213	1393	2015-03-07 15:21:00	2015-06-22 05:02:01.096914	2015-06-22 05:02:01.096914
2214	1392	2015-03-07 15:25:00	2015-06-22 05:02:01.198908	2015-06-22 05:02:01.198908
2215	1393	2015-03-07 15:29:00	2015-06-22 05:02:01.305036	2015-06-22 05:02:01.305036
2216	1394	2015-03-07 15:53:00	2015-06-22 05:02:01.908805	2015-06-22 05:02:01.908805
2217	1393	2015-03-07 16:27:00	2015-06-22 05:02:03.010045	2015-06-22 05:02:03.010045
2218	1395	2015-03-07 16:45:00	2015-06-22 05:02:03.474819	2015-06-22 05:02:03.474819
2219	1396	2015-03-07 17:48:00	2015-06-22 05:02:05.295837	2015-06-22 05:02:05.295837
2220	1395	2015-03-07 17:56:00	2015-06-22 05:02:05.502228	2015-06-22 05:02:05.502228
2221	1396	2015-03-07 18:04:00	2015-06-22 05:02:05.708056	2015-06-22 05:02:05.708056
2222	1397	2015-03-07 19:29:00	2015-06-22 05:02:08.221906	2015-06-22 05:02:08.221906
2223	1396	2015-03-07 19:59:00	2015-06-22 05:02:09.055181	2015-06-22 05:02:09.055181
2224	1398	2015-03-07 20:11:00	2015-06-22 05:02:09.367933	2015-06-22 05:02:09.367933
2225	1399	2015-03-07 22:28:00	2015-06-22 05:02:13.408323	2015-06-22 05:02:13.408323
2226	1400	2015-03-08 02:30:00	2015-06-22 05:02:21.079934	2015-06-22 05:02:21.079934
2227	1399	2015-03-08 02:34:00	2015-06-22 05:02:21.289833	2015-06-22 05:02:21.289833
2228	1400	2015-03-08 02:40:00	2015-06-22 05:02:21.55486	2015-06-22 05:02:21.55486
2229	1399	2015-03-08 02:44:00	2015-06-22 05:02:21.713499	2015-06-22 05:02:21.713499
2230	1400	2015-03-08 02:54:00	2015-06-22 05:02:22.059257	2015-06-22 05:02:22.059257
2231	1401	2015-03-08 05:12:00	2015-06-22 05:02:26.293726	2015-06-22 05:02:26.293726
2232	1400	2015-03-08 05:28:00	2015-06-22 05:02:26.738119	2015-06-22 05:02:26.738119
2233	1402	2015-03-08 11:27:00	2015-06-22 05:02:36.913193	2015-06-22 05:02:36.913193
2234	1403	2015-03-08 12:35:00	2015-06-22 05:02:38.660113	2015-06-22 05:02:38.660113
2235	1402	2015-03-08 12:37:00	2015-06-22 05:02:38.832354	2015-06-22 05:02:38.832354
2236	1403	2015-03-08 12:39:00	2015-06-22 05:02:38.89695	2015-06-22 05:02:38.89695
2237	1402	2015-03-08 12:43:00	2015-06-22 05:02:39.02408	2015-06-22 05:02:39.02408
2238	1404	2015-03-08 13:01:00	2015-06-22 05:02:39.544478	2015-06-22 05:02:39.544478
2239	1405	2015-03-08 15:07:00	2015-06-22 05:02:43.336973	2015-06-22 05:02:43.336973
2240	1406	2015-03-08 15:31:00	2015-06-22 05:02:43.976323	2015-06-22 05:02:43.976323
2241	1405	2015-03-08 15:33:00	2015-06-22 05:02:44.029925	2015-06-22 05:02:44.029925
2242	1406	2015-03-08 15:37:00	2015-06-22 05:02:44.132209	2015-06-22 05:02:44.132209
2243	1407	2015-03-08 18:49:00	2015-06-22 05:02:49.738587	2015-06-22 05:02:49.738587
2244	1408	2015-03-08 21:38:00	2015-06-22 05:02:54.565604	2015-06-22 05:02:54.565604
2245	1407	2015-03-08 21:40:00	2015-06-22 05:02:54.624335	2015-06-22 05:02:54.624335
2246	1408	2015-03-08 22:01:00	2015-06-22 05:02:55.298265	2015-06-22 05:02:55.298265
2247	1407	2015-03-08 22:03:00	2015-06-22 05:02:55.356359	2015-06-22 05:02:55.356359
2248	1408	2015-03-08 22:05:00	2015-06-22 05:02:55.416257	2015-06-22 05:02:55.416257
2249	1407	2015-03-08 22:07:00	2015-06-22 05:02:55.478047	2015-06-22 05:02:55.478047
2250	1408	2015-03-08 22:11:00	2015-06-22 05:02:55.59256	2015-06-22 05:02:55.59256
2251	1407	2015-03-08 22:15:00	2015-06-22 05:02:55.709603	2015-06-22 05:02:55.709603
2252	1408	2015-03-08 22:21:00	2015-06-22 05:02:55.852846	2015-06-22 05:02:55.852846
2253	1409	2015-03-09 00:13:00	2015-06-22 05:02:59.333898	2015-06-22 05:02:59.333898
2254	1410	2015-03-09 00:38:00	2015-06-22 05:03:00.083903	2015-06-22 05:03:00.083903
2255	1409	2015-03-09 01:08:00	2015-06-22 05:03:01.470497	2015-06-22 05:03:01.470497
2256	1411	2015-03-09 01:24:00	2015-06-22 05:03:01.943431	2015-06-22 05:03:01.943431
2257	1409	2015-03-09 01:28:00	2015-06-22 05:03:02.041301	2015-06-22 05:03:02.041301
2258	1412	2015-03-09 03:45:00	2015-06-22 05:03:05.791726	2015-06-22 05:03:05.791726
2259	1413	2015-03-09 03:47:00	2015-06-22 05:03:05.858586	2015-06-22 05:03:05.858586
2260	1412	2015-03-09 03:49:00	2015-06-22 05:03:05.912469	2015-06-22 05:03:05.912469
2261	1413	2015-03-09 03:55:00	2015-06-22 05:03:06.068857	2015-06-22 05:03:06.068857
2262	1412	2015-03-09 04:44:00	2015-06-22 05:03:07.509996	2015-06-22 05:03:07.509996
2263	1413	2015-03-09 04:46:00	2015-06-22 05:03:07.563481	2015-06-22 05:03:07.563481
2264	1412	2015-03-09 04:52:00	2015-06-22 05:03:07.728886	2015-06-22 05:03:07.728886
2265	1414	2015-03-09 07:03:00	2015-06-22 05:03:11.772356	2015-06-22 05:03:11.772356
2266	1412	2015-03-09 07:05:00	2015-06-22 05:03:11.834277	2015-06-22 05:03:11.834277
2267	1414	2015-03-09 07:11:00	2015-06-22 05:03:11.987128	2015-06-22 05:03:11.987128
2268	1412	2015-03-09 07:31:00	2015-06-22 05:03:12.505973	2015-06-22 05:03:12.505973
2269	1415	2015-03-09 08:34:00	2015-06-22 05:03:14.461251	2015-06-22 05:03:14.461251
2270	1416	2015-03-09 11:27:00	2015-06-22 05:03:19.233234	2015-06-22 05:03:19.233234
2271	1417	2015-03-09 11:48:00	2015-06-22 05:03:19.718129	2015-06-22 05:03:19.718129
2272	1416	2015-03-09 12:28:00	2015-06-22 05:03:20.776592	2015-06-22 05:03:20.776592
2273	1418	2015-03-09 13:00:00	2015-06-22 05:03:21.717991	2015-06-22 05:03:21.717991
2274	1419	2015-03-09 16:12:00	2015-06-22 05:03:27.796886	2015-06-22 05:03:27.796886
2275	1420	2015-03-09 17:26:00	2015-06-22 05:03:30.204784	2015-06-22 05:03:30.204784
2276	1421	2015-03-09 17:56:00	2015-06-22 05:03:31.108411	2015-06-22 05:03:31.108411
2277	1420	2015-03-09 18:02:00	2015-06-22 05:03:31.297394	2015-06-22 05:03:31.297394
2278	1421	2015-03-09 18:04:00	2015-06-22 05:03:31.355013	2015-06-22 05:03:31.355013
2279	1420	2015-03-09 18:08:00	2015-06-22 05:03:31.475559	2015-06-22 05:03:31.475559
2280	1422	2015-03-09 18:10:00	2015-06-22 05:03:31.538013	2015-06-22 05:03:31.538013
2281	1421	2015-03-09 18:26:00	2015-06-22 05:03:32.109164	2015-06-22 05:03:32.109164
2282	1423	2015-03-09 21:08:00	2015-06-22 05:03:37.065669	2015-06-22 05:03:37.065669
2283	1424	2015-03-10 06:54:00	2015-06-22 05:03:53.959413	2015-06-22 05:03:53.959413
2284	1425	2015-03-10 10:58:00	2015-06-22 05:04:01.452659	2015-06-22 05:04:01.452659
2285	1426	2015-03-10 15:44:00	2015-06-22 05:04:09.316416	2015-06-22 05:04:09.316416
2286	1427	2015-03-10 16:04:00	2015-06-22 05:04:09.984352	2015-06-22 05:04:09.984352
2287	1426	2015-03-10 16:44:00	2015-06-22 05:04:11.336396	2015-06-22 05:04:11.336396
2288	1428	2015-03-10 16:48:00	2015-06-22 05:04:11.480579	2015-06-22 05:04:11.480579
2289	1429	2015-03-10 17:26:00	2015-06-22 05:04:12.842202	2015-06-22 05:04:12.842202
2290	1430	2015-03-10 22:12:00	2015-06-22 05:04:20.563589	2015-06-22 05:04:20.563589
2291	1431	2015-03-11 09:38:00	2015-06-22 05:04:40.585152	2015-06-22 05:04:40.585152
2292	1432	2015-03-11 12:43:00	2015-06-22 05:04:46.29057	2015-06-22 05:04:46.29057
2293	1431	2015-03-11 13:16:00	2015-06-22 05:04:47.320593	2015-06-22 05:04:47.320593
2294	1433	2015-03-11 14:02:00	2015-06-22 05:04:48.660684	2015-06-22 05:04:48.660684
2295	1434	2015-03-11 14:12:00	2015-06-22 05:04:48.961407	2015-06-22 05:04:48.961407
2296	1435	2015-03-11 18:19:00	2015-06-22 05:04:57.262665	2015-06-22 05:04:57.262665
2297	1434	2015-03-11 18:31:00	2015-06-22 05:04:57.618146	2015-06-22 05:04:57.618146
2298	1436	2015-03-11 18:41:00	2015-06-22 05:04:57.898945	2015-06-22 05:04:57.898945
2299	1434	2015-03-11 18:55:00	2015-06-22 05:04:58.458632	2015-06-22 05:04:58.458632
2300	1437	2015-03-11 18:59:00	2015-06-22 05:04:58.577883	2015-06-22 05:04:58.577883
2301	1435	2015-03-11 19:13:00	2015-06-22 05:04:58.92927	2015-06-22 05:04:58.92927
2302	1438	2015-03-12 01:18:00	2015-06-22 05:05:10.411434	2015-06-22 05:05:10.411434
2303	1435	2015-03-12 01:20:00	2015-06-22 05:05:10.586395	2015-06-22 05:05:10.586395
2304	1438	2015-03-12 01:34:00	2015-06-22 05:05:11.05987	2015-06-22 05:05:11.05987
2305	1435	2015-03-12 01:48:00	2015-06-22 05:05:11.69486	2015-06-22 05:05:11.69486
2306	1439	2015-03-12 02:37:00	2015-06-22 05:05:13.380539	2015-06-22 05:05:13.380539
2307	1435	2015-03-12 02:47:00	2015-06-22 05:05:13.646276	2015-06-22 05:05:13.646276
2308	1440	2015-03-12 03:04:00	2015-06-22 05:05:14.067656	2015-06-22 05:05:14.067656
2309	1441	2015-03-12 06:00:00	2015-06-22 05:05:18.8039	2015-06-22 05:05:18.8039
2310	1442	2015-03-12 09:04:00	2015-06-22 05:05:24.589573	2015-06-22 05:05:24.589573
2311	1443	2015-03-12 15:17:00	2015-06-22 05:05:35.798885	2015-06-22 05:05:35.798885
2312	1444	2015-03-12 16:34:00	2015-06-22 05:05:38.017461	2015-06-22 05:05:38.017461
2313	1443	2015-03-12 16:36:00	2015-06-22 05:05:38.077289	2015-06-22 05:05:38.077289
2314	1445	2015-03-12 16:49:00	2015-06-22 05:05:38.425657	2015-06-22 05:05:38.425657
2315	1446	2015-03-12 22:03:00	2015-06-22 05:05:47.731401	2015-06-22 05:05:47.731401
2316	1445	2015-03-13 03:54:00	2015-06-22 05:06:00.275441	2015-06-22 05:06:00.275441
2317	1447	2015-03-13 04:10:00	2015-06-22 05:06:00.73534	2015-06-22 05:06:00.73534
2318	1448	2015-03-13 07:12:00	2015-06-22 05:06:07.867268	2015-06-22 05:06:07.867268
2319	1449	2015-03-13 09:21:00	2015-06-22 05:06:13.00759	2015-06-22 05:06:13.00759
2320	1450	2015-03-13 13:37:00	2015-06-22 05:06:21.280672	2015-06-22 05:06:21.280672
2321	1451	2015-03-13 14:17:00	2015-06-22 05:06:22.514746	2015-06-22 05:06:22.514746
2322	1452	2015-03-13 14:22:00	2015-06-22 05:06:22.637618	2015-06-22 05:06:22.637618
2323	1451	2015-03-13 14:57:00	2015-06-22 05:06:23.772168	2015-06-22 05:06:23.772168
2324	1452	2015-03-13 15:06:00	2015-06-22 05:06:24.023091	2015-06-22 05:06:24.023091
2325	1451	2015-03-13 15:14:00	2015-06-22 05:06:24.271336	2015-06-22 05:06:24.271336
2326	1452	2015-03-13 15:20:00	2015-06-22 05:06:24.455584	2015-06-22 05:06:24.455584
2327	1451	2015-03-13 15:24:00	2015-06-22 05:06:24.692897	2015-06-22 05:06:24.692897
2328	1453	2015-03-13 15:26:00	2015-06-22 05:06:24.768952	2015-06-22 05:06:24.768952
2329	1454	2015-03-13 15:36:00	2015-06-22 05:06:25.145107	2015-06-22 05:06:25.145107
2330	1455	2015-03-13 16:27:00	2015-06-22 05:06:26.755955	2015-06-22 05:06:26.755955
2331	1454	2015-03-13 16:33:00	2015-06-22 05:06:26.944841	2015-06-22 05:06:26.944841
2332	1456	2015-03-13 16:35:00	2015-06-22 05:06:27.039527	2015-06-22 05:06:27.039527
2333	1454	2015-03-13 16:49:00	2015-06-22 05:06:27.635897	2015-06-22 05:06:27.635897
2334	1457	2015-03-13 17:19:00	2015-06-22 05:06:28.829054	2015-06-22 05:06:28.829054
2335	1458	2015-03-13 17:49:00	2015-06-22 05:06:30.150649	2015-06-22 05:06:30.150649
2336	1457	2015-03-13 18:33:00	2015-06-22 05:06:31.533563	2015-06-22 05:06:31.533563
2337	1459	2015-03-13 20:23:00	2015-06-22 05:06:34.821948	2015-06-22 05:06:34.821948
2338	1460	2015-03-13 21:17:00	2015-06-22 05:06:36.53198	2015-06-22 05:06:36.53198
2339	1461	2015-03-14 06:08:00	2015-06-22 05:06:53.12435	2015-06-22 05:06:53.12435
2340	1460	2015-03-14 07:16:00	2015-06-22 05:06:55.336796	2015-06-22 05:06:55.336796
2341	1462	2015-03-14 08:51:00	2015-06-22 05:06:58.499407	2015-06-22 05:06:58.499407
2342	1460	2015-03-14 08:53:00	2015-06-22 05:06:58.61326	2015-06-22 05:06:58.61326
2343	1463	2015-03-14 09:21:00	2015-06-22 05:06:59.678388	2015-06-22 05:06:59.678388
2344	1464	2015-03-14 10:17:00	2015-06-22 05:07:01.401014	2015-06-22 05:07:01.401014
2345	1465	2015-03-14 14:07:00	2015-06-22 05:07:09.113495	2015-06-22 05:07:09.113495
2346	1464	2015-03-14 14:11:00	2015-06-22 05:07:09.223851	2015-06-22 05:07:09.223851
2347	1465	2015-03-14 14:25:00	2015-06-22 05:07:09.721295	2015-06-22 05:07:09.721295
2348	1466	2015-03-14 16:19:00	2015-06-22 05:07:13.1929	2015-06-22 05:07:13.1929
2349	1467	2015-03-14 16:21:00	2015-06-22 05:07:13.251209	2015-06-22 05:07:13.251209
2350	1468	2015-03-14 17:01:00	2015-06-22 05:07:14.550946	2015-06-22 05:07:14.550946
2351	1469	2015-03-14 17:07:00	2015-06-22 05:07:14.762035	2015-06-22 05:07:14.762035
2352	1468	2015-03-14 17:09:00	2015-06-22 05:07:14.82233	2015-06-22 05:07:14.82233
2353	1470	2015-03-14 17:55:00	2015-06-22 05:07:16.117313	2015-06-22 05:07:16.117313
2354	1468	2015-03-14 17:57:00	2015-06-22 05:07:16.173963	2015-06-22 05:07:16.173963
2355	1471	2015-03-14 17:59:00	2015-06-22 05:07:16.227253	2015-06-22 05:07:16.227253
2356	1472	2015-03-14 18:26:00	2015-06-22 05:07:17.163288	2015-06-22 05:07:17.163288
2357	1471	2015-03-14 18:36:00	2015-06-22 05:07:17.436398	2015-06-22 05:07:17.436398
2358	1473	2015-03-14 19:56:00	2015-06-22 05:07:19.811661	2015-06-22 05:07:19.811661
2359	1474	2015-03-14 20:33:00	2015-06-22 05:07:21.414949	2015-06-22 05:07:21.414949
2360	1475	2015-03-15 01:14:00	2015-06-22 05:07:30.164596	2015-06-22 05:07:30.164596
2361	1476	2015-03-15 06:34:00	2015-06-22 05:07:40.66668	2015-06-22 05:07:40.66668
2362	1477	2015-03-15 07:05:00	2015-06-22 05:07:41.628383	2015-06-22 05:07:41.628383
2363	1476	2015-03-15 07:27:00	2015-06-22 05:07:42.507702	2015-06-22 05:07:42.507702
2364	1478	2015-03-15 14:57:00	2015-06-22 05:07:56.86977	2015-06-22 05:07:56.86977
2365	1479	2015-03-15 15:37:00	2015-06-22 05:07:58.415275	2015-06-22 05:07:58.415275
2366	1478	2015-03-15 15:53:00	2015-06-22 05:07:58.973001	2015-06-22 05:07:58.973001
2367	1480	2015-03-15 16:07:00	2015-06-22 05:07:59.370042	2015-06-22 05:07:59.370042
2368	1481	2015-03-15 16:09:00	2015-06-22 05:07:59.427372	2015-06-22 05:07:59.427372
2369	1480	2015-03-15 16:11:00	2015-06-22 05:07:59.484547	2015-06-22 05:07:59.484547
2370	1481	2015-03-15 16:13:00	2015-06-22 05:07:59.555918	2015-06-22 05:07:59.555918
2371	1480	2015-03-15 16:18:00	2015-06-22 05:07:59.70033	2015-06-22 05:07:59.70033
2372	1481	2015-03-15 16:24:00	2015-06-22 05:07:59.868872	2015-06-22 05:07:59.868872
2373	1480	2015-03-15 16:30:00	2015-06-22 05:08:00.279597	2015-06-22 05:08:00.279597
2374	1482	2015-03-15 17:17:00	2015-06-22 05:08:01.649773	2015-06-22 05:08:01.649773
2375	1483	2015-03-15 18:09:00	2015-06-22 05:08:03.356245	2015-06-22 05:08:03.356245
2376	1482	2015-03-15 18:11:00	2015-06-22 05:08:03.422292	2015-06-22 05:08:03.422292
2377	1484	2015-03-15 19:35:00	2015-06-22 05:08:06.259331	2015-06-22 05:08:06.259331
2378	1485	2015-03-15 22:44:00	2015-06-22 05:08:12.213101	2015-06-22 05:08:12.213101
2379	1486	2015-03-16 00:35:00	2015-06-22 05:08:16.366045	2015-06-22 05:08:16.366045
2380	1487	2015-03-16 03:50:00	2015-06-22 05:08:21.764393	2015-06-22 05:08:21.764393
2381	1488	2015-03-16 08:19:00	2015-06-22 05:08:29.612991	2015-06-22 05:08:29.612991
2382	1489	2015-03-16 10:26:00	2015-06-22 05:08:33.453879	2015-06-22 05:08:33.453879
2383	1490	2015-03-16 10:30:00	2015-06-22 05:08:33.559268	2015-06-22 05:08:33.559268
2384	1489	2015-03-16 10:59:00	2015-06-22 05:08:34.615872	2015-06-22 05:08:34.615872
2385	1488	2015-03-16 11:21:00	2015-06-22 05:08:35.669394	2015-06-22 05:08:35.669394
2386	1491	2015-03-16 12:38:00	2015-06-22 05:08:38.478611	2015-06-22 05:08:38.478611
2387	1488	2015-03-16 12:50:00	2015-06-22 05:08:38.876832	2015-06-22 05:08:38.876832
2388	1491	2015-03-16 12:56:00	2015-06-22 05:08:39.061143	2015-06-22 05:08:39.061143
2389	1492	2015-03-16 13:20:00	2015-06-22 05:08:40.272368	2015-06-22 05:08:40.272368
2390	1493	2015-03-16 17:10:00	2015-06-22 05:08:47.139664	2015-06-22 05:08:47.139664
2391	1494	2015-03-16 19:15:00	2015-06-22 05:08:50.689588	2015-06-22 05:08:50.689588
2392	1493	2015-03-16 19:17:00	2015-06-22 05:08:50.740935	2015-06-22 05:08:50.740935
2393	1494	2015-03-16 19:19:00	2015-06-22 05:08:50.791257	2015-06-22 05:08:50.791257
2394	1495	2015-03-16 19:56:00	2015-06-22 05:08:52.258075	2015-06-22 05:08:52.258075
2395	1494	2015-03-16 20:04:00	2015-06-22 05:08:52.598611	2015-06-22 05:08:52.598611
2396	1496	2015-03-16 21:41:00	2015-06-22 05:08:56.546326	2015-06-22 05:08:56.546326
2397	1494	2015-03-16 21:47:00	2015-06-22 05:08:56.752557	2015-06-22 05:08:56.752557
2398	1497	2015-03-16 22:49:00	2015-06-22 05:08:58.73351	2015-06-22 05:08:58.73351
2399	1494	2015-03-16 23:33:00	2015-06-22 05:09:00.072912	2015-06-22 05:09:00.072912
2400	1498	2015-03-17 02:51:00	2015-06-22 05:09:05.856445	2015-06-22 05:09:05.856445
2401	1499	2015-03-17 08:23:00	2015-06-22 05:09:15.72552	2015-06-22 05:09:15.72552
2402	1498	2015-03-17 08:25:00	2015-06-22 05:09:15.776325	2015-06-22 05:09:15.776325
2403	1500	2015-03-17 10:36:00	2015-06-22 05:09:19.323017	2015-06-22 05:09:19.323017
2404	1498	2015-03-17 10:38:00	2015-06-22 05:09:19.378164	2015-06-22 05:09:19.378164
2405	1500	2015-03-17 10:58:00	2015-06-22 05:09:19.892869	2015-06-22 05:09:19.892869
2406	1501	2015-03-17 13:23:00	2015-06-22 05:09:23.965982	2015-06-22 05:09:23.965982
2407	1500	2015-03-17 13:47:00	2015-06-22 05:09:24.791702	2015-06-22 05:09:24.791702
2408	1502	2015-03-17 14:45:00	2015-06-22 05:09:26.315913	2015-06-22 05:09:26.315913
2409	1503	2015-03-17 15:05:00	2015-06-22 05:09:27.003887	2015-06-22 05:09:27.003887
2410	1504	2015-03-17 15:28:00	2015-06-22 05:09:27.588987	2015-06-22 05:09:27.588987
2411	1505	2015-03-17 19:03:00	2015-06-22 05:09:34.131074	2015-06-22 05:09:34.131074
2412	1506	2015-03-17 19:17:00	2015-06-22 05:09:34.51794	2015-06-22 05:09:34.51794
2413	1507	2015-03-17 21:17:00	2015-06-22 05:09:38.260274	2015-06-22 05:09:38.260274
2414	1508	2015-03-17 21:19:00	2015-06-22 05:09:38.316773	2015-06-22 05:09:38.316773
2415	1509	2015-03-18 00:24:00	2015-06-22 05:09:44.336495	2015-06-22 05:09:44.336495
2416	1508	2015-03-18 00:38:00	2015-06-22 05:09:44.717215	2015-06-22 05:09:44.717215
2417	1510	2015-03-18 04:42:00	2015-06-22 05:09:51.934817	2015-06-22 05:09:51.934817
2418	1511	2015-03-18 04:44:00	2015-06-22 05:09:51.99949	2015-06-22 05:09:51.99949
2419	1510	2015-03-18 04:46:00	2015-06-22 05:09:52.064221	2015-06-22 05:09:52.064221
2420	1511	2015-03-18 04:48:00	2015-06-22 05:09:52.123032	2015-06-22 05:09:52.123032
2421	1510	2015-03-18 04:58:00	2015-06-22 05:09:52.404913	2015-06-22 05:09:52.404913
2422	1511	2015-03-18 05:08:00	2015-06-22 05:09:52.670058	2015-06-22 05:09:52.670058
2423	1512	2015-03-18 07:08:00	2015-06-22 05:09:56.231908	2015-06-22 05:09:56.231908
2424	1513	2015-03-18 09:58:00	2015-06-22 05:10:01.029827	2015-06-22 05:10:01.029827
2425	1514	2015-03-18 11:40:00	2015-06-22 05:10:04.578107	2015-06-22 05:10:04.578107
2426	1515	2015-03-18 12:26:00	2015-06-22 05:10:05.858835	2015-06-22 05:10:05.858835
2427	1516	2015-03-18 14:56:00	2015-06-22 05:10:10.134488	2015-06-22 05:10:10.134488
2428	1515	2015-03-18 16:07:00	2015-06-22 05:10:12.121217	2015-06-22 05:10:12.121217
2429	1517	2015-03-18 16:29:00	2015-06-22 05:10:12.820684	2015-06-22 05:10:12.820684
2430	1518	2015-03-18 16:45:00	2015-06-22 05:10:13.272116	2015-06-22 05:10:13.272116
2431	1519	2015-03-18 20:45:00	2015-06-22 05:10:22.272173	2015-06-22 05:10:22.272173
2432	1520	2015-03-19 05:56:00	2015-06-22 05:10:39.677164	2015-06-22 05:10:39.677164
2433	1519	2015-03-19 05:58:00	2015-06-22 05:10:39.758404	2015-06-22 05:10:39.758404
2434	1520	2015-03-19 06:00:00	2015-06-22 05:10:39.843523	2015-06-22 05:10:39.843523
2435	1521	2015-03-19 11:10:00	2015-06-22 05:10:51.17844	2015-06-22 05:10:51.17844
2436	1522	2015-03-19 12:34:00	2015-06-22 05:10:53.991229	2015-06-22 05:10:53.991229
2437	1523	2015-03-19 12:36:00	2015-06-22 05:10:54.034259	2015-06-22 05:10:54.034259
2438	1524	2015-03-19 14:16:00	2015-06-22 05:10:56.62847	2015-06-22 05:10:56.62847
2439	1525	2015-03-19 17:37:00	2015-06-22 05:11:03.177851	2015-06-22 05:11:03.177851
2440	1524	2015-03-19 18:04:00	2015-06-22 05:11:03.923395	2015-06-22 05:11:03.923395
2441	1526	2015-03-19 18:46:00	2015-06-22 05:11:05.300257	2015-06-22 05:11:05.300257
2442	1527	2015-03-19 23:35:00	2015-06-22 05:11:13.901359	2015-06-22 05:11:13.901359
2443	1526	2015-03-19 23:59:00	2015-06-22 05:11:14.520212	2015-06-22 05:11:14.520212
2444	1528	2015-03-20 06:54:00	2015-06-22 05:11:26.403391	2015-06-22 05:11:26.403391
2445	1529	2015-03-20 07:18:00	2015-06-22 05:11:26.936856	2015-06-22 05:11:26.936856
2446	1528	2015-03-20 07:44:00	2015-06-22 05:11:27.765606	2015-06-22 05:11:27.765606
2447	1530	2015-03-20 07:46:00	2015-06-22 05:11:27.82284	2015-06-22 05:11:27.82284
2448	1531	2015-03-20 08:25:00	2015-06-22 05:11:29.046483	2015-06-22 05:11:29.046483
2449	1530	2015-03-20 08:27:00	2015-06-22 05:11:29.1216	2015-06-22 05:11:29.1216
2450	1531	2015-03-20 08:29:00	2015-06-22 05:11:29.203105	2015-06-22 05:11:29.203105
2451	1532	2015-03-20 08:43:00	2015-06-22 05:11:30.094232	2015-06-22 05:11:30.094232
2452	1533	2015-03-20 12:43:00	2015-06-22 05:11:38.192191	2015-06-22 05:11:38.192191
2453	1532	2015-03-20 12:45:00	2015-06-22 05:11:38.251657	2015-06-22 05:11:38.251657
2454	1533	2015-03-20 12:47:00	2015-06-22 05:11:38.315834	2015-06-22 05:11:38.315834
2455	1534	2015-03-20 15:22:00	2015-06-22 05:11:44.338245	2015-06-22 05:11:44.338245
2456	1535	2015-03-20 17:23:00	2015-06-22 05:11:48.977183	2015-06-22 05:11:48.977183
2457	1536	2015-03-20 22:00:00	2015-06-22 05:11:58.76849	2015-06-22 05:11:58.76849
2458	1537	2015-03-21 04:36:00	2015-06-22 05:12:11.20999	2015-06-22 05:12:11.20999
2459	1536	2015-03-21 04:40:00	2015-06-22 05:12:11.457085	2015-06-22 05:12:11.457085
2460	1538	2015-03-21 14:51:00	2015-06-22 05:12:32.370183	2015-06-22 05:12:32.370183
2461	1539	2015-03-21 16:39:00	2015-06-22 05:12:36.312613	2015-06-22 05:12:36.312613
2462	1538	2015-03-21 16:41:00	2015-06-22 05:12:36.364308	2015-06-22 05:12:36.364308
2463	1539	2015-03-21 16:49:00	2015-06-22 05:12:36.57262	2015-06-22 05:12:36.57262
2464	1538	2015-03-21 17:16:00	2015-06-22 05:12:37.409497	2015-06-22 05:12:37.409497
2465	1540	2015-03-21 17:20:00	2015-06-22 05:12:37.529527	2015-06-22 05:12:37.529527
2466	1541	2015-03-21 18:47:00	2015-06-22 05:12:40.466897	2015-06-22 05:12:40.466897
2467	1542	2015-03-21 18:55:00	2015-06-22 05:12:40.695313	2015-06-22 05:12:40.695313
2468	1543	2015-03-21 21:24:00	2015-06-22 05:12:46.169315	2015-06-22 05:12:46.169315
2469	1544	2015-03-22 01:34:00	2015-06-22 05:12:54.653441	2015-06-22 05:12:54.653441
2470	1545	2015-03-22 04:32:00	2015-06-22 05:13:00.959093	2015-06-22 05:13:00.959093
2471	1546	2015-03-22 06:28:00	2015-06-22 05:13:05.264705	2015-06-22 05:13:05.264705
2472	1547	2015-03-22 06:46:00	2015-06-22 05:13:05.701703	2015-06-22 05:13:05.701703
2473	1546	2015-03-22 06:56:00	2015-06-22 05:13:06.065296	2015-06-22 05:13:06.065296
2474	1543	2015-03-22 07:03:00	2015-06-22 05:13:06.234992	2015-06-22 05:13:06.234992
2475	1546	2015-03-22 07:09:00	2015-06-22 05:13:06.39436	2015-06-22 05:13:06.39436
2476	1548	2015-03-22 07:33:00	2015-06-22 05:13:06.951538	2015-06-22 05:13:06.951538
2477	1549	2015-03-22 08:52:00	2015-06-22 05:13:08.946466	2015-06-22 05:13:08.946466
2478	1550	2015-03-22 09:52:00	2015-06-22 05:13:10.491467	2015-06-22 05:13:10.491467
2479	1551	2015-03-22 13:52:00	2015-06-22 05:13:17.342757	2015-06-22 05:13:17.342757
2480	1552	2015-03-22 15:01:00	2015-06-22 05:13:19.977919	2015-06-22 05:13:19.977919
2481	1550	2015-03-22 15:55:00	2015-06-22 05:13:21.545041	2015-06-22 05:13:21.545041
2482	1553	2015-03-22 16:04:00	2015-06-22 05:13:21.722706	2015-06-22 05:13:21.722706
2483	1554	2015-03-22 16:44:00	2015-06-22 05:13:22.821345	2015-06-22 05:13:22.821345
2484	1553	2015-03-22 16:48:00	2015-06-22 05:13:22.927026	2015-06-22 05:13:22.927026
2485	1554	2015-03-22 16:50:00	2015-06-22 05:13:23.019148	2015-06-22 05:13:23.019148
2486	1555	2015-03-22 19:07:00	2015-06-22 05:13:28.681891	2015-06-22 05:13:28.681891
2487	1554	2015-03-22 19:19:00	2015-06-22 05:13:29.105011	2015-06-22 05:13:29.105011
2488	1556	2015-03-22 20:13:00	2015-06-22 05:13:31.220222	2015-06-22 05:13:31.220222
2489	1557	2015-03-22 20:19:00	2015-06-22 05:13:31.398776	2015-06-22 05:13:31.398776
2490	1558	2015-03-22 20:41:00	2015-06-22 05:13:32.379398	2015-06-22 05:13:32.379398
2491	1557	2015-03-22 20:56:00	2015-06-22 05:13:32.953969	2015-06-22 05:13:32.953969
2492	1558	2015-03-22 21:12:00	2015-06-22 05:13:33.641732	2015-06-22 05:13:33.641732
2493	1559	2015-03-22 21:51:00	2015-06-22 05:13:34.752144	2015-06-22 05:13:34.752144
2494	1560	2015-03-22 22:15:00	2015-06-22 05:13:35.774072	2015-06-22 05:13:35.774072
2495	1558	2015-03-22 22:17:00	2015-06-22 05:13:35.853037	2015-06-22 05:13:35.853037
2496	1561	2015-03-23 00:23:00	2015-06-22 05:13:39.392472	2015-06-22 05:13:39.392472
2497	1562	2015-03-23 02:25:00	2015-06-22 05:13:44.391532	2015-06-22 05:13:44.391532
2498	1563	2015-03-23 03:25:00	2015-06-22 05:13:46.974693	2015-06-22 05:13:46.974693
2499	1564	2015-03-23 07:49:00	2015-06-22 05:13:56.470367	2015-06-22 05:13:56.470367
2500	1565	2015-03-23 10:13:00	2015-06-22 05:14:01.675924	2015-06-22 05:14:01.675924
2501	1564	2015-03-23 10:17:00	2015-06-22 05:14:01.861992	2015-06-22 05:14:01.861992
2502	1565	2015-03-23 10:19:00	2015-06-22 05:14:01.94859	2015-06-22 05:14:01.94859
2503	1566	2015-03-23 12:24:00	2015-06-22 05:14:06.511398	2015-06-22 05:14:06.511398
2504	1567	2015-03-23 13:48:00	2015-06-22 05:14:09.507925	2015-06-22 05:14:09.507925
2505	1568	2015-03-23 14:47:00	2015-06-22 05:14:11.382414	2015-06-22 05:14:11.382414
2506	1569	2015-03-23 15:40:00	2015-06-22 05:14:13.586295	2015-06-22 05:14:13.586295
2507	1570	2015-03-23 18:23:00	2015-06-22 05:14:21.237502	2015-06-22 05:14:21.237502
2508	1571	2015-03-23 20:20:00	2015-06-22 05:14:25.423505	2015-06-22 05:14:25.423505
2509	1572	2015-03-23 21:53:00	2015-06-22 05:14:27.806672	2015-06-22 05:14:27.806672
2510	1573	2015-03-23 23:57:00	2015-06-22 05:14:31.655272	2015-06-22 05:14:31.655272
2511	1574	2015-03-24 04:45:00	2015-06-22 05:14:40.867436	2015-06-22 05:14:40.867436
2512	1575	2015-03-24 11:30:00	2015-06-22 05:14:52.974174	2015-06-22 05:14:52.974174
2513	1574	2015-03-24 11:32:00	2015-06-22 05:14:53.10231	2015-06-22 05:14:53.10231
2514	1575	2015-03-24 11:40:00	2015-06-22 05:14:53.468871	2015-06-22 05:14:53.468871
2515	1574	2015-03-24 11:44:00	2015-06-22 05:14:53.646812	2015-06-22 05:14:53.646812
2516	1575	2015-03-24 11:50:00	2015-06-22 05:14:53.898907	2015-06-22 05:14:53.898907
2517	1574	2015-03-24 11:52:00	2015-06-22 05:14:53.973585	2015-06-22 05:14:53.973585
2518	1576	2015-03-24 11:58:00	2015-06-22 05:14:54.158566	2015-06-22 05:14:54.158566
2519	1575	2015-03-24 12:12:00	2015-06-22 05:14:54.752608	2015-06-22 05:14:54.752608
2520	1577	2015-03-24 12:40:00	2015-06-22 05:14:55.838858	2015-06-22 05:14:55.838858
2521	1578	2015-03-24 15:22:00	2015-06-22 05:15:01.497667	2015-06-22 05:15:01.497667
2522	1579	2015-03-24 19:48:00	2015-06-22 05:15:09.20443	2015-06-22 05:15:09.20443
2523	1578	2015-03-24 20:57:00	2015-06-22 05:15:11.13421	2015-06-22 05:15:11.13421
2524	1580	2015-03-24 22:19:00	2015-06-22 05:15:13.453975	2015-06-22 05:15:13.453975
2525	1578	2015-03-24 22:40:00	2015-06-22 05:15:14.138916	2015-06-22 05:15:14.138916
2526	1581	2015-03-24 22:50:00	2015-06-22 05:15:14.405684	2015-06-22 05:15:14.405684
2527	1582	2015-03-24 22:54:00	2015-06-22 05:15:14.516389	2015-06-22 05:15:14.516389
2528	1583	2015-03-25 03:00:00	2015-06-22 05:15:21.544671	2015-06-22 05:15:21.544671
2529	1582	2015-03-25 04:03:00	2015-06-22 05:15:23.332805	2015-06-22 05:15:23.332805
2530	1584	2015-03-25 08:51:00	2015-06-22 05:15:31.972161	2015-06-22 05:15:31.972161
2531	1582	2015-03-25 08:57:00	2015-06-22 05:15:32.136251	2015-06-22 05:15:32.136251
2532	1584	2015-03-25 08:59:00	2015-06-22 05:15:32.197326	2015-06-22 05:15:32.197326
2533	1582	2015-03-25 09:01:00	2015-06-22 05:15:32.254928	2015-06-22 05:15:32.254928
2534	1584	2015-03-25 09:05:00	2015-06-22 05:15:32.35433	2015-06-22 05:15:32.35433
2535	1582	2015-03-25 10:36:00	2015-06-22 05:15:35.307995	2015-06-22 05:15:35.307995
2536	1584	2015-03-25 10:48:00	2015-06-22 05:15:35.662681	2015-06-22 05:15:35.662681
2537	1582	2015-03-25 10:58:00	2015-06-22 05:15:35.948233	2015-06-22 05:15:35.948233
2538	1585	2015-03-25 11:50:00	2015-06-22 05:15:37.65272	2015-06-22 05:15:37.65272
2539	1586	2015-03-25 12:20:00	2015-06-22 05:15:38.535422	2015-06-22 05:15:38.535422
2540	1587	2015-03-25 13:24:00	2015-06-22 05:15:40.740313	2015-06-22 05:15:40.740313
2541	1588	2015-03-25 13:30:00	2015-06-22 05:15:41.020931	2015-06-22 05:15:41.020931
2542	1589	2015-03-25 17:30:00	2015-06-22 05:15:48.880463	2015-06-22 05:15:48.880463
2543	1590	2015-03-25 18:20:00	2015-06-22 05:15:50.391955	2015-06-22 05:15:50.391955
2544	1591	2015-03-26 00:34:00	2015-06-22 05:16:01.990585	2015-06-22 05:16:01.990585
2545	1590	2015-03-26 00:39:00	2015-06-22 05:16:02.402289	2015-06-22 05:16:02.402289
2546	1591	2015-03-26 00:41:00	2015-06-22 05:16:02.485169	2015-06-22 05:16:02.485169
2547	1590	2015-03-26 00:53:00	2015-06-22 05:16:02.92065	2015-06-22 05:16:02.92065
2548	1592	2015-03-26 01:54:00	2015-06-22 05:16:04.579975	2015-06-22 05:16:04.579975
2549	1593	2015-03-26 04:55:00	2015-06-22 05:16:10.106577	2015-06-22 05:16:10.106577
2550	1592	2015-03-26 05:21:00	2015-06-22 05:16:11.053053	2015-06-22 05:16:11.053053
2551	1590	2015-03-26 06:18:00	2015-06-22 05:16:12.729083	2015-06-22 05:16:12.729083
2552	1592	2015-03-26 06:20:00	2015-06-22 05:16:12.787383	2015-06-22 05:16:12.787383
2553	1590	2015-03-26 06:26:00	2015-06-22 05:16:13.081432	2015-06-22 05:16:13.081432
2554	1592	2015-03-26 06:30:00	2015-06-22 05:16:13.230643	2015-06-22 05:16:13.230643
2555	1594	2015-03-26 07:47:00	2015-06-22 05:16:16.301401	2015-06-22 05:16:16.301401
2556	1595	2015-03-26 08:35:00	2015-06-22 05:16:17.948415	2015-06-22 05:16:17.948415
2557	1596	2015-03-26 10:05:00	2015-06-22 05:16:20.479405	2015-06-22 05:16:20.479405
2558	1595	2015-03-26 10:11:00	2015-06-22 05:16:20.793888	2015-06-22 05:16:20.793888
2559	1596	2015-03-26 10:49:00	2015-06-22 05:16:22.526756	2015-06-22 05:16:22.526756
2560	1595	2015-03-26 10:51:00	2015-06-22 05:16:22.602485	2015-06-22 05:16:22.602485
2561	1596	2015-03-26 10:53:00	2015-06-22 05:16:22.670419	2015-06-22 05:16:22.670419
2562	1595	2015-03-26 11:01:00	2015-06-22 05:16:22.929025	2015-06-22 05:16:22.929025
2563	1596	2015-03-26 11:09:00	2015-06-22 05:16:23.124296	2015-06-22 05:16:23.124296
2564	1595	2015-03-26 11:11:00	2015-06-22 05:16:23.171382	2015-06-22 05:16:23.171382
2565	1596	2015-03-26 11:21:00	2015-06-22 05:16:23.405727	2015-06-22 05:16:23.405727
2566	1595	2015-03-26 11:45:00	2015-06-22 05:16:23.972279	2015-06-22 05:16:23.972279
2567	1596	2015-03-26 12:01:00	2015-06-22 05:16:24.484919	2015-06-22 05:16:24.484919
2568	1597	2015-03-26 12:31:00	2015-06-22 05:16:25.275681	2015-06-22 05:16:25.275681
2569	1598	2015-03-26 13:07:00	2015-06-22 05:16:26.382541	2015-06-22 05:16:26.382541
2570	1599	2015-03-26 14:04:00	2015-06-22 05:16:27.910152	2015-06-22 05:16:27.910152
2571	1600	2015-03-26 14:35:00	2015-06-22 05:16:29.013534	2015-06-22 05:16:29.013534
2572	1601	2015-03-26 14:59:00	2015-06-22 05:16:30.280983	2015-06-22 05:16:30.280983
2573	1602	2015-03-26 16:25:00	2015-06-22 05:16:33.073787	2015-06-22 05:16:33.073787
2574	1603	2015-03-26 17:15:00	2015-06-22 05:16:34.720443	2015-06-22 05:16:34.720443
2575	1604	2015-03-27 00:18:00	2015-06-22 05:16:47.959328	2015-06-22 05:16:47.959328
2576	1603	2015-03-27 05:26:00	2015-06-22 05:16:59.162877	2015-06-22 05:16:59.162877
2577	1605	2015-03-27 06:28:00	2015-06-22 05:17:01.722333	2015-06-22 05:17:01.722333
2578	1606	2015-03-27 08:20:00	2015-06-22 05:17:05.440088	2015-06-22 05:17:05.440088
2579	1607	2015-03-27 08:50:00	2015-06-22 05:17:06.324563	2015-06-22 05:17:06.324563
2580	1603	2015-03-27 08:58:00	2015-06-22 05:17:06.538835	2015-06-22 05:17:06.538835
2581	1608	2015-03-27 10:19:00	2015-06-22 05:17:09.32822	2015-06-22 05:17:09.32822
2582	1609	2015-03-27 12:55:00	2015-06-22 05:17:14.083903	2015-06-22 05:17:14.083903
2583	1608	2015-03-27 13:11:00	2015-06-22 05:17:14.592473	2015-06-22 05:17:14.592473
2584	1610	2015-03-27 13:22:00	2015-06-22 05:17:14.908578	2015-06-22 05:17:14.908578
2585	1608	2015-03-27 14:05:00	2015-06-22 05:17:16.187136	2015-06-22 05:17:16.187136
2586	1610	2015-03-27 14:07:00	2015-06-22 05:17:16.256931	2015-06-22 05:17:16.256931
2587	1611	2015-03-27 14:19:00	2015-06-22 05:17:16.623243	2015-06-22 05:17:16.623243
2588	1612	2015-03-27 16:29:00	2015-06-22 05:17:20.475149	2015-06-22 05:17:20.475149
2589	1613	2015-03-27 16:37:00	2015-06-22 05:17:20.708631	2015-06-22 05:17:20.708631
2590	1614	2015-03-27 16:51:00	2015-06-22 05:17:21.081929	2015-06-22 05:17:21.081929
2591	1615	2015-03-27 21:18:00	2015-06-22 05:17:28.97576	2015-06-22 05:17:28.97576
2592	1614	2015-03-27 22:53:00	2015-06-22 05:17:31.922679	2015-06-22 05:17:31.922679
2593	1616	2015-03-27 23:49:00	2015-06-22 05:17:33.83547	2015-06-22 05:17:33.83547
2594	1614	2015-03-27 23:53:00	2015-06-22 05:17:33.961271	2015-06-22 05:17:33.961271
2595	1617	2015-03-28 03:48:00	2015-06-22 05:17:42.339686	2015-06-22 05:17:42.339686
2596	1614	2015-03-28 03:50:00	2015-06-22 05:17:42.422103	2015-06-22 05:17:42.422103
2597	1618	2015-03-28 09:34:00	2015-06-22 05:17:53.876406	2015-06-22 05:17:53.876406
2598	1619	2015-03-28 10:20:00	2015-06-22 05:17:55.433181	2015-06-22 05:17:55.433181
2599	1618	2015-03-28 10:23:00	2015-06-22 05:17:55.52617	2015-06-22 05:17:55.52617
2600	1619	2015-03-28 10:33:00	2015-06-22 05:17:55.806224	2015-06-22 05:17:55.806224
2601	1618	2015-03-28 11:05:00	2015-06-22 05:17:56.71439	2015-06-22 05:17:56.71439
2602	1614	2015-03-28 11:33:00	2015-06-22 05:17:57.717312	2015-06-22 05:17:57.717312
2603	1618	2015-03-28 11:55:00	2015-06-22 05:17:58.357971	2015-06-22 05:17:58.357971
2604	1614	2015-03-28 11:59:00	2015-06-22 05:17:58.472073	2015-06-22 05:17:58.472073
2605	1620	2015-03-28 12:24:00	2015-06-22 05:17:59.355977	2015-06-22 05:17:59.355977
2606	1621	2015-03-28 15:03:00	2015-06-22 05:18:04.748486	2015-06-22 05:18:04.748486
2607	1620	2015-03-28 15:07:00	2015-06-22 05:18:04.860644	2015-06-22 05:18:04.860644
2608	1621	2015-03-28 15:15:00	2015-06-22 05:18:05.059431	2015-06-22 05:18:05.059431
2609	1620	2015-03-28 15:31:00	2015-06-22 05:18:05.663041	2015-06-22 05:18:05.663041
2610	1622	2015-03-28 16:13:00	2015-06-22 05:18:06.767711	2015-06-22 05:18:06.767711
2611	1623	2015-03-28 19:03:00	2015-06-22 05:18:12.318085	2015-06-22 05:18:12.318085
2612	1622	2015-03-28 19:09:00	2015-06-22 05:18:12.491803	2015-06-22 05:18:12.491803
2613	1624	2015-03-28 19:35:00	2015-06-22 05:18:13.424688	2015-06-22 05:18:13.424688
2614	1622	2015-03-28 19:41:00	2015-06-22 05:18:13.570252	2015-06-22 05:18:13.570252
2615	1624	2015-03-28 19:51:00	2015-06-22 05:18:13.836094	2015-06-22 05:18:13.836094
2616	1622	2015-03-28 20:49:00	2015-06-22 05:18:16.462326	2015-06-22 05:18:16.462326
2617	1625	2015-03-28 21:00:00	2015-06-22 05:18:16.823412	2015-06-22 05:18:16.823412
2618	1622	2015-03-28 21:04:00	2015-06-22 05:18:16.953332	2015-06-22 05:18:16.953332
2619	1624	2015-03-28 21:59:00	2015-06-22 05:18:18.447067	2015-06-22 05:18:18.447067
2620	1626	2015-03-28 22:01:00	2015-06-22 05:18:18.499087	2015-06-22 05:18:18.499087
2621	1624	2015-03-28 22:03:00	2015-06-22 05:18:18.546567	2015-06-22 05:18:18.546567
2622	1627	2015-03-28 22:05:00	2015-06-22 05:18:18.596761	2015-06-22 05:18:18.596761
2623	1628	2015-03-28 22:23:00	2015-06-22 05:18:19.099411	2015-06-22 05:18:19.099411
2624	1627	2015-03-28 22:43:00	2015-06-22 05:18:19.672427	2015-06-22 05:18:19.672427
2625	1629	2015-03-28 22:49:00	2015-06-22 05:18:19.833655	2015-06-22 05:18:19.833655
2626	1630	2015-03-29 00:07:00	2015-06-22 05:18:22.507163	2015-06-22 05:18:22.507163
2627	1631	2015-03-29 09:56:00	2015-06-22 05:18:40.361286	2015-06-22 05:18:40.361286
2628	1632	2015-03-29 15:32:00	2015-06-22 05:18:51.96823	2015-06-22 05:18:51.96823
2629	1633	2015-03-29 15:54:00	2015-06-22 05:18:52.801675	2015-06-22 05:18:52.801675
2630	1632	2015-03-29 16:08:00	2015-06-22 05:18:53.197403	2015-06-22 05:18:53.197403
2631	1634	2015-03-29 16:44:00	2015-06-22 05:18:54.433223	2015-06-22 05:18:54.433223
2632	1635	2015-03-29 16:48:00	2015-06-22 05:18:54.569563	2015-06-22 05:18:54.569563
2633	1634	2015-03-29 16:50:00	2015-06-22 05:18:54.635148	2015-06-22 05:18:54.635148
2634	1635	2015-03-29 16:54:00	2015-06-22 05:18:54.757755	2015-06-22 05:18:54.757755
2635	1636	2015-03-29 18:31:00	2015-06-22 05:18:58.059543	2015-06-22 05:18:58.059543
2636	1637	2015-03-29 22:33:00	2015-06-22 05:19:06.252595	2015-06-22 05:19:06.252595
2637	1636	2015-03-29 22:35:00	2015-06-22 05:19:06.311945	2015-06-22 05:19:06.311945
2638	1637	2015-03-29 22:37:00	2015-06-22 05:19:06.368195	2015-06-22 05:19:06.368195
2639	1636	2015-03-29 23:25:00	2015-06-22 05:19:08.440279	2015-06-22 05:19:08.440279
2640	1638	2015-03-29 23:27:00	2015-06-22 05:19:08.496355	2015-06-22 05:19:08.496355
2641	1639	2015-03-30 02:37:00	2015-06-22 05:19:14.616701	2015-06-22 05:19:14.616701
2642	1638	2015-03-30 02:43:00	2015-06-22 05:19:14.777706	2015-06-22 05:19:14.777706
2643	1640	2015-03-30 05:27:00	2015-06-22 05:19:19.871253	2015-06-22 05:19:19.871253
2644	1638	2015-03-30 06:03:00	2015-06-22 05:19:21.025946	2015-06-22 05:19:21.025946
2645	1641	2015-03-30 07:37:00	2015-06-22 05:19:23.336911	2015-06-22 05:19:23.336911
2646	1638	2015-03-30 08:15:00	2015-06-22 05:19:24.780871	2015-06-22 05:19:24.780871
2647	1642	2015-03-30 08:26:00	2015-06-22 05:19:25.113249	2015-06-22 05:19:25.113249
2648	1643	2015-03-30 12:14:00	2015-06-22 05:19:32.516287	2015-06-22 05:19:32.516287
2649	1644	2015-03-30 12:40:00	2015-06-22 05:19:33.259302	2015-06-22 05:19:33.259302
2650	1643	2015-03-30 13:43:00	2015-06-22 05:19:35.217551	2015-06-22 05:19:35.217551
2651	1645	2015-03-30 13:49:00	2015-06-22 05:19:35.381709	2015-06-22 05:19:35.381709
2652	1643	2015-03-30 13:53:00	2015-06-22 05:19:35.492214	2015-06-22 05:19:35.492214
2653	1646	2015-03-30 14:01:00	2015-06-22 05:19:35.710609	2015-06-22 05:19:35.710609
2654	1647	2015-03-30 15:30:00	2015-06-22 05:19:38.498945	2015-06-22 05:19:38.498945
2655	1648	2015-03-30 16:24:00	2015-06-22 05:19:40.170576	2015-06-22 05:19:40.170576
2656	1649	2015-03-30 16:30:00	2015-06-22 05:19:40.314583	2015-06-22 05:19:40.314583
2657	1650	2015-03-30 16:46:00	2015-06-22 05:19:40.695887	2015-06-22 05:19:40.695887
2658	1651	2015-03-30 22:51:00	2015-06-22 05:19:52.496967	2015-06-22 05:19:52.496967
2659	1650	2015-03-30 22:56:00	2015-06-22 05:19:52.670171	2015-06-22 05:19:52.670171
2660	1652	2015-03-30 23:24:00	2015-06-22 05:19:53.728336	2015-06-22 05:19:53.728336
2661	1650	2015-03-30 23:32:00	2015-06-22 05:19:54.14698	2015-06-22 05:19:54.14698
2662	1652	2015-03-30 23:42:00	2015-06-22 05:19:54.518475	2015-06-22 05:19:54.518475
2663	1650	2015-03-30 23:58:00	2015-06-22 05:19:55.083942	2015-06-22 05:19:55.083942
2664	1652	2015-03-31 00:00:00	2015-06-22 05:19:55.180485	2015-06-22 05:19:55.180485
2665	1650	2015-03-31 00:04:00	2015-06-22 05:19:55.364159	2015-06-22 05:19:55.364159
2666	1651	2015-03-31 00:32:00	2015-06-22 05:19:56.541903	2015-06-22 05:19:56.541903
2667	1653	2015-03-31 00:34:00	2015-06-22 05:19:56.614248	2015-06-22 05:19:56.614248
2668	1654	2015-03-31 02:51:00	2015-06-22 05:20:01.327969	2015-06-22 05:20:01.327969
2669	1655	2015-03-31 08:55:00	2015-06-22 05:20:12.381379	2015-06-22 05:20:12.381379
2670	1656	2015-03-31 13:55:00	2015-06-22 05:20:22.130318	2015-06-22 05:20:22.130318
2671	1655	2015-03-31 14:11:00	2015-06-22 05:20:22.61677	2015-06-22 05:20:22.61677
2672	1656	2015-03-31 14:13:00	2015-06-22 05:20:22.674345	2015-06-22 05:20:22.674345
2673	1657	2015-03-31 14:25:00	2015-06-22 05:20:23.033653	2015-06-22 05:20:23.033653
2674	1656	2015-03-31 14:27:00	2015-06-22 05:20:23.092075	2015-06-22 05:20:23.092075
2675	1658	2015-03-31 15:14:00	2015-06-22 05:20:24.654225	2015-06-22 05:20:24.654225
2676	1656	2015-03-31 15:18:00	2015-06-22 05:20:24.77547	2015-06-22 05:20:24.77547
2677	1659	2015-03-31 15:28:00	2015-06-22 05:20:25.19936	2015-06-22 05:20:25.19936
2678	1660	2015-03-31 15:30:00	2015-06-22 05:20:25.25763	2015-06-22 05:20:25.25763
2679	1658	2015-03-31 17:33:00	2015-06-22 05:20:29.777207	2015-06-22 05:20:29.777207
2680	1661	2015-03-31 18:09:00	2015-06-22 05:20:31.403507	2015-06-22 05:20:31.403507
2681	1662	2015-03-31 18:11:00	2015-06-22 05:20:31.507212	2015-06-22 05:20:31.507212
2682	1663	2015-03-31 21:56:00	2015-06-22 05:20:39.360879	2015-06-22 05:20:39.360879
2683	1662	2015-03-31 21:58:00	2015-06-22 05:20:39.418987	2015-06-22 05:20:39.418987
2684	1663	2015-03-31 22:11:00	2015-06-22 05:20:39.896967	2015-06-22 05:20:39.896967
2685	1662	2015-03-31 22:16:00	2015-06-22 05:20:40.057591	2015-06-22 05:20:40.057591
2686	1663	2015-03-31 22:22:00	2015-06-22 05:20:40.24037	2015-06-22 05:20:40.24037
2687	1662	2015-03-31 22:28:00	2015-06-22 05:20:40.420417	2015-06-22 05:20:40.420417
2688	1664	2015-03-31 23:12:00	2015-06-22 05:20:41.600712	2015-06-22 05:20:41.600712
2689	1665	2015-04-01 02:46:00	2015-06-22 05:20:48.192599	2015-06-22 05:20:48.192599
2690	1664	2015-04-01 02:48:00	2015-06-22 05:20:48.248674	2015-06-22 05:20:48.248674
2691	1665	2015-04-01 02:58:00	2015-06-22 05:20:48.715089	2015-06-22 05:20:48.715089
2692	1666	2015-04-01 03:28:00	2015-06-22 05:20:49.63501	2015-06-22 05:20:49.63501
2693	1665	2015-04-01 03:40:00	2015-06-22 05:20:50.012778	2015-06-22 05:20:50.012778
2694	1667	2015-04-01 03:44:00	2015-06-22 05:20:50.116871	2015-06-22 05:20:50.116871
2695	1665	2015-04-01 03:56:00	2015-06-22 05:20:50.431102	2015-06-22 05:20:50.431102
2696	1668	2015-04-01 04:04:00	2015-06-22 05:20:50.796504	2015-06-22 05:20:50.796504
2697	1664	2015-04-01 04:08:00	2015-06-22 05:20:50.915823	2015-06-22 05:20:50.915823
2698	1669	2015-04-01 04:12:00	2015-06-22 05:20:51.04267	2015-06-22 05:20:51.04267
2699	1664	2015-04-01 05:08:00	2015-06-22 05:20:52.598964	2015-06-22 05:20:52.598964
2700	1670	2015-04-01 05:18:00	2015-06-22 05:20:52.882444	2015-06-22 05:20:52.882444
2701	1671	2015-04-01 06:05:00	2015-06-22 05:20:54.092098	2015-06-22 05:20:54.092098
2702	1672	2015-04-01 11:22:00	2015-06-22 05:21:03.849751	2015-06-22 05:21:03.849751
2703	1671	2015-04-01 11:30:00	2015-06-22 05:21:04.082426	2015-06-22 05:21:04.082426
2704	1673	2015-04-01 12:40:00	2015-06-22 05:21:06.378293	2015-06-22 05:21:06.378293
2705	1674	2015-04-01 14:19:00	2015-06-22 05:21:09.643988	2015-06-22 05:21:09.643988
2706	1675	2015-04-01 15:24:00	2015-06-22 05:21:12.39688	2015-06-22 05:21:12.39688
2707	1676	2015-04-01 19:45:00	2015-06-22 05:21:21.033401	2015-06-22 05:21:21.033401
2708	1677	2015-04-01 20:55:00	2015-06-22 05:21:23.221211	2015-06-22 05:21:23.221211
2709	1678	2015-04-01 21:01:00	2015-06-22 05:21:23.385487	2015-06-22 05:21:23.385487
2710	1676	2015-04-01 21:03:00	2015-06-22 05:21:23.442808	2015-06-22 05:21:23.442808
2711	1675	2015-04-01 21:11:00	2015-06-22 05:21:23.657031	2015-06-22 05:21:23.657031
2712	1679	2015-04-01 21:15:00	2015-06-22 05:21:23.769566	2015-06-22 05:21:23.769566
2713	1680	2015-04-01 23:21:00	2015-06-22 05:21:27.820571	2015-06-22 05:21:27.820571
2714	1681	2015-04-02 00:16:00	2015-06-22 05:21:29.525864	2015-06-22 05:21:29.525864
2715	1682	2015-04-02 03:00:00	2015-06-22 05:21:34.295614	2015-06-22 05:21:34.295614
2716	1683	2015-04-02 08:56:00	2015-06-22 05:21:44.996757	2015-06-22 05:21:44.996757
2717	1684	2015-04-02 09:36:00	2015-06-22 05:21:46.096608	2015-06-22 05:21:46.096608
2718	1685	2015-04-02 13:59:00	2015-06-22 05:21:54.547919	2015-06-22 05:21:54.547919
2719	1684	2015-04-02 14:25:00	2015-06-22 05:21:55.275187	2015-06-22 05:21:55.275187
2720	1686	2015-04-02 15:02:00	2015-06-22 05:21:56.479444	2015-06-22 05:21:56.479444
2721	1687	2015-04-02 20:52:00	2015-06-22 05:22:07.15132	2015-06-22 05:22:07.15132
2722	1688	2015-04-02 21:02:00	2015-06-22 05:22:07.554456	2015-06-22 05:22:07.554456
2723	1687	2015-04-02 21:22:00	2015-06-22 05:22:08.150908	2015-06-22 05:22:08.150908
2724	1689	2015-04-02 22:02:00	2015-06-22 05:22:09.352936	2015-06-22 05:22:09.352936
2725	1690	2015-04-03 04:07:00	2015-06-22 05:22:20.274583	2015-06-22 05:22:20.274583
2726	1689	2015-04-03 06:21:00	2015-06-22 05:22:24.516882	2015-06-22 05:22:24.516882
2727	1691	2015-04-03 07:05:00	2015-06-22 05:22:25.900471	2015-06-22 05:22:25.900471
2728	1689	2015-04-03 08:07:00	2015-06-22 05:22:28.130069	2015-06-22 05:22:28.130069
2729	1692	2015-04-03 09:01:00	2015-06-22 05:22:29.866178	2015-06-22 05:22:29.866178
2730	1689	2015-04-03 09:03:00	2015-06-22 05:22:29.924013	2015-06-22 05:22:29.924013
2731	1692	2015-04-03 09:09:00	2015-06-22 05:22:30.228195	2015-06-22 05:22:30.228195
2732	1689	2015-04-03 09:51:00	2015-06-22 05:22:31.5181	2015-06-22 05:22:31.5181
2733	1693	2015-04-03 10:52:00	2015-06-22 05:22:33.081891	2015-06-22 05:22:33.081891
2734	1694	2015-04-03 12:32:00	2015-06-22 05:22:36.679002	2015-06-22 05:22:36.679002
2735	1695	2015-04-03 12:57:00	2015-06-22 05:22:37.540242	2015-06-22 05:22:37.540242
2736	1696	2015-04-03 13:43:00	2015-06-22 05:22:38.748758	2015-06-22 05:22:38.748758
2737	1695	2015-04-03 14:03:00	2015-06-22 05:22:39.472306	2015-06-22 05:22:39.472306
2738	1696	2015-04-03 14:16:00	2015-06-22 05:22:39.849727	2015-06-22 05:22:39.849727
2739	1697	2015-04-03 14:32:00	2015-06-22 05:22:40.2987	2015-06-22 05:22:40.2987
2740	1696	2015-04-03 14:34:00	2015-06-22 05:22:40.352507	2015-06-22 05:22:40.352507
2741	1698	2015-04-03 14:46:00	2015-06-22 05:22:40.671049	2015-06-22 05:22:40.671049
2742	1696	2015-04-03 15:48:00	2015-06-22 05:22:42.549893	2015-06-22 05:22:42.549893
2743	1697	2015-04-03 15:58:00	2015-06-22 05:22:42.776686	2015-06-22 05:22:42.776686
2744	1698	2015-04-03 16:48:00	2015-06-22 05:22:44.24306	2015-06-22 05:22:44.24306
2745	1699	2015-04-03 17:00:00	2015-06-22 05:22:44.624219	2015-06-22 05:22:44.624219
2746	1700	2015-04-03 18:36:00	2015-06-22 05:22:48.488796	2015-06-22 05:22:48.488796
2747	1701	2015-04-03 19:54:00	2015-06-22 05:22:51.703294	2015-06-22 05:22:51.703294
2748	1702	2015-04-04 04:35:00	2015-06-22 05:23:08.393737	2015-06-22 05:23:08.393737
2749	1701	2015-04-04 07:10:00	2015-06-22 05:23:12.948613	2015-06-22 05:23:12.948613
2750	1703	2015-04-04 12:12:00	2015-06-22 05:23:22.6947	2015-06-22 05:23:22.6947
2751	1701	2015-04-04 14:30:00	2015-06-22 05:23:26.837797	2015-06-22 05:23:26.837797
2752	1704	2015-04-04 14:44:00	2015-06-22 05:23:27.222451	2015-06-22 05:23:27.222451
2753	1705	2015-04-05 03:13:00	2015-06-22 05:23:49.108413	2015-06-22 05:23:49.108413
2754	1704	2015-04-05 03:15:00	2015-06-22 05:23:49.165419	2015-06-22 05:23:49.165419
2755	1705	2015-04-05 03:19:00	2015-06-22 05:23:49.2802	2015-06-22 05:23:49.2802
2756	1706	2015-04-05 09:46:00	2015-06-22 05:24:00.853491	2015-06-22 05:24:00.853491
2757	1707	2015-04-05 13:19:00	2015-06-22 05:24:06.867827	2015-06-22 05:24:06.867827
2758	1706	2015-04-05 16:11:00	2015-06-22 05:24:11.565122	2015-06-22 05:24:11.565122
2759	1708	2015-04-05 16:19:00	2015-06-22 05:24:11.79376	2015-06-22 05:24:11.79376
2760	1709	2015-04-05 16:50:00	2015-06-22 05:24:12.915537	2015-06-22 05:24:12.915537
2761	1710	2015-04-05 16:52:00	2015-06-22 05:24:12.97413	2015-06-22 05:24:12.97413
2762	1711	2015-04-05 20:50:00	2015-06-22 05:24:20.008731	2015-06-22 05:24:20.008731
2763	1712	2015-04-05 22:49:00	2015-06-22 05:24:23.594011	2015-06-22 05:24:23.594011
2764	1711	2015-04-05 22:57:00	2015-06-22 05:24:23.828083	2015-06-22 05:24:23.828083
2765	1712	2015-04-05 22:59:00	2015-06-22 05:24:23.883596	2015-06-22 05:24:23.883596
2766	1711	2015-04-05 23:07:00	2015-06-22 05:24:24.114492	2015-06-22 05:24:24.114492
2767	1712	2015-04-05 23:31:00	2015-06-22 05:24:24.959443	2015-06-22 05:24:24.959443
2768	1713	2015-04-06 00:26:00	2015-06-22 05:24:26.52695	2015-06-22 05:24:26.52695
2769	1714	2015-04-06 00:30:00	2015-06-22 05:24:26.73429	2015-06-22 05:24:26.73429
2770	1715	2015-04-06 03:40:00	2015-06-22 05:24:32.519515	2015-06-22 05:24:32.519515
2771	1716	2015-04-06 05:36:00	2015-06-22 05:24:35.980344	2015-06-22 05:24:35.980344
2772	1717	2015-04-06 06:07:00	2015-06-22 05:24:36.936484	2015-06-22 05:24:36.936484
2773	1718	2015-04-06 10:15:00	2015-06-22 05:24:44.381059	2015-06-22 05:24:44.381059
2774	1719	2015-04-06 11:17:00	2015-06-22 05:24:46.155928	2015-06-22 05:24:46.155928
2775	1718	2015-04-06 11:47:00	2015-06-22 05:24:47.11664	2015-06-22 05:24:47.11664
2776	1720	2015-04-06 11:55:00	2015-06-22 05:24:47.337818	2015-06-22 05:24:47.337818
2777	1718	2015-04-06 12:01:00	2015-06-22 05:24:47.49366	2015-06-22 05:24:47.49366
2778	1721	2015-04-06 12:15:00	2015-06-22 05:24:47.840938	2015-06-22 05:24:47.840938
2779	1722	2015-04-06 12:24:00	2015-06-22 05:24:48.047107	2015-06-22 05:24:48.047107
2780	1721	2015-04-06 12:26:00	2015-06-22 05:24:48.099706	2015-06-22 05:24:48.099706
2781	1723	2015-04-06 14:21:00	2015-06-22 05:24:51.654008	2015-06-22 05:24:51.654008
2782	1724	2015-04-06 14:33:00	2015-06-22 05:24:52.006973	2015-06-22 05:24:52.006973
2783	1725	2015-04-06 15:45:00	2015-06-22 05:24:54.175479	2015-06-22 05:24:54.175479
2784	1724	2015-04-06 15:59:00	2015-06-22 05:24:54.649897	2015-06-22 05:24:54.649897
2785	1726	2015-04-06 16:16:00	2015-06-22 05:24:55.196761	2015-06-22 05:24:55.196761
2786	1727	2015-04-06 17:13:00	2015-06-22 05:24:57.10105	2015-06-22 05:24:57.10105
2787	1728	2015-04-06 17:41:00	2015-06-22 05:24:57.958166	2015-06-22 05:24:57.958166
2788	1727	2015-04-06 18:01:00	2015-06-22 05:24:58.862563	2015-06-22 05:24:58.862563
2789	1729	2015-04-06 23:48:00	2015-06-22 05:25:09.623009	2015-06-22 05:25:09.623009
2790	1730	2015-04-07 02:55:00	2015-06-22 05:25:14.999573	2015-06-22 05:25:14.999573
2791	1729	2015-04-07 02:57:00	2015-06-22 05:25:15.048333	2015-06-22 05:25:15.048333
2792	1731	2015-04-07 03:15:00	2015-06-22 05:25:15.501488	2015-06-22 05:25:15.501488
2793	1732	2015-04-07 04:04:00	2015-06-22 05:25:17.036169	2015-06-22 05:25:17.036169
2794	1731	2015-04-07 04:10:00	2015-06-22 05:25:17.202197	2015-06-22 05:25:17.202197
2795	1733	2015-04-07 06:35:00	2015-06-22 05:25:21.679505	2015-06-22 05:25:21.679505
2796	1729	2015-04-07 07:42:00	2015-06-22 05:25:23.677012	2015-06-22 05:25:23.677012
2797	1734	2015-04-07 09:30:00	2015-06-22 05:25:27.149631	2015-06-22 05:25:27.149631
2798	1735	2015-04-07 10:10:00	2015-06-22 05:25:28.384808	2015-06-22 05:25:28.384808
2799	1736	2015-04-07 10:50:00	2015-06-22 05:25:29.67292	2015-06-22 05:25:29.67292
2800	1737	2015-04-07 13:51:00	2015-06-22 05:25:35.109239	2015-06-22 05:25:35.109239
2801	1736	2015-04-07 14:21:00	2015-06-22 05:25:36.140166	2015-06-22 05:25:36.140166
2802	1738	2015-04-07 14:25:00	2015-06-22 05:25:36.250676	2015-06-22 05:25:36.250676
2803	1739	2015-04-07 18:57:00	2015-06-22 05:25:45.021992	2015-06-22 05:25:45.021992
2804	1738	2015-04-07 19:11:00	2015-06-22 05:25:45.455393	2015-06-22 05:25:45.455393
2805	1740	2015-04-07 19:23:00	2015-06-22 05:25:45.809648	2015-06-22 05:25:45.809648
2806	1741	2015-04-08 02:05:00	2015-06-22 05:25:59.353304	2015-06-22 05:25:59.353304
2807	1742	2015-04-08 04:34:00	2015-06-22 05:26:04.435911	2015-06-22 05:26:04.435911
2808	1743	2015-04-08 12:06:00	2015-06-22 05:26:17.770307	2015-06-22 05:26:17.770307
2809	1744	2015-04-08 13:07:00	2015-06-22 05:26:19.53301	2015-06-22 05:26:19.53301
2810	1745	2015-04-08 15:45:00	2015-06-22 05:26:24.194378	2015-06-22 05:26:24.194378
2811	1744	2015-04-08 15:53:00	2015-06-22 05:26:24.409018	2015-06-22 05:26:24.409018
2812	1746	2015-04-08 16:35:00	2015-06-22 05:26:25.705483	2015-06-22 05:26:25.705483
2813	1747	2015-04-08 18:21:00	2015-06-22 05:26:28.999468	2015-06-22 05:26:28.999468
2814	1748	2015-04-08 19:20:00	2015-06-22 05:26:30.741324	2015-06-22 05:26:30.741324
2815	1749	2015-04-09 00:11:00	2015-06-22 05:26:39.304777	2015-06-22 05:26:39.304777
2816	1748	2015-04-09 01:36:00	2015-06-22 05:26:41.903943	2015-06-22 05:26:41.903943
2817	1750	2015-04-09 01:50:00	2015-06-22 05:26:42.272697	2015-06-22 05:26:42.272697
2818	1751	2015-04-09 07:53:00	2015-06-22 05:26:53.136701	2015-06-22 05:26:53.136701
2819	1752	2015-04-09 11:29:00	2015-06-22 05:26:59.291474	2015-06-22 05:26:59.291474
2820	1751	2015-04-09 11:37:00	2015-06-22 05:26:59.696728	2015-06-22 05:26:59.696728
2821	1753	2015-04-09 11:51:00	2015-06-22 05:27:00.136253	2015-06-22 05:27:00.136253
2822	1754	2015-04-09 13:45:00	2015-06-22 05:27:03.339825	2015-06-22 05:27:03.339825
2823	1755	2015-04-09 15:21:00	2015-06-22 05:27:06.204394	2015-06-22 05:27:06.204394
2824	1756	2015-04-09 18:40:00	2015-06-22 05:27:11.704273	2015-06-22 05:27:11.704273
2825	1755	2015-04-10 01:10:00	2015-06-22 05:27:23.460805	2015-06-22 05:27:23.460805
2826	1757	2015-04-10 03:03:00	2015-06-22 05:27:26.907832	2015-06-22 05:27:26.907832
2827	1755	2015-04-10 03:11:00	2015-06-22 05:27:27.135473	2015-06-22 05:27:27.135473
2828	1757	2015-04-10 03:17:00	2015-06-22 05:27:27.303627	2015-06-22 05:27:27.303627
2829	1755	2015-04-10 03:19:00	2015-06-22 05:27:27.359502	2015-06-22 05:27:27.359502
2830	1758	2015-04-10 03:58:00	2015-06-22 05:27:28.65945	2015-06-22 05:27:28.65945
2831	1755	2015-04-10 04:00:00	2015-06-22 05:27:28.722333	2015-06-22 05:27:28.722333
2832	1758	2015-04-10 04:02:00	2015-06-22 05:27:28.780935	2015-06-22 05:27:28.780935
2833	1759	2015-04-10 08:02:00	2015-06-22 05:27:36.02882	2015-06-22 05:27:36.02882
2834	1760	2015-04-10 09:32:00	2015-06-22 05:27:38.925246	2015-06-22 05:27:38.925246
2835	1761	2015-04-10 12:00:00	2015-06-22 05:27:43.232525	2015-06-22 05:27:43.232525
2836	1762	2015-04-10 17:02:00	2015-06-22 05:27:52.229593	2015-06-22 05:27:52.229593
2837	1763	2015-04-10 17:21:00	2015-06-22 05:27:52.722787	2015-06-22 05:27:52.722787
2838	1762	2015-04-10 17:23:00	2015-06-22 05:27:52.773922	2015-06-22 05:27:52.773922
2839	1763	2015-04-10 17:29:00	2015-06-22 05:27:52.926447	2015-06-22 05:27:52.926447
2840	1764	2015-04-10 19:34:00	2015-06-22 05:27:56.759864	2015-06-22 05:27:56.759864
2841	1763	2015-04-10 19:40:00	2015-06-22 05:27:56.891457	2015-06-22 05:27:56.891457
2842	1765	2015-04-10 19:54:00	2015-06-22 05:27:57.23907	2015-06-22 05:27:57.23907
2843	1766	2015-04-10 21:01:00	2015-06-22 05:27:59.079914	2015-06-22 05:27:59.079914
2844	1767	2015-04-11 01:41:00	2015-06-22 05:28:07.06618	2015-06-22 05:28:07.06618
2845	1768	2015-04-11 06:31:00	2015-06-22 05:28:15.75496	2015-06-22 05:28:15.75496
2846	1767	2015-04-11 06:33:00	2015-06-22 05:28:15.803641	2015-06-22 05:28:15.803641
2847	1768	2015-04-11 06:35:00	2015-06-22 05:28:15.85336	2015-06-22 05:28:15.85336
2848	1767	2015-04-11 06:37:00	2015-06-22 05:28:15.910896	2015-06-22 05:28:15.910896
2849	1766	2015-04-11 06:57:00	2015-06-22 05:28:16.417559	2015-06-22 05:28:16.417559
2850	1769	2015-04-11 11:12:00	2015-06-22 05:28:23.863914	2015-06-22 05:28:23.863914
2851	1770	2015-04-11 12:54:00	2015-06-22 05:28:26.804646	2015-06-22 05:28:26.804646
2852	1771	2015-04-11 15:34:00	2015-06-22 05:28:31.307891	2015-06-22 05:28:31.307891
2853	1770	2015-04-11 15:44:00	2015-06-22 05:28:31.558738	2015-06-22 05:28:31.558738
2854	1772	2015-04-11 15:46:00	2015-06-22 05:28:31.615134	2015-06-22 05:28:31.615134
2855	1773	2015-04-11 18:27:00	2015-06-22 05:28:36.499564	2015-06-22 05:28:36.499564
2856	1772	2015-04-11 19:12:00	2015-06-22 05:28:37.653249	2015-06-22 05:28:37.653249
2857	1774	2015-04-11 19:32:00	2015-06-22 05:28:38.165988	2015-06-22 05:28:38.165988
2858	1772	2015-04-11 19:36:00	2015-06-22 05:28:38.432795	2015-06-22 05:28:38.432795
2859	1774	2015-04-11 19:38:00	2015-06-22 05:28:38.498903	2015-06-22 05:28:38.498903
2860	1775	2015-04-11 19:52:00	2015-06-22 05:28:38.915245	2015-06-22 05:28:38.915245
2861	1776	2015-04-11 20:57:00	2015-06-22 05:28:40.794992	2015-06-22 05:28:40.794992
2862	1777	2015-04-11 21:37:00	2015-06-22 05:28:41.853902	2015-06-22 05:28:41.853902
2863	1778	2015-04-11 22:27:00	2015-06-22 05:28:43.530676	2015-06-22 05:28:43.530676
2864	1779	2015-04-12 02:29:00	2015-06-22 05:28:50.90209	2015-06-22 05:28:50.90209
2865	1778	2015-04-12 02:31:00	2015-06-22 05:28:50.964416	2015-06-22 05:28:50.964416
2866	1779	2015-04-12 02:39:00	2015-06-22 05:28:51.207301	2015-06-22 05:28:51.207301
2867	1780	2015-04-12 04:02:00	2015-06-22 05:28:53.7396	2015-06-22 05:28:53.7396
2868	1781	2015-04-12 07:05:00	2015-06-22 05:28:59.318214	2015-06-22 05:28:59.318214
2869	1780	2015-04-12 07:32:00	2015-06-22 05:28:59.995448	2015-06-22 05:28:59.995448
2870	1782	2015-04-12 07:40:00	2015-06-22 05:29:00.228078	2015-06-22 05:29:00.228078
2871	1783	2015-04-12 10:31:00	2015-06-22 05:29:05.531281	2015-06-22 05:29:05.531281
2872	1782	2015-04-12 11:49:00	2015-06-22 05:29:07.74559	2015-06-22 05:29:07.74559
2873	1784	2015-04-12 12:03:00	2015-06-22 05:29:08.230887	2015-06-22 05:29:08.230887
2874	1782	2015-04-12 12:51:00	2015-06-22 05:29:09.778304	2015-06-22 05:29:09.778304
2875	1785	2015-04-12 13:43:00	2015-06-22 05:29:11.317638	2015-06-22 05:29:11.317638
2876	1786	2015-04-12 15:36:00	2015-06-22 05:29:15.103144	2015-06-22 05:29:15.103144
2877	1787	2015-04-12 15:51:00	2015-06-22 05:29:15.477287	2015-06-22 05:29:15.477287
2878	1788	2015-04-12 18:15:00	2015-06-22 05:29:20.051809	2015-06-22 05:29:20.051809
2879	1786	2015-04-12 18:42:00	2015-06-22 05:29:20.984769	2015-06-22 05:29:20.984769
2880	1789	2015-04-12 18:44:00	2015-06-22 05:29:21.045128	2015-06-22 05:29:21.045128
2881	1786	2015-04-12 18:46:00	2015-06-22 05:29:21.101745	2015-06-22 05:29:21.101745
2882	1789	2015-04-12 18:54:00	2015-06-22 05:29:21.31668	2015-06-22 05:29:21.31668
2883	1786	2015-04-12 18:56:00	2015-06-22 05:29:21.369751	2015-06-22 05:29:21.369751
2884	1790	2015-04-12 19:40:00	2015-06-22 05:29:22.680616	2015-06-22 05:29:22.680616
2885	1789	2015-04-12 19:42:00	2015-06-22 05:29:22.749754	2015-06-22 05:29:22.749754
2886	1788	2015-04-12 19:44:00	2015-06-22 05:29:22.815113	2015-06-22 05:29:22.815113
2887	1789	2015-04-12 19:46:00	2015-06-22 05:29:22.876245	2015-06-22 05:29:22.876245
2888	1791	2015-04-12 19:56:00	2015-06-22 05:29:23.16383	2015-06-22 05:29:23.16383
2889	1792	2015-04-12 20:20:00	2015-06-22 05:29:23.82443	2015-06-22 05:29:23.82443
2890	1793	2015-04-12 20:22:00	2015-06-22 05:29:23.88018	2015-06-22 05:29:23.88018
2891	1794	2015-04-12 23:52:00	2015-06-22 05:29:30.367773	2015-06-22 05:29:30.367773
2892	1795	2015-04-13 02:00:00	2015-06-22 05:29:34.383215	2015-06-22 05:29:34.383215
2893	1794	2015-04-13 02:42:00	2015-06-22 05:29:35.517177	2015-06-22 05:29:35.517177
2894	1796	2015-04-13 05:20:00	2015-06-22 05:29:40.201223	2015-06-22 05:29:40.201223
2895	1797	2015-04-13 10:44:00	2015-06-22 05:29:49.827578	2015-06-22 05:29:49.827578
2896	1798	2015-04-13 12:49:00	2015-06-22 05:29:53.421403	2015-06-22 05:29:53.421403
2897	1797	2015-04-13 13:46:00	2015-06-22 05:29:55.225188	2015-06-22 05:29:55.225188
2898	1799	2015-04-13 13:56:00	2015-06-22 05:29:55.528533	2015-06-22 05:29:55.528533
2899	1797	2015-04-13 14:16:00	2015-06-22 05:29:56.090907	2015-06-22 05:29:56.090907
2900	1800	2015-04-13 14:18:00	2015-06-22 05:29:56.1477	2015-06-22 05:29:56.1477
2901	1801	2015-04-13 16:21:00	2015-06-22 05:29:59.850367	2015-06-22 05:29:59.850367
2902	1802	2015-04-13 16:35:00	2015-06-22 05:30:00.262847	2015-06-22 05:30:00.262847
2903	1803	2015-04-13 19:30:00	2015-06-22 05:30:05.285194	2015-06-22 05:30:05.285194
2904	1802	2015-04-13 19:57:00	2015-06-22 05:30:06.174102	2015-06-22 05:30:06.174102
2905	1804	2015-04-13 20:13:00	2015-06-22 05:30:06.676952	2015-06-22 05:30:06.676952
2906	1805	2015-04-13 20:41:00	2015-06-22 05:30:07.474808	2015-06-22 05:30:07.474808
2907	1802	2015-04-13 20:55:00	2015-06-22 05:30:07.896709	2015-06-22 05:30:07.896709
2908	1806	2015-04-13 21:01:00	2015-06-22 05:30:08.074428	2015-06-22 05:30:08.074428
2909	1807	2015-04-13 22:18:00	2015-06-22 05:30:10.553924	2015-06-22 05:30:10.553924
2910	1806	2015-04-13 22:46:00	2015-06-22 05:30:11.607056	2015-06-22 05:30:11.607056
2911	1807	2015-04-13 23:09:00	2015-06-22 05:30:12.275321	2015-06-22 05:30:12.275321
2912	1808	2015-04-13 23:10:00	2015-06-22 05:30:12.308557	2015-06-22 05:30:12.308557
2913	1809	2015-04-14 00:45:00	2015-06-22 05:30:15.275723	2015-06-22 05:30:15.275723
2914	1810	2015-04-14 02:08:00	2015-06-22 05:30:17.804742	2015-06-22 05:30:17.804742
2915	1811	2015-04-14 05:15:00	2015-06-22 05:30:24.009776	2015-06-22 05:30:24.009776
2916	1812	2015-04-14 06:57:00	2015-06-22 05:30:27.134917	2015-06-22 05:30:27.134917
2917	1811	2015-04-14 07:01:00	2015-06-22 05:30:27.252867	2015-06-22 05:30:27.252867
2918	1813	2015-04-14 07:19:00	2015-06-22 05:30:27.957605	2015-06-22 05:30:27.957605
2919	1814	2015-04-14 09:33:00	2015-06-22 05:30:32.091928	2015-06-22 05:30:32.091928
2920	1815	2015-04-14 10:45:00	2015-06-22 05:30:34.217728	2015-06-22 05:30:34.217728
2921	1816	2015-04-14 10:49:00	2015-06-22 05:30:34.328277	2015-06-22 05:30:34.328277
2922	1817	2015-04-14 11:05:00	2015-06-22 05:30:34.981721	2015-06-22 05:30:34.981721
2923	1818	2015-04-14 12:47:00	2015-06-22 05:30:38.153037	2015-06-22 05:30:38.153037
2924	1819	2015-04-14 13:39:00	2015-06-22 05:30:39.799407	2015-06-22 05:30:39.799407
2925	1820	2015-04-14 14:47:00	2015-06-22 05:30:41.984987	2015-06-22 05:30:41.984987
2926	1821	2015-04-14 15:29:00	2015-06-22 05:30:43.374871	2015-06-22 05:30:43.374871
2927	1822	2015-04-14 15:41:00	2015-06-22 05:30:43.727748	2015-06-22 05:30:43.727748
2928	1823	2015-04-14 17:39:00	2015-06-22 05:30:47.665544	2015-06-22 05:30:47.665544
2929	1824	2015-04-14 19:57:00	2015-06-22 05:30:51.971335	2015-06-22 05:30:51.971335
2930	1825	2015-04-14 20:25:00	2015-06-22 05:30:52.691488	2015-06-22 05:30:52.691488
2931	1826	2015-04-14 22:04:00	2015-06-22 05:30:55.694758	2015-06-22 05:30:55.694758
2932	1827	2015-04-15 01:31:00	2015-06-22 05:31:01.869511	2015-06-22 05:31:01.869511
2933	1826	2015-04-15 01:58:00	2015-06-22 05:31:03.380982	2015-06-22 05:31:03.380982
2934	1828	2015-04-15 02:00:00	2015-06-22 05:31:03.465542	2015-06-22 05:31:03.465542
2935	1829	2015-04-15 02:50:00	2015-06-22 05:31:05.329167	2015-06-22 05:31:05.329167
2936	1828	2015-04-15 03:14:00	2015-06-22 05:31:06.653867	2015-06-22 05:31:06.653867
2937	1830	2015-04-15 03:59:00	2015-06-22 05:31:08.132923	2015-06-22 05:31:08.132923
2938	1828	2015-04-15 04:22:00	2015-06-22 05:31:08.980707	2015-06-22 05:31:08.980707
2939	1831	2015-04-15 05:22:00	2015-06-22 05:31:10.984676	2015-06-22 05:31:10.984676
2940	1832	2015-04-15 05:34:00	2015-06-22 05:31:11.352174	2015-06-22 05:31:11.352174
2941	1833	2015-04-15 07:42:00	2015-06-22 05:31:15.23679	2015-06-22 05:31:15.23679
2942	1834	2015-04-15 08:38:00	2015-06-22 05:31:16.917106	2015-06-22 05:31:16.917106
2943	1835	2015-04-15 08:40:00	2015-06-22 05:31:16.971167	2015-06-22 05:31:16.971167
2944	1836	2015-04-15 10:56:00	2015-06-22 05:31:21.052493	2015-06-22 05:31:21.052493
2945	1837	2015-04-15 13:50:00	2015-06-22 05:31:26.597577	2015-06-22 05:31:26.597577
2946	1838	2015-04-15 16:22:00	2015-06-22 05:31:31.739842	2015-06-22 05:31:31.739842
2947	1837	2015-04-15 16:32:00	2015-06-22 05:31:32.074508	2015-06-22 05:31:32.074508
2948	1839	2015-04-15 18:54:00	2015-06-22 05:31:36.734617	2015-06-22 05:31:36.734617
2949	1840	2015-04-15 20:03:00	2015-06-22 05:31:38.901413	2015-06-22 05:31:38.901413
2950	1839	2015-04-15 20:15:00	2015-06-22 05:31:39.253518	2015-06-22 05:31:39.253518
2951	1841	2015-04-16 02:50:00	2015-06-23 07:27:54.22368	2015-06-23 07:27:54.22368
2952	1842	2015-04-16 06:17:00	2015-06-23 07:28:04.523205	2015-06-23 07:28:04.523205
2953	1841	2015-04-16 06:19:00	2015-06-23 07:28:04.637867	2015-06-23 07:28:04.637867
2954	1842	2015-04-16 06:21:00	2015-06-23 07:28:04.751284	2015-06-23 07:28:04.751284
2955	1843	2015-04-16 10:25:00	2015-06-23 07:28:18.942997	2015-06-23 07:28:18.942997
2956	1844	2015-04-16 14:33:00	2015-06-23 07:28:33.497651	2015-06-23 07:28:33.497651
2957	1845	2015-04-16 14:51:00	2015-06-23 07:28:34.936309	2015-06-23 07:28:34.936309
2958	1846	2015-04-16 15:11:00	2015-06-23 07:28:35.877144	2015-06-23 07:28:35.877144
2959	1847	2015-04-16 15:51:00	2015-06-23 07:28:38.178416	2015-06-23 07:28:38.178416
2960	1848	2015-04-16 16:44:00	2015-06-23 07:28:40.382255	2015-06-23 07:28:40.382255
2961	1849	2015-04-16 18:04:00	2015-06-23 07:28:45.293059	2015-06-23 07:28:45.293059
2962	1848	2015-04-16 18:27:00	2015-06-23 07:28:46.554508	2015-06-23 07:28:46.554508
2963	1850	2015-04-16 19:05:00	2015-06-23 07:28:48.616378	2015-06-23 07:28:48.616378
2964	1847	2015-04-16 19:25:00	2015-06-23 07:28:49.497268	2015-06-23 07:28:49.497268
2965	1851	2015-04-16 19:39:00	2015-06-23 07:28:50.158861	2015-06-23 07:28:50.158861
2966	1852	2015-04-16 19:41:00	2015-06-23 07:28:50.238826	2015-06-23 07:28:50.238826
2967	1853	2015-04-16 20:46:00	2015-06-23 07:28:53.210541	2015-06-23 07:28:53.210541
2968	1854	2015-04-16 22:01:00	2015-06-23 07:28:56.420124	2015-06-23 07:28:56.420124
2969	1853	2015-04-16 23:05:00	2015-06-23 07:28:59.797922	2015-06-23 07:28:59.797922
2970	1855	2015-04-16 23:59:00	2015-06-23 07:29:02.124776	2015-06-23 07:29:02.124776
2971	1853	2015-04-17 00:13:00	2015-06-23 07:29:02.900237	2015-06-23 07:29:02.900237
2972	1856	2015-04-17 03:05:00	2015-06-23 07:29:10.326133	2015-06-23 07:29:10.326133
2973	1853	2015-04-17 03:07:00	2015-06-23 07:29:10.403548	2015-06-23 07:29:10.403548
2974	1856	2015-04-17 03:11:00	2015-06-23 07:29:10.553737	2015-06-23 07:29:10.553737
2975	1853	2015-04-17 04:33:00	2015-06-23 07:29:14.048609	2015-06-23 07:29:14.048609
2976	1856	2015-04-17 05:10:00	2015-06-23 07:29:15.707829	2015-06-23 07:29:15.707829
2977	1853	2015-04-17 05:12:00	2015-06-23 07:29:15.79695	2015-06-23 07:29:15.79695
2978	1857	2015-04-17 05:31:00	2015-06-23 07:29:17.15707	2015-06-23 07:29:17.15707
2979	1858	2015-04-17 05:53:00	2015-06-23 07:29:18.502578	2015-06-23 07:29:18.502578
2980	1859	2015-04-17 08:19:00	2015-06-23 07:29:24.90777	2015-06-23 07:29:24.90777
2981	1860	2015-04-17 11:38:00	2015-06-23 07:29:34.666601	2015-06-23 07:29:34.666601
2982	1861	2015-04-17 14:51:00	2015-06-23 07:29:43.641614	2015-06-23 07:29:43.641614
2983	1862	2015-04-17 17:06:00	2015-06-23 07:29:49.721478	2015-06-23 07:29:49.721478
2984	1863	2015-04-17 18:39:00	2015-06-23 07:29:54.593263	2015-06-23 07:29:54.593263
2985	1864	2015-04-17 18:53:00	2015-06-23 07:29:55.417388	2015-06-23 07:29:55.417388
2986	1865	2015-04-17 19:00:00	2015-06-23 07:29:55.664539	2015-06-23 07:29:55.664539
2987	1864	2015-04-17 19:12:00	2015-06-23 07:29:56.436141	2015-06-23 07:29:56.436141
2988	1866	2015-04-17 20:04:00	2015-06-23 07:29:58.848558	2015-06-23 07:29:58.848558
2989	1867	2015-04-17 20:08:00	2015-06-23 07:29:58.992516	2015-06-23 07:29:58.992516
2990	1866	2015-04-17 20:22:00	2015-06-23 07:29:59.584747	2015-06-23 07:29:59.584747
2991	1867	2015-04-17 20:24:00	2015-06-23 07:29:59.657258	2015-06-23 07:29:59.657258
2992	1866	2015-04-17 20:58:00	2015-06-23 07:30:01.79741	2015-06-23 07:30:01.79741
2993	1868	2015-04-17 21:22:00	2015-06-23 07:30:03.203501	2015-06-23 07:30:03.203501
2994	1869	2015-04-17 22:59:00	2015-06-23 07:30:08.771762	2015-06-23 07:30:08.771762
2995	1868	2015-04-17 23:01:00	2015-06-23 07:30:08.870564	2015-06-23 07:30:08.870564
2996	1869	2015-04-17 23:05:00	2015-06-23 07:30:09.039176	2015-06-23 07:30:09.039176
2997	1868	2015-04-17 23:38:00	2015-06-23 07:30:10.570664	2015-06-23 07:30:10.570664
2998	1870	2015-04-18 00:32:00	2015-06-23 07:30:12.984726	2015-06-23 07:30:12.984726
2999	1871	2015-04-18 08:34:00	2015-06-23 07:30:34.580804	2015-06-23 07:30:34.580804
3000	1870	2015-04-18 10:53:00	2015-06-23 07:30:40.502231	2015-06-23 07:30:40.502231
3001	1872	2015-04-18 11:03:00	2015-06-23 07:30:40.968365	2015-06-23 07:30:40.968365
3002	1873	2015-04-18 15:01:00	2015-06-23 07:30:52.12405	2015-06-23 07:30:52.12405
3003	1874	2015-04-18 15:27:00	2015-06-23 07:30:53.198434	2015-06-23 07:30:53.198434
3004	1875	2015-04-18 15:45:00	2015-06-23 07:30:53.931068	2015-06-23 07:30:53.931068
3005	1874	2015-04-18 15:49:00	2015-06-23 07:30:54.062453	2015-06-23 07:30:54.062453
3006	1876	2015-04-18 18:37:00	2015-06-23 07:31:02.556151	2015-06-23 07:31:02.556151
3007	1874	2015-04-18 20:04:00	2015-06-23 07:31:07.187469	2015-06-23 07:31:07.187469
3008	1877	2015-04-18 20:08:00	2015-06-23 07:31:07.331568	2015-06-23 07:31:07.331568
3009	1878	2015-04-18 20:16:00	2015-06-23 07:31:08.000794	2015-06-23 07:31:08.000794
3010	1877	2015-04-18 20:22:00	2015-06-23 07:31:08.255068	2015-06-23 07:31:08.255068
3011	1878	2015-04-18 20:36:00	2015-06-23 07:31:08.782138	2015-06-23 07:31:08.782138
3012	1879	2015-04-19 00:38:00	2015-06-23 07:31:20.171385	2015-06-23 07:31:20.171385
3013	1880	2015-04-19 04:22:00	2015-06-23 07:31:30.016705	2015-06-23 07:31:30.016705
3014	1881	2015-04-19 05:57:00	2015-06-23 07:31:34.541096	2015-06-23 07:31:34.541096
3015	1880	2015-04-19 07:12:00	2015-06-23 07:31:37.737307	2015-06-23 07:31:37.737307
3016	1879	2015-04-19 07:18:00	2015-06-23 07:31:38.105647	2015-06-23 07:31:38.105647
3017	1880	2015-04-19 07:20:00	2015-06-23 07:31:38.191826	2015-06-23 07:31:38.191826
3018	1879	2015-04-19 07:24:00	2015-06-23 07:31:38.359035	2015-06-23 07:31:38.359035
3019	1882	2015-04-19 08:30:00	2015-06-23 07:31:42.072711	2015-06-23 07:31:42.072711
3020	1883	2015-04-19 11:56:00	2015-06-23 07:31:51.593345	2015-06-23 07:31:51.593345
3021	1882	2015-04-19 11:58:00	2015-06-23 07:31:51.677193	2015-06-23 07:31:51.677193
3022	1883	2015-04-19 12:14:00	2015-06-23 07:31:52.433168	2015-06-23 07:31:52.433168
3023	1884	2015-04-19 12:22:00	2015-06-23 07:31:52.719493	2015-06-23 07:31:52.719493
3024	1885	2015-04-19 15:20:00	2015-06-23 07:32:00.641267	2015-06-23 07:32:00.641267
3025	1884	2015-04-19 15:34:00	2015-06-23 07:32:01.146711	2015-06-23 07:32:01.146711
3026	1886	2015-04-19 15:52:00	2015-06-23 07:32:02.027417	2015-06-23 07:32:02.027417
3027	1887	2015-04-19 15:56:00	2015-06-23 07:32:02.19226	2015-06-23 07:32:02.19226
3028	1888	2015-04-19 16:23:00	2015-06-23 07:32:03.317721	2015-06-23 07:32:03.317721
3029	1889	2015-04-19 22:35:00	2015-06-23 07:32:21.369671	2015-06-23 07:32:21.369671
3030	1890	2015-04-19 23:42:00	2015-06-23 07:32:24.894212	2015-06-23 07:32:24.894212
3031	1891	2015-04-20 09:41:00	2015-06-23 07:32:54.513958	2015-06-23 07:32:54.513958
3032	1890	2015-04-20 12:21:00	2015-06-23 07:33:02.609955	2015-06-23 07:33:02.609955
3033	1892	2015-04-20 12:39:00	2015-06-23 07:33:03.526818	2015-06-23 07:33:03.526818
3034	1890	2015-04-20 12:43:00	2015-06-23 07:33:03.720283	2015-06-23 07:33:03.720283
3035	1892	2015-04-20 12:45:00	2015-06-23 07:33:03.811175	2015-06-23 07:33:03.811175
3036	1893	2015-04-20 13:01:00	2015-06-23 07:33:04.674375	2015-06-23 07:33:04.674375
3037	1892	2015-04-20 13:05:00	2015-06-23 07:33:04.842177	2015-06-23 07:33:04.842177
3038	1893	2015-04-20 13:07:00	2015-06-23 07:33:04.921621	2015-06-23 07:33:04.921621
3039	1894	2015-04-20 15:38:00	2015-06-23 07:33:12.680354	2015-06-23 07:33:12.680354
3040	1895	2015-04-20 15:59:00	2015-06-23 07:33:13.550661	2015-06-23 07:33:13.550661
3041	1896	2015-04-20 18:54:00	2015-06-23 07:33:22.005852	2015-06-23 07:33:22.005852
3042	1897	2015-04-20 19:30:00	2015-06-23 07:33:23.735652	2015-06-23 07:33:23.735652
3043	1896	2015-04-20 20:13:00	2015-06-23 07:33:25.631877	2015-06-23 07:33:25.631877
3044	1898	2015-04-20 21:43:00	2015-06-23 07:33:29.682862	2015-06-23 07:33:29.682862
3045	1899	2015-04-20 23:48:00	2015-06-23 07:33:35.483471	2015-06-23 07:33:35.483471
3046	1900	2015-04-21 04:31:00	2015-06-23 07:33:49.96635	2015-06-23 07:33:49.96635
3047	1899	2015-04-21 04:39:00	2015-06-23 07:33:50.28474	2015-06-23 07:33:50.28474
3048	1900	2015-04-21 04:41:00	2015-06-23 07:33:50.369834	2015-06-23 07:33:50.369834
3049	1899	2015-04-21 04:44:00	2015-06-23 07:33:50.653643	2015-06-23 07:33:50.653643
3050	1901	2015-04-21 06:26:00	2015-06-23 07:33:55.6035	2015-06-23 07:33:55.6035
3051	1899	2015-04-21 06:28:00	2015-06-23 07:33:55.695183	2015-06-23 07:33:55.695183
3052	1902	2015-04-21 07:06:00	2015-06-23 07:33:57.492715	2015-06-23 07:33:57.492715
3053	1903	2015-04-21 11:16:00	2015-06-23 07:34:10.141843	2015-06-23 07:34:10.141843
3054	1904	2015-04-21 14:56:00	2015-06-23 07:34:21.194717	2015-06-23 07:34:21.194717
3055	1905	2015-04-21 15:20:00	2015-06-23 07:34:22.118568	2015-06-23 07:34:22.118568
3056	1904	2015-04-21 15:22:00	2015-06-23 07:34:22.340104	2015-06-23 07:34:22.340104
3057	1906	2015-04-21 15:47:00	2015-06-23 07:34:23.401261	2015-06-23 07:34:23.401261
3058	1907	2015-04-21 17:50:00	2015-06-23 07:34:29.561169	2015-06-23 07:34:29.561169
3059	1908	2015-04-21 19:14:00	2015-06-23 07:34:33.691749	2015-06-23 07:34:33.691749
3060	1907	2015-04-21 19:25:00	2015-06-23 07:34:34.145365	2015-06-23 07:34:34.145365
3061	1909	2015-04-21 20:26:00	2015-06-23 07:34:37.264475	2015-06-23 07:34:37.264475
3062	1910	2015-04-21 23:36:00	2015-06-23 07:34:47.344513	2015-06-23 07:34:47.344513
3063	1911	2015-04-22 08:25:00	2015-06-23 07:35:17.441407	2015-06-23 07:35:17.441407
3064	1910	2015-04-22 09:43:00	2015-06-23 07:35:21.536763	2015-06-23 07:35:21.536763
3065	1912	2015-04-22 09:51:00	2015-06-23 07:35:21.906028	2015-06-23 07:35:21.906028
3066	1913	2015-04-22 13:23:00	2015-06-23 07:35:35.173805	2015-06-23 07:35:35.173805
3067	1912	2015-04-22 15:17:00	2015-06-23 07:35:41.496184	2015-06-23 07:35:41.496184
3068	1914	2015-04-22 16:24:00	2015-06-23 07:35:46.01236	2015-06-23 07:35:46.01236
3069	1912	2015-04-22 17:02:00	2015-06-23 07:35:48.296342	2015-06-23 07:35:48.296342
3070	1915	2015-04-22 17:42:00	2015-06-23 07:35:50.77944	2015-06-23 07:35:50.77944
3071	1916	2015-04-23 10:01:00	2015-06-23 07:36:47.591591	2015-06-23 07:36:47.591591
3072	1917	2015-04-23 11:03:00	2015-06-23 07:36:50.9657	2015-06-23 07:36:50.9657
3073	1918	2015-04-23 12:10:00	2015-06-23 07:36:54.877305	2015-06-23 07:36:54.877305
3074	1919	2015-04-23 12:14:00	2015-06-23 07:36:55.127244	2015-06-23 07:36:55.127244
3075	1918	2015-04-23 12:18:00	2015-06-23 07:36:55.341545	2015-06-23 07:36:55.341545
3076	1920	2015-04-23 14:03:00	2015-06-23 07:37:01.074139	2015-06-23 07:37:01.074139
3077	1918	2015-04-23 14:17:00	2015-06-23 07:37:01.829861	2015-06-23 07:37:01.829861
3078	1921	2015-04-23 14:19:00	2015-06-23 07:37:01.920765	2015-06-23 07:37:01.920765
3079	1920	2015-04-23 14:23:00	2015-06-23 07:37:02.106865	2015-06-23 07:37:02.106865
3080	1921	2015-04-23 14:55:00	2015-06-23 07:37:03.807088	2015-06-23 07:37:03.807088
3081	1922	2015-04-23 16:10:00	2015-06-23 07:37:08.548298	2015-06-23 07:37:08.548298
3082	1921	2015-04-23 16:30:00	2015-06-23 07:37:10.004291	2015-06-23 07:37:10.004291
3083	1923	2015-04-23 16:42:00	2015-06-23 07:37:10.750852	2015-06-23 07:37:10.750852
3084	1921	2015-04-23 16:44:00	2015-06-23 07:37:10.856587	2015-06-23 07:37:10.856587
3085	1923	2015-04-23 16:53:00	2015-06-23 07:37:11.579518	2015-06-23 07:37:11.579518
3086	1924	2015-04-23 17:09:00	2015-06-23 07:37:12.866029	2015-06-23 07:37:12.866029
3087	1925	2015-04-23 17:23:00	2015-06-23 07:37:13.976088	2015-06-23 07:37:13.976088
3088	1926	2015-04-23 18:59:00	2015-06-23 07:37:19.598403	2015-06-23 07:37:19.598403
3089	1925	2015-04-23 19:01:00	2015-06-23 07:37:19.76485	2015-06-23 07:37:19.76485
3090	1927	2015-04-23 19:23:00	2015-06-23 07:37:20.825191	2015-06-23 07:37:20.825191
3091	1925	2015-04-23 19:39:00	2015-06-23 07:37:21.718558	2015-06-23 07:37:21.718558
3092	1928	2015-04-23 19:49:00	2015-06-23 07:37:22.21002	2015-06-23 07:37:22.21002
3093	1929	2015-04-23 21:49:00	2015-06-23 07:37:29.072815	2015-06-23 07:37:29.072815
3094	1930	2015-04-24 01:05:00	2015-06-23 07:37:39.815647	2015-06-23 07:37:39.815647
3095	1932	2015-04-24 03:13:00	2015-06-23 07:49:48.902214	2015-06-23 07:49:48.902214
3096	1930	2015-04-24 03:15:00	2015-06-23 07:49:48.971848	2015-06-23 07:49:48.971848
3097	1933	2015-04-24 04:03:00	2015-06-23 07:49:50.834088	2015-06-23 07:49:50.834088
3098	1934	2015-04-24 05:15:00	2015-06-23 07:49:54.174343	2015-06-23 07:49:54.174343
3099	1935	2015-04-24 09:07:00	2015-06-23 07:50:04.664666	2015-06-23 07:50:04.664666
3100	1936	2015-04-24 11:27:00	2015-06-23 07:50:10.614731	2015-06-23 07:50:10.614731
3101	1937	2015-04-24 15:15:00	2015-06-23 07:50:20.629396	2015-06-23 07:50:20.629396
3102	1938	2015-04-24 17:35:00	2015-06-23 07:50:27.419012	2015-06-23 07:50:27.419012
3103	1937	2015-04-24 17:41:00	2015-06-23 07:50:27.722155	2015-06-23 07:50:27.722155
3104	1939	2015-04-24 18:07:00	2015-06-23 07:50:28.819006	2015-06-23 07:50:28.819006
3105	1937	2015-04-24 18:09:00	2015-06-23 07:50:28.89889	2015-06-23 07:50:28.89889
3106	1939	2015-04-24 18:11:00	2015-06-23 07:50:28.973676	2015-06-23 07:50:28.973676
3107	1937	2015-04-25 00:34:00	2015-06-23 07:50:45.538532	2015-06-23 07:50:45.538532
3108	1940	2015-04-25 01:07:00	2015-06-23 07:50:46.874025	2015-06-23 07:50:46.874025
3109	1941	2015-04-25 02:39:00	2015-06-23 07:50:50.565022	2015-06-23 07:50:50.565022
3110	1942	2015-04-25 06:27:00	2015-06-23 07:51:00.426428	2015-06-23 07:51:00.426428
3111	1941	2015-04-25 06:29:00	2015-06-23 07:51:00.565055	2015-06-23 07:51:00.565055
3112	1943	2015-04-25 08:36:00	2015-06-23 07:51:06.038927	2015-06-23 07:51:06.038927
3113	1941	2015-04-25 09:33:00	2015-06-23 07:51:09.157403	2015-06-23 07:51:09.157403
3114	1944	2015-04-25 10:05:00	2015-06-23 07:51:11.350292	2015-06-23 07:51:11.350292
3115	1945	2015-04-25 10:15:00	2015-06-23 07:51:11.854817	2015-06-23 07:51:11.854817
3116	1944	2015-04-25 10:27:00	2015-06-23 07:51:12.343191	2015-06-23 07:51:12.343191
3117	1946	2015-04-25 11:23:00	2015-06-23 07:51:14.480351	2015-06-23 07:51:14.480351
3118	1944	2015-04-25 11:25:00	2015-06-23 07:51:14.553968	2015-06-23 07:51:14.553968
3119	1946	2015-04-25 11:29:00	2015-06-23 07:51:14.869823	2015-06-23 07:51:14.869823
3120	1947	2015-04-25 17:33:00	2015-06-23 07:51:30.180534	2015-06-23 07:51:30.180534
3121	1946	2015-04-25 17:45:00	2015-06-23 07:51:30.602577	2015-06-23 07:51:30.602577
3122	1947	2015-04-25 17:47:00	2015-06-23 07:51:30.774184	2015-06-23 07:51:30.774184
3123	1946	2015-04-25 17:51:00	2015-06-23 07:51:30.947409	2015-06-23 07:51:30.947409
3124	1947	2015-04-25 18:17:00	2015-06-23 07:51:31.969816	2015-06-23 07:51:31.969816
3125	1946	2015-04-25 18:19:00	2015-06-23 07:51:32.037068	2015-06-23 07:51:32.037068
3126	1948	2015-04-25 18:23:00	2015-06-23 07:51:32.15599	2015-06-23 07:51:32.15599
3127	1949	2015-04-25 18:33:00	2015-06-23 07:51:32.477146	2015-06-23 07:51:32.477146
3128	1950	2015-04-25 18:35:00	2015-06-23 07:51:32.636575	2015-06-23 07:51:32.636575
3129	1951	2015-04-25 23:22:00	2015-06-23 07:51:44.678285	2015-06-23 07:51:44.678285
3130	1952	2015-04-26 01:12:00	2015-06-23 07:51:50.140665	2015-06-23 07:51:50.140665
3131	1953	2015-04-26 03:04:00	2015-06-23 07:51:55.635468	2015-06-23 07:51:55.635468
3132	1954	2015-04-26 03:42:00	2015-06-23 07:51:57.363449	2015-06-23 07:51:57.363449
3133	1952	2015-04-26 03:48:00	2015-06-23 07:51:57.584921	2015-06-23 07:51:57.584921
3134	1954	2015-04-26 04:00:00	2015-06-23 07:51:58.180646	2015-06-23 07:51:58.180646
3135	1952	2015-04-26 04:26:00	2015-06-23 07:51:59.254413	2015-06-23 07:51:59.254413
3136	1955	2015-04-26 04:36:00	2015-06-23 07:51:59.616658	2015-06-23 07:51:59.616658
3137	1956	2015-04-26 06:01:00	2015-06-23 07:52:03.199871	2015-06-23 07:52:03.199871
3138	1955	2015-04-26 06:07:00	2015-06-23 07:52:03.395256	2015-06-23 07:52:03.395256
3139	1956	2015-04-26 06:13:00	2015-06-23 07:52:03.595104	2015-06-23 07:52:03.595104
3140	1953	2015-04-26 07:51:00	2015-06-23 07:52:07.70937	2015-06-23 07:52:07.70937
3141	1957	2015-04-26 09:39:00	2015-06-23 07:52:12.949592	2015-06-23 07:52:12.949592
3142	1958	2015-04-26 11:55:00	2015-06-23 07:52:18.820681	2015-06-23 07:52:18.820681
3143	1959	2015-04-26 15:14:00	2015-06-23 07:52:27.469253	2015-06-23 07:52:27.469253
3144	1960	2015-04-26 17:01:00	2015-06-23 07:52:32.076549	2015-06-23 07:52:32.076549
3145	1961	2015-04-27 01:27:00	2015-06-23 07:52:54.936275	2015-06-23 07:52:54.936275
3146	1962	2015-04-27 07:34:00	2015-06-23 07:53:10.773456	2015-06-23 07:53:10.773456
3147	1963	2015-04-27 13:26:00	2015-06-23 07:53:28.199768	2015-06-23 07:53:28.199768
3148	1964	2015-04-27 16:14:00	2015-06-23 07:53:36.766321	2015-06-23 07:53:36.766321
3149	1965	2015-04-27 17:48:00	2015-06-23 07:53:40.597962	2015-06-23 07:53:40.597962
3150	1966	2015-04-27 20:14:00	2015-06-23 07:53:47.793684	2015-06-23 07:53:47.793684
3151	1967	2015-04-28 08:02:00	2015-06-23 07:54:21.076242	2015-06-23 07:54:21.076242
3152	1968	2015-04-28 11:34:00	2015-06-23 07:54:31.020841	2015-06-23 07:54:31.020841
3153	1969	2015-04-28 12:12:00	2015-06-23 07:54:32.71616	2015-06-23 07:54:32.71616
3154	1968	2015-04-28 12:38:00	2015-06-23 07:54:33.874004	2015-06-23 07:54:33.874004
3155	1970	2015-04-28 12:46:00	2015-06-23 07:54:34.301215	2015-06-23 07:54:34.301215
3156	1969	2015-04-28 12:58:00	2015-06-23 07:54:34.762164	2015-06-23 07:54:34.762164
3157	1971	2015-04-28 13:16:00	2015-06-23 07:54:35.543351	2015-06-23 07:54:35.543351
3158	1972	2015-04-28 14:06:00	2015-06-23 07:54:38.709104	2015-06-23 07:54:38.709104
3159	1971	2015-04-28 14:08:00	2015-06-23 07:54:38.806432	2015-06-23 07:54:38.806432
3160	1973	2015-04-28 14:34:00	2015-06-23 07:54:39.92847	2015-06-23 07:54:39.92847
3161	1974	2015-04-28 15:52:00	2015-06-23 07:54:43.694606	2015-06-23 07:54:43.694606
3162	1975	2015-04-28 16:15:00	2015-06-23 07:54:44.609482	2015-06-23 07:54:44.609482
3163	1976	2015-04-28 17:10:00	2015-06-23 07:54:47.138029	2015-06-23 07:54:47.138029
3164	1977	2015-04-28 17:26:00	2015-06-23 07:54:48.067765	2015-06-23 07:54:48.067765
3165	1976	2015-04-28 17:28:00	2015-06-23 07:54:48.214653	2015-06-23 07:54:48.214653
3166	1977	2015-04-28 17:34:00	2015-06-23 07:54:48.558241	2015-06-23 07:54:48.558241
3167	1978	2015-04-28 19:38:00	2015-06-23 07:54:55.874495	2015-06-23 07:54:55.874495
3168	1977	2015-04-28 19:48:00	2015-06-23 07:54:56.323039	2015-06-23 07:54:56.323039
3169	1978	2015-04-28 19:54:00	2015-06-23 07:54:56.562147	2015-06-23 07:54:56.562147
3170	1979	2015-04-29 03:00:00	2015-06-23 07:55:16.866643	2015-06-23 07:55:16.866643
3171	1978	2015-04-29 03:44:00	2015-06-23 07:55:18.996091	2015-06-23 07:55:18.996091
3172	1980	2015-04-29 08:07:00	2015-06-23 07:55:32.839275	2015-06-23 07:55:32.839275
3173	1981	2015-04-29 12:35:00	2015-06-23 07:55:45.776382	2015-06-23 07:55:45.776382
3174	1980	2015-04-29 13:15:00	2015-06-23 07:55:47.677451	2015-06-23 07:55:47.677451
3175	1982	2015-04-29 13:52:00	2015-06-23 07:55:49.359575	2015-06-23 07:55:49.359575
3176	1983	2015-04-29 14:18:00	2015-06-23 07:55:50.422828	2015-06-23 07:55:50.422828
3177	1984	2015-04-29 14:42:00	2015-06-23 07:55:51.506054	2015-06-23 07:55:51.506054
3178	1982	2015-04-29 14:46:00	2015-06-23 07:55:51.810846	2015-06-23 07:55:51.810846
3179	1984	2015-04-29 14:50:00	2015-06-23 07:55:52.045929	2015-06-23 07:55:52.045929
3180	1985	2015-04-29 16:27:00	2015-06-23 07:55:56.851312	2015-06-23 07:55:56.851312
3181	1986	2015-04-30 04:28:00	2015-06-23 07:56:35.011987	2015-06-23 07:56:35.011987
3182	1985	2015-04-30 04:29:00	2015-06-23 07:56:35.05519	2015-06-23 07:56:35.05519
3183	1986	2015-04-30 04:39:00	2015-06-23 07:56:35.428277	2015-06-23 07:56:35.428277
3184	1985	2015-04-30 04:46:00	2015-06-23 07:56:35.667872	2015-06-23 07:56:35.667872
3185	1986	2015-04-30 04:48:00	2015-06-23 07:56:35.734297	2015-06-23 07:56:35.734297
3186	1985	2015-04-30 04:50:00	2015-06-23 07:56:35.904878	2015-06-23 07:56:35.904878
3187	1987	2015-04-30 08:40:00	2015-06-23 07:56:48.338857	2015-06-23 07:56:48.338857
3188	1988	2015-04-30 10:00:00	2015-06-23 07:56:52.244334	2015-06-23 07:56:52.244334
3189	1989	2015-04-30 10:04:00	2015-06-23 07:56:52.627156	2015-06-23 07:56:52.627156
3190	1990	2015-04-30 12:21:00	2015-06-23 07:57:00.379944	2015-06-23 07:57:00.379944
3191	1991	2015-04-30 16:39:00	2015-06-23 08:03:37.29868	2015-06-23 08:03:37.29868
3192	1992	2015-04-30 23:53:00	2015-06-23 08:03:57.44745	2015-06-23 08:03:57.44745
3193	1991	2015-05-01 00:23:00	2015-06-23 08:03:58.88173	2015-06-23 08:03:58.88173
3194	1993	2015-05-01 03:44:00	2015-06-23 08:04:08.138311	2015-06-23 08:04:08.138311
3195	1994	2015-05-01 04:24:00	2015-06-23 08:04:09.902752	2015-06-23 08:04:09.902752
3196	1995	2015-05-01 14:10:00	2015-06-23 08:04:36.770193	2015-06-23 08:04:36.770193
3197	1996	2015-05-01 18:47:00	2015-06-23 08:04:49.209021	2015-06-23 08:04:49.209021
3198	1997	2015-05-01 20:31:00	2015-06-23 08:04:54.013562	2015-06-23 08:04:54.013562
3199	1998	2015-05-02 09:33:00	2015-06-23 08:05:30.387053	2015-06-23 08:05:30.387053
3200	1997	2015-05-02 09:45:00	2015-06-23 08:05:30.854591	2015-06-23 08:05:30.854591
3201	1999	2015-05-02 10:12:00	2015-06-23 08:05:32.542316	2015-06-23 08:05:32.542316
3202	2000	2015-05-02 12:09:00	2015-06-23 08:05:37.779897	2015-06-23 08:05:37.779897
3203	1999	2015-05-02 13:37:00	2015-06-23 08:05:41.695873	2015-06-23 08:05:41.695873
3204	2001	2015-05-02 14:02:00	2015-06-23 08:05:43.135343	2015-06-23 08:05:43.135343
3205	1999	2015-05-02 14:12:00	2015-06-23 08:05:43.810576	2015-06-23 08:05:43.810576
3206	2001	2015-05-02 14:14:00	2015-06-23 08:05:43.922349	2015-06-23 08:05:43.922349
3207	1999	2015-05-02 14:16:00	2015-06-23 08:05:44.022262	2015-06-23 08:05:44.022262
3208	2001	2015-05-02 14:22:00	2015-06-23 08:05:44.296815	2015-06-23 08:05:44.296815
3209	1999	2015-05-02 14:32:00	2015-06-23 08:05:44.854995	2015-06-23 08:05:44.854995
3210	2002	2015-05-02 14:46:00	2015-06-23 08:05:45.392682	2015-06-23 08:05:45.392682
3211	1999	2015-05-02 14:48:00	2015-06-23 08:05:45.458893	2015-06-23 08:05:45.458893
3212	2003	2015-05-02 15:20:00	2015-06-23 08:05:47.180343	2015-06-23 08:05:47.180343
3213	2004	2015-05-02 17:16:00	2015-06-23 08:05:54.145986	2015-06-23 08:05:54.145986
3214	2005	2015-05-03 00:11:00	2015-06-23 08:06:13.789095	2015-06-23 08:06:13.789095
3215	2004	2015-05-03 01:08:00	2015-06-23 08:06:16.251189	2015-06-23 08:06:16.251189
3216	2006	2015-05-03 01:16:00	2015-06-23 08:06:16.697647	2015-06-23 08:06:16.697647
3217	2004	2015-05-03 01:24:00	2015-06-23 08:06:17.004088	2015-06-23 08:06:17.004088
3218	2006	2015-05-03 01:36:00	2015-06-23 08:06:17.563303	2015-06-23 08:06:17.563303
3219	2004	2015-05-03 01:40:00	2015-06-23 08:06:17.714618	2015-06-23 08:06:17.714618
3220	2006	2015-05-03 02:04:00	2015-06-23 08:06:18.753109	2015-06-23 08:06:18.753109
3221	2004	2015-05-03 03:08:00	2015-06-23 08:06:21.859767	2015-06-23 08:06:21.859767
3222	2007	2015-05-03 03:26:00	2015-06-23 08:06:22.766221	2015-06-23 08:06:22.766221
3223	2008	2015-05-03 03:44:00	2015-06-23 08:06:23.591718	2015-06-23 08:06:23.591718
3224	2004	2015-05-03 04:40:00	2015-06-23 08:06:26.322508	2015-06-23 08:06:26.322508
3225	2009	2015-05-03 05:40:00	2015-06-23 08:06:28.961292	2015-06-23 08:06:28.961292
3226	2010	2015-05-03 09:16:00	2015-06-23 08:06:38.704508	2015-06-23 08:06:38.704508
3227	2011	2015-05-03 13:18:00	2015-06-23 08:06:49.733102	2015-06-23 08:06:49.733102
3228	2012	2015-05-03 13:48:00	2015-06-23 08:06:50.942562	2015-06-23 08:06:50.942562
3229	2013	2015-05-03 15:17:00	2015-06-23 08:06:54.637065	2015-06-23 08:06:54.637065
3230	2014	2015-05-03 19:31:00	2015-06-23 08:07:05.534506	2015-06-23 08:07:05.534506
3231	2015	2015-05-03 20:33:00	2015-06-23 08:07:07.920525	2015-06-23 08:07:07.920525
3232	2016	2015-05-04 00:56:00	2015-06-23 08:07:18.664955	2015-06-23 08:07:18.664955
3233	2015	2015-05-04 01:26:00	2015-06-23 08:07:20.056382	2015-06-23 08:07:20.056382
3234	2017	2015-05-04 02:32:00	2015-06-23 08:07:22.916346	2015-06-23 08:07:22.916346
3235	2015	2015-05-04 02:44:00	2015-06-23 08:07:23.376665	2015-06-23 08:07:23.376665
3236	2017	2015-05-04 03:00:00	2015-06-23 08:07:24.098008	2015-06-23 08:07:24.098008
3237	2018	2015-05-04 03:14:00	2015-06-23 08:07:24.608012	2015-06-23 08:07:24.608012
3238	2017	2015-05-04 03:27:00	2015-06-23 08:07:25.192184	2015-06-23 08:07:25.192184
3239	2019	2015-05-04 03:55:00	2015-06-23 08:07:26.339487	2015-06-23 08:07:26.339487
3240	2020	2015-05-04 05:30:00	2015-06-23 08:07:30.798841	2015-06-23 08:07:30.798841
3241	2021	2015-05-04 05:34:00	2015-06-23 08:07:31.116188	2015-06-23 08:07:31.116188
3242	2019	2015-05-04 05:38:00	2015-06-23 08:07:31.312547	2015-06-23 08:07:31.312547
3243	2021	2015-05-04 05:42:00	2015-06-23 08:07:31.481379	2015-06-23 08:07:31.481379
3244	2022	2015-05-04 08:48:00	2015-06-23 08:07:40.314517	2015-06-23 08:07:40.314517
3245	2021	2015-05-04 08:50:00	2015-06-23 08:07:40.39174	2015-06-23 08:07:40.39174
3246	2022	2015-05-04 08:52:00	2015-06-23 08:07:40.46575	2015-06-23 08:07:40.46575
3247	2023	2015-05-04 10:26:00	2015-06-23 08:07:45.046217	2015-06-23 08:07:45.046217
3248	2024	2015-05-04 10:52:00	2015-06-23 08:07:46.13731	2015-06-23 08:07:46.13731
3249	2025	2015-05-04 14:34:00	2015-06-23 08:07:55.993855	2015-06-23 08:07:55.993855
3250	2026	2015-05-04 15:32:00	2015-06-23 08:07:58.640285	2015-06-23 08:07:58.640285
3251	2025	2015-05-04 15:42:00	2015-06-23 08:07:59.207892	2015-06-23 08:07:59.207892
3252	2026	2015-05-04 15:51:00	2015-06-23 08:07:59.533083	2015-06-23 08:07:59.533083
3253	2025	2015-05-04 15:57:00	2015-06-23 08:07:59.769574	2015-06-23 08:07:59.769574
3254	2026	2015-05-04 16:03:00	2015-06-23 08:08:00.151103	2015-06-23 08:08:00.151103
3255	2025	2015-05-04 16:10:00	2015-06-23 08:08:00.43982	2015-06-23 08:08:00.43982
3256	2026	2015-05-04 16:18:00	2015-06-23 08:08:00.754929	2015-06-23 08:08:00.754929
3257	2027	2015-05-04 18:16:00	2015-06-23 08:08:06.877961	2015-06-23 08:08:06.877961
3258	2026	2015-05-04 18:20:00	2015-06-23 08:08:07.045399	2015-06-23 08:08:07.045399
3259	2028	2015-05-04 18:22:00	2015-06-23 08:08:07.124495	2015-06-23 08:08:07.124495
3260	2026	2015-05-04 18:24:00	2015-06-23 08:08:07.202653	2015-06-23 08:08:07.202653
3261	2029	2015-05-04 18:28:00	2015-06-23 08:08:07.46742	2015-06-23 08:08:07.46742
3262	2030	2015-05-04 18:46:00	2015-06-23 08:08:08.181004	2015-06-23 08:08:08.181004
3263	2031	2015-05-04 20:16:00	2015-06-23 08:08:12.396563	2015-06-23 08:08:12.396563
3264	2030	2015-05-04 20:34:00	2015-06-23 08:08:13.363669	2015-06-23 08:08:13.363669
3265	2032	2015-05-04 20:38:00	2015-06-23 08:08:13.632609	2015-06-23 08:08:13.632609
3266	2033	2015-05-05 03:38:00	2015-06-23 08:08:35.026959	2015-06-23 08:08:35.026959
3267	2034	2015-05-05 05:08:00	2015-06-23 08:08:39.756772	2015-06-23 08:08:39.756772
3268	2033	2015-05-05 05:56:00	2015-06-23 08:08:42.61193	2015-06-23 08:08:42.61193
3269	2032	2015-05-05 06:06:00	2015-06-23 08:08:43.10878	2015-06-23 08:08:43.10878
3270	2033	2015-05-05 06:12:00	2015-06-23 08:08:43.346023	2015-06-23 08:08:43.346023
3271	2032	2015-05-05 06:16:00	2015-06-23 08:08:43.499246	2015-06-23 08:08:43.499246
3272	2035	2015-05-05 08:15:00	2015-06-23 08:08:49.053733	2015-06-23 08:08:49.053733
3273	2032	2015-05-05 08:19:00	2015-06-23 08:08:49.211268	2015-06-23 08:08:49.211268
3274	2036	2015-05-05 11:16:00	2015-06-23 08:08:59.165057	2015-06-23 08:08:59.165057
3275	2037	2015-05-05 13:04:00	2015-06-23 08:09:04.262301	2015-06-23 08:09:04.262301
3276	2038	2015-05-05 18:53:00	2015-06-23 08:09:23.148346	2015-06-23 08:09:23.148346
3277	2039	2015-05-05 20:42:00	2015-06-23 08:09:29.066747	2015-06-23 08:09:29.066747
3278	2040	2015-05-06 02:20:00	2015-06-23 08:09:49.622668	2015-06-23 08:09:49.622668
3279	2039	2015-05-06 04:26:00	2015-06-23 08:09:56.303249	2015-06-23 08:09:56.303249
3280	2040	2015-05-06 05:20:00	2015-06-23 08:09:59.293853	2015-06-23 08:09:59.293853
3281	2039	2015-05-06 05:26:00	2015-06-23 08:09:59.562086	2015-06-23 08:09:59.562086
3282	2040	2015-05-06 05:38:00	2015-06-23 08:10:00.045472	2015-06-23 08:10:00.045472
3283	2041	2015-05-06 06:15:00	2015-06-23 08:10:02.094246	2015-06-23 08:10:02.094246
3284	2042	2015-05-06 11:38:00	2015-06-23 08:10:20.932823	2015-06-23 08:10:20.932823
3285	2043	2015-05-06 12:26:00	2015-06-23 08:10:23.642554	2015-06-23 08:10:23.642554
3286	2044	2015-05-06 15:13:00	2015-06-23 08:10:32.733873	2015-06-23 08:10:32.733873
3287	2045	2015-05-06 15:23:00	2015-06-23 08:10:33.253824	2015-06-23 08:10:33.253824
3288	2044	2015-05-06 15:30:00	2015-06-23 08:10:33.537976	2015-06-23 08:10:33.537976
3289	2046	2015-05-06 16:20:00	2015-06-23 08:10:36.556594	2015-06-23 08:10:36.556594
3290	2047	2015-05-06 16:42:00	2015-06-23 08:10:38.096351	2015-06-23 08:10:38.096351
3291	2048	2015-05-06 16:44:00	2015-06-23 08:10:38.403261	2015-06-23 08:10:38.403261
3292	2047	2015-05-06 16:48:00	2015-06-23 08:10:38.665485	2015-06-23 08:10:38.665485
3293	2049	2015-05-06 17:25:00	2015-06-23 08:10:41.231406	2015-06-23 08:10:41.231406
3294	2050	2015-05-06 23:21:00	2015-06-23 08:10:59.73826	2015-06-23 08:10:59.73826
3295	2051	2015-05-07 04:24:00	2015-06-23 08:11:15.898389	2015-06-23 08:11:15.898389
3296	2050	2015-05-07 05:22:00	2015-06-23 08:11:19.507633	2015-06-23 08:11:19.507633
3297	2052	2015-05-07 10:23:00	2015-06-23 08:11:37.462331	2015-06-23 08:11:37.462331
3298	2053	2015-05-07 11:40:00	2015-06-23 08:11:41.485	2015-06-23 08:11:41.485
3299	2054	2015-05-07 12:06:00	2015-06-23 08:11:43.425214	2015-06-23 08:11:43.425214
3300	2055	2015-05-07 14:17:00	2015-06-23 08:11:52.646922	2015-06-23 08:11:52.646922
3301	2056	2015-05-07 16:10:00	2015-06-23 08:11:59.940363	2015-06-23 08:11:59.940363
3302	2055	2015-05-07 16:14:00	2015-06-23 08:12:00.156443	2015-06-23 08:12:00.156443
3303	2057	2015-05-07 16:47:00	2015-06-23 08:12:02.240671	2015-06-23 08:12:02.240671
3304	2058	2015-05-07 18:45:00	2015-06-23 08:12:09.675002	2015-06-23 08:12:09.675002
3305	2059	2015-05-08 04:06:00	2015-06-23 08:12:45.434196	2015-06-23 08:12:45.434196
3306	2060	2015-05-08 14:05:00	2015-06-23 08:13:20.545805	2015-06-23 08:13:20.545805
3307	2061	2015-05-08 17:15:00	2015-06-23 08:13:31.972537	2015-06-23 08:13:31.972537
3308	2062	2015-05-08 20:57:00	2015-06-23 08:13:45.848306	2015-06-23 08:13:45.848306
3309	2061	2015-05-08 21:37:00	2015-06-23 08:13:47.999757	2015-06-23 08:13:47.999757
3310	2063	2015-05-08 22:47:00	2015-06-23 08:13:52.668806	2015-06-23 08:13:52.668806
3311	2064	2015-05-09 01:45:00	2015-06-23 08:14:04.009779	2015-06-23 08:14:04.009779
3312	2065	2015-05-09 03:16:00	2015-06-23 08:14:09.569711	2015-06-23 08:14:09.569711
3313	2066	2015-05-09 03:40:00	2015-06-23 08:14:11.277715	2015-06-23 08:14:11.277715
3314	2067	2015-05-09 12:08:00	2015-06-23 08:14:44.102139	2015-06-23 08:14:44.102139
3315	2068	2015-05-09 15:50:00	2015-06-23 08:14:55.669401	2015-06-23 08:14:55.669401
3316	2069	2015-05-09 16:12:00	2015-06-23 08:14:57.100835	2015-06-23 08:14:57.100835
3317	2068	2015-05-09 16:16:00	2015-06-23 08:14:57.420987	2015-06-23 08:14:57.420987
3318	2070	2015-05-09 16:24:00	2015-06-23 08:14:57.819524	2015-06-23 08:14:57.819524
3319	2068	2015-05-09 16:30:00	2015-06-23 08:14:58.166518	2015-06-23 08:14:58.166518
3320	2071	2015-05-09 17:12:00	2015-06-23 08:15:00.130802	2015-06-23 08:15:00.130802
3321	2072	2015-05-09 17:25:00	2015-06-23 08:15:00.708193	2015-06-23 08:15:00.708193
3322	2073	2015-05-09 19:12:00	2015-06-23 08:15:07.18476	2015-06-23 08:15:07.18476
3323	2074	2015-05-09 22:14:00	2015-06-23 08:15:16.670604	2015-06-23 08:15:16.670604
3324	2075	2015-05-10 06:31:00	2015-06-23 08:15:40.972361	2015-06-23 08:15:40.972361
3325	2076	2015-05-10 07:05:00	2015-06-23 08:15:42.52251	2015-06-23 08:15:42.52251
3326	2075	2015-05-10 09:25:00	2015-06-23 08:15:49.30609	2015-06-23 08:15:49.30609
3327	2077	2015-05-10 11:02:00	2015-06-23 08:15:54.097646	2015-06-23 08:15:54.097646
3328	2075	2015-05-10 11:20:00	2015-06-23 08:15:55.035449	2015-06-23 08:15:55.035449
3329	2077	2015-05-10 11:33:00	2015-06-23 08:15:55.548829	2015-06-23 08:15:55.548829
3330	2078	2015-05-10 11:35:00	2015-06-23 08:15:55.598301	2015-06-23 08:15:55.598301
3331	2075	2015-05-10 11:41:00	2015-06-23 08:15:55.98475	2015-06-23 08:15:55.98475
3332	2079	2015-05-10 12:11:00	2015-06-23 08:15:57.352302	2015-06-23 08:15:57.352302
3333	2080	2015-05-10 12:35:00	2015-06-23 08:15:58.508823	2015-06-23 08:15:58.508823
3334	2081	2015-05-10 13:31:00	2015-06-23 08:16:01.32037	2015-06-23 08:16:01.32037
3335	2082	2015-05-10 16:19:00	2015-06-23 08:16:10.113657	2015-06-23 08:16:10.113657
3336	2081	2015-05-10 16:21:00	2015-06-23 08:16:10.204363	2015-06-23 08:16:10.204363
3337	2082	2015-05-10 16:25:00	2015-06-23 08:16:10.390596	2015-06-23 08:16:10.390596
3338	2083	2015-05-10 20:41:00	2015-06-23 08:16:24.36222	2015-06-23 08:16:24.36222
3339	2084	2015-05-11 02:09:00	2015-06-23 08:16:42.179095	2015-06-23 08:16:42.179095
3340	2085	2015-05-11 03:39:00	2015-06-23 08:16:47.061261	2015-06-23 08:16:47.061261
3341	2086	2015-05-11 07:49:00	2015-06-23 08:16:59.90303	2015-06-23 08:16:59.90303
3342	2087	2015-05-11 10:21:00	2015-06-23 08:17:07.278622	2015-06-23 08:17:07.278622
3343	2088	2015-05-11 11:32:00	2015-06-23 08:17:11.897705	2015-06-23 08:17:11.897705
3344	2087	2015-05-11 11:34:00	2015-06-23 08:17:11.980377	2015-06-23 08:17:11.980377
3345	2089	2015-05-11 11:38:00	2015-06-23 08:17:12.157147	2015-06-23 08:17:12.157147
3346	2087	2015-05-11 11:43:00	2015-06-23 08:17:12.361769	2015-06-23 08:17:12.361769
3347	2089	2015-05-11 11:44:00	2015-06-23 08:17:12.407188	2015-06-23 08:17:12.407188
3348	2090	2015-05-11 13:57:00	2015-06-23 08:17:18.994673	2015-06-23 08:17:18.994673
3349	2091	2015-05-11 13:59:00	2015-06-23 08:17:19.082693	2015-06-23 08:17:19.082693
3350	2092	2015-05-11 19:22:00	2015-06-23 08:17:34.991544	2015-06-23 08:17:34.991544
3351	2091	2015-05-11 20:00:00	2015-06-23 08:17:36.583037	2015-06-23 08:17:36.583037
3352	2093	2015-05-11 21:10:00	2015-06-23 08:17:39.734664	2015-06-23 08:17:39.734664
3353	2094	2015-05-11 21:38:00	2015-06-23 08:17:40.73233	2015-06-23 08:17:40.73233
3354	2095	2015-05-12 02:13:00	2015-06-23 08:17:54.114478	2015-06-23 08:17:54.114478
3355	2096	2015-05-12 07:13:00	2015-06-23 08:18:09.002773	2015-06-23 08:18:09.002773
3356	2097	2015-05-12 08:44:00	2015-06-23 08:18:14.078143	2015-06-23 08:18:14.078143
3357	2096	2015-05-12 08:46:00	2015-06-23 08:18:14.164513	2015-06-23 08:18:14.164513
3358	2097	2015-05-12 09:08:00	2015-06-23 08:18:15.163743	2015-06-23 08:18:15.163743
3359	2096	2015-05-12 09:14:00	2015-06-23 08:18:15.396138	2015-06-23 08:18:15.396138
3360	2098	2015-05-12 09:24:00	2015-06-23 08:18:15.915487	2015-06-23 08:18:15.915487
3361	2099	2015-05-12 10:41:00	2015-06-23 08:18:19.468182	2015-06-23 08:18:19.468182
3362	2098	2015-05-12 10:45:00	2015-06-23 08:18:19.631558	2015-06-23 08:18:19.631558
3363	2100	2015-05-12 11:18:00	2015-06-23 08:18:21.279624	2015-06-23 08:18:21.279624
3364	2101	2015-05-12 13:42:00	2015-06-23 08:18:28.687586	2015-06-23 08:18:28.687586
3365	2102	2015-05-12 16:40:00	2015-06-23 08:18:37.321396	2015-06-23 08:18:37.321396
3366	2103	2015-05-12 16:42:00	2015-06-23 08:18:37.518326	2015-06-23 08:18:37.518326
3367	2104	2015-05-12 16:44:00	2015-06-23 08:18:37.622575	2015-06-23 08:18:37.622575
3368	2105	2015-05-12 23:20:00	2015-06-23 08:18:57.611079	2015-06-23 08:18:57.611079
3369	2106	2015-05-13 05:05:00	2015-06-23 08:19:15.782982	2015-06-23 08:19:15.782982
3370	2105	2015-05-13 08:14:00	2015-06-23 08:19:25.126903	2015-06-23 08:19:25.126903
3371	2104	2015-05-13 08:40:00	2015-06-23 08:19:26.300462	2015-06-23 08:19:26.300462
3372	2107	2015-05-13 09:25:00	2015-06-23 08:19:28.441654	2015-06-23 08:19:28.441654
3373	2108	2015-05-13 10:31:00	2015-06-23 08:19:31.754574	2015-06-23 08:19:31.754574
3374	2109	2015-05-13 12:36:00	2015-06-23 08:19:38.052775	2015-06-23 08:19:38.052775
3375	2110	2015-05-13 13:04:00	2015-06-23 08:19:39.365984	2015-06-23 08:19:39.365984
3376	2111	2015-05-13 15:02:00	2015-06-23 08:19:44.993794	2015-06-23 08:19:44.993794
3377	2110	2015-05-13 16:18:00	2015-06-23 08:19:49.225699	2015-06-23 08:19:49.225699
3378	2111	2015-05-13 16:26:00	2015-06-23 08:19:49.72731	2015-06-23 08:19:49.72731
3379	2110	2015-05-13 16:30:00	2015-06-23 08:19:49.913462	2015-06-23 08:19:49.913462
3380	2112	2015-05-13 16:38:00	2015-06-23 08:19:50.253154	2015-06-23 08:19:50.253154
3381	2110	2015-05-13 16:55:00	2015-06-23 08:19:51.258099	2015-06-23 08:19:51.258099
3382	2113	2015-05-13 17:01:00	2015-06-23 08:19:51.621879	2015-06-23 08:19:51.621879
3383	2114	2015-05-13 17:52:00	2015-06-23 08:19:54.158934	2015-06-23 08:19:54.158934
3384	2113	2015-05-13 18:04:00	2015-06-23 08:19:54.816463	2015-06-23 08:19:54.816463
3385	2115	2015-05-13 19:26:00	2015-06-23 08:19:58.854188	2015-06-23 08:19:58.854188
3386	2116	2015-05-13 19:50:00	2015-06-23 08:20:00.29274	2015-06-23 08:20:00.29274
3387	2117	2015-05-13 21:24:00	2015-06-23 08:20:05.223302	2015-06-23 08:20:05.223302
3388	2118	2015-05-13 22:04:00	2015-06-23 08:20:07.802722	2015-06-23 08:20:07.802722
3389	2119	2015-05-13 22:32:00	2015-06-23 08:20:09.293652	2015-06-23 08:20:09.293652
3390	2120	2015-05-14 02:26:00	2015-06-23 08:20:20.047226	2015-06-23 08:20:20.047226
3391	2119	2015-05-14 02:28:00	2015-06-23 08:20:20.124648	2015-06-23 08:20:20.124648
3392	2120	2015-05-14 02:33:00	2015-06-23 08:20:20.316989	2015-06-23 08:20:20.316989
3393	2121	2015-05-14 03:25:00	2015-06-23 08:20:22.810967	2015-06-23 08:20:22.810967
3394	2122	2015-05-14 13:09:00	2015-06-23 08:20:49.377617	2015-06-23 08:20:49.377617
3395	2123	2015-05-14 14:01:00	2015-06-23 08:20:52.244441	2015-06-23 08:20:52.244441
3396	2124	2015-05-14 18:11:00	2015-06-23 08:21:04.077284	2015-06-23 08:21:04.077284
3397	2125	2015-05-15 01:08:00	2015-06-23 08:21:26.653025	2015-06-23 08:21:26.653025
3398	2126	2015-05-15 01:18:00	2015-06-23 08:21:27.08204	2015-06-23 08:21:27.08204
3399	2127	2015-05-15 04:22:00	2015-06-23 08:21:36.021314	2015-06-23 08:21:36.021314
3400	2128	2015-05-15 06:51:00	2015-06-23 08:21:42.759202	2015-06-23 08:21:42.759202
3401	2129	2015-05-15 13:46:00	2015-06-23 08:22:03.183293	2015-06-23 08:22:03.183293
3402	2130	2015-05-15 16:20:00	2015-06-23 08:22:11.42221	2015-06-23 08:22:11.42221
3403	2131	2015-05-15 16:24:00	2015-06-23 08:22:11.602458	2015-06-23 08:22:11.602458
3404	2132	2015-05-15 17:16:00	2015-06-23 08:22:14.215569	2015-06-23 08:22:14.215569
3405	2133	2015-05-16 00:58:00	2015-06-23 08:22:37.038986	2015-06-23 08:22:37.038986
3406	2134	2015-05-16 04:18:00	2015-06-23 08:22:47.009713	2015-06-23 08:22:47.009713
3407	2133	2015-05-16 04:24:00	2015-06-23 08:22:47.478326	2015-06-23 08:22:47.478326
3408	2134	2015-05-16 04:34:00	2015-06-23 08:22:48.025271	2015-06-23 08:22:48.025271
3409	2135	2015-05-16 05:04:00	2015-06-23 08:22:49.531153	2015-06-23 08:22:49.531153
3410	2136	2015-05-16 09:39:00	2015-06-23 08:23:04.574082	2015-06-23 08:23:04.574082
3411	2135	2015-05-16 09:51:00	2015-06-23 08:23:05.257171	2015-06-23 08:23:05.257171
3412	2137	2015-05-16 10:41:00	2015-06-23 08:23:07.821899	2015-06-23 08:23:07.821899
3413	2138	2015-05-16 14:17:00	2015-06-23 08:23:18.404057	2015-06-23 08:23:18.404057
3414	2137	2015-05-16 14:45:00	2015-06-23 08:23:19.867095	2015-06-23 08:23:19.867095
3415	2135	2015-05-16 14:53:00	2015-06-23 08:23:20.264842	2015-06-23 08:23:20.264842
3416	2139	2015-05-16 15:11:00	2015-06-23 08:23:21.175883	2015-06-23 08:23:21.175883
3417	2135	2015-05-16 15:48:00	2015-06-23 08:23:22.908277	2015-06-23 08:23:22.908277
3418	2140	2015-05-16 16:02:00	2015-06-23 08:23:23.681299	2015-06-23 08:23:23.681299
3419	2141	2015-05-16 17:21:00	2015-06-23 08:23:27.603562	2015-06-23 08:23:27.603562
3420	2142	2015-05-16 20:21:00	2015-06-23 08:23:36.635813	2015-06-23 08:23:36.635813
3421	2143	2015-05-16 21:59:00	2015-06-23 08:23:41.742598	2015-06-23 08:23:41.742598
3422	2142	2015-05-16 22:01:00	2015-06-23 08:23:41.840855	2015-06-23 08:23:41.840855
3423	2143	2015-05-16 22:11:00	2015-06-23 08:23:42.295573	2015-06-23 08:23:42.295573
3424	2142	2015-05-16 22:13:00	2015-06-23 08:23:42.38334	2015-06-23 08:23:42.38334
3425	2143	2015-05-16 22:23:00	2015-06-23 08:23:42.997705	2015-06-23 08:23:42.997705
3426	2142	2015-05-16 23:37:00	2015-06-23 08:23:46.70359	2015-06-23 08:23:46.70359
3427	2144	2015-05-17 00:08:00	2015-06-23 08:23:48.13866	2015-06-23 08:23:48.13866
3428	2143	2015-05-17 00:22:00	2015-06-23 08:23:48.914948	2015-06-23 08:23:48.914948
3429	2145	2015-05-17 03:38:00	2015-06-23 08:23:58.793695	2015-06-23 08:23:58.793695
3430	2143	2015-05-17 04:21:00	2015-06-23 08:24:00.95726	2015-06-23 08:24:00.95726
3431	2146	2015-05-17 04:57:00	2015-06-23 08:24:02.569037	2015-06-23 08:24:02.569037
3432	2145	2015-05-17 04:59:00	2015-06-23 08:24:02.782092	2015-06-23 08:24:02.782092
3433	2146	2015-05-17 05:03:00	2015-06-23 08:24:02.984756	2015-06-23 08:24:02.984756
3434	2147	2015-05-17 08:05:00	2015-06-23 08:24:11.880658	2015-06-23 08:24:11.880658
3435	2148	2015-05-17 08:51:00	2015-06-23 08:24:14.790247	2015-06-23 08:24:14.790247
3436	2149	2015-05-17 11:36:00	2015-06-23 08:24:23.521755	2015-06-23 08:24:23.521755
3437	2150	2015-05-17 12:17:00	2015-06-23 08:24:25.593246	2015-06-23 08:24:25.593246
3438	2151	2015-05-17 14:15:00	2015-06-23 08:24:31.62269	2015-06-23 08:24:31.62269
3439	2152	2015-05-17 16:37:00	2015-06-23 08:24:38.372568	2015-06-23 08:24:38.372568
3440	2153	2015-05-17 16:47:00	2015-06-23 08:24:38.819364	2015-06-23 08:24:38.819364
3441	2152	2015-05-17 16:49:00	2015-06-23 08:24:38.905472	2015-06-23 08:24:38.905472
3442	2154	2015-05-17 17:49:00	2015-06-23 08:24:41.86678	2015-06-23 08:24:41.86678
3443	2155	2015-05-17 19:02:00	2015-06-23 08:24:45.608337	2015-06-23 08:24:45.608337
3444	2156	2015-05-17 20:18:00	2015-06-23 08:24:49.378269	2015-06-23 08:24:49.378269
3445	2157	2015-05-17 21:25:00	2015-06-23 08:24:52.569192	2015-06-23 08:24:52.569192
3446	2158	2015-05-17 21:37:00	2015-06-23 08:24:53.223003	2015-06-23 08:24:53.223003
3447	2159	2015-05-17 22:38:00	2015-06-23 08:24:56.328328	2015-06-23 08:24:56.328328
3448	2160	2015-05-18 03:45:00	2015-06-23 08:25:12.426472	2015-06-23 08:25:12.426472
3449	2159	2015-05-18 03:47:00	2015-06-23 08:25:12.514749	2015-06-23 08:25:12.514749
3450	2160	2015-05-18 03:51:00	2015-06-23 08:25:12.681731	2015-06-23 08:25:12.681731
3451	2159	2015-05-18 05:03:00	2015-06-23 08:25:16.284216	2015-06-23 08:25:16.284216
3452	2161	2015-05-18 06:11:00	2015-06-23 08:25:19.712523	2015-06-23 08:25:19.712523
3453	2162	2015-05-18 07:24:00	2015-06-23 08:25:23.146844	2015-06-23 08:25:23.146844
3454	2163	2015-05-18 10:53:00	2015-06-23 08:25:34.140624	2015-06-23 08:25:34.140624
3455	2164	2015-05-18 13:29:00	2015-06-23 08:25:43.373214	2015-06-23 08:25:43.373214
3456	2165	2015-05-18 14:09:00	2015-06-23 08:25:45.382697	2015-06-23 08:25:45.382697
3457	2164	2015-05-18 14:37:00	2015-06-23 08:25:46.857384	2015-06-23 08:25:46.857384
3458	2166	2015-05-18 17:26:00	2015-06-23 08:25:55.484926	2015-06-23 08:25:55.484926
3459	2164	2015-05-18 17:54:00	2015-06-23 08:25:56.953639	2015-06-23 08:25:56.953639
3460	2167	2015-05-18 18:06:00	2015-06-23 08:25:57.526906	2015-06-23 08:25:57.526906
3461	2164	2015-05-18 18:08:00	2015-06-23 08:25:57.618677	2015-06-23 08:25:57.618677
3462	2167	2015-05-18 18:10:00	2015-06-23 08:25:57.709446	2015-06-23 08:25:57.709446
3463	2164	2015-05-18 18:22:00	2015-06-23 08:25:58.631676	2015-06-23 08:25:58.631676
3464	2167	2015-05-18 18:30:00	2015-06-23 08:25:59.203929	2015-06-23 08:25:59.203929
3465	2164	2015-05-18 18:32:00	2015-06-23 08:25:59.347084	2015-06-23 08:25:59.347084
3466	2167	2015-05-18 18:34:00	2015-06-23 08:25:59.676957	2015-06-23 08:25:59.676957
3467	2164	2015-05-18 18:36:00	2015-06-23 08:25:59.844005	2015-06-23 08:25:59.844005
3468	2167	2015-05-18 18:40:00	2015-06-23 08:26:00.09135	2015-06-23 08:26:00.09135
3469	2164	2015-05-18 18:44:00	2015-06-23 08:26:00.292981	2015-06-23 08:26:00.292981
3470	2168	2015-05-18 18:46:00	2015-06-23 08:26:00.392787	2015-06-23 08:26:00.392787
3471	2169	2015-05-18 19:00:00	2015-06-23 08:26:01.167836	2015-06-23 08:26:01.167836
3472	2170	2015-05-18 20:31:00	2015-06-23 08:26:07.112237	2015-06-23 08:26:07.112237
3473	2171	2015-05-18 22:36:00	2015-06-23 08:26:13.450712	2015-06-23 08:26:13.450712
3474	2170	2015-05-18 23:10:00	2015-06-23 08:26:15.499048	2015-06-23 08:26:15.499048
3475	2172	2015-05-19 02:39:00	2015-06-23 08:26:29.96401	2015-06-23 08:26:29.96401
3476	2173	2015-05-19 04:43:00	2015-06-23 08:26:37.382627	2015-06-23 08:26:37.382627
3477	2174	2015-05-19 09:35:00	2015-06-23 08:26:53.133181	2015-06-23 08:26:53.133181
3478	2175	2015-05-19 11:26:00	2015-06-23 08:27:00.197482	2015-06-23 08:27:00.197482
3479	2176	2015-05-19 11:34:00	2015-06-23 08:27:00.624176	2015-06-23 08:27:00.624176
3480	2177	2015-05-19 13:33:00	2015-06-23 08:27:07.699336	2015-06-23 08:27:07.699336
3481	2178	2015-05-19 13:45:00	2015-06-23 08:27:08.292138	2015-06-23 08:27:08.292138
3482	2179	2015-05-19 14:32:00	2015-06-23 08:27:11.400663	2015-06-23 08:27:11.400663
3483	2180	2015-05-19 19:12:00	2015-06-23 08:27:28.712542	2015-06-23 08:27:28.712542
3484	2179	2015-05-19 19:46:00	2015-06-23 08:27:31.021148	2015-06-23 08:27:31.021148
3485	2181	2015-05-19 19:52:00	2015-06-23 08:27:31.301676	2015-06-23 08:27:31.301676
3486	2182	2015-05-19 21:14:00	2015-06-23 08:27:35.60587	2015-06-23 08:27:35.60587
3487	2181	2015-05-19 21:49:00	2015-06-23 08:27:37.691369	2015-06-23 08:27:37.691369
3488	2183	2015-05-20 01:18:00	2015-06-23 08:27:49.962907	2015-06-23 08:27:49.962907
3489	2179	2015-05-20 01:22:00	2015-06-23 08:27:50.111985	2015-06-23 08:27:50.111985
3490	2183	2015-05-20 01:26:00	2015-06-23 08:27:50.251518	2015-06-23 08:27:50.251518
3491	2184	2015-05-20 01:52:00	2015-06-23 08:27:51.493782	2015-06-23 08:27:51.493782
3492	2185	2015-05-20 03:11:00	2015-06-23 08:27:56.720481	2015-06-23 08:27:56.720481
3493	2186	2015-05-20 08:19:00	2015-06-23 08:28:10.934019	2015-06-23 08:28:10.934019
3494	2187	2015-05-20 10:12:00	2015-06-23 08:28:16.901747	2015-06-23 08:28:16.901747
3495	2188	2015-05-20 13:27:00	2015-06-23 08:28:28.264236	2015-06-23 08:28:28.264236
3496	2189	2015-05-20 17:01:00	2015-06-23 08:28:39.037753	2015-06-23 08:28:39.037753
3497	2190	2015-05-20 18:02:00	2015-06-23 08:28:41.820498	2015-06-23 08:28:41.820498
3498	2189	2015-05-20 18:18:00	2015-06-23 08:28:42.854937	2015-06-23 08:28:42.854937
3499	2191	2015-05-20 18:38:00	2015-06-23 08:28:44.81738	2015-06-23 08:28:44.81738
3500	2189	2015-05-20 19:02:00	2015-06-23 08:28:46.447735	2015-06-23 08:28:46.447735
3501	2192	2015-05-20 19:22:00	2015-06-23 08:28:47.380392	2015-06-23 08:28:47.380392
3502	2193	2015-05-20 19:49:00	2015-06-23 08:28:48.93264	2015-06-23 08:28:48.93264
3503	2192	2015-05-20 19:59:00	2015-06-23 08:28:49.769357	2015-06-23 08:28:49.769357
3504	2193	2015-05-20 20:31:00	2015-06-23 08:28:51.52383	2015-06-23 08:28:51.52383
3505	2192	2015-05-20 21:16:00	2015-06-23 08:28:54.094148	2015-06-23 08:28:54.094148
3506	2193	2015-05-20 21:18:00	2015-06-23 08:28:54.195734	2015-06-23 08:28:54.195734
3507	2194	2015-05-20 23:23:00	2015-06-23 08:29:02.920908	2015-06-23 08:29:02.920908
3508	2195	2015-05-21 05:21:00	2015-06-23 08:29:27.453424	2015-06-23 08:29:27.453424
3509	2194	2015-05-21 05:23:00	2015-06-23 08:29:27.626097	2015-06-23 08:29:27.626097
3510	2196	2015-05-21 06:45:00	2015-06-23 08:29:32.721775	2015-06-23 08:29:32.721775
3511	2197	2015-05-21 11:13:00	2015-06-23 08:29:48.614529	2015-06-23 08:29:48.614529
3512	2198	2015-05-21 14:57:00	2015-06-23 08:30:03.842806	2015-06-23 08:30:03.842806
3513	2199	2015-05-21 15:57:00	2015-06-23 08:30:07.694423	2015-06-23 08:30:07.694423
3514	2200	2015-05-21 16:11:00	2015-06-23 08:30:08.303677	2015-06-23 08:30:08.303677
3515	2201	2015-05-21 19:41:00	2015-06-23 08:30:18.773853	2015-06-23 08:30:18.773853
3516	2202	2015-05-22 06:07:00	2015-06-23 08:30:50.732331	2015-06-23 08:30:50.732331
3517	2201	2015-05-22 07:34:00	2015-06-23 08:30:56.118402	2015-06-23 08:30:56.118402
3518	2202	2015-05-22 07:40:00	2015-06-23 08:30:56.616113	2015-06-23 08:30:56.616113
3519	2201	2015-05-22 07:42:00	2015-06-23 08:30:56.759558	2015-06-23 08:30:56.759558
3520	2203	2015-05-22 07:56:00	2015-06-23 08:30:57.5442	2015-06-23 08:30:57.5442
3521	2204	2015-05-22 10:28:00	2015-06-23 08:31:05.001971	2015-06-23 08:31:05.001971
3522	2203	2015-05-22 10:48:00	2015-06-23 08:31:05.899316	2015-06-23 08:31:05.899316
3523	2205	2015-05-22 12:03:00	2015-06-23 08:31:09.91989	2015-06-23 08:31:09.91989
3524	2206	2015-05-22 13:43:00	2015-06-23 08:31:15.377749	2015-06-23 08:31:15.377749
3525	2205	2015-05-22 13:51:00	2015-06-23 08:31:15.739158	2015-06-23 08:31:15.739158
3526	2207	2015-05-22 14:17:00	2015-06-23 08:31:17.12486	2015-06-23 08:31:17.12486
3527	2208	2015-05-22 21:09:00	2015-06-23 08:31:40.302893	2015-06-23 08:31:40.302893
3528	2209	2015-05-22 23:14:00	2015-06-23 08:31:46.629425	2015-06-23 08:31:46.629425
3529	2207	2015-05-22 23:16:00	2015-06-23 08:31:46.734325	2015-06-23 08:31:46.734325
3530	2210	2015-05-22 23:58:00	2015-06-23 08:31:49.849397	2015-06-23 08:31:49.849397
3531	2207	2015-05-23 00:14:00	2015-06-23 08:31:50.761427	2015-06-23 08:31:50.761427
3532	2211	2015-05-23 01:10:00	2015-06-23 08:31:53.378087	2015-06-23 08:31:53.378087
3533	2207	2015-05-23 01:16:00	2015-06-23 08:31:53.618174	2015-06-23 08:31:53.618174
3534	2211	2015-05-23 01:40:00	2015-06-23 08:31:55.183999	2015-06-23 08:31:55.183999
3535	2207	2015-05-23 01:42:00	2015-06-23 08:31:55.277389	2015-06-23 08:31:55.277389
3536	2211	2015-05-23 01:52:00	2015-06-23 08:31:55.857078	2015-06-23 08:31:55.857078
3537	2207	2015-05-23 02:24:00	2015-06-23 08:31:57.648426	2015-06-23 08:31:57.648426
3538	2212	2015-05-23 03:38:00	2015-06-23 08:32:01.119889	2015-06-23 08:32:01.119889
3539	2213	2015-05-23 07:24:00	2015-06-23 08:32:12.271816	2015-06-23 08:32:12.271816
3540	2212	2015-05-23 07:40:00	2015-06-23 08:32:13.082462	2015-06-23 08:32:13.082462
3541	2214	2015-05-23 11:50:00	2015-06-23 08:32:25.097629	2015-06-23 08:32:25.097629
3542	2212	2015-05-23 11:54:00	2015-06-23 08:32:25.283535	2015-06-23 08:32:25.283535
3543	2214	2015-05-23 12:00:00	2015-06-23 08:32:25.531023	2015-06-23 08:32:25.531023
3544	2212	2015-05-23 12:02:00	2015-06-23 08:32:25.611544	2015-06-23 08:32:25.611544
3545	2215	2015-05-23 12:04:00	2015-06-23 08:32:25.695336	2015-06-23 08:32:25.695336
3546	2216	2015-05-23 15:06:00	2015-06-23 08:32:35.801412	2015-06-23 08:32:35.801412
3547	2217	2015-05-23 15:52:00	2015-06-23 08:32:37.982887	2015-06-23 08:32:37.982887
3548	2218	2015-05-23 16:13:00	2015-06-23 08:32:38.899791	2015-06-23 08:32:38.899791
3549	2219	2015-05-23 19:45:00	2015-06-23 08:32:50.42112	2015-06-23 08:32:50.42112
3550	2220	2015-05-23 21:10:00	2015-06-23 08:32:54.934555	2015-06-23 08:32:54.934555
3551	2221	2015-05-24 07:27:00	2015-06-23 08:33:27.703368	2015-06-23 08:33:27.703368
3552	2220	2015-05-24 07:29:00	2015-06-23 08:33:27.920823	2015-06-23 08:33:27.920823
3553	2221	2015-05-24 07:35:00	2015-06-23 08:33:28.205934	2015-06-23 08:33:28.205934
3554	2222	2015-05-24 08:24:00	2015-06-23 08:33:31.063031	2015-06-23 08:33:31.063031
3555	2223	2015-05-24 12:56:00	2015-06-23 08:33:47.120115	2015-06-23 08:33:47.120115
3556	2222	2015-05-24 13:37:00	2015-06-23 08:33:49.222249	2015-06-23 08:33:49.222249
3557	2224	2015-05-24 13:49:00	2015-06-23 08:33:49.692465	2015-06-23 08:33:49.692465
3558	2225	2015-05-24 16:56:00	2015-06-23 08:34:00.100793	2015-06-23 08:34:00.100793
3559	2226	2015-05-24 17:59:00	2015-06-23 08:34:03.60237	2015-06-23 08:34:03.60237
3560	2227	2015-05-24 18:33:00	2015-06-23 08:34:05.114162	2015-06-23 08:34:05.114162
3561	2226	2015-05-24 18:41:00	2015-06-23 08:34:05.583212	2015-06-23 08:34:05.583212
3562	2224	2015-05-24 18:43:00	2015-06-23 08:34:05.664682	2015-06-23 08:34:05.664682
3563	2228	2015-05-25 02:01:00	2015-06-23 08:34:28.663458	2015-06-23 08:34:28.663458
3564	2224	2015-05-25 02:27:00	2015-06-23 08:34:30.114539	2015-06-23 08:34:30.114539
3565	2229	2015-05-25 03:42:00	2015-06-23 08:34:34.482858	2015-06-23 08:34:34.482858
3566	2224	2015-05-25 05:17:00	2015-06-23 08:34:40.413294	2015-06-23 08:34:40.413294
3567	2230	2015-05-25 05:29:00	2015-06-23 08:34:41.047453	2015-06-23 08:34:41.047453
3568	2231	2015-05-25 05:37:00	2015-06-23 08:34:41.410245	2015-06-23 08:34:41.410245
3569	2230	2015-05-25 05:49:00	2015-06-23 08:34:42.065184	2015-06-23 08:34:42.065184
3570	2232	2015-05-25 07:46:00	2015-06-23 08:34:49.308438	2015-06-23 08:34:49.308438
3571	2233	2015-05-25 09:51:00	2015-06-23 08:34:58.339345	2015-06-23 08:34:58.339345
3572	2234	2015-05-25 15:02:00	2015-06-23 08:35:15.832485	2015-06-23 08:35:15.832485
3573	2235	2015-05-25 16:18:00	2015-06-23 08:35:20.2322	2015-06-23 08:35:20.2322
3574	2236	2015-05-25 16:32:00	2015-06-23 08:35:20.905758	2015-06-23 08:35:20.905758
3575	2237	2015-05-25 18:59:00	2015-06-23 08:35:28.548844	2015-06-23 08:35:28.548844
3576	2236	2015-05-25 19:01:00	2015-06-23 08:35:28.630781	2015-06-23 08:35:28.630781
3577	2237	2015-05-25 19:15:00	2015-06-23 08:35:29.587573	2015-06-23 08:35:29.587573
3578	2236	2015-05-25 19:19:00	2015-06-23 08:35:29.861857	2015-06-23 08:35:29.861857
3579	2238	2015-05-25 19:23:00	2015-06-23 08:35:30.15266	2015-06-23 08:35:30.15266
3580	2239	2015-05-25 20:14:00	2015-06-23 08:35:33.178302	2015-06-23 08:35:33.178302
3581	2238	2015-05-25 20:38:00	2015-06-23 08:35:34.42692	2015-06-23 08:35:34.42692
3582	2240	2015-05-25 23:26:00	2015-06-23 08:35:44.284764	2015-06-23 08:35:44.284764
3583	2238	2015-05-26 06:21:00	2015-06-23 08:36:08.359541	2015-06-23 08:36:08.359541
3584	2241	2015-05-26 07:19:00	2015-06-23 08:36:11.431966	2015-06-23 08:36:11.431966
3585	2238	2015-05-26 07:25:00	2015-06-23 08:36:11.810811	2015-06-23 08:36:11.810811
3586	2242	2015-05-26 07:27:00	2015-06-23 08:36:11.938213	2015-06-23 08:36:11.938213
3587	2243	2015-05-26 07:42:00	2015-06-23 08:36:12.930373	2015-06-23 08:36:12.930373
3588	2244	2015-05-26 08:04:00	2015-06-23 08:36:14.03987	2015-06-23 08:36:14.03987
3589	2245	2015-05-26 09:48:00	2015-06-23 08:36:19.01644	2015-06-23 08:36:19.01644
3590	2244	2015-05-26 09:52:00	2015-06-23 08:36:19.19934	2015-06-23 08:36:19.19934
3591	2245	2015-05-26 09:58:00	2015-06-23 08:36:19.442833	2015-06-23 08:36:19.442833
3592	2246	2015-05-26 10:47:00	2015-06-23 08:36:21.781893	2015-06-23 08:36:21.781893
3593	2245	2015-05-26 10:49:00	2015-06-23 08:36:21.87297	2015-06-23 08:36:21.87297
3594	2246	2015-05-26 10:51:00	2015-06-23 08:36:21.961894	2015-06-23 08:36:21.961894
3595	2247	2015-05-26 11:03:00	2015-06-23 08:36:22.619231	2015-06-23 08:36:22.619231
3596	2248	2015-05-26 12:44:00	2015-06-23 08:36:27.66502	2015-06-23 08:36:27.66502
3597	2247	2015-05-26 12:46:00	2015-06-23 08:36:27.747259	2015-06-23 08:36:27.747259
3598	2248	2015-05-26 12:50:00	2015-06-23 08:36:28.014668	2015-06-23 08:36:28.014668
3599	2249	2015-05-26 15:45:00	2015-06-23 08:36:36.743607	2015-06-23 08:36:36.743607
3600	2250	2015-05-26 16:31:00	2015-06-23 08:36:39.020851	2015-06-23 08:36:39.020851
3601	2249	2015-05-26 16:41:00	2015-06-23 08:36:39.471766	2015-06-23 08:36:39.471766
3602	2251	2015-05-26 17:48:00	2015-06-23 08:36:43.65415	2015-06-23 08:36:43.65415
3603	2252	2015-05-26 18:35:00	2015-06-23 08:36:45.87112	2015-06-23 08:36:45.87112
3604	2253	2015-05-26 20:11:00	2015-06-23 08:36:51.829397	2015-06-23 08:36:51.829397
3605	2254	2015-05-26 22:25:00	2015-06-23 08:37:00.126138	2015-06-23 08:37:00.126138
3606	2255	2015-05-27 02:53:00	2015-06-23 08:37:14.123455	2015-06-23 08:37:14.123455
3607	2256	2015-05-27 04:11:00	2015-06-23 08:37:18.098657	2015-06-23 08:37:18.098657
3608	2257	2015-05-27 04:35:00	2015-06-23 08:37:19.438945	2015-06-23 08:37:19.438945
3609	2258	2015-05-27 09:37:00	2015-06-23 08:37:37.254081	2015-06-23 08:37:37.254081
3610	2257	2015-05-27 09:39:00	2015-06-23 08:37:37.404448	2015-06-23 08:37:37.404448
3611	2258	2015-05-27 09:43:00	2015-06-23 08:37:37.840165	2015-06-23 08:37:37.840165
3612	2259	2015-05-27 12:44:00	2015-06-23 08:37:49.942107	2015-06-23 08:37:49.942107
3613	2258	2015-05-27 12:56:00	2015-06-23 08:37:50.780827	2015-06-23 08:37:50.780827
3614	2259	2015-05-27 12:58:00	2015-06-23 08:37:50.907877	2015-06-23 08:37:50.907877
3615	2260	2015-05-27 14:35:00	2015-06-23 08:37:56.731025	2015-06-23 08:37:56.731025
3616	2261	2015-05-27 15:17:00	2015-06-23 08:37:58.893501	2015-06-23 08:37:58.893501
3617	2262	2015-05-27 20:58:00	2015-06-23 08:38:21.256785	2015-06-23 08:38:21.256785
3618	2261	2015-05-27 21:06:00	2015-06-23 08:38:21.604789	2015-06-23 08:38:21.604789
3619	2263	2015-05-27 21:57:00	2015-06-23 08:38:24.992508	2015-06-23 08:38:24.992508
3620	2264	2015-05-27 22:09:00	2015-06-23 08:38:25.802325	2015-06-23 08:38:25.802325
3621	2265	2015-05-27 23:54:00	2015-06-23 08:38:31.124956	2015-06-23 08:38:31.124956
3622	2266	2015-05-28 00:04:00	2015-06-23 08:38:31.525074	2015-06-23 08:38:31.525074
3623	2264	2015-05-28 00:06:00	2015-06-23 08:38:31.610863	2015-06-23 08:38:31.610863
3624	2267	2015-05-28 01:28:00	2015-06-23 08:38:36.396203	2015-06-23 08:38:36.396203
3625	2264	2015-05-28 01:44:00	2015-06-23 08:38:37.102513	2015-06-23 08:38:37.102513
3626	2268	2015-05-28 03:30:00	2015-06-23 08:38:42.414608	2015-06-23 08:38:42.414608
3627	2264	2015-05-28 03:34:00	2015-06-23 08:38:42.572772	2015-06-23 08:38:42.572772
3628	2268	2015-05-28 03:36:00	2015-06-23 08:38:42.648156	2015-06-23 08:38:42.648156
3629	2264	2015-05-28 03:42:00	2015-06-23 08:38:43.055325	2015-06-23 08:38:43.055325
3630	2269	2015-05-28 04:58:00	2015-06-23 08:38:49.697559	2015-06-23 08:38:49.697559
3631	2261	2015-05-28 05:44:00	2015-06-23 08:38:52.603768	2015-06-23 08:38:52.603768
3632	2270	2015-05-28 06:03:00	2015-06-23 08:38:53.566606	2015-06-23 08:38:53.566606
3633	2271	2015-05-28 07:03:00	2015-06-23 08:38:56.905392	2015-06-23 08:38:56.905392
3634	2270	2015-05-28 07:50:00	2015-06-23 08:38:59.641573	2015-06-23 08:38:59.641573
3635	2272	2015-05-28 09:24:00	2015-06-23 08:39:06.076438	2015-06-23 08:39:06.076438
3636	2273	2015-05-28 09:36:00	2015-06-23 08:39:06.631716	2015-06-23 08:39:06.631716
3637	2274	2015-05-28 12:16:00	2015-06-23 08:39:15.25875	2015-06-23 08:39:15.25875
3638	2275	2015-05-28 12:20:00	2015-06-23 08:39:15.443311	2015-06-23 08:39:15.443311
3639	2276	2015-05-28 15:05:00	2015-06-23 08:39:24.433904	2015-06-23 08:39:24.433904
3640	2277	2015-05-28 16:05:00	2015-06-23 08:39:27.699988	2015-06-23 08:39:27.699988
3641	2276	2015-05-28 16:29:00	2015-06-23 08:39:28.861499	2015-06-23 08:39:28.861499
3642	2277	2015-05-28 16:31:00	2015-06-23 08:39:28.992093	2015-06-23 08:39:28.992093
3643	2278	2015-05-28 16:43:00	2015-06-23 08:39:29.697788	2015-06-23 08:39:29.697788
3644	2279	2015-05-28 17:39:00	2015-06-23 08:39:32.208254	2015-06-23 08:39:32.208254
3645	2280	2015-05-28 19:05:00	2015-06-23 08:39:36.157142	2015-06-23 08:39:36.157142
3646	2281	2015-05-29 04:01:00	2015-06-23 08:40:03.344647	2015-06-23 08:40:03.344647
3647	2280	2015-05-29 04:37:00	2015-06-23 08:40:05.1423	2015-06-23 08:40:05.1423
3648	2282	2015-05-29 05:17:00	2015-06-23 08:40:07.117942	2015-06-23 08:40:07.117942
3649	2280	2015-05-29 05:43:00	2015-06-23 08:40:08.334758	2015-06-23 08:40:08.334758
3650	2283	2015-05-29 06:24:00	2015-06-23 08:40:11.354062	2015-06-23 08:40:11.354062
3651	2284	2015-05-29 08:04:00	2015-06-23 08:40:17.062096	2015-06-23 08:40:17.062096
3652	2283	2015-05-29 08:10:00	2015-06-23 08:40:17.335654	2015-06-23 08:40:17.335654
3653	2285	2015-05-29 09:33:00	2015-06-23 08:40:21.905259	2015-06-23 08:40:21.905259
3654	2286	2015-05-29 10:22:00	2015-06-23 08:40:25.072848	2015-06-23 08:40:25.072848
3655	2287	2015-05-29 15:20:00	2015-06-23 08:40:41.99311	2015-06-23 08:40:41.99311
3656	2288	2015-05-29 17:31:00	2015-06-23 08:40:48.92901	2015-06-23 08:40:48.92901
3657	2289	2015-05-29 20:30:00	2015-06-23 08:40:58.459162	2015-06-23 08:40:58.459162
3658	2288	2015-05-29 20:48:00	2015-06-23 08:40:59.25658	2015-06-23 08:40:59.25658
3659	2289	2015-05-29 21:01:00	2015-06-23 08:40:59.762527	2015-06-23 08:40:59.762527
3660	2288	2015-05-29 21:15:00	2015-06-23 08:41:00.755894	2015-06-23 08:41:00.755894
3661	2290	2015-05-30 02:02:00	2015-06-23 08:41:20.41726	2015-06-23 08:41:20.41726
3662	2291	2015-05-30 04:08:00	2015-06-23 08:41:29.378125	2015-06-23 08:41:29.378125
3663	2288	2015-05-30 04:51:00	2015-06-23 08:41:32.445524	2015-06-23 08:41:32.445524
3664	2292	2015-05-30 05:11:00	2015-06-23 08:41:33.910864	2015-06-23 08:41:33.910864
3665	2288	2015-05-30 05:13:00	2015-06-23 08:41:34.023769	2015-06-23 08:41:34.023769
3666	2292	2015-05-30 05:17:00	2015-06-23 08:41:34.206104	2015-06-23 08:41:34.206104
3667	2293	2015-05-30 06:14:00	2015-06-23 08:41:38.243168	2015-06-23 08:41:38.243168
3668	2288	2015-05-30 06:40:00	2015-06-23 08:41:39.780974	2015-06-23 08:41:39.780974
3669	2293	2015-05-30 06:58:00	2015-06-23 08:41:40.698216	2015-06-23 08:41:40.698216
3670	2288	2015-05-30 07:00:00	2015-06-23 08:41:40.928286	2015-06-23 08:41:40.928286
3671	2293	2015-05-30 07:02:00	2015-06-23 08:41:41.074261	2015-06-23 08:41:41.074261
3672	2288	2015-05-30 07:04:00	2015-06-23 08:41:41.23487	2015-06-23 08:41:41.23487
3673	2294	2015-05-30 10:18:00	2015-06-23 08:41:55.396396	2015-06-23 08:41:55.396396
3674	2288	2015-05-30 10:42:00	2015-06-23 08:41:56.553898	2015-06-23 08:41:56.553898
3675	2294	2015-05-30 11:14:00	2015-06-23 08:41:58.734975	2015-06-23 08:41:58.734975
3676	2288	2015-05-30 11:46:00	2015-06-23 08:42:01.116405	2015-06-23 08:42:01.116405
3677	2294	2015-05-30 11:52:00	2015-06-23 08:42:01.419923	2015-06-23 08:42:01.419923
3678	2288	2015-05-30 11:54:00	2015-06-23 08:42:01.509412	2015-06-23 08:42:01.509412
3679	2295	2015-05-30 12:36:00	2015-06-23 08:42:03.600569	2015-06-23 08:42:03.600569
3680	2288	2015-05-30 12:46:00	2015-06-23 08:42:04.038501	2015-06-23 08:42:04.038501
3681	2294	2015-05-30 13:07:00	2015-06-23 08:42:05.138408	2015-06-23 08:42:05.138408
3682	2288	2015-05-30 13:22:00	2015-06-23 08:42:06.167382	2015-06-23 08:42:06.167382
3683	2294	2015-05-30 13:26:00	2015-06-23 08:42:06.523093	2015-06-23 08:42:06.523093
3684	2288	2015-05-30 13:28:00	2015-06-23 08:42:06.660588	2015-06-23 08:42:06.660588
3685	2296	2015-05-30 13:42:00	2015-06-23 08:42:07.519521	2015-06-23 08:42:07.519521
3686	2297	2015-05-30 14:06:00	2015-06-23 08:42:08.993326	2015-06-23 08:42:08.993326
3687	2298	2015-05-30 15:40:00	2015-06-23 08:42:15.086394	2015-06-23 08:42:15.086394
3688	2299	2015-05-30 18:36:00	2015-06-23 08:42:26.128438	2015-06-23 08:42:26.128438
3689	2298	2015-05-30 19:20:00	2015-06-23 08:42:28.405676	2015-06-23 08:42:28.405676
3690	2300	2015-05-30 20:31:00	2015-06-23 08:42:33.030329	2015-06-23 08:42:33.030329
3691	2298	2015-05-30 20:39:00	2015-06-23 08:42:33.641131	2015-06-23 08:42:33.641131
3692	2301	2015-05-30 21:27:00	2015-06-23 08:42:37.991108	2015-06-23 08:42:37.991108
3693	2298	2015-05-30 21:55:00	2015-06-23 08:42:40.463657	2015-06-23 08:42:40.463657
3694	2302	2015-05-30 22:03:00	2015-06-23 08:42:41.310372	2015-06-23 08:42:41.310372
3695	2303	2015-05-30 23:53:00	2015-06-23 08:42:48.657634	2015-06-23 08:42:48.657634
3696	2302	2015-05-30 23:55:00	2015-06-23 08:42:48.809763	2015-06-23 08:42:48.809763
3697	2304	2015-05-31 02:30:00	2015-06-23 08:42:59.81724	2015-06-23 08:42:59.81724
3698	2302	2015-05-31 03:26:00	2015-06-23 08:43:03.264297	2015-06-23 08:43:03.264297
3699	2304	2015-05-31 03:29:00	2015-06-23 08:43:03.468644	2015-06-23 08:43:03.468644
3700	2305	2015-05-31 13:23:00	2015-06-23 08:43:43.024715	2015-06-23 08:43:43.024715
3701	2306	2015-06-29 20:45:02.909168	2015-06-29 20:45:03.084269	2015-06-29 20:45:03.084269
3702	2307	2015-07-10 05:51:03.132428	2015-07-10 05:51:03.40074	2015-07-10 05:51:03.40074
3703	2311	2016-01-15 23:00:03.855454	2016-01-15 23:00:03.985021	2016-01-15 23:00:03.985021
3704	2335	2016-01-23 10:13:54.186447	2016-01-23 10:13:54.331516	2016-01-23 10:13:54.331516
3705	2336	2016-01-23 10:47:41.731039	2016-01-23 10:47:41.738431	2016-01-23 10:47:41.738431
3706	2335	2016-01-23 10:51:40.86376	2016-01-23 10:51:40.871485	2016-01-23 10:51:40.871485
3707	2336	2016-01-23 10:55:41.765104	2016-01-23 10:55:41.77236	2016-01-23 10:55:41.77236
3708	2337	2016-01-23 17:43:54.615671	2016-01-23 17:43:54.695845	2016-01-23 17:43:54.695845
3709	2338	2016-01-23 17:57:55.085293	2016-01-23 17:57:55.09368	2016-01-23 17:57:55.09368
3710	2339	2016-01-23 18:06:54.638337	2016-01-23 18:06:54.645469	2016-01-23 18:06:54.645469
3711	2340	2016-01-24 03:57:37.182178	2016-01-24 03:57:37.190333	2016-01-24 03:57:37.190333
3712	2341	2016-01-24 09:20:03.180457	2016-01-24 09:20:03.187994	2016-01-24 09:20:03.187994
3713	2342	2016-01-24 15:48:03.314178	2016-01-24 15:48:03.351065	2016-01-24 15:48:03.351065
3714	2343	2016-01-24 17:49:04.251753	2016-01-24 17:49:04.257822	2016-01-24 17:49:04.257822
3715	2344	2016-01-24 21:27:02.664804	2016-01-24 21:27:02.697331	2016-01-24 21:27:02.697331
3716	2345	2016-01-24 22:01:25.42597	2016-01-24 22:01:25.435274	2016-01-24 22:01:25.435274
3717	2346	2016-01-25 01:23:30.175957	2016-01-25 01:23:30.184201	2016-01-25 01:23:30.184201
3718	2347	2016-01-25 03:06:30.966971	2016-01-25 03:06:30.974561	2016-01-25 03:06:30.974561
3719	2346	2016-01-25 07:26:47.425823	2016-01-25 07:26:47.438718	2016-01-25 07:26:47.438718
3720	2348	2016-01-27 01:42:04.502005	2016-01-27 01:42:04.639026	2016-01-27 01:42:04.639026
3721	2349	2016-01-27 03:00:43.465298	2016-01-27 03:00:43.473789	2016-01-27 03:00:43.473789
3722	2350	2016-01-27 05:09:06.467014	2016-01-27 05:09:06.491642	2016-01-27 05:09:06.491642
3723	2351	2016-03-15 05:29:04.145462	2016-03-15 05:29:04.277182	2016-03-15 05:29:04.277182
\.


--
-- Name: top_hits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hndev
--

SELECT pg_catalog.setval('top_hits_id_seq', 3723, true);


--
-- Name: stories_pkey; Type: CONSTRAINT; Schema: public; Owner: hndev; Tablespace: 
--

ALTER TABLE ONLY stories
    ADD CONSTRAINT stories_pkey PRIMARY KEY (id);


--
-- Name: top_hits_pkey; Type: CONSTRAINT; Schema: public; Owner: hndev; Tablespace: 
--

ALTER TABLE ONLY top_hits
    ADD CONSTRAINT top_hits_pkey PRIMARY KEY (id);


--
-- Name: index_stories_on_hn_id; Type: INDEX; Schema: public; Owner: hndev; Tablespace: 
--

CREATE INDEX index_stories_on_hn_id ON stories USING btree (hn_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: hndev; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: bruce
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM bruce;
GRANT ALL ON SCHEMA public TO bruce;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

