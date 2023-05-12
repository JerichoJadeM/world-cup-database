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
    round character varying(30) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (33, 2018, 'Final', 4, 2, 433, 434);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 2, 0, 435, 436);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 2, 1, 434, 436);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 1, 0, 433, 435);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 3, 2, 434, 437);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 2, 0, 436, 438);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 2, 1, 435, 439);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 2, 0, 433, 440);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 2, 1, 436, 441);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 1, 0, 438, 442);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 3, 2, 435, 443);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 2, 0, 439, 444);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 2, 1, 434, 445);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 2, 1, 437, 446);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 2, 1, 440, 447);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 4, 3, 433, 448);
INSERT INTO public.games VALUES (49, 2014, 'Final', 1, 0, 449, 448);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 3, 0, 450, 439);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 1, 0, 448, 450);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 7, 1, 449, 439);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 1, 0, 450, 451);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 1, 0, 448, 435);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 2, 1, 439, 441);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 1, 0, 449, 433);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 2, 1, 439, 452);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 2, 0, 441, 440);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 2, 0, 433, 453);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 2, 1, 449, 454);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 2, 1, 450, 444);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 2, 1, 451, 455);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 1, 0, 448, 442);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 2, 1, 435, 456);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (433, 'France');
INSERT INTO public.teams VALUES (434, 'Croatia');
INSERT INTO public.teams VALUES (435, 'Belgium');
INSERT INTO public.teams VALUES (436, 'England');
INSERT INTO public.teams VALUES (437, 'Russia');
INSERT INTO public.teams VALUES (438, 'Sweden');
INSERT INTO public.teams VALUES (439, 'Brazil');
INSERT INTO public.teams VALUES (440, 'Uruguay');
INSERT INTO public.teams VALUES (441, 'Colombia');
INSERT INTO public.teams VALUES (442, 'Switzerland');
INSERT INTO public.teams VALUES (443, 'Japan');
INSERT INTO public.teams VALUES (444, 'Mexico');
INSERT INTO public.teams VALUES (445, 'Denmark');
INSERT INTO public.teams VALUES (446, 'Spain');
INSERT INTO public.teams VALUES (447, 'Portugal');
INSERT INTO public.teams VALUES (448, 'Argentina');
INSERT INTO public.teams VALUES (449, 'Germany');
INSERT INTO public.teams VALUES (450, 'Netherlands');
INSERT INTO public.teams VALUES (451, 'Costa Rica');
INSERT INTO public.teams VALUES (452, 'Chile');
INSERT INTO public.teams VALUES (453, 'Nigeria');
INSERT INTO public.teams VALUES (454, 'Algeria');
INSERT INTO public.teams VALUES (455, 'Greece');
INSERT INTO public.teams VALUES (456, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 456, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

