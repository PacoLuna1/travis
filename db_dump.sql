Password: 
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO francisco_luna;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO francisco_luna;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO francisco_luna;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO francisco_luna;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO francisco_luna;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO francisco_luna;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO francisco_luna;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO francisco_luna;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO francisco_luna;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO francisco_luna;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO francisco_luna;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO francisco_luna;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: books_author; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.books_author (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    last_name character varying(128)
);


ALTER TABLE public.books_author OWNER TO francisco_luna;

--
-- Name: books_author_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.books_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_author_id_seq OWNER TO francisco_luna;

--
-- Name: books_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.books_author_id_seq OWNED BY public.books_author.id;


--
-- Name: books_book; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.books_book (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    publish_year smallint NOT NULL,
    pages smallint NOT NULL,
    price numeric(6,2) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    genre_id bigint,
    publisher_id bigint
);


ALTER TABLE public.books_book OWNER TO francisco_luna;

--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.books_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_book_id_seq OWNER TO francisco_luna;

--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;


--
-- Name: books_booksauthors; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.books_booksauthors (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    book_id bigint NOT NULL
);


ALTER TABLE public.books_booksauthors OWNER TO francisco_luna;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.books_booksauthors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksauthors_id_seq OWNER TO francisco_luna;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.books_booksauthors_id_seq OWNED BY public.books_booksauthors.id;


--
-- Name: books_genre; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.books_genre (
    id bigint NOT NULL,
    name character varying(128) NOT NULL
);


ALTER TABLE public.books_genre OWNER TO francisco_luna;

--
-- Name: books_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.books_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_genre_id_seq OWNER TO francisco_luna;

--
-- Name: books_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.books_genre_id_seq OWNED BY public.books_genre.id;


--
-- Name: books_location; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.books_location (
    id bigint NOT NULL,
    number smallint NOT NULL,
    street character varying(128) NOT NULL,
    city character varying(128) NOT NULL,
    state character varying(128) NOT NULL,
    country character varying(128) NOT NULL
);


ALTER TABLE public.books_location OWNER TO francisco_luna;

--
-- Name: books_location_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.books_location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_location_id_seq OWNER TO francisco_luna;

--
-- Name: books_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.books_location_id_seq OWNED BY public.books_location.id;


--
-- Name: books_publisher; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.books_publisher (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    location_id bigint
);


ALTER TABLE public.books_publisher OWNER TO francisco_luna;

--
-- Name: books_publisher_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.books_publisher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_publisher_id_seq OWNER TO francisco_luna;

--
-- Name: books_publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.books_publisher_id_seq OWNED BY public.books_publisher.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO francisco_luna;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO francisco_luna;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO francisco_luna;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO francisco_luna;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO francisco_luna;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO francisco_luna;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO francisco_luna;

--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO francisco_luna;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO francisco_luna;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: francisco_luna
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id integer,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO francisco_luna;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_luna
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO francisco_luna;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_luna
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: books_author id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_author ALTER COLUMN id SET DEFAULT nextval('public.books_author_id_seq'::regclass);


--
-- Name: books_book id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Name: books_booksauthors id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_booksauthors ALTER COLUMN id SET DEFAULT nextval('public.books_booksauthors_id_seq'::regclass);


--
-- Name: books_genre id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_genre ALTER COLUMN id SET DEFAULT nextval('public.books_genre_id_seq'::regclass);


--
-- Name: books_location id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_location ALTER COLUMN id SET DEFAULT nextval('public.books_location_id_seq'::regclass);


--
-- Name: books_publisher id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_publisher ALTER COLUMN id SET DEFAULT nextval('public.books_publisher_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add blacklisted token	7	add_blacklistedtoken
26	Can change blacklisted token	7	change_blacklistedtoken
27	Can delete blacklisted token	7	delete_blacklistedtoken
28	Can view blacklisted token	7	view_blacklistedtoken
29	Can add outstanding token	8	add_outstandingtoken
30	Can change outstanding token	8	change_outstandingtoken
31	Can delete outstanding token	8	delete_outstandingtoken
32	Can view outstanding token	8	view_outstandingtoken
33	Can add author	9	add_author
34	Can change author	9	change_author
35	Can delete author	9	delete_author
36	Can view author	9	view_author
37	Can add book	10	add_book
38	Can change book	10	change_book
39	Can delete book	10	delete_book
40	Can view book	10	view_book
41	Can add books authors	11	add_booksauthors
42	Can change books authors	11	change_booksauthors
43	Can delete books authors	11	delete_booksauthors
44	Can view books authors	11	view_booksauthors
45	Can add genre	12	add_genre
46	Can change genre	12	change_genre
47	Can delete genre	12	delete_genre
48	Can view genre	12	view_genre
49	Can add location	13	add_location
50	Can change location	13	change_location
51	Can delete location	13	delete_location
52	Can view location	13	view_location
53	Can add publisher	14	add_publisher
54	Can change publisher	14	change_publisher
55	Can delete publisher	14	delete_publisher
56	Can view publisher	14	view_publisher
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$FSBPAFabEVeihXNSW80Bzd$0NeiH58EojSET42XgrYFNpO0agMKLsZaWrJeM+0wOIk=	\N	f	admin3			admin3@admin.com	f	t	2022-04-12 20:47:59.61639+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: books_author; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.books_author (id, name, last_name) FROM stdin;
\.


--
-- Data for Name: books_book; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.books_book (id, name, publish_year, pages, price, created_at, updated_at, genre_id, publisher_id) FROM stdin;
\.


--
-- Data for Name: books_booksauthors; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.books_booksauthors (id, author_id, book_id) FROM stdin;
\.


--
-- Data for Name: books_genre; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.books_genre (id, name) FROM stdin;
\.


--
-- Data for Name: books_location; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.books_location (id, number, street, city, state, country) FROM stdin;
\.


--
-- Data for Name: books_publisher; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.books_publisher (id, name, location_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	token_blacklist	blacklistedtoken
8	token_blacklist	outstandingtoken
9	books	author
10	books	book
11	books	booksauthors
12	books	genre
13	books	location
14	books	publisher
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-12 20:39:35.262728+00
2	auth	0001_initial	2022-04-12 20:39:35.331786+00
3	admin	0001_initial	2022-04-12 20:39:35.352089+00
4	admin	0002_logentry_remove_auto_add	2022-04-12 20:39:35.358305+00
5	admin	0003_logentry_add_action_flag_choices	2022-04-12 20:39:35.364495+00
6	contenttypes	0002_remove_content_type_name	2022-04-12 20:39:35.377494+00
7	auth	0002_alter_permission_name_max_length	2022-04-12 20:39:35.383318+00
8	auth	0003_alter_user_email_max_length	2022-04-12 20:39:35.389501+00
9	auth	0004_alter_user_username_opts	2022-04-12 20:39:35.395097+00
10	auth	0005_alter_user_last_login_null	2022-04-12 20:39:35.401567+00
11	auth	0006_require_contenttypes_0002	2022-04-12 20:39:35.403425+00
12	auth	0007_alter_validators_add_error_messages	2022-04-12 20:39:35.409054+00
13	auth	0008_alter_user_username_max_length	2022-04-12 20:39:35.418935+00
14	auth	0009_alter_user_last_name_max_length	2022-04-12 20:39:35.426782+00
15	auth	0010_alter_group_name_max_length	2022-04-12 20:39:35.433932+00
16	auth	0011_update_proxy_permissions	2022-04-12 20:39:35.439355+00
17	auth	0012_alter_user_first_name_max_length	2022-04-12 20:39:35.445183+00
18	books	0001_initial	2022-04-12 20:39:35.46816+00
19	books	0002_genre_location_publisher_book_genre_book_publisher	2022-04-12 20:39:35.500059+00
20	sessions	0001_initial	2022-04-12 20:39:35.511853+00
21	token_blacklist	0001_initial	2022-04-12 20:39:35.543942+00
22	token_blacklist	0002_outstandingtoken_jti_hex	2022-04-12 20:39:35.550999+00
23	token_blacklist	0003_auto_20171017_2007	2022-04-12 20:39:35.560817+00
24	token_blacklist	0004_auto_20171017_2013	2022-04-12 20:39:35.571798+00
25	token_blacklist	0005_remove_outstandingtoken_jti	2022-04-12 20:39:35.579152+00
26	token_blacklist	0006_auto_20171017_2113	2022-04-12 20:39:35.586079+00
27	token_blacklist	0007_auto_20171017_2214	2022-04-12 20:39:35.607075+00
28	token_blacklist	0008_migrate_to_bigautofield	2022-04-12 20:39:35.655795+00
29	token_blacklist	0010_fix_migrate_to_bigautofield	2022-04-12 20:39:35.668127+00
30	token_blacklist	0011_linearizes_history	2022-04-12 20:39:35.669984+00
31	token_blacklist	0012_alter_outstandingtoken_user	2022-04-12 20:39:35.676666+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
1	2022-04-12 21:31:23.173701+00	4
2	2022-04-12 21:32:35.49666+00	6
3	2022-04-12 21:32:43.070338+00	7
4	2022-04-12 21:34:18.70318+00	8
5	2022-04-12 21:34:43.401446+00	10
6	2022-04-12 21:35:02.526506+00	11
7	2022-04-12 21:37:51.677808+00	12
8	2022-04-12 21:43:42.409675+00	15
9	2022-04-12 21:44:35.379074+00	16
10	2022-04-12 21:45:50.823325+00	18
11	2022-04-12 21:58:34.551905+00	37
12	2022-04-12 21:58:58.268299+00	38
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: francisco_luna
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4MzkyMSwiaWF0IjoxNjQ5Nzk3NTIxLCJqdGkiOiJmNzQ2ZWRmYjMwM2E0NmFlODYxZWI0MTIwYThlMGQ5MyIsInVzZXJfaWQiOjF9.38Zw3XARvd0_18oNqmraW068Q0CPn2ZXTs0SY8HC5rE	2022-04-12 21:05:21.858582+00	2022-04-13 21:05:21+00	1	f746edfb303a46ae861eb4120a8e0d93
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTA0NiwiaWF0IjoxNjQ5Nzk4NjQ2LCJqdGkiOiIyZWJkMzJhYzllOWM0MGRhODZhMTM0ZTk4ZTFmNDk5MiIsInVzZXJfaWQiOjF9.T4WrPCbH78_iM5ycpO0czQO7rceG-tQKQAxMJhCgDPE	2022-04-12 21:24:06.191935+00	2022-04-13 21:24:06+00	1	2ebd32ac9e9c40da86a134e98e1f4992
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTA3NCwiaWF0IjoxNjQ5Nzk4Njc0LCJqdGkiOiI3NjkzNDlkNWIwYTM0ODRjODY3MTY3MzBlZTY0ZGE4ZiIsInVzZXJfaWQiOjF9.m8ZaJJuscurBeV6TwrgRNdsPEkAQ8NJZ0v_4IaPheKc	2022-04-12 21:24:34.768689+00	2022-04-13 21:24:34+00	1	769349d5b0a3484c86716730ee64da8f
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTQ4MiwiaWF0IjoxNjQ5Nzk5MDgyLCJqdGkiOiI1M2I1M2E3YzdmY2I0Y2Y1YTBhNmYxYmQwMTQzMWY3NyIsInVzZXJfaWQiOjF9.ngKfWr-jC-2forIYdMqBMnK3YHurrH2jh0cx2LMI9jE	2022-04-12 21:31:22.077536+00	2022-04-13 21:31:22+00	1	53b53a7c7fcb4cf5a0a6f1bd01431f77
5	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTU0MiwiaWF0IjoxNjQ5Nzk5MTQyLCJqdGkiOiI5NDRmZDQ3YTUxMjg0NDc3YTA1MGVkYWY1NTM5YzZlYyIsInVzZXJfaWQiOjF9.MVoOJ2_b91KWXwaqngKVDApRNPLgUjSKte6pgAosksc	2022-04-12 21:32:22.928951+00	2022-04-13 21:32:22+00	1	944fd47a51284477a050edaf5539c6ec
6	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTU1NCwiaWF0IjoxNjQ5Nzk5MTU0LCJqdGkiOiJlYTE2N2Q3ZmYzNTE0OGViOTI2NzJjZDFiOGJlOWMyYSIsInVzZXJfaWQiOjF9.60myVC3dil6ERwomDuTPy5vvczbR9M5IWKtOqGWtsX4	2022-04-12 21:32:34.274574+00	2022-04-13 21:32:34+00	1	ea167d7ff35148eb92672cd1b8be9c2a
7	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTU2MSwiaWF0IjoxNjQ5Nzk5MTYxLCJqdGkiOiI3YWJhZDIxM2Q3MmU0MTdlOGEwYWJmZDFlZjhhNmUwNiIsInVzZXJfaWQiOjF9.8snTMM_4rfStsbH_0PXwDbx0uc613-XJADehIxEgNvg	2022-04-12 21:32:41.634933+00	2022-04-13 21:32:41+00	1	7abad213d72e417e8a0abfd1ef8a6e06
8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTY1NiwiaWF0IjoxNjQ5Nzk5MjU2LCJqdGkiOiI2Y2RkNmNiZjM4MGU0NWRmYmJhNDczOGJlZjhmMWQ3ZCIsInVzZXJfaWQiOjF9.-5RRcfV6AQIORRjHYkWzy-J8BU9FrzCGB301lQZ44Hc	2022-04-12 21:34:16.951257+00	2022-04-13 21:34:16+00	1	6cdd6cbf380e45dfbba4738bef8f1d7d
9	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTY3NiwiaWF0IjoxNjQ5Nzk5Mjc2LCJqdGkiOiIxOTlkN2E5ZmM5NmI0OGRlOWZjYjA1ODAyMTAwNjRkMiIsInVzZXJfaWQiOjF9.CQQoH-QyxFaMURpO1o2NfhtsQq_XVz6h7JRo7FNBWTw	2022-04-12 21:34:36.146999+00	2022-04-13 21:34:36+00	1	199d7a9fc96b48de9fcb0580210064d2
10	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTY4MiwiaWF0IjoxNjQ5Nzk5MjgyLCJqdGkiOiIwNTEwZGVmOTI0NmM0ZjM1OTM5NTg4NTcwODM2YTE0NiIsInVzZXJfaWQiOjF9.dryBhTQ6gch3VQVM72wPq_mcO1BBpRPjZO7THgK4AVk	2022-04-12 21:34:42.905119+00	2022-04-13 21:34:42+00	1	0510def9246c4f35939588570836a146
11	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTcwMSwiaWF0IjoxNjQ5Nzk5MzAxLCJqdGkiOiJiNmIwMmJlYmM1YzQ0ZWE1YWE0MWMxODM4YTA1MTk1OSIsInVzZXJfaWQiOjF9.vX05R1KM5gA6kHdQcJTruYQnPuNziOsTMdkKlI31vBM	2022-04-12 21:35:01.503697+00	2022-04-13 21:35:01+00	1	b6b02bebc5c44ea5aa41c1838a051959
12	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTc3NiwiaWF0IjoxNjQ5Nzk5Mzc2LCJqdGkiOiJiOWE0MDA0ODQwNDQ0ZDY0YmYwOTM3M2Q1YTA4NTE2NiIsInVzZXJfaWQiOjF9.mcNBr9ZzOVk8KLwWu8Mm4Gy1b-C1_mhIlDPfeZGTaCI	2022-04-12 21:36:16.168116+00	2022-04-13 21:36:16+00	1	b9a4004840444d64bf09373d5a085166
13	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTk2NiwiaWF0IjoxNjQ5Nzk5NTY2LCJqdGkiOiI1M2VkYTFiYjlkNDk0MjQzOWRkOWE1MjU4NjNmYmM3MCIsInVzZXJfaWQiOjF9.C1IfGfrXsMpx2PLAw-u3E0ck0aSkAEZYHAQS8989chw	2022-04-12 21:39:26.943568+00	2022-04-13 21:39:26+00	1	53eda1bb9d4942439dd9a525863fbc70
14	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTk5MCwiaWF0IjoxNjQ5Nzk5NTkwLCJqdGkiOiI3M2IwZWYzOWE0MmY0MDg4OGJhOTQwNDg4OThkNGNmMCIsInVzZXJfaWQiOjF9.YDlWhl5TvpIxZ8E4dasPmpYe28rbalobdrxsBiszOZU	2022-04-12 21:39:50.758303+00	2022-04-13 21:39:50+00	1	73b0ef39a42f40888ba94048898d4cf0
15	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjIyMCwiaWF0IjoxNjQ5Nzk5ODIwLCJqdGkiOiJlYzQ1ZDZkOTMxZjY0MTM2YTM0MDFjYTg4YzFkZGMwZiIsInVzZXJfaWQiOjF9.W1d9p9VosbwN7vpAm8uE5GSb9gQ52ZYC6VpZ42IVjxs	2022-04-12 21:43:40.797491+00	2022-04-13 21:43:40+00	1	ec45d6d931f64136a3401ca88c1ddc0f
16	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjI3MiwiaWF0IjoxNjQ5Nzk5ODcyLCJqdGkiOiI4OWUxMGJhZmFhM2Q0YjZiYTg3YzRkYWM5OTVmM2Y1ZSIsInVzZXJfaWQiOjF9.W2E1FZTnbiWOnF_ovxjy8b-FpV8qP-qloGnxJb7GHrY	2022-04-12 21:44:32.82784+00	2022-04-13 21:44:32+00	1	89e10bafaa3d4b6ba87c4dac995f3f5e
17	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjM0MywiaWF0IjoxNjQ5Nzk5OTQzLCJqdGkiOiI4MmJjMWZlZjhhZWI0NDdkOTUwMWJlNTkwMjQxNDkzYSIsInVzZXJfaWQiOjF9.Q8hMqpJf4Ec3qipe7FFBOOtpxBGy-bYOCnlUZd7B17E	2022-04-12 21:45:43.171579+00	2022-04-13 21:45:43+00	1	82bc1fef8aeb447d9501be590241493a
18	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjM0OSwiaWF0IjoxNjQ5Nzk5OTQ5LCJqdGkiOiI2MWYxNjkwZDNkNGE0MTVlYTIzMDI0YmZlZjYwMjgyNCIsInVzZXJfaWQiOjF9.rRPVrGnEKL1KzgZMpRYnY6gBgPlbdGoxX-8MMVRnlNQ	2022-04-12 21:45:49.859199+00	2022-04-13 21:45:49+00	1	61f1690d3d4a415ea23024bfef602824
19	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjM5NSwiaWF0IjoxNjQ5Nzk5OTk1LCJqdGkiOiI0NTA3ZmMzNmZhYzE0ZDA0YTkwYWQ0ZDUzNjY4NjIzYSIsInVzZXJfaWQiOjF9.CUxmLpASNV5dOCuGUYYQBA942SHbNve24ejW7TkNQYM	2022-04-12 21:46:35.410315+00	2022-04-13 21:46:35+00	1	4507fc36fac14d04a90ad4d53668623a
20	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjQwNiwiaWF0IjoxNjQ5ODAwMDA2LCJqdGkiOiJmNDhkZDljMmM1ODc0YjA1ODVmNTRmM2M1OTU0OWRmNSIsInVzZXJfaWQiOjF9.oU5iMIq1hOBlqSkL3GR4Bs8BjDa0JtplTd-xUOlzWGk	2022-04-12 21:46:46.105213+00	2022-04-13 21:46:46+00	1	f48dd9c2c5874b0585f54f3c59549df5
21	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjUyNiwiaWF0IjoxNjQ5ODAwMTI2LCJqdGkiOiI3YmM5NzYyMGVmYmE0YjE2ODkwMGYxYmI4MzI1OTVmMiIsInVzZXJfaWQiOjF9.---OzJhrD3gzzFsLcgOiPGKgt4lpMHXNPa06z2zVqKU	2022-04-12 21:48:46.070005+00	2022-04-13 21:48:46+00	1	7bc97620efba4b168900f1bb832595f2
22	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjU1MywiaWF0IjoxNjQ5ODAwMTUzLCJqdGkiOiI1OTAxZmE1MWJjZGQ0Yzg0OGJiZWU1NDVhODZjNGM4MCIsInVzZXJfaWQiOjF9.b0o9GFga5FSG0bVPUNQu7ZlnIde2AXAJnAiqbijag1w	2022-04-12 21:49:13.56743+00	2022-04-13 21:49:13+00	1	5901fa51bcdd4c848bbee545a86c4c80
23	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjYyMSwiaWF0IjoxNjQ5ODAwMjIxLCJqdGkiOiJlNGVmNjRiMzc5MDE0ZTIzOTc3ZjE0MjJkMmI1YzY0NiIsInVzZXJfaWQiOjF9.8-jljQtdivCZ0QKymALyzVR8qS2jSp4P38jsd8UnZNk	2022-04-12 21:50:21.253906+00	2022-04-13 21:50:21+00	1	e4ef64b379014e23977f1422d2b5c646
24	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjY1MywiaWF0IjoxNjQ5ODAwMjUzLCJqdGkiOiI2N2ZhZTQ0MDQwNmI0MGU1YjExNTMwYzhhMzZlZjFhZSIsInVzZXJfaWQiOjF9.wIIiEIEgLLQX9lJNC89J0eXQ_2ieV16zVk8v8BmTTI0	2022-04-12 21:50:53.219772+00	2022-04-13 21:50:53+00	1	67fae440406b40e5b11530c8a36ef1ae
25	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjY1NywiaWF0IjoxNjQ5ODAwMjU3LCJqdGkiOiJlZWI3YmQ5NDk1MjE0MWIyYjQyOTdlY2VkZjJhNTViNyIsInVzZXJfaWQiOjF9.H4n4ZpdRjjrsJX5uRb2Vo17ojGhQNGOS_yqniX-Uxkc	2022-04-12 21:50:57.805172+00	2022-04-13 21:50:57+00	1	eeb7bd94952141b2b4297ecedf2a55b7
26	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjY5NiwiaWF0IjoxNjQ5ODAwMjk2LCJqdGkiOiI4MWMyYTMwNWRkMWU0MjFlODY1OWY0ZjU1MzNiNjBiMyIsInVzZXJfaWQiOjF9.a8SfzFuFSc2uzSDJscnMkomzcpqeg-0AzDlPstwSI-4	2022-04-12 21:51:36.487854+00	2022-04-13 21:51:36+00	1	81c2a305dd1e421e8659f4f5533b60b3
27	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njc2MywiaWF0IjoxNjQ5ODAwMzYzLCJqdGkiOiJjZDAwNjYwMDRjMGI0ZjIxODhhOGNlMmNmNmEzZDEzOSIsInVzZXJfaWQiOjF9.ak4eA7YGKPXxzMursOQ1o-Fh9f2wAmlNov0HYfPAjsk	2022-04-12 21:52:43.254158+00	2022-04-13 21:52:43+00	1	cd0066004c0b4f2188a8ce2cf6a3d139
28	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njc5NSwiaWF0IjoxNjQ5ODAwMzk1LCJqdGkiOiI3ODQ3N2ExNDMzMzg0OGU4YmEyYmI4ZDExNmI0MjE2NSIsInVzZXJfaWQiOjF9.5Bs16sBw6PP9oBodBORtTcruEWEGa3GaOAvH-fnxxr8	2022-04-12 21:53:15.861749+00	2022-04-13 21:53:15+00	1	78477a14333848e8ba2bb8d116b42165
29	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjgyMSwiaWF0IjoxNjQ5ODAwNDIxLCJqdGkiOiI2OWUxNGExMmU1Nzk0ZjMwYmE2OGQ1NGEyYTVlNGFmZSIsInVzZXJfaWQiOjF9.mpdXZkjFQNhi_bvX1_18lGLbbAg_nmM7SDxYfG0X5m4	2022-04-12 21:53:41.211179+00	2022-04-13 21:53:41+00	1	69e14a12e5794f30ba68d54a2a5e4afe
30	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njg0MiwiaWF0IjoxNjQ5ODAwNDQyLCJqdGkiOiI3NGU3ODZlMDA3NDM0YjYzODE1ZWE3MjE4M2RiMmQ5ZCIsInVzZXJfaWQiOjF9.CfGBIx2HvnFnqej1XtiOms32cH0NUtjQ40w8xOHnQCQ	2022-04-12 21:54:02.956655+00	2022-04-13 21:54:02+00	1	74e786e007434b63815ea72183db2d9d
31	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njg2NSwiaWF0IjoxNjQ5ODAwNDY1LCJqdGkiOiJmNDViZGE3MGJkMGM0MjZiOTgxNjExOWQwYTBiZjQxYSIsInVzZXJfaWQiOjF9.QGw4btH2YHVe5uv8RXL8EasUlp4LSypXDFGrjrC2KFE	2022-04-12 21:54:25.983518+00	2022-04-13 21:54:25+00	1	f45bda70bd0c426b9816119d0a0bf41a
32	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njg3OCwiaWF0IjoxNjQ5ODAwNDc4LCJqdGkiOiIwNDExNGExMmY2NmE0NDAwYjE4YTFjMmViYjkyZTM2ZCIsInVzZXJfaWQiOjF9.nSKpM2odtCvvg4a6sJ5UgxyEooW9X3Hg6tTewJpAIng	2022-04-12 21:54:38.460198+00	2022-04-13 21:54:38+00	1	04114a12f66a4400b18a1c2ebb92e36d
33	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njg5MSwiaWF0IjoxNjQ5ODAwNDkxLCJqdGkiOiI0ODZjYmJjNjkxOTI0NDdlODQ0YzdkZWIxZmM2ZDAyMyIsInVzZXJfaWQiOjF9.zGMUfnDXx4V9_5fUUYlnAMTy64zsOEvM9DsBnrP-ILM	2022-04-12 21:54:51.762039+00	2022-04-13 21:54:51+00	1	486cbbc69192447e844c7deb1fc6d023
34	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjkzOSwiaWF0IjoxNjQ5ODAwNTM5LCJqdGkiOiJiOTAwNzdhZjYwYWM0MmE2OWUwNGY4MjkzYThiMzUzNSIsInVzZXJfaWQiOjF9._93YWmAAdFUOfLFzbtxuJXmxLhHYGIdHHRMTUFH2lBY	2022-04-12 21:55:39.459335+00	2022-04-13 21:55:39+00	1	b90077af60ac42a69e04f8293a8b3535
35	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njk0NCwiaWF0IjoxNjQ5ODAwNTQ0LCJqdGkiOiI3MmIzMzFhNmNmM2Y0MmQxOTg0YTVhZTEzMWNmZGY2ZCIsInVzZXJfaWQiOjF9.4yTHDsOLow9xvfVyl-HRARFc5CpDX0OZ2CMaLmB4TK8	2022-04-12 21:55:44.537137+00	2022-04-13 21:55:44+00	1	72b331a6cf3f42d1984a5ae131cfdf6d
36	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzAwMSwiaWF0IjoxNjQ5ODAwNjAxLCJqdGkiOiJkNmY2Y2VlYzk1MWY0NzYxYWUzMDVlNmM4MWVhNDNhNiIsInVzZXJfaWQiOjF9.ir119BJ1pddKDvZOOeGeUw_pmPCLUQhH9bTGK0t-Hn0	2022-04-12 21:56:41.854511+00	2022-04-13 21:56:41+00	1	d6f6ceec951f4761ae305e6c81ea43a6
37	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzExMywiaWF0IjoxNjQ5ODAwNzEzLCJqdGkiOiJhMjMxNWJiY2NmYmM0Mjg5OWY3MWM0MTI0NjQ0N2YxYyIsInVzZXJfaWQiOjF9.41Rz0W09p8ICwzUsp8J1Tj2Ygd88VZsQZeXhbkSwL60	2022-04-12 21:58:33.342935+00	2022-04-13 21:58:33+00	1	a2315bbccfbc42899f71c41246447f1c
38	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzEzNywiaWF0IjoxNjQ5ODAwNzM3LCJqdGkiOiJiZTI5MzI4OGQxZjg0NTU1ODdiMTAyMzk0ZjcxYzhhMiIsInVzZXJfaWQiOjF9.Vgx8t_sKyatQTcbofrUTPHQiWb_V58lKcdxHNWTEQg8	2022-04-12 21:58:57.072788+00	2022-04-13 21:58:57+00	1	be293288d1f8455587b102394f71c8a2
39	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzIzNSwiaWF0IjoxNjQ5ODAwODM1LCJqdGkiOiJmZGQ3YmU5NmI1Nzk0YmRjOTFhNjFlYmQxMzczN2QzNSIsInVzZXJfaWQiOjF9.Yx2N6Uryb0RAN7JrnoYam8ZH_83QMujkW5IyvwZITRs	2022-04-12 22:00:35.873538+00	2022-04-13 22:00:35+00	1	fdd7be96b5794bdc91a61ebd13737d35
40	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzI1OCwiaWF0IjoxNjQ5ODAwODU4LCJqdGkiOiI0MjJiMjZhODg1MGE0YTdjYTdlMTU0MDJiNTQ4Njg5NiIsInVzZXJfaWQiOjF9.3pebSVduJFV8ee1JIZeLuHpvv9IysfbK9qZybwIn4HA	2022-04-12 22:00:58.556101+00	2022-04-13 22:00:58+00	1	422b26a8850a4a7ca7e15402b5486896
41	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzI3NSwiaWF0IjoxNjQ5ODAwODc1LCJqdGkiOiI0ODM4YmQ0NGNjNTQ0NzVhODNkZDI1ZTgxYTFkMTk0YSIsInVzZXJfaWQiOjF9.EH8ViqBTDpSe9hEPEC_bogvCGcyMGDFWrxMvs7pslMk	2022-04-12 22:01:15.978904+00	2022-04-13 22:01:15+00	1	4838bd44cc54475a83dd25e81a1d194a
42	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzM2MywiaWF0IjoxNjQ5ODAwOTYzLCJqdGkiOiI3ZjY0ZjBkYjU4YTc0ZjRmYjVhODkxMDFkYTk2NjcxNyIsInVzZXJfaWQiOjF9.b467Uj65GDlHrzLBjqoNDcRjtyhX5wlOo2uSkW5lOTQ	2022-04-12 22:02:43.78785+00	2022-04-13 22:02:43+00	1	7f64f0db58a74f4fb5a89101da966717
43	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzM4NCwiaWF0IjoxNjQ5ODAwOTg0LCJqdGkiOiI3ZTk5NTkyMWM0MTY0ZTczOGE4MWQ1YmU4ZDBlZDRiYSIsInVzZXJfaWQiOjF9.1im-m1AW1wGRA67wkELajGS1EvU_dpnYKJzUfilkGS8	2022-04-12 22:03:04.713598+00	2022-04-13 22:03:04+00	1	7e995921c4164e738a81d5be8d0ed4ba
44	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzM5MywiaWF0IjoxNjQ5ODAwOTkzLCJqdGkiOiJkYzVhZDEzZjE3MDM0ZDMyOTMyZTViMDgyYjdiMTcxMCIsInVzZXJfaWQiOjF9.nI3c8mpuUOnJ74MvhwXGP8UXiY4ikn9Dc1m0GUmSPLQ	2022-04-12 22:03:13.387029+00	2022-04-13 22:03:13+00	1	dc5ad13f17034d32932e5b082b7b1710
45	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTk0OTE2MywiaWF0IjoxNjQ5ODYyNzYzLCJqdGkiOiJmN2E2MDg4OTIxMDI0NWFiYjAzM2ZiNGRjOTYwZjg2OCIsInVzZXJfaWQiOjF9.7dpqq3HXNX0EhSwfnSMbA6aSrO29dzoz1OQPv5pU5Sg	2022-04-13 15:12:43.848285+00	2022-04-14 15:12:43+00	1	f7a60889210245abb033fb4dc960f868
46	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTk0OTE3MSwiaWF0IjoxNjQ5ODYyNzcxLCJqdGkiOiIyNjY3ZTVhMjA2Nzg0MjU4OTljNTYxNjgxOTBkN2E5YSIsInVzZXJfaWQiOjF9.WSsR1RoettjZWem8BM2YZ0yDCKI7PaKezk7AvfBaRmM	2022-04-13 15:12:51.538543+00	2022-04-14 15:12:51+00	1	2667e5a20678425899c56168190d7a9a
47	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTk0OTI4NywiaWF0IjoxNjQ5ODYyODg3LCJqdGkiOiJmZGI0MTBkNWE2NzM0ZmMxOTY3OTdkOTQ5NTQ4Njg3MCIsInVzZXJfaWQiOjF9.ntXlNOlFNz_BfTAmvQ99JiL4QbdXBUpslWxq2gKFyD8	2022-04-13 15:14:47.887918+00	2022-04-14 15:14:47+00	1	fdb410d5a6734fc196797d9495486870
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: books_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.books_author_id_seq', 1, false);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1, false);


--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.books_booksauthors_id_seq', 1, false);


--
-- Name: books_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.books_genre_id_seq', 1, false);


--
-- Name: books_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.books_location_id_seq', 1, false);


--
-- Name: books_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.books_publisher_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 12, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_luna
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 47, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: books_author books_author_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_author
    ADD CONSTRAINT books_author_pkey PRIMARY KEY (id);


--
-- Name: books_book books_book_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);


--
-- Name: books_booksauthors books_booksauthors_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_pkey PRIMARY KEY (id);


--
-- Name: books_genre books_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_genre
    ADD CONSTRAINT books_genre_pkey PRIMARY KEY (id);


--
-- Name: books_location books_location_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_location
    ADD CONSTRAINT books_location_pkey PRIMARY KEY (id);


--
-- Name: books_publisher books_publisher_location_id_key; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_publisher
    ADD CONSTRAINT books_publisher_location_id_key UNIQUE (location_id);


--
-- Name: books_publisher books_publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_publisher
    ADD CONSTRAINT books_publisher_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: books_book_genre_id_f94e1a9b; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX books_book_genre_id_f94e1a9b ON public.books_book USING btree (genre_id);


--
-- Name: books_book_publisher_id_189e6c56; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX books_book_publisher_id_189e6c56 ON public.books_book USING btree (publisher_id);


--
-- Name: books_booksauthors_author_id_799022ff; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX books_booksauthors_author_id_799022ff ON public.books_booksauthors USING btree (author_id);


--
-- Name: books_booksauthors_book_id_f6bd8a7e; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX books_booksauthors_book_id_f6bd8a7e ON public.books_booksauthors USING btree (book_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: francisco_luna
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_book books_book_genre_id_f94e1a9b_fk_books_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_genre_id_f94e1a9b_fk_books_genre_id FOREIGN KEY (genre_id) REFERENCES public.books_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_book books_book_publisher_id_189e6c56_fk_books_publisher_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_publisher_id_189e6c56_fk_books_publisher_id FOREIGN KEY (publisher_id) REFERENCES public.books_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_author_id_799022ff_fk_books_author_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_author_id_799022ff_fk_books_author_id FOREIGN KEY (author_id) REFERENCES public.books_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_book_id_f6bd8a7e_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_book_id_f6bd8a7e_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_publisher books_publisher_location_id_0458a3a1_fk_books_location_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.books_publisher
    ADD CONSTRAINT books_publisher_location_id_0458a3a1_fk_books_location_id FOREIGN KEY (location_id) REFERENCES public.books_location(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: francisco_luna
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

