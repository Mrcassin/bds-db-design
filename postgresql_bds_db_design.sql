--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

-- Started on 2021-11-02 17:43:31

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
-- TOC entry 214 (class 1259 OID 16488)
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address (
    address_id integer NOT NULL,
    city character varying(45) NOT NULL,
    street character varying(45) NOT NULL,
    house_number character varying(45) NOT NULL,
    zip_code character varying(45) NOT NULL
);


ALTER TABLE public.address OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16487)
-- Name: address_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.address_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_address_id_seq OWNER TO postgres;

--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 213
-- Name: address_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.address_address_id_seq OWNED BY public.address.address_id;


--
-- TOC entry 217 (class 1259 OID 16508)
-- Name: cinema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cinema (
    cinema_id integer NOT NULL,
    cinema_name character varying(45) NOT NULL,
    address_id integer NOT NULL
);


ALTER TABLE public.cinema OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16507)
-- Name: cinema_cinema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cinema_cinema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cinema_cinema_id_seq OWNER TO postgres;

--
-- TOC entry 3433 (class 0 OID 0)
-- Dependencies: 216
-- Name: cinema_cinema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cinema_cinema_id_seq OWNED BY public.cinema.cinema_id;


--
-- TOC entry 221 (class 1259 OID 16532)
-- Name: genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genre (
    genre_id integer NOT NULL,
    genre_type character varying(45) NOT NULL
);


ALTER TABLE public.genre OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16531)
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genre_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_genre_id_seq OWNER TO postgres;

--
-- TOC entry 3434 (class 0 OID 0)
-- Dependencies: 220
-- Name: genre_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genre_genre_id_seq OWNED BY public.genre.genre_id;


--
-- TOC entry 219 (class 1259 OID 16520)
-- Name: hall; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hall (
    hall_id integer NOT NULL,
    hall_name character varying(3) NOT NULL,
    cinema_id integer NOT NULL
);


ALTER TABLE public.hall OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16519)
-- Name: hall_hall_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hall_hall_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hall_hall_id_seq OWNER TO postgres;

--
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 218
-- Name: hall_hall_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hall_hall_id_seq OWNED BY public.hall.hall_id;


--
-- TOC entry 210 (class 1259 OID 16469)
-- Name: membership; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.membership (
    membership_id integer NOT NULL,
    membership_type character varying(45) NOT NULL,
    expiration date NOT NULL
);


ALTER TABLE public.membership OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16468)
-- Name: membership_membership_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.membership_membership_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.membership_membership_id_seq OWNER TO postgres;

--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 209
-- Name: membership_membership_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.membership_membership_id_seq OWNED BY public.membership.membership_id;


--
-- TOC entry 223 (class 1259 OID 16539)
-- Name: movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie (
    movie_id integer NOT NULL,
    title character varying(45) NOT NULL,
    duration integer NOT NULL,
    description text NOT NULL,
    banner text
);


ALTER TABLE public.movie OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16547)
-- Name: movie_has_genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_has_genre (
    movie_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE public.movie_has_genre OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16538)
-- Name: movie_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movie_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movie_movie_id_seq OWNER TO postgres;

--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 222
-- Name: movie_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movie_movie_id_seq OWNED BY public.movie.movie_id;


--
-- TOC entry 229 (class 1259 OID 16591)
-- Name: news; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news (
    news_id integer NOT NULL,
    title character varying(45) NOT NULL,
    article text NOT NULL,
    cinema_id integer NOT NULL,
    photo text
);


ALTER TABLE public.news OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16590)
-- Name: news_news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_news_id_seq OWNER TO postgres;

--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 228
-- Name: news_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_news_id_seq OWNED BY public.news.news_id;


--
-- TOC entry 231 (class 1259 OID 16605)
-- Name: seat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seat (
    seat_id integer NOT NULL,
    availability boolean NOT NULL,
    show_id integer NOT NULL,
    hall_id integer NOT NULL
);


ALTER TABLE public.seat OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16604)
-- Name: seat_seat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seat_seat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seat_seat_id_seq OWNER TO postgres;

--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 230
-- Name: seat_seat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seat_seat_id_seq OWNED BY public.seat.seat_id;


--
-- TOC entry 226 (class 1259 OID 16561)
-- Name: show; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.show (
    show_id integer NOT NULL,
    show_start timestamp without time zone NOT NULL,
    show_end timestamp without time zone NOT NULL,
    price integer NOT NULL,
    movie_id integer NOT NULL,
    hall_id integer NOT NULL
);


ALTER TABLE public.show OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16560)
-- Name: show_show_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.show_show_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.show_show_id_seq OWNER TO postgres;

--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 225
-- Name: show_show_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.show_show_id_seq OWNED BY public.show.show_id;


--
-- TOC entry 212 (class 1259 OID 16476)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    user_id integer NOT NULL,
    given_name character varying(45) NOT NULL,
    family_name character varying(45) NOT NULL,
    mail character varying(45) NOT NULL,
    password character varying(45) NOT NULL,
    phone_number integer,
    membership_id integer NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16494)
-- Name: user_has_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_has_address (
    user_id integer NOT NULL,
    address_id integer NOT NULL,
    address_type character varying(45) NOT NULL
);


ALTER TABLE public.user_has_address OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16577)
-- Name: user_has_show; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_has_show (
    user_id integer NOT NULL,
    show_id integer NOT NULL
);


ALTER TABLE public.user_has_show OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16475)
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_id_seq OWNER TO postgres;

--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 211
-- Name: user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_id_seq OWNED BY public."user".user_id;


--
-- TOC entry 3223 (class 2604 OID 16491)
-- Name: address address_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address ALTER COLUMN address_id SET DEFAULT nextval('public.address_address_id_seq'::regclass);


--
-- TOC entry 3224 (class 2604 OID 16511)
-- Name: cinema cinema_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cinema ALTER COLUMN cinema_id SET DEFAULT nextval('public.cinema_cinema_id_seq'::regclass);


--
-- TOC entry 3226 (class 2604 OID 16535)
-- Name: genre genre_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre ALTER COLUMN genre_id SET DEFAULT nextval('public.genre_genre_id_seq'::regclass);


--
-- TOC entry 3225 (class 2604 OID 16523)
-- Name: hall hall_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hall ALTER COLUMN hall_id SET DEFAULT nextval('public.hall_hall_id_seq'::regclass);


--
-- TOC entry 3221 (class 2604 OID 16472)
-- Name: membership membership_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membership ALTER COLUMN membership_id SET DEFAULT nextval('public.membership_membership_id_seq'::regclass);


--
-- TOC entry 3227 (class 2604 OID 16542)
-- Name: movie movie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie ALTER COLUMN movie_id SET DEFAULT nextval('public.movie_movie_id_seq'::regclass);


--
-- TOC entry 3229 (class 2604 OID 16594)
-- Name: news news_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news ALTER COLUMN news_id SET DEFAULT nextval('public.news_news_id_seq'::regclass);


--
-- TOC entry 3230 (class 2604 OID 16608)
-- Name: seat seat_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seat ALTER COLUMN seat_id SET DEFAULT nextval('public.seat_seat_id_seq'::regclass);


--
-- TOC entry 3228 (class 2604 OID 16564)
-- Name: show show_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.show ALTER COLUMN show_id SET DEFAULT nextval('public.show_show_id_seq'::regclass);


--
-- TOC entry 3222 (class 2604 OID 16479)
-- Name: user user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN user_id SET DEFAULT nextval('public.user_user_id_seq'::regclass);


--
-- TOC entry 3409 (class 0 OID 16488)
-- Dependencies: 214
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.address (address_id, city, street, house_number, zip_code) FROM stdin;
\.


--
-- TOC entry 3412 (class 0 OID 16508)
-- Dependencies: 217
-- Data for Name: cinema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cinema (cinema_id, cinema_name, address_id) FROM stdin;
\.


--
-- TOC entry 3416 (class 0 OID 16532)
-- Dependencies: 221
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genre (genre_id, genre_type) FROM stdin;
\.


--
-- TOC entry 3414 (class 0 OID 16520)
-- Dependencies: 219
-- Data for Name: hall; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hall (hall_id, hall_name, cinema_id) FROM stdin;
\.


--
-- TOC entry 3405 (class 0 OID 16469)
-- Dependencies: 210
-- Data for Name: membership; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.membership (membership_id, membership_type, expiration) FROM stdin;
\.


--
-- TOC entry 3418 (class 0 OID 16539)
-- Dependencies: 223
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie (movie_id, title, duration, description, banner) FROM stdin;
\.


--
-- TOC entry 3419 (class 0 OID 16547)
-- Dependencies: 224
-- Data for Name: movie_has_genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie_has_genre (movie_id, genre_id) FROM stdin;
\.


--
-- TOC entry 3424 (class 0 OID 16591)
-- Dependencies: 229
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news (news_id, title, article, cinema_id, photo) FROM stdin;
\.


--
-- TOC entry 3426 (class 0 OID 16605)
-- Dependencies: 231
-- Data for Name: seat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seat (seat_id, availability, show_id, hall_id) FROM stdin;
\.


--
-- TOC entry 3421 (class 0 OID 16561)
-- Dependencies: 226
-- Data for Name: show; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.show (show_id, show_start, show_end, price, movie_id, hall_id) FROM stdin;
\.


--
-- TOC entry 3407 (class 0 OID 16476)
-- Dependencies: 212
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (user_id, given_name, family_name, mail, password, phone_number, membership_id) FROM stdin;
\.


--
-- TOC entry 3410 (class 0 OID 16494)
-- Dependencies: 215
-- Data for Name: user_has_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_has_address (user_id, address_id, address_type) FROM stdin;
\.


--
-- TOC entry 3422 (class 0 OID 16577)
-- Dependencies: 227
-- Data for Name: user_has_show; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_has_show (user_id, show_id) FROM stdin;
\.


--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 213
-- Name: address_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_address_id_seq', 1, false);


--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 216
-- Name: cinema_cinema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cinema_cinema_id_seq', 1, false);


--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 220
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genre_genre_id_seq', 1, false);


--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 218
-- Name: hall_hall_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hall_hall_id_seq', 1, false);


--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 209
-- Name: membership_membership_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.membership_membership_id_seq', 1, false);


--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 222
-- Name: movie_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movie_movie_id_seq', 1, false);


--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 228
-- Name: news_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_news_id_seq', 1, false);


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 230
-- Name: seat_seat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seat_seat_id_seq', 1, false);


--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 225
-- Name: show_show_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.show_show_id_seq', 1, false);


--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 211
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_id_seq', 1, false);


--
-- TOC entry 3236 (class 2606 OID 16493)
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);


--
-- TOC entry 3238 (class 2606 OID 16513)
-- Name: cinema cinema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cinema
    ADD CONSTRAINT cinema_pkey PRIMARY KEY (cinema_id);


--
-- TOC entry 3242 (class 2606 OID 16537)
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);


--
-- TOC entry 3240 (class 2606 OID 16525)
-- Name: hall hall_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hall
    ADD CONSTRAINT hall_pkey PRIMARY KEY (hall_id);


--
-- TOC entry 3232 (class 2606 OID 16474)
-- Name: membership membership_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membership
    ADD CONSTRAINT membership_pkey PRIMARY KEY (membership_id);


--
-- TOC entry 3244 (class 2606 OID 16546)
-- Name: movie movie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (movie_id);


--
-- TOC entry 3248 (class 2606 OID 16598)
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (news_id);


--
-- TOC entry 3250 (class 2606 OID 16610)
-- Name: seat seat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seat
    ADD CONSTRAINT seat_pkey PRIMARY KEY (seat_id);


--
-- TOC entry 3246 (class 2606 OID 16566)
-- Name: show show_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.show
    ADD CONSTRAINT show_pkey PRIMARY KEY (show_id);


--
-- TOC entry 3234 (class 2606 OID 16481)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3254 (class 2606 OID 16514)
-- Name: cinema cinema_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cinema
    ADD CONSTRAINT cinema_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.address(address_id);


--
-- TOC entry 3255 (class 2606 OID 16526)
-- Name: hall hall_cinema_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hall
    ADD CONSTRAINT hall_cinema_id_fkey FOREIGN KEY (cinema_id) REFERENCES public.cinema(cinema_id);


--
-- TOC entry 3257 (class 2606 OID 16555)
-- Name: movie_has_genre movie_has_genre_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_has_genre
    ADD CONSTRAINT movie_has_genre_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(genre_id);


--
-- TOC entry 3256 (class 2606 OID 16550)
-- Name: movie_has_genre movie_has_genre_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_has_genre
    ADD CONSTRAINT movie_has_genre_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movie(movie_id);


--
-- TOC entry 3262 (class 2606 OID 16599)
-- Name: news news_cinema_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_cinema_id_fkey FOREIGN KEY (cinema_id) REFERENCES public.cinema(cinema_id);


--
-- TOC entry 3264 (class 2606 OID 16616)
-- Name: seat seat_hall_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seat
    ADD CONSTRAINT seat_hall_id_fkey FOREIGN KEY (hall_id) REFERENCES public.hall(hall_id);


--
-- TOC entry 3263 (class 2606 OID 16611)
-- Name: seat seat_show_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seat
    ADD CONSTRAINT seat_show_id_fkey FOREIGN KEY (show_id) REFERENCES public.show(show_id);


--
-- TOC entry 3259 (class 2606 OID 16572)
-- Name: show show_hall_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.show
    ADD CONSTRAINT show_hall_id_fkey FOREIGN KEY (hall_id) REFERENCES public.hall(hall_id);


--
-- TOC entry 3258 (class 2606 OID 16567)
-- Name: show show_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.show
    ADD CONSTRAINT show_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movie(movie_id);


--
-- TOC entry 3253 (class 2606 OID 16502)
-- Name: user_has_address user_has_address_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_has_address
    ADD CONSTRAINT user_has_address_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.address(address_id);


--
-- TOC entry 3252 (class 2606 OID 16497)
-- Name: user_has_address user_has_address_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_has_address
    ADD CONSTRAINT user_has_address_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(user_id);


--
-- TOC entry 3261 (class 2606 OID 16585)
-- Name: user_has_show user_has_show_show_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_has_show
    ADD CONSTRAINT user_has_show_show_id_fkey FOREIGN KEY (show_id) REFERENCES public.show(show_id);


--
-- TOC entry 3260 (class 2606 OID 16580)
-- Name: user_has_show user_has_show_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_has_show
    ADD CONSTRAINT user_has_show_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(user_id);


--
-- TOC entry 3251 (class 2606 OID 16482)
-- Name: user user_membership_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_membership_id_fkey FOREIGN KEY (membership_id) REFERENCES public.membership(membership_id);


-- Completed on 2021-11-02 17:43:33

--
-- PostgreSQL database dump complete
--

