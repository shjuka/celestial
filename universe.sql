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
    name character varying(100),
    number_of_stars integer NOT NULL,
    light_years_from_earths integer,
    has_life bit(1),
    description text,
    has_black_hole boolean
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
-- Name: log; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.log (
    "time" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    message character varying(100),
    log_id integer NOT NULL,
    level integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.log OWNER TO freecodecamp;

--
-- Name: log_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.log_id_seq OWNER TO freecodecamp;

--
-- Name: log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.log_id_seq OWNED BY public.log.log_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100),
    planet_id integer NOT NULL,
    age integer,
    distance integer
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
    name character varying(100),
    star_id integer NOT NULL,
    has_water bit(1),
    size integer,
    radius numeric,
    has_oxygen boolean
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
    name character varying(100),
    galaxy_id integer NOT NULL,
    number_of_planet integer DEFAULT 0,
    size integer
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
-- Name: log log_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.log ALTER COLUMN log_id SET DEFAULT nextval('public.log_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'centavar', 1000, 2000, NULL, 'the most remote galaxy', false);
INSERT INTO public.galaxy VALUES (2, 'zafthar', 4000, 2500, NULL, 'the most younggalaxy', false);
INSERT INTO public.galaxy VALUES (3, 'google', 6000, 2500, NULL, 'the most old', false);
INSERT INTO public.galaxy VALUES (4, 'oracle', 9000, 2000, NULL, 'empty', false);
INSERT INTO public.galaxy VALUES (5, 'zeus', 9000, 2000, NULL, 'empty', false);
INSERT INTO public.galaxy VALUES (6, 'vauu', 7000, 2000, NULL, 'empty', false);


--
-- Data for Name: log; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.log VALUES ('2023-09-27 02:16:01.95564', 'created databases', 1, 1, NULL);
INSERT INTO public.log VALUES ('2023-09-27 02:16:01.95564', 'created tables', 2, 1, NULL);
INSERT INTO public.log VALUES ('2023-09-27 02:16:01.95564', 'added data', 3, 1, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 4, 567, 333);
INSERT INTO public.moon VALUES (2, 'yareah', 5, 676, 567);
INSERT INTO public.moon VALUES (3, 'lana', 6, 65, 67);
INSERT INTO public.moon VALUES (4, 'moon4', 7, 7, 7);
INSERT INTO public.moon VALUES (5, 'moon5', 7, 7, 7);
INSERT INTO public.moon VALUES (6, 'moon6', 7, 7, 7);
INSERT INTO public.moon VALUES (7, 'moon7', 7, 7, 7);
INSERT INTO public.moon VALUES (8, 'moon8', 7, 7, 7);
INSERT INTO public.moon VALUES (9, 'moon9', 9, 7, 7);
INSERT INTO public.moon VALUES (10, 'moon10', 9, 7, 7);
INSERT INTO public.moon VALUES (11, 'moon11', 9, 7, 7);
INSERT INTO public.moon VALUES (12, 'moon12', 9, 7, 7);
INSERT INTO public.moon VALUES (13, 'moon13', 9, 7, 7);
INSERT INTO public.moon VALUES (14, 'moon14', 9, 7, 7);
INSERT INTO public.moon VALUES (15, 'moon15', 9, 7, 7);
INSERT INTO public.moon VALUES (16, 'moon16', 9, 7, 7);
INSERT INTO public.moon VALUES (17, 'moon17', 9, 7, 7);
INSERT INTO public.moon VALUES (18, 'moon18', 10, 7, 7);
INSERT INTO public.moon VALUES (19, 'moon19', 10, 7, 7);
INSERT INTO public.moon VALUES (20, 'moon20', 10, 7, 7);
INSERT INTO public.moon VALUES (21, 'moon21', 10, 7, 7);
INSERT INTO public.moon VALUES (23, 'moon23', 10, 7, 7);
INSERT INTO public.moon VALUES (24, 'moon24', 10, 7, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'pluto', 4, NULL, 9, 5, false);
INSERT INTO public.planet VALUES (5, 'mercury', 5, NULL, 5, 6, true);
INSERT INTO public.planet VALUES (6, 'earth', 6, NULL, 8, 8, true);
INSERT INTO public.planet VALUES (7, 'name5', 5, NULL, 1, 1, false);
INSERT INTO public.planet VALUES (8, 'name6', 5, NULL, 1, 1, false);
INSERT INTO public.planet VALUES (9, 'name9', 5, NULL, 1, 1, false);
INSERT INTO public.planet VALUES (10, 'name10', 5, NULL, 1, 1, false);
INSERT INTO public.planet VALUES (11, 'name11', 5, NULL, 1, 1, false);
INSERT INTO public.planet VALUES (21, 'name12', 5, NULL, 1, 1, false);
INSERT INTO public.planet VALUES (13, 'name13', 5, NULL, 1, 1, false);
INSERT INTO public.planet VALUES (14, 'name14', 5, NULL, 1, 1, false);
INSERT INTO public.planet VALUES (15, 'name15', 5, NULL, 1, 1, false);
INSERT INTO public.planet VALUES (16, 'name16', 5, NULL, 1, 1, false);
INSERT INTO public.planet VALUES (17, 'name17', 5, NULL, 1, 1, false);
INSERT INTO public.planet VALUES (18, 'name18', 5, NULL, 1, 1, false);
INSERT INTO public.planet VALUES (19, 'name19', 5, NULL, 1, 1, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'blue', 3, 5, 400);
INSERT INTO public.star VALUES (5, 'red', 1, 6, 67);
INSERT INTO public.star VALUES (6, 'green', 2, 4, 6567);
INSERT INTO public.star VALUES (7, 'sun', 4, 7, 55);
INSERT INTO public.star VALUES (8, 'runo', 4, 6, 75);
INSERT INTO public.star VALUES (9, 'grabl', 4, 6, 745);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 3, true);


--
-- Name: log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.log_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: log id_pk_log; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT id_pk_log PRIMARY KEY (log_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: log unique_logid_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT unique_logid_constraint UNIQUE (log_id);


--
-- Name: planet unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: moon unique_moon_name_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name_constraint UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: galaxy unique_name_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_constraint UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: planet unique_planet_name_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name_constraint UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: star unique_star_name_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name_constraint UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

