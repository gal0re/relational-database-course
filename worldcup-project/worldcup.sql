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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 430, 431, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 432, 433, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 431, 433, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 430, 432, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 431, 439, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 433, 441, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 432, 443, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 430, 445, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 433, 447, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 441, 449, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 432, 451, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 443, 453, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 431, 455, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 439, 457, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 445, 459, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 430, 461, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 462, 461, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 464, 443, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 461, 464, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 462, 443, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 464, 471, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 461, 432, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 443, 447, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 462, 430, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 443, 479, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 447, 445, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 430, 483, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 462, 485, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 464, 453, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 471, 489, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 461, 449, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 432, 493, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (430, 'France');
INSERT INTO public.teams VALUES (431, 'Croatia');
INSERT INTO public.teams VALUES (432, 'Belgium');
INSERT INTO public.teams VALUES (433, 'England');
INSERT INTO public.teams VALUES (439, 'Russia');
INSERT INTO public.teams VALUES (441, 'Sweden');
INSERT INTO public.teams VALUES (443, 'Brazil');
INSERT INTO public.teams VALUES (445, 'Uruguay');
INSERT INTO public.teams VALUES (447, 'Colombia');
INSERT INTO public.teams VALUES (449, 'Switzerland');
INSERT INTO public.teams VALUES (451, 'Japan');
INSERT INTO public.teams VALUES (453, 'Mexico');
INSERT INTO public.teams VALUES (455, 'Denmark');
INSERT INTO public.teams VALUES (457, 'Spain');
INSERT INTO public.teams VALUES (459, 'Portugal');
INSERT INTO public.teams VALUES (461, 'Argentina');
INSERT INTO public.teams VALUES (462, 'Germany');
INSERT INTO public.teams VALUES (464, 'Netherlands');
INSERT INTO public.teams VALUES (471, 'Costa Rica');
INSERT INTO public.teams VALUES (479, 'Chile');
INSERT INTO public.teams VALUES (483, 'Nigeria');
INSERT INTO public.teams VALUES (485, 'Algeria');
INSERT INTO public.teams VALUES (489, 'Greece');
INSERT INTO public.teams VALUES (493, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 493, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

