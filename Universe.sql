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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    is_fav integer,
    is_spherical boolean
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
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life boolean,
    planet_id integer,
    is_spherical boolean
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
-- Name: my_fav; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.my_fav (
    my_fav_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description character varying(100)
);


ALTER TABLE public.my_fav OWNER TO freecodecamp;

--
-- Name: my_fav_my_fav_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.my_fav_my_fav_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.my_fav_my_fav_id_seq OWNER TO freecodecamp;

--
-- Name: my_fav_my_fav_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.my_fav_my_fav_id_seq OWNED BY public.my_fav.my_fav_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life boolean,
    star_id integer,
    is_spherical boolean
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
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_from_earth numeric(10,4),
    galaxy_id integer,
    is_fav integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: my_fav my_fav_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_fav ALTER COLUMN my_fav_id SET DEFAULT nextval('public.my_fav_my_fav_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way1', 'Descrition1', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way 2', 'Descrition 2', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Far far waay', 'description', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Milky 10', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Milky 20', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Milky 30', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Moon 2', false, 2, NULL);
INSERT INTO public.moon VALUES (3, 'Moon 3', false, 2, NULL);
INSERT INTO public.moon VALUES (4, 'Earth 210', NULL, 3, NULL);
INSERT INTO public.moon VALUES (5, 'Earth 211', NULL, 3, NULL);
INSERT INTO public.moon VALUES (6, 'Earth 122', NULL, 3, NULL);
INSERT INTO public.moon VALUES (7, 'Earth 123', NULL, 3, NULL);
INSERT INTO public.moon VALUES (8, 'Earth 142', NULL, 3, NULL);
INSERT INTO public.moon VALUES (9, 'Earth 125', NULL, 3, NULL);
INSERT INTO public.moon VALUES (10, 'M 210', NULL, 3, NULL);
INSERT INTO public.moon VALUES (11, 'M 211', NULL, 3, NULL);
INSERT INTO public.moon VALUES (12, 'M 122', NULL, 3, NULL);
INSERT INTO public.moon VALUES (13, 'M 123', NULL, 3, NULL);
INSERT INTO public.moon VALUES (14, 'M 142', NULL, 3, NULL);
INSERT INTO public.moon VALUES (15, 'M 125', NULL, 3, NULL);
INSERT INTO public.moon VALUES (16, 'M0 210', NULL, 3, NULL);
INSERT INTO public.moon VALUES (17, 'M0 211', NULL, 3, NULL);
INSERT INTO public.moon VALUES (18, 'M0 122', NULL, 3, NULL);
INSERT INTO public.moon VALUES (19, 'M0 123', NULL, 3, NULL);
INSERT INTO public.moon VALUES (20, 'M0 142', NULL, 3, NULL);
INSERT INTO public.moon VALUES (21, 'M0 125', NULL, 3, NULL);


--
-- Data for Name: my_fav; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.my_fav VALUES (1, '1', NULL);
INSERT INTO public.my_fav VALUES (2, '2', NULL);
INSERT INTO public.my_fav VALUES (3, '3', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', false, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Earth 2', false, 2, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', NULL, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Earth 10', NULL, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Earth 11', NULL, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Earth 12', NULL, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Earth 13', NULL, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Earth 14', NULL, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Earth 15', NULL, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Earth 210', NULL, 1, NULL);
INSERT INTO public.planet VALUES (11, 'Earth 211', NULL, 1, NULL);
INSERT INTO public.planet VALUES (12, 'Earth 122', NULL, 1, NULL);
INSERT INTO public.planet VALUES (13, 'Earth 123', NULL, 1, NULL);
INSERT INTO public.planet VALUES (14, 'Earth 142', NULL, 1, NULL);
INSERT INTO public.planet VALUES (15, 'Earth 125', NULL, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 190.8900, 1, NULL);
INSERT INTO public.star VALUES (2, 'Sun Twin brother', 190.8900, 2, NULL);
INSERT INTO public.star VALUES (3, 'Sun Twin brother 3', 190.8900, 2, NULL);
INSERT INTO public.star VALUES (4, 'Star 1', NULL, 1, NULL);
INSERT INTO public.star VALUES (5, 'Star 2', NULL, 1, NULL);
INSERT INTO public.star VALUES (6, 'Star 3', NULL, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: my_fav_my_fav_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.my_fav_my_fav_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: my_fav my_fav_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_fav
    ADD CONSTRAINT my_fav_name_key UNIQUE (name);


--
-- Name: my_fav my_fav_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_fav
    ADD CONSTRAINT my_fav_pkey PRIMARY KEY (my_fav_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

