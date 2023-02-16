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
-- Name: extras; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extras (
    name character varying(20) NOT NULL,
    extras_id integer NOT NULL,
    nums integer NOT NULL,
    numbers integer NOT NULL
);


ALTER TABLE public.extras OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    has_life boolean,
    galaxy_type text,
    age_in_millions_of_years numeric,
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    description character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20),
    moon_id integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types character varying(30),
    distance_from_earth integer,
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20),
    galaxy_id integer NOT NULL,
    distance_from_earth integer,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: extras; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extras VALUES ('1', 1, 1, 1);
INSERT INTO public.extras VALUES ('2', 2, 2, 2);
INSERT INTO public.extras VALUES ('3', 3, 3, 3);
INSERT INTO public.extras VALUES ('4', 4, 4, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (true, 'Big galaxy', 13000, 'Milky Way', 1, 'Where it all started?');
INSERT INTO public.galaxy VALUES (false, 'Big galaxy', 60000, 'Golden Horseshoe', 2, 'I made this up');
INSERT INTO public.galaxy VALUES (false, 'Big galaxy', 60000, 'Golden Horse', 3, 'I made this up');
INSERT INTO public.galaxy VALUES (false, 'Big galaxy', 60000, 'Bronze Horse', 4, 'I made this up');
INSERT INTO public.galaxy VALUES (false, 'Big galaxy', 60000, 'Silver  Horse', 5, 'I made this up');
INSERT INTO public.galaxy VALUES (false, 'Smol  galaxy', 60000, 'Bronze  Horse', 6, 'I made this up');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Our moon', 1, true, false, 1);
INSERT INTO public.moon VALUES (NULL, 2, NULL, NULL, 2);
INSERT INTO public.moon VALUES (NULL, 3, NULL, NULL, 2);
INSERT INTO public.moon VALUES (NULL, 4, NULL, NULL, 2);
INSERT INTO public.moon VALUES (NULL, 5, NULL, NULL, 2);
INSERT INTO public.moon VALUES (NULL, 6, NULL, NULL, 2);
INSERT INTO public.moon VALUES (NULL, 7, NULL, NULL, 2);
INSERT INTO public.moon VALUES (NULL, 8, NULL, NULL, 3);
INSERT INTO public.moon VALUES (NULL, 9, NULL, NULL, 3);
INSERT INTO public.moon VALUES (NULL, 10, NULL, NULL, 3);
INSERT INTO public.moon VALUES (NULL, 11, NULL, NULL, 3);
INSERT INTO public.moon VALUES (NULL, 12, NULL, NULL, 4);
INSERT INTO public.moon VALUES (NULL, 13, NULL, NULL, 4);
INSERT INTO public.moon VALUES (NULL, 14, NULL, NULL, 4);
INSERT INTO public.moon VALUES (NULL, 15, NULL, NULL, 4);
INSERT INTO public.moon VALUES (NULL, 16, NULL, NULL, 4);
INSERT INTO public.moon VALUES (NULL, 17, NULL, NULL, 4);
INSERT INTO public.moon VALUES (NULL, 18, NULL, NULL, 5);
INSERT INTO public.moon VALUES (NULL, 19, NULL, NULL, 5);
INSERT INTO public.moon VALUES (NULL, 20, NULL, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (true, true, 4500, 'IS A PLANET', 0, 1, 'Earth', 'Home of human life');
INSERT INTO public.planet VALUES (true, true, 4600, 'Mat Damon still here', 124, 2, 'Mars', 'Home of alien life');
INSERT INTO public.planet VALUES (true, false, 4500, 'Very Hot', 228, 3, 'Venus', 'The red star');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 4, 'mercury', NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 5, 'jupiter', NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 6, 'saturn', NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 7, 'uranus', NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 8, 'neptune', NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 9, 'pluto', NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 10, 'blackhole', NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 11, 'pluto_isnt_real', NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 12, 'pluto_is_real', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('twinkle twinkle', 1, 2000, false, 1);
INSERT INTO public.star VALUES ('sparkle sparkle', 1, 90000, false, 2);
INSERT INTO public.star VALUES ('glitter glitter', 1, 9300, false, 3);
INSERT INTO public.star VALUES ('gorgon', 2, 10000, true, 4);
INSERT INTO public.star VALUES ('gorgon2', 2, 100000, true, 5);
INSERT INTO public.star VALUES ('gorgon3', 2, 1000000, true, 6);


--
-- Name: extras extras_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extras
    ADD CONSTRAINT extras_name_key UNIQUE (name);


--
-- Name: extras extras_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extras
    ADD CONSTRAINT extras_pkey PRIMARY KEY (extras_id);


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
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: star name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

