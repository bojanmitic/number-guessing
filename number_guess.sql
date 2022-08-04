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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: guesses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guesses (
    guess_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer
);


ALTER TABLE public.guesses OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guesses_guess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guesses_guess_id_seq OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guesses_guess_id_seq OWNED BY public.guesses.guess_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(22) NOT NULL,
    games_played integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: guesses guess_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses ALTER COLUMN guess_id SET DEFAULT nextval('public.guesses_guess_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: guesses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guesses VALUES (142, 45, 399);
INSERT INTO public.guesses VALUES (143, 45, 989);
INSERT INTO public.guesses VALUES (144, 46, 939);
INSERT INTO public.guesses VALUES (145, 46, 748);
INSERT INTO public.guesses VALUES (146, 45, 478);
INSERT INTO public.guesses VALUES (147, 45, 388);
INSERT INTO public.guesses VALUES (148, 45, 985);
INSERT INTO public.guesses VALUES (149, 47, 452);
INSERT INTO public.guesses VALUES (150, 47, 420);
INSERT INTO public.guesses VALUES (151, 48, 242);
INSERT INTO public.guesses VALUES (152, 48, 563);
INSERT INTO public.guesses VALUES (153, 47, 408);
INSERT INTO public.guesses VALUES (154, 47, 316);
INSERT INTO public.guesses VALUES (155, 47, 342);
INSERT INTO public.guesses VALUES (156, 49, 906);
INSERT INTO public.guesses VALUES (157, 49, 108);
INSERT INTO public.guesses VALUES (158, 50, 343);
INSERT INTO public.guesses VALUES (159, 50, 259);
INSERT INTO public.guesses VALUES (160, 49, 702);
INSERT INTO public.guesses VALUES (161, 49, 878);
INSERT INTO public.guesses VALUES (162, 49, 72);
INSERT INTO public.guesses VALUES (163, 51, 664);
INSERT INTO public.guesses VALUES (164, 51, 302);
INSERT INTO public.guesses VALUES (165, 52, 311);
INSERT INTO public.guesses VALUES (166, 52, 318);
INSERT INTO public.guesses VALUES (167, 51, 604);
INSERT INTO public.guesses VALUES (168, 51, 448);
INSERT INTO public.guesses VALUES (169, 51, 694);
INSERT INTO public.guesses VALUES (170, 53, 755);
INSERT INTO public.guesses VALUES (171, 53, 977);
INSERT INTO public.guesses VALUES (172, 54, 49);
INSERT INTO public.guesses VALUES (173, 54, 434);
INSERT INTO public.guesses VALUES (174, 53, 242);
INSERT INTO public.guesses VALUES (175, 53, 275);
INSERT INTO public.guesses VALUES (176, 53, 694);
INSERT INTO public.guesses VALUES (177, 55, 584);
INSERT INTO public.guesses VALUES (178, 55, 155);
INSERT INTO public.guesses VALUES (179, 56, 321);
INSERT INTO public.guesses VALUES (180, 56, 62);
INSERT INTO public.guesses VALUES (181, 55, 117);
INSERT INTO public.guesses VALUES (182, 55, 830);
INSERT INTO public.guesses VALUES (183, 55, 384);
INSERT INTO public.guesses VALUES (184, 57, 574);
INSERT INTO public.guesses VALUES (185, 57, 288);
INSERT INTO public.guesses VALUES (186, 58, 879);
INSERT INTO public.guesses VALUES (187, 58, 429);
INSERT INTO public.guesses VALUES (188, 57, 573);
INSERT INTO public.guesses VALUES (189, 57, 124);
INSERT INTO public.guesses VALUES (190, 57, 40);
INSERT INTO public.guesses VALUES (191, 59, 873);
INSERT INTO public.guesses VALUES (192, 59, 389);
INSERT INTO public.guesses VALUES (193, 60, 483);
INSERT INTO public.guesses VALUES (194, 60, 754);
INSERT INTO public.guesses VALUES (195, 59, 879);
INSERT INTO public.guesses VALUES (196, 59, 477);
INSERT INTO public.guesses VALUES (197, 59, 933);
INSERT INTO public.guesses VALUES (198, 61, 419);
INSERT INTO public.guesses VALUES (199, 61, 905);
INSERT INTO public.guesses VALUES (200, 62, 701);
INSERT INTO public.guesses VALUES (201, 62, 415);
INSERT INTO public.guesses VALUES (202, 61, 295);
INSERT INTO public.guesses VALUES (203, 61, 906);
INSERT INTO public.guesses VALUES (204, 61, 297);
INSERT INTO public.guesses VALUES (205, 63, 493);
INSERT INTO public.guesses VALUES (206, 63, 156);
INSERT INTO public.guesses VALUES (207, 64, 647);
INSERT INTO public.guesses VALUES (208, 64, 644);
INSERT INTO public.guesses VALUES (209, 63, 37);
INSERT INTO public.guesses VALUES (210, 63, 84);
INSERT INTO public.guesses VALUES (211, 63, 745);
INSERT INTO public.guesses VALUES (212, 65, 874);
INSERT INTO public.guesses VALUES (213, 65, 835);
INSERT INTO public.guesses VALUES (214, 66, 858);
INSERT INTO public.guesses VALUES (215, 66, 570);
INSERT INTO public.guesses VALUES (216, 65, 22);
INSERT INTO public.guesses VALUES (217, 65, 287);
INSERT INTO public.guesses VALUES (218, 65, 335);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (46, 'user_1659609884023', 2);
INSERT INTO public.users VALUES (45, 'user_1659609884024', 5);
INSERT INTO public.users VALUES (64, 'user_1659610010459', 2);
INSERT INTO public.users VALUES (48, 'user_1659609890091', 2);
INSERT INTO public.users VALUES (63, 'user_1659610010460', 5);
INSERT INTO public.users VALUES (47, 'user_1659609890092', 5);
INSERT INTO public.users VALUES (50, 'user_1659609894180', 2);
INSERT INTO public.users VALUES (66, 'user_1659610016260', 2);
INSERT INTO public.users VALUES (49, 'user_1659609894181', 5);
INSERT INTO public.users VALUES (65, 'user_1659610016261', 5);
INSERT INTO public.users VALUES (52, 'user_1659609902140', 2);
INSERT INTO public.users VALUES (51, 'user_1659609902141', 5);
INSERT INTO public.users VALUES (54, 'user_1659609974831', 2);
INSERT INTO public.users VALUES (53, 'user_1659609974832', 5);
INSERT INTO public.users VALUES (56, 'user_1659609983878', 2);
INSERT INTO public.users VALUES (55, 'user_1659609983879', 5);
INSERT INTO public.users VALUES (58, 'user_1659609990006', 2);
INSERT INTO public.users VALUES (57, 'user_1659609990007', 5);
INSERT INTO public.users VALUES (60, 'user_1659609994375', 2);
INSERT INTO public.users VALUES (59, 'user_1659609994376', 5);
INSERT INTO public.users VALUES (62, 'user_1659609998256', 2);
INSERT INTO public.users VALUES (61, 'user_1659609998257', 5);


--
-- Name: guesses_guess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guesses_guess_id_seq', 218, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 66, true);


--
-- Name: guesses guesses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_pkey PRIMARY KEY (guess_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);


--
-- Name: guesses guesses_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

