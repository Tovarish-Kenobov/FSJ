--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-12-14 20:34:17

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
-- TOC entry 221 (class 1259 OID 16433)
-- Name: brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.brands OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16432)
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brands_id_seq OWNER TO postgres;

--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 220
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;


--
-- TOC entry 225 (class 1259 OID 16463)
-- Name: cart_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart_products (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "cartId" integer,
    "typeId" integer,
    "productId" integer
);


ALTER TABLE public.cart_products OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16462)
-- Name: cart_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_products_id_seq OWNER TO postgres;

--
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 224
-- Name: cart_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_products_id_seq OWNED BY public.cart_products.id;


--
-- TOC entry 217 (class 1259 OID 16412)
-- Name: carts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carts (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);


ALTER TABLE public.carts OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16411)
-- Name: carts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carts_id_seq OWNER TO postgres;

--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 216
-- Name: carts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;


--
-- TOC entry 227 (class 1259 OID 16485)
-- Name: product_infos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_infos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "productId" integer
);


ALTER TABLE public.product_infos OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16484)
-- Name: product_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_infos_id_seq OWNER TO postgres;

--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 226
-- Name: product_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_infos_id_seq OWNED BY public.product_infos.id;


--
-- TOC entry 223 (class 1259 OID 16442)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    img character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16441)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 222
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 229 (class 1259 OID 16499)
-- Name: type_brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type_brands (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);


ALTER TABLE public.type_brands OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16498)
-- Name: type_brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.type_brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_brands_id_seq OWNER TO postgres;

--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 228
-- Name: type_brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.type_brands_id_seq OWNED BY public.type_brands.id;


--
-- TOC entry 219 (class 1259 OID 16424)
-- Name: types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.types OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16423)
-- Name: types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_id_seq OWNER TO postgres;

--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 218
-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;


--
-- TOC entry 215 (class 1259 OID 16400)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16399)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 214
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3212 (class 2604 OID 16436)
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);


--
-- TOC entry 3214 (class 2604 OID 16466)
-- Name: cart_products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_products ALTER COLUMN id SET DEFAULT nextval('public.cart_products_id_seq'::regclass);


--
-- TOC entry 3210 (class 2604 OID 16415)
-- Name: carts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);


--
-- TOC entry 3215 (class 2604 OID 16488)
-- Name: product_infos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_infos ALTER COLUMN id SET DEFAULT nextval('public.product_infos_id_seq'::regclass);


--
-- TOC entry 3213 (class 2604 OID 16445)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 3216 (class 2604 OID 16502)
-- Name: type_brands id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands ALTER COLUMN id SET DEFAULT nextval('public.type_brands_id_seq'::regclass);


--
-- TOC entry 3211 (class 2604 OID 16427)
-- Name: types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);


--
-- TOC entry 3208 (class 2604 OID 16403)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3401 (class 0 OID 16433)
-- Dependencies: 221
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (1, 'Samsung', '2022-11-20 12:41:45.784+03', '2022-11-20 12:41:45.784+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (2, 'Apple', '2022-11-20 12:48:47.645+03', '2022-11-20 12:48:47.645+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (3, 'Huawei', '2022-11-20 12:48:55.47+03', '2022-11-20 12:48:55.47+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (4, 'Lenovo', '2022-12-14 18:47:15.264+03', '2022-12-14 18:47:15.264+03');


--
-- TOC entry 3405 (class 0 OID 16463)
-- Dependencies: 225
-- Data for Name: cart_products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3397 (class 0 OID 16412)
-- Dependencies: 217
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.carts (id, "createdAt", "updatedAt", "userId") VALUES (1, '2022-11-29 21:55:42.892+03', '2022-11-29 21:55:42.892+03', 1);
INSERT INTO public.carts (id, "createdAt", "updatedAt", "userId") VALUES (2, '2022-11-29 21:57:00.243+03', '2022-11-29 21:57:00.243+03', 2);
INSERT INTO public.carts (id, "createdAt", "updatedAt", "userId") VALUES (3, '2022-11-29 21:59:44.511+03', '2022-11-29 21:59:44.511+03', 3);
INSERT INTO public.carts (id, "createdAt", "updatedAt", "userId") VALUES (4, '2022-12-13 18:40:49.422+03', '2022-12-13 18:40:49.422+03', 4);
INSERT INTO public.carts (id, "createdAt", "updatedAt", "userId") VALUES (5, '2022-12-13 18:48:32.027+03', '2022-12-13 18:48:32.027+03', 5);
INSERT INTO public.carts (id, "createdAt", "updatedAt", "userId") VALUES (6, '2022-12-13 18:49:20.079+03', '2022-12-13 18:49:20.079+03', 6);
INSERT INTO public.carts (id, "createdAt", "updatedAt", "userId") VALUES (7, '2022-12-14 17:30:25.075+03', '2022-12-14 17:30:25.075+03', 7);


--
-- TOC entry 3407 (class 0 OID 16485)
-- Dependencies: 227
-- Data for Name: product_infos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_infos (id, title, description, "createdAt", "updatedAt", "productId") VALUES (1, 'Android', '11', '2022-12-14 19:42:20.002+03', '2022-12-14 19:42:20.002+03', 3);
INSERT INTO public.product_infos (id, title, description, "createdAt", "updatedAt", "productId") VALUES (2, 'Память', '256Гб', '2022-12-14 19:42:20.002+03', '2022-12-14 19:42:20.002+03', 3);


--
-- TOC entry 3403 (class 0 OID 16442)
-- Dependencies: 223
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (id, name, price, img, "createdAt", "updatedAt", "typeId", "brandId") VALUES (1, '14', 140000, 'f71d809a-1c64-4413-8a1b-74c3b17b1526.jpg', '2022-11-20 13:17:15.996+03', '2022-11-20 13:17:15.996+03', 1, 2);
INSERT INTO public.products (id, name, price, img, "createdAt", "updatedAt", "typeId", "brandId") VALUES (2, 'MateBook 16', 110000, '30c68811-a47d-4bd8-920d-e0990fd0da7b.jpg', '2022-11-29 09:29:08.337+03', '2022-11-29 09:29:08.337+03', 3, 3);
INSERT INTO public.products (id, name, price, img, "createdAt", "updatedAt", "typeId", "brandId") VALUES (3, 'Yoga tab 11', 40000, '255a6d1a-3f2c-4718-9fa5-d85df1d43cd4.jpg', '2022-12-14 19:42:19.948+03', '2022-12-14 19:42:19.948+03', 2, 4);


--
-- TOC entry 3409 (class 0 OID 16499)
-- Dependencies: 229
-- Data for Name: type_brands; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3399 (class 0 OID 16424)
-- Dependencies: 219
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.types (id, name, "createdAt", "updatedAt") VALUES (1, 'Смартфон', '2022-11-20 12:10:18.081+03', '2022-11-20 12:10:18.081+03');
INSERT INTO public.types (id, name, "createdAt", "updatedAt") VALUES (2, 'Планшет', '2022-11-20 12:13:18.578+03', '2022-11-20 12:13:18.578+03');
INSERT INTO public.types (id, name, "createdAt", "updatedAt") VALUES (3, 'Ноутбук', '2022-11-20 12:13:24.243+03', '2022-11-20 12:13:24.243+03');
INSERT INTO public.types (id, name, "createdAt", "updatedAt") VALUES (4, 'Моноблок', '2022-12-14 17:32:15.667+03', '2022-12-14 17:32:15.667+03');


--
-- TOC entry 3395 (class 0 OID 16400)
-- Dependencies: 215
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, email, password, role, "createdAt", "updatedAt") VALUES (1, 'user@user.com', '$2b$05$B41fgLd.Sxq4jV9dBz1f4ut9ZyMxv96cSQPBonIhPwy7jq/O6SHeq', 'USER', '2022-11-29 21:55:42.882+03', '2022-11-29 21:55:42.882+03');
INSERT INTO public.users (id, email, password, role, "createdAt", "updatedAt") VALUES (2, 'user2@user.com', '$2b$05$QtcnmuG4WAqfMhdkc2tXa.7KwJqR4Murtp4CvKOIb6SmOntHmgWwa', 'USER', '2022-11-29 21:57:00.235+03', '2022-11-29 21:57:00.235+03');
INSERT INTO public.users (id, email, password, role, "createdAt", "updatedAt") VALUES (3, 'user1@user.com', '$2b$05$L8zAOR7A.FIuqv1lVL7LMuCv0ldDkZ69ggFx5pFDGvn8AGOx7WU3u', 'USER', '2022-11-29 21:59:44.504+03', '2022-11-29 21:59:44.504+03');
INSERT INTO public.users (id, email, password, role, "createdAt", "updatedAt") VALUES (4, 'user@user.gg', '$2b$05$2MDpnD5hUNecJDzkLE0ZGOl.IfwVV4HrWLbe/kTmDkwzxMPg2IcRy', 'USER', '2022-12-13 18:40:49.4+03', '2022-12-13 18:40:49.4+03');
INSERT INTO public.users (id, email, password, role, "createdAt", "updatedAt") VALUES (5, 'user666@user.gg', '$2b$05$sDidddZPu0s3tLo3axNzlesy5Q/eKXiZOB5StEOats/iglIXevssO', 'USER', '2022-12-13 18:48:32.025+03', '2022-12-13 18:48:32.025+03');
INSERT INTO public.users (id, email, password, role, "createdAt", "updatedAt") VALUES (6, 'user777@domain.com', '$2b$05$QwtvMZPQ3nrVkYfU.RV4sOZGNKP6LMuC2FPVNI2dGP.CaN1wtG4yu', 'USER', '2022-12-13 18:49:20.078+03', '2022-12-13 18:49:20.078+03');
INSERT INTO public.users (id, email, password, role, "createdAt", "updatedAt") VALUES (7, 'admin@admin.com', '$2b$05$A.gGaDJZyph0rxiGiec0YuhPEDzl0a3owltx/5MSWzpCGKuojEP72', 'ADMIN', '2022-12-14 17:30:25.066+03', '2022-12-14 17:30:25.066+03');


--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 220
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_id_seq', 4, true);


--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 224
-- Name: cart_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_products_id_seq', 1, false);


--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 216
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carts_id_seq', 7, true);


--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 226
-- Name: product_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_infos_id_seq', 2, true);


--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 222
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 3, true);


--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 228
-- Name: type_brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.type_brands_id_seq', 1, false);


--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 218
-- Name: types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_id_seq', 4, true);


--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 214
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 7, true);


--
-- TOC entry 3228 (class 2606 OID 16440)
-- Name: brands brands_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_name_key UNIQUE (name);


--
-- TOC entry 3230 (class 2606 OID 16438)
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 16468)
-- Name: cart_products cart_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_products
    ADD CONSTRAINT cart_products_pkey PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16417)
-- Name: carts carts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);


--
-- TOC entry 3238 (class 2606 OID 16492)
-- Name: product_infos product_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_infos
    ADD CONSTRAINT product_infos_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 16451)
-- Name: products products_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_name_key UNIQUE (name);


--
-- TOC entry 3234 (class 2606 OID 16449)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3240 (class 2606 OID 16504)
-- Name: type_brands type_brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT type_brands_pkey PRIMARY KEY (id);


--
-- TOC entry 3242 (class 2606 OID 16506)
-- Name: type_brands type_brands_typeId_brandId_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_brandId_key" UNIQUE ("typeId", "brandId");


--
-- TOC entry 3224 (class 2606 OID 16431)
-- Name: types types_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_name_key UNIQUE (name);


--
-- TOC entry 3226 (class 2606 OID 16429)
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);


--
-- TOC entry 3218 (class 2606 OID 16410)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 3220 (class 2606 OID 16408)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3246 (class 2606 OID 16469)
-- Name: cart_products cart_products_cartId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_products
    ADD CONSTRAINT "cart_products_cartId_fkey" FOREIGN KEY ("cartId") REFERENCES public.carts(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3247 (class 2606 OID 16479)
-- Name: cart_products cart_products_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_products
    ADD CONSTRAINT "cart_products_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3248 (class 2606 OID 16474)
-- Name: cart_products cart_products_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_products
    ADD CONSTRAINT "cart_products_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3243 (class 2606 OID 16418)
-- Name: carts carts_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT "carts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3249 (class 2606 OID 16493)
-- Name: product_infos product_infos_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_infos
    ADD CONSTRAINT "product_infos_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3244 (class 2606 OID 16457)
-- Name: products products_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3245 (class 2606 OID 16452)
-- Name: products products_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3250 (class 2606 OID 16512)
-- Name: type_brands type_brands_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3251 (class 2606 OID 16507)
-- Name: type_brands type_brands_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2022-12-14 20:34:17

--
-- PostgreSQL database dump complete
--

