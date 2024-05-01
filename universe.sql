--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: chai; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.chai (
    name character varying(30) NOT NULL,
    gender boolean,
    age integer NOT NULL,
    chai_id integer NOT NULL,
    info text
);


ALTER TABLE public.chai OWNER TO freecodecamp;

--
-- Name: chai_chai_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.chai_chai_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chai_chai_id_seq OWNER TO freecodecamp;

--
-- Name: chai_chai_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.chai_chai_id_seq OWNED BY public.chai.chai_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    price numeric(4,1),
    info text,
    gender boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    gender boolean,
    moon_id integer NOT NULL,
    info text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    gender boolean,
    planet_id integer NOT NULL,
    info text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    gender boolean,
    star_id integer NOT NULL,
    info text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: chai chai_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.chai ALTER COLUMN chai_id SET DEFAULT nextval('public.chai_chai_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: chai; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.chai VALUES ('honey', true, 12, 1, NULL);
INSERT INTO public.chai VALUES ('honey', true, 12, 2, NULL);
INSERT INTO public.chai VALUES ('honey', true, 12, 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('chai', 13, NULL, 'malaysia', NULL, 1);
INSERT INTO public.galaxy VALUES ('honey', 12, NULL, NULL, true, 2);
INSERT INTO public.galaxy VALUES ('honey', 12, NULL, NULL, true, 3);
INSERT INTO public.galaxy VALUES ('honey', 12, NULL, NULL, true, 4);
INSERT INTO public.galaxy VALUES ('honey', 12, NULL, NULL, true, 5);
INSERT INTO public.galaxy VALUES ('honey', 12, NULL, NULL, true, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('chiu', 12, true, 1, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 2, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 3, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 4, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 5, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 6, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 7, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 8, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 9, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 10, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 11, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 12, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 13, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 14, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 15, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 16, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 17, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 18, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 19, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 20, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 21, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 22, NULL, 2);
INSERT INTO public.moon VALUES ('honey', 12, true, 23, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('jennie', 12, false, 1, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 2, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 3, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 4, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 5, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 6, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 7, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 8, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 9, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 10, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 11, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 12, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 13, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 14, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 15, NULL, 2);
INSERT INTO public.planet VALUES ('honey', 12, true, 16, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('key', 12, false, 2, NULL, 2);
INSERT INTO public.star VALUES ('honey', 12, true, 3, NULL, 2);
INSERT INTO public.star VALUES ('honey', 12, true, 4, NULL, 2);
INSERT INTO public.star VALUES ('honey', 12, true, 5, NULL, 2);
INSERT INTO public.star VALUES ('honey', 12, true, 6, NULL, 2);
INSERT INTO public.star VALUES ('honey', 12, true, 7, NULL, 2);
INSERT INTO public.star VALUES ('honey', 12, true, 8, NULL, 2);
INSERT INTO public.star VALUES ('b', 13, NULL, 1, NULL, 2);


--
-- Name: chai_chai_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.chai_chai_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: chai chai_info_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.chai
    ADD CONSTRAINT chai_info_key UNIQUE (info);


--
-- Name: chai chai_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.chai
    ADD CONSTRAINT chai_pkey PRIMARY KEY (chai_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_info_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_info_key UNIQUE (info);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_info_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_info_key UNIQUE (info);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_info_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_info_key UNIQUE (info);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_info; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_info UNIQUE (info);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

