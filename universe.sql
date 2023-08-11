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
    name character varying(30) NOT NULL,
    decription text,
    distance_from_earth numeric,
    has_life boolean,
    age_in_million_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    type character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types_id integer NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth numeric,
    age_in_million_years integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth numeric,
    age_in_million_years integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth numeric,
    galaxy_id integer,
    age_in_million_years integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirpool', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus', NULL, NULL, NULL, NULL);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES ('barred spiral', 'milky way', 1);
INSERT INTO public.galaxy_types VALUES ('eliptical', 'messier 87 group', 2);
INSERT INTO public.galaxy_types VALUES ('ring', 'ring nebula', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Io', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Europa', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Genymede', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Mimas', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Enceladus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Tethys', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Dione', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Titan', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Iapetus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Miranda', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Ariel', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Umbriel', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Titania', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Oberon', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Triton', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Nerid', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Haron', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Hydra', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Styx', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, ' Earth', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Neptune', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Mercury', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Venus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, ' Mars', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, ' Jupiter', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Saturn', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Uranus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Ceres', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Pluto', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Eris', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Phobos', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'north star', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'UY Sciti', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'anteres', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Polaris', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Pollux', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Canopus', NULL, NULL, NULL, NULL, NULL);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


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

