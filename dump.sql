--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Clientes; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public."Clientes" (
    "Id" integer NOT NULL,
    "Nombre" character varying,
    "Apellido" character varying,
    "Dirección" character varying,
    "Teléfono" integer
);


ALTER TABLE public."Clientes" OWNER TO usuario;

--
-- Name: Clientes_Id_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Clientes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Clientes_Id_seq" OWNER TO usuario;

--
-- Name: Clientes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Clientes_Id_seq" OWNED BY public."Clientes"."Id";


--
-- Name: Móviles; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public."Móviles" (
    id integer NOT NULL,
    "Modelo" character varying,
    "Stock" integer,
    "Precio" numeric
);


ALTER TABLE public."Móviles" OWNER TO usuario;

--
-- Name: Móviles_id_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Móviles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Móviles_id_seq" OWNER TO usuario;

--
-- Name: Móviles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Móviles_id_seq" OWNED BY public."Móviles".id;


--
-- Name: Reparacione; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public."Reparacione" (
    id integer NOT NULL,
    id_cliente integer NOT NULL,
    fecha_inicio date,
    estado character varying,
    precio numeric
);


ALTER TABLE public."Reparacione" OWNER TO usuario;

--
-- Name: Reparacione_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Reparacione_id_cliente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Reparacione_id_cliente_seq" OWNER TO usuario;

--
-- Name: Reparacione_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Reparacione_id_cliente_seq" OWNED BY public."Reparacione".id_cliente;


--
-- Name: Reparacione_id_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Reparacione_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Reparacione_id_seq" OWNER TO usuario;

--
-- Name: Reparacione_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Reparacione_id_seq" OWNED BY public."Reparacione".id;


--
-- Name: Clientes Id; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Clientes" ALTER COLUMN "Id" SET DEFAULT nextval('public."Clientes_Id_seq"'::regclass);


--
-- Name: Móviles id; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Móviles" ALTER COLUMN id SET DEFAULT nextval('public."Móviles_id_seq"'::regclass);


--
-- Name: Reparacione id; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Reparacione" ALTER COLUMN id SET DEFAULT nextval('public."Reparacione_id_seq"'::regclass);


--
-- Name: Reparacione id_cliente; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Reparacione" ALTER COLUMN id_cliente SET DEFAULT nextval('public."Reparacione_id_cliente_seq"'::regclass);


--
-- Data for Name: Clientes; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- Data for Name: Móviles; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- Data for Name: Reparacione; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- Name: Clientes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Clientes_Id_seq"', 1, false);


--
-- Name: Móviles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Móviles_id_seq"', 1, false);


--
-- Name: Reparacione_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Reparacione_id_cliente_seq"', 1, false);


--
-- Name: Reparacione_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Reparacione_id_seq"', 1, false);


--
-- Name: Clientes Clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Clientes"
    ADD CONSTRAINT "Clientes_pkey" PRIMARY KEY ("Id");


--
-- Name: Reparacione Reparacione_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Reparacione"
    ADD CONSTRAINT "Reparacione_pkey" PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

