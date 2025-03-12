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
    name character varying(20) NOT NULL,
    galaxy_description text NOT NULL,
    empty_column1 integer,
    empty_column2 integer
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
    name character varying(20) NOT NULL,
    distance_from_others numeric(10,1),
    moon_description text NOT NULL,
    planet_id integer NOT NULL,
    empty_unique integer
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    number_of_people_billion integer,
    planet_description text NOT NULL,
    is_spherical boolean,
    star_id integer NOT NULL,
    has_life boolean,
    empty_unique integer
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: rocket; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rocket (
    rocket_id integer NOT NULL,
    name character varying(20),
    column3 integer NOT NULL,
    column4 integer NOT NULL,
    empty_unique integer
);


ALTER TABLE public.rocket OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rocket_rocket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rocket_rocket_id_seq OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rocket_rocket_id_seq OWNED BY public.rocket.rocket_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    number_of_years integer,
    star_description text NOT NULL,
    galaxy_id integer NOT NULL,
    empty_unique integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: rocket rocket_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket ALTER COLUMN rocket_id SET DEFAULT nextval('public.rocket_rocket_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Andromeda, which is shortened from Andromeda Galaxy, gets its name from the area of the sky in which it appears, the constellation of Andromeda.', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxies', 'Appearance is similar to an insects antennae.', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Barnards Galaxy', 'Named after Edward Emerson Barnard', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Bear Paw Galaxy', 'It resembles the appearance of a bears claw', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Blinking Galaxy', 'Its difficulty of viewing in a small telescope and tendency to go in and out of view.', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Butterfly Galaxies', 'Looks are similar to a butterfly', NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Cigar Galaxy', 'Appears similar in shape to a cigar', NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Milky Way', 'The Milky Way is the galaxy that includes the Solar System, with the name describing the galaxys appearance from Earth', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earths Moon', NULL, 'Makes Earth more livable', 3, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, 'Small Moon', 4, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, 'Small Moon', 4, NULL);
INSERT INTO public.moon VALUES (4, 'UNKNOWN', NULL, 'Jupiters Moon', 5, NULL);
INSERT INTO public.moon VALUES (5, 'UNKNOWN', NULL, 'Jupiters Moon', 5, NULL);
INSERT INTO public.moon VALUES (6, 'UNKNOWN', NULL, 'Jupiters Moon', 5, NULL);
INSERT INTO public.moon VALUES (7, 'UNKNOWN', NULL, 'Jupiters Moon', 5, NULL);
INSERT INTO public.moon VALUES (8, 'UNKNOWN', NULL, 'Jupiters Moon', 5, NULL);
INSERT INTO public.moon VALUES (9, 'UNKNOWN', NULL, 'Saturns Moon', 6, NULL);
INSERT INTO public.moon VALUES (10, 'UNKNOWN', NULL, 'Saturns Moon', 6, NULL);
INSERT INTO public.moon VALUES (11, 'UNKNOWN', NULL, 'Saturns Moon', 6, NULL);
INSERT INTO public.moon VALUES (12, 'UNKNOWN', NULL, 'Saturns Moon', 6, NULL);
INSERT INTO public.moon VALUES (13, 'UNKNOWN', NULL, 'Neptunes Moon', 8, NULL);
INSERT INTO public.moon VALUES (14, 'UNKNOWN', NULL, 'Neptunes Moon', 8, NULL);
INSERT INTO public.moon VALUES (15, 'UNKNOWN', NULL, 'Neptunes Moon', 8, NULL);
INSERT INTO public.moon VALUES (16, 'UNKNOWN', NULL, 'Neptunes Moon', 8, NULL);
INSERT INTO public.moon VALUES (17, 'UNKNOWN', NULL, 'Neptunes Moon', 8, NULL);
INSERT INTO public.moon VALUES (18, 'UNKNOWN', NULL, 'Neptunes Moon', 8, NULL);
INSERT INTO public.moon VALUES (19, 'UNKNOWN', NULL, 'Neptunes Moon', 8, NULL);
INSERT INTO public.moon VALUES (20, 'UNKNOWN', NULL, 'Neptunes Moon', 8, NULL);
INSERT INTO public.moon VALUES (21, 'UNKNOWN', NULL, 'Neptunes Moon', 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'MERCURY', 0, 'The swiftest planet', true, 2, false, NULL);
INSERT INTO public.planet VALUES (2, 'VENUS', 0, 'Earths superheated twin', true, 2, false, NULL);
INSERT INTO public.planet VALUES (3, 'EARTH', 8, 'Our Homeland', true, 2, true, NULL);
INSERT INTO public.planet VALUES (4, 'MARS', 0, 'The red planet', true, 2, false, NULL);
INSERT INTO public.planet VALUES (5, 'JUPITER', 0, 'King of the plantes', true, 2, false, NULL);
INSERT INTO public.planet VALUES (6, 'SATURN', 0, 'Jewel of the solar system', true, 2, false, NULL);
INSERT INTO public.planet VALUES (7, 'URANUS', 0, 'The original ice giant', true, 2, false, NULL);
INSERT INTO public.planet VALUES (8, 'NEPTUNE', 0, 'The farthest in our system', true, 2, false, NULL);
INSERT INTO public.planet VALUES (9, '61 Virginis', 0, 'A debris disc', true, 3, false, NULL);
INSERT INTO public.planet VALUES (10, 'Epsilon Indi A', 0, 'Nearest exoplanet directly imaged', true, 3, false, NULL);
INSERT INTO public.planet VALUES (11, 'Tau Ceti', 0, '4 disputed candidates', true, 3, false, NULL);
INSERT INTO public.planet VALUES (12, 'TZ Arietis', 0, '2 refuted candidates', true, 3, false, NULL);


--
-- Data for Name: rocket; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rocket VALUES (1, 'UNKNOWN', 0, 1, NULL);
INSERT INTO public.rocket VALUES (2, 'UNKNOWN', 0, 2, NULL);
INSERT INTO public.rocket VALUES (3, 'UNKNOWN', 0, 3, NULL);
INSERT INTO public.rocket VALUES (4, 'UNKNOWN', 0, 4, NULL);
INSERT INTO public.rocket VALUES (5, 'UNKNOWN', 0, 5, NULL);
INSERT INTO public.rocket VALUES (6, 'UNKNOWN', 0, 5, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'HD 34445', 150, 'Has 1 confirmed and 5 unconfirmed exoplanets.', 8, NULL);
INSERT INTO public.star VALUES (2, 'HD 27482', 151, 'The Closest Blue Straggler star to Earth. Part of Hyades Cluster.', 8, NULL);
INSERT INTO public.star VALUES (3, 'HR 8210', 154, 'The closest type Ia supernova candidate to Earth.', 8, NULL);
INSERT INTO public.star VALUES (4, 'HD 174429', 154, 'Has one known exoplanet.', 8, NULL);
INSERT INTO public.star VALUES (5, 'HD 3167', 154, 'Has 4 exoplanets.', 8, NULL);
INSERT INTO public.star VALUES (6, 'HIP 34269', 154, 'Has 4 exoplanets.', 8, NULL);
INSERT INTO public.star VALUES (7, 'HD 204313', 157, 'Has 3 exoplanets.', 8, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rocket_rocket_id_seq', 6, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_empty_column1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_empty_column1_key UNIQUE (empty_column1);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_empty_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_empty_unique_key UNIQUE (empty_unique);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_empty_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_empty_unique_key UNIQUE (empty_unique);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: rocket rocket_empty_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_empty_unique_key UNIQUE (empty_unique);


--
-- Name: rocket rocket_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_pkey PRIMARY KEY (rocket_id);


--
-- Name: star star_empty_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_empty_unique_key UNIQUE (empty_unique);


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
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

