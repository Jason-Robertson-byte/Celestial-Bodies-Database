--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(30),
    habitable boolean NOT NULL,
    type text,
    distance_from_earth numeric
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
-- Name: habitable_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.habitable_system (
    galaxy_id integer NOT NULL,
    aliens_detected boolean,
    friendly boolean,
    habitable_system_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.habitable_system OWNER TO freecodecamp;

--
-- Name: habitable_habitable_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.habitable_habitable_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.habitable_habitable_system_id_seq OWNER TO freecodecamp;

--
-- Name: habitable_habitable_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.habitable_habitable_system_id_seq OWNED BY public.habitable_system.habitable_system_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    mass numeric,
    gravity numeric
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
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    mass numeric,
    gravity numeric
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    mass numeric,
    brightness_scale integer
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
-- Name: habitable_system habitable_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitable_system ALTER COLUMN habitable_system_id SET DEFAULT nextval('public.habitable_habitable_system_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', true, 'Spiral', 9);
INSERT INTO public.galaxy VALUES (2, 'Corvus', false, 'Elipse', 7);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', true, 'Spherical', 120);
INSERT INTO public.galaxy VALUES (4, 'Condor', true, 'Pinwheel', 230);
INSERT INTO public.galaxy VALUES (5, 'Circinus', false, 'Spoke', 280);
INSERT INTO public.galaxy VALUES (6, 'Medusa merger', true, 'Snakes', 330);


--
-- Data for Name: habitable_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.habitable_system VALUES (1, true, true, 1, 'Ewoks');
INSERT INTO public.habitable_system VALUES (3, true, false, 2, 'predators');
INSERT INTO public.habitable_system VALUES (6, true, false, 3, 'Sith');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Hastur Purple', 1, 5.4, 3.4);
INSERT INTO public.moon VALUES (2, 'Mayhem Red', 1, 5.3, 3.6);
INSERT INTO public.moon VALUES (3, 'Baal Crimson', 1, 5.3, 3.6);
INSERT INTO public.moon VALUES (4, 'Beherit Red', 2, 5.4, 3.8);
INSERT INTO public.moon VALUES (5, 'Tiamat Orange', 3, 6.6, 9.9);
INSERT INTO public.moon VALUES (6, 'Ishtar Pink', 4, 7.7, 9.3);
INSERT INTO public.moon VALUES (7, 'Marduk Yellow', 4, 8.8, 9.9);
INSERT INTO public.moon VALUES (8, 'Lilth Yellow', 5, 3.3, 2.2);
INSERT INTO public.moon VALUES (9, 'Misfits Green', 6, 1.1, 2.2);
INSERT INTO public.moon VALUES (10, 'Bloodfest Crimson', 6, 1.3, 3.4);
INSERT INTO public.moon VALUES (11, 'Braineater Azure', 6, 1.4, 3.3);
INSERT INTO public.moon VALUES (12, 'Undead Flesh', 6, 1.4, 3.7);
INSERT INTO public.moon VALUES (13, 'Resurrection Flesh', 2, 5.5, 6.6);
INSERT INTO public.moon VALUES (14, 'Harvester Flesh', 2, 9.9, 7.7);
INSERT INTO public.moon VALUES (15, 'Hellbound Flesh', 1, 3.2, 2.3);
INSERT INTO public.moon VALUES (16, 'Moonray Flesh', 2, 3.4, 3.4);
INSERT INTO public.moon VALUES (17, 'Riff Green', 3, 3.5, 9.6);
INSERT INTO public.moon VALUES (18, 'Orcish Dermis', 5, 2.7, 9.4);
INSERT INTO public.moon VALUES (19, 'Merm Green', 4, 5.6, 6.7);
INSERT INTO public.moon VALUES (20, 'Greenskin Flesh', 5, 9.8, 2.3);
INSERT INTO public.moon VALUES (21, 'Surfer Orc Flesh', 3, 5.5, 6.6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Scale 75', 1, 10.5, 4.3);
INSERT INTO public.planet VALUES (2, 'Vallejo', 2, 14.5, 3.6);
INSERT INTO public.planet VALUES (3, 'Citadel', 4, 9.5, 18.0);
INSERT INTO public.planet VALUES (4, 'War Colors', 4, 9.8, 11);
INSERT INTO public.planet VALUES (5, 'Kimera', 5, 7.3, 12);
INSERT INTO public.planet VALUES (6, 'Army Painter', 3, 9.2, 4);
INSERT INTO public.planet VALUES (7, 'Daler Rowney', 6, 10.9, 5.2);
INSERT INTO public.planet VALUES (8, 'Golden Artist Colors', 5, 19.4, 6.2);
INSERT INTO public.planet VALUES (9, 'P3', 5, 13.2, 16.9);
INSERT INTO public.planet VALUES (10, 'Reaper', 1, 13.9, 10.3);
INSERT INTO public.planet VALUES (11, 'Badger', 3, 9.9, 8.8);
INSERT INTO public.planet VALUES (12, 'Green Stuff World', 2, 8.8, 9.7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Ceres Omega', 1, 4.2, 10);
INSERT INTO public.star VALUES (2, 'Green goblin', 2, 5.4, 8);
INSERT INTO public.star VALUES (3, 'Blue Lantern', 3, 9.4, 6);
INSERT INTO public.star VALUES (4, 'Red Dwarf', 4, 5.8, 3);
INSERT INTO public.star VALUES (5, 'White knight', 5, 5.9, 8);
INSERT INTO public.star VALUES (6, 'Black Worm', 6, 13.0, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: habitable_habitable_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.habitable_habitable_system_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: habitable_system habitable_habitable_system_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitable_system
    ADD CONSTRAINT habitable_habitable_system_id_key UNIQUE (habitable_system_id);


--
-- Name: habitable_system habitable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitable_system
    ADD CONSTRAINT habitable_pkey PRIMARY KEY (habitable_system_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

