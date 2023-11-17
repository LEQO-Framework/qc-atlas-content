--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Debian 12.5-1.pgdg100+1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

-- Started on 2023-11-17 20:34:31 CET

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
-- TOC entry 202 (class 1259 OID 16388)
-- Name: algorithm; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm (
    acronym character varying(255),
    algo_parameter text,
    assumptions character varying(255),
    computation_model integer,
    input_format text,
    intent text,
    name character varying(255),
    output_format text,
    problem text,
    solution text,
    id uuid NOT NULL
);


ALTER TABLE public.algorithm OWNER TO planqk;

--
-- TOC entry 203 (class 1259 OID 16394)
-- Name: algorithm_application_area; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_application_area (
    algorithm_id uuid NOT NULL,
    application_area_id uuid NOT NULL
);


ALTER TABLE public.algorithm_application_area OWNER TO planqk;

--
-- TOC entry 204 (class 1259 OID 16397)
-- Name: algorithm_learning_method; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_learning_method (
    algorithm_id uuid NOT NULL,
    learning_method_id uuid NOT NULL
);


ALTER TABLE public.algorithm_learning_method OWNER TO planqk;

--
-- TOC entry 205 (class 1259 OID 16400)
-- Name: algorithm_problem_type; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_problem_type (
    algorithm_id uuid NOT NULL,
    problem_type_id uuid NOT NULL
);


ALTER TABLE public.algorithm_problem_type OWNER TO planqk;

--
-- TOC entry 206 (class 1259 OID 16403)
-- Name: algorithm_publication; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_publication (
    algorithm_id uuid NOT NULL,
    publication_id uuid NOT NULL
);


ALTER TABLE public.algorithm_publication OWNER TO planqk;

--
-- TOC entry 207 (class 1259 OID 16406)
-- Name: algorithm_relation; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_relation (
    id uuid NOT NULL,
    description character varying(255),
    algorithm_relation_type_id uuid,
    source_algorithm uuid,
    target_algorithm uuid
);


ALTER TABLE public.algorithm_relation OWNER TO planqk;

--
-- TOC entry 208 (class 1259 OID 16409)
-- Name: algorithm_relation_type; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_relation_type (
    id uuid NOT NULL,
    name character varying(255),
    inverse_type_name character varying(255)
);


ALTER TABLE public.algorithm_relation_type OWNER TO planqk;

--
-- TOC entry 209 (class 1259 OID 16415)
-- Name: algorithm_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL,
    acronym character varying(255),
    algo_parameter text,
    assumptions character varying(255),
    computation_model integer,
    input_format text,
    intent text,
    name character varying(255),
    output_format text,
    problem text,
    solution text
);


ALTER TABLE public.algorithm_revisions OWNER TO planqk;

--
-- TOC entry 210 (class 1259 OID 16421)
-- Name: algorithm_tag; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_tag (
    algorithm_id uuid NOT NULL,
    tag_value character varying(255) NOT NULL
);


ALTER TABLE public.algorithm_tag OWNER TO planqk;

--
-- TOC entry 211 (class 1259 OID 16424)
-- Name: application_area; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.application_area (
    id uuid NOT NULL,
    name character varying(255)
);


ALTER TABLE public.application_area OWNER TO planqk;

--
-- TOC entry 212 (class 1259 OID 16427)
-- Name: classic_algorithm; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.classic_algorithm (
    id uuid NOT NULL
);


ALTER TABLE public.classic_algorithm OWNER TO planqk;

--
-- TOC entry 213 (class 1259 OID 16430)
-- Name: classic_algorithm_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.classic_algorithm_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL
);


ALTER TABLE public.classic_algorithm_revisions OWNER TO planqk;

--
-- TOC entry 214 (class 1259 OID 16433)
-- Name: classic_implementation; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.classic_implementation (
    id uuid NOT NULL,
    algorithm_id uuid
);


ALTER TABLE public.classic_implementation OWNER TO planqk;

--
-- TOC entry 215 (class 1259 OID 16436)
-- Name: classic_implementation_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.classic_implementation_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL,
    algorithm_id uuid
);


ALTER TABLE public.classic_implementation_revisions OWNER TO planqk;

--
-- TOC entry 216 (class 1259 OID 16439)
-- Name: cloud_service; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.cloud_service (
    id uuid NOT NULL,
    cost_model character varying(255),
    description character varying(255),
    name character varying(255),
    provider character varying(255),
    url character varying(255)
);


ALTER TABLE public.cloud_service OWNER TO planqk;

--
-- TOC entry 217 (class 1259 OID 16445)
-- Name: cloud_services_compute_resources; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.cloud_services_compute_resources (
    cloud_service_id uuid NOT NULL,
    compute_resource_id uuid NOT NULL
);


ALTER TABLE public.cloud_services_compute_resources OWNER TO planqk;

--
-- TOC entry 218 (class 1259 OID 16448)
-- Name: compute_resource; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.compute_resource (
    dtype character varying(31) NOT NULL,
    id uuid NOT NULL,
    name character varying(255),
    quantum_computation_model integer,
    technology character varying(255),
    vendor character varying(255),
    qprov_origin boolean
);


ALTER TABLE public.compute_resource OWNER TO planqk;

--
-- TOC entry 219 (class 1259 OID 16454)
-- Name: compute_resource_property; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.compute_resource_property (
    id uuid NOT NULL,
    value character varying(255),
    algorithm_id uuid,
    compute_resource_id uuid,
    compute_resource_property_type_id uuid,
    implementation_id uuid
);


ALTER TABLE public.compute_resource_property OWNER TO planqk;

--
-- TOC entry 220 (class 1259 OID 16457)
-- Name: compute_resource_property_type; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.compute_resource_property_type (
    id uuid NOT NULL,
    datatype integer,
    description character varying(255),
    name character varying(255)
);


ALTER TABLE public.compute_resource_property_type OWNER TO planqk;

--
-- TOC entry 221 (class 1259 OID 16463)
-- Name: concrete_solution; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.concrete_solution (
    id uuid NOT NULL,
    implemented_pattern_id uuid,
    name character varying(255),
    dtype character varying(31) NOT NULL,
    concrete_solution_type integer,
    description character varying(255),
    pattern uuid
);


ALTER TABLE public.concrete_solution OWNER TO planqk;

--
-- TOC entry 257 (class 1259 OID 17813)
-- Name: concrete_solution_file; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.concrete_solution_file (
    file_id uuid,
    concrete_solution_id uuid NOT NULL
);


ALTER TABLE public.concrete_solution_file OWNER TO planqk;

--
-- TOC entry 222 (class 1259 OID 16466)
-- Name: concrete_solution_package; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.concrete_solution_package (
    dtype character varying(31) NOT NULL,
    id uuid NOT NULL,
    description character varying(255),
    name character varying(255),
    package_type integer,
    concrete_solution_id uuid
);


ALTER TABLE public.concrete_solution_package OWNER TO planqk;

--
-- TOC entry 223 (class 1259 OID 16472)
-- Name: concrete_solution_package_file; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.concrete_solution_package_file (
    file_id uuid,
    concrete_solution_package_id uuid NOT NULL
);


ALTER TABLE public.concrete_solution_package_file OWNER TO planqk;

--
-- TOC entry 224 (class 1259 OID 16475)
-- Name: concrete_solution_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.concrete_solution_revisions (
    id uuid NOT NULL,
    implemented_pattern_id uuid,
    rev integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.concrete_solution_revisions OWNER TO planqk;

--
-- TOC entry 225 (class 1259 OID 16478)
-- Name: discussion_comment; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.discussion_comment (
    id uuid NOT NULL,
    date timestamp without time zone,
    text character varying(255),
    discussion_topic_id uuid,
    reply_to_id uuid
);


ALTER TABLE public.discussion_comment OWNER TO planqk;

--
-- TOC entry 226 (class 1259 OID 16481)
-- Name: discussion_topic; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.discussion_topic (
    date timestamp without time zone,
    description character varying(255),
    status character varying(255),
    title character varying(255),
    id uuid NOT NULL,
    knowledge_artifact_id uuid NOT NULL
);


ALTER TABLE public.discussion_topic OWNER TO planqk;

--
-- TOC entry 227 (class 1259 OID 16487)
-- Name: file; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.file (
    fileurl character varying(255),
    mime_type character varying(255),
    name character varying(255),
    id uuid NOT NULL
);


ALTER TABLE public.file OWNER TO planqk;

--
-- TOC entry 228 (class 1259 OID 16493)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: planqk
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO planqk;

--
-- TOC entry 229 (class 1259 OID 16495)
-- Name: image; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.image (
    image bytea,
    id uuid NOT NULL,
    mime_type character varying(255),
    sketch_id uuid
);


ALTER TABLE public.image OWNER TO planqk;

--
-- TOC entry 230 (class 1259 OID 16501)
-- Name: implementation; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation (
    assumptions character varying(255),
    contributors character varying(255),
    dependencies character varying(255),
    description character varying(255),
    input_format text,
    license character varying(255),
    link character varying(255),
    name character varying(255),
    technology character varying(255),
    output_format text,
    parameter character varying(255),
    problem_statement text,
    version character varying(255),
    id uuid NOT NULL,
    implemented_algorithm_id uuid
);


ALTER TABLE public.implementation OWNER TO planqk;

--
-- TOC entry 231 (class 1259 OID 16507)
-- Name: implementation_package; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_package (
    dtype character varying(31) NOT NULL,
    id uuid NOT NULL,
    description character varying(255),
    name character varying(255),
    package_type integer,
    implementation_id uuid
);


ALTER TABLE public.implementation_package OWNER TO planqk;

--
-- TOC entry 232 (class 1259 OID 16513)
-- Name: implementation_package_file; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_package_file (
    file_id uuid,
    implementation_package_id uuid NOT NULL
);


ALTER TABLE public.implementation_package_file OWNER TO planqk;

--
-- TOC entry 233 (class 1259 OID 16516)
-- Name: implementation_publication; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_publication (
    implementation_id uuid NOT NULL,
    publication_id uuid NOT NULL
);


ALTER TABLE public.implementation_publication OWNER TO planqk;

--
-- TOC entry 234 (class 1259 OID 16519)
-- Name: implementation_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL,
    assumptions character varying(255),
    contributors character varying(255),
    dependencies character varying(255),
    description text,
    input_format text,
    license character varying(255),
    name character varying(255),
    output_format text,
    parameter character varying(255),
    problem_statement text,
    technology character varying(255),
    version character varying(255),
    implemented_algorithm_id uuid
);


ALTER TABLE public.implementation_revisions OWNER TO planqk;

--
-- TOC entry 235 (class 1259 OID 16525)
-- Name: implementation_software_platforms; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_software_platforms (
    implementation_id uuid NOT NULL,
    software_platform_id uuid NOT NULL
);


ALTER TABLE public.implementation_software_platforms OWNER TO planqk;

--
-- TOC entry 236 (class 1259 OID 16528)
-- Name: implementation_tag; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_tag (
    implementation_id uuid NOT NULL,
    tag_value character varying(255) NOT NULL
);


ALTER TABLE public.implementation_tag OWNER TO planqk;

--
-- TOC entry 237 (class 1259 OID 16531)
-- Name: knowledge_artifact; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.knowledge_artifact (
    id uuid NOT NULL,
    creation_date timestamp without time zone,
    last_modified_at timestamp without time zone
);


ALTER TABLE public.knowledge_artifact OWNER TO planqk;

--
-- TOC entry 238 (class 1259 OID 16534)
-- Name: knowledge_artifact_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.knowledge_artifact_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL,
    revtype smallint,
    creation_date timestamp without time zone,
    last_modified_at timestamp without time zone
);


ALTER TABLE public.knowledge_artifact_revisions OWNER TO planqk;

--
-- TOC entry 239 (class 1259 OID 16537)
-- Name: learning_method; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.learning_method (
    id uuid NOT NULL,
    name character varying(255)
);


ALTER TABLE public.learning_method OWNER TO planqk;

--
-- TOC entry 240 (class 1259 OID 16540)
-- Name: pattern_relation; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.pattern_relation (
    id uuid NOT NULL,
    description character varying(255),
    pattern bytea,
    algorithm_id uuid,
    pattern_relation_type_id uuid
);


ALTER TABLE public.pattern_relation OWNER TO planqk;

--
-- TOC entry 241 (class 1259 OID 16546)
-- Name: pattern_relation_type; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.pattern_relation_type (
    id uuid NOT NULL,
    name character varying(255)
);


ALTER TABLE public.pattern_relation_type OWNER TO planqk;

--
-- TOC entry 242 (class 1259 OID 16549)
-- Name: problem_type; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.problem_type (
    id uuid NOT NULL,
    name character varying(255),
    parent_problem_type uuid
);


ALTER TABLE public.problem_type OWNER TO planqk;

--
-- TOC entry 243 (class 1259 OID 16552)
-- Name: publication; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.publication (
    doi character varying(255),
    title character varying(255),
    url character varying(255),
    id uuid NOT NULL
);


ALTER TABLE public.publication OWNER TO planqk;

--
-- TOC entry 244 (class 1259 OID 16558)
-- Name: publication_authors; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.publication_authors (
    publication_id uuid NOT NULL,
    authors character varying(255)
);


ALTER TABLE public.publication_authors OWNER TO planqk;

--
-- TOC entry 245 (class 1259 OID 16561)
-- Name: quantum_algorithm; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.quantum_algorithm (
    nisq_ready boolean NOT NULL,
    quantum_computation_model integer,
    speed_up character varying(255),
    id uuid NOT NULL
);


ALTER TABLE public.quantum_algorithm OWNER TO planqk;

--
-- TOC entry 246 (class 1259 OID 16564)
-- Name: quantum_algorithm_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.quantum_algorithm_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL,
    nisq_ready boolean,
    quantum_computation_model integer,
    speed_up character varying(255)
);


ALTER TABLE public.quantum_algorithm_revisions OWNER TO planqk;

--
-- TOC entry 247 (class 1259 OID 16567)
-- Name: quantum_implementation; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.quantum_implementation (
    id uuid NOT NULL,
    algorithm_id uuid
);


ALTER TABLE public.quantum_implementation OWNER TO planqk;

--
-- TOC entry 248 (class 1259 OID 16570)
-- Name: quantum_implementation_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.quantum_implementation_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL,
    algorithm_id uuid
);


ALTER TABLE public.quantum_implementation_revisions OWNER TO planqk;

--
-- TOC entry 249 (class 1259 OID 16573)
-- Name: revinfo; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.revinfo (
    rev integer NOT NULL,
    revtstmp bigint
);


ALTER TABLE public.revinfo OWNER TO planqk;

--
-- TOC entry 250 (class 1259 OID 16576)
-- Name: sketch; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.sketch (
    description text,
    imageurl text,
    id uuid NOT NULL,
    algorithm_id uuid
);


ALTER TABLE public.sketch OWNER TO planqk;

--
-- TOC entry 251 (class 1259 OID 16582)
-- Name: software_platform; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.software_platform (
    id uuid NOT NULL,
    licence character varying(255),
    link character varying(255),
    name character varying(255),
    version character varying(255)
);


ALTER TABLE public.software_platform OWNER TO planqk;

--
-- TOC entry 252 (class 1259 OID 16588)
-- Name: software_platform_cloud_services; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.software_platform_cloud_services (
    software_platform_id uuid NOT NULL,
    cloud_service_id uuid NOT NULL
);


ALTER TABLE public.software_platform_cloud_services OWNER TO planqk;

--
-- TOC entry 253 (class 1259 OID 16591)
-- Name: software_platforms_compute_resources; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.software_platforms_compute_resources (
    software_platform_id uuid NOT NULL,
    compute_resource_id uuid NOT NULL
);


ALTER TABLE public.software_platforms_compute_resources OWNER TO planqk;

--
-- TOC entry 254 (class 1259 OID 16594)
-- Name: tag; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.tag (
    value character varying(255) NOT NULL,
    category character varying(255)
);


ALTER TABLE public.tag OWNER TO planqk;

--
-- TOC entry 255 (class 1259 OID 16600)
-- Name: tosca_application; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.tosca_application (
    id uuid NOT NULL,
    created_at timestamp without time zone,
    created_by character varying(255),
    importid uuid,
    modified_at timestamp without time zone,
    modified_by character varying(255),
    name character varying(255),
    toscaid character varying(255),
    tosca_name character varying(255),
    tosca_namespace character varying(255),
    winery_location character varying(255)
);


ALTER TABLE public.tosca_application OWNER TO planqk;

--
-- TOC entry 256 (class 1259 OID 16606)
-- Name: tosca_application_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.tosca_application_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL,
    revtype smallint,
    created_at timestamp without time zone,
    created_by character varying(255),
    importid uuid,
    modified_at timestamp without time zone,
    modified_by character varying(255),
    name character varying(255),
    toscaid character varying(255),
    tosca_name character varying(255),
    tosca_namespace character varying(255),
    winery_location character varying(255)
);


ALTER TABLE public.tosca_application_revisions OWNER TO planqk;

--
-- TOC entry 3017 (class 2606 OID 16613)
-- Name: algorithm_application_area algorithm_application_area_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_application_area
    ADD CONSTRAINT algorithm_application_area_pkey PRIMARY KEY (algorithm_id, application_area_id);


--
-- TOC entry 3019 (class 2606 OID 16615)
-- Name: algorithm_learning_method algorithm_learning_method_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_learning_method
    ADD CONSTRAINT algorithm_learning_method_pkey PRIMARY KEY (algorithm_id, learning_method_id);


--
-- TOC entry 3015 (class 2606 OID 16617)
-- Name: algorithm algorithm_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm
    ADD CONSTRAINT algorithm_pkey PRIMARY KEY (id);


--
-- TOC entry 3021 (class 2606 OID 16619)
-- Name: algorithm_problem_type algorithm_problem_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_problem_type
    ADD CONSTRAINT algorithm_problem_type_pkey PRIMARY KEY (algorithm_id, problem_type_id);


--
-- TOC entry 3023 (class 2606 OID 16621)
-- Name: algorithm_publication algorithm_publication_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_publication
    ADD CONSTRAINT algorithm_publication_pkey PRIMARY KEY (algorithm_id, publication_id);


--
-- TOC entry 3025 (class 2606 OID 16623)
-- Name: algorithm_relation algorithm_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation
    ADD CONSTRAINT algorithm_relation_pkey PRIMARY KEY (id);


--
-- TOC entry 3027 (class 2606 OID 16625)
-- Name: algorithm_relation_type algorithm_relation_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation_type
    ADD CONSTRAINT algorithm_relation_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3029 (class 2606 OID 16627)
-- Name: algorithm_revisions algorithm_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_revisions
    ADD CONSTRAINT algorithm_revisions_pkey PRIMARY KEY (id, rev);


--
-- TOC entry 3031 (class 2606 OID 16629)
-- Name: algorithm_tag algorithm_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_tag
    ADD CONSTRAINT algorithm_tag_pkey PRIMARY KEY (algorithm_id, tag_value);


--
-- TOC entry 3033 (class 2606 OID 16631)
-- Name: application_area application_area_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.application_area
    ADD CONSTRAINT application_area_pkey PRIMARY KEY (id);


--
-- TOC entry 3035 (class 2606 OID 16633)
-- Name: classic_algorithm classic_algorithm_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_algorithm
    ADD CONSTRAINT classic_algorithm_pkey PRIMARY KEY (id);


--
-- TOC entry 3037 (class 2606 OID 16635)
-- Name: classic_algorithm_revisions classic_algorithm_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_algorithm_revisions
    ADD CONSTRAINT classic_algorithm_revisions_pkey PRIMARY KEY (id, rev);


--
-- TOC entry 3039 (class 2606 OID 16637)
-- Name: classic_implementation classic_implementation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_implementation
    ADD CONSTRAINT classic_implementation_pkey PRIMARY KEY (id);


--
-- TOC entry 3041 (class 2606 OID 16639)
-- Name: classic_implementation_revisions classic_implementation_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_implementation_revisions
    ADD CONSTRAINT classic_implementation_revisions_pkey PRIMARY KEY (id, rev);


--
-- TOC entry 3043 (class 2606 OID 16641)
-- Name: cloud_service cloud_service_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.cloud_service
    ADD CONSTRAINT cloud_service_pkey PRIMARY KEY (id);


--
-- TOC entry 3045 (class 2606 OID 16643)
-- Name: cloud_services_compute_resources cloud_services_compute_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.cloud_services_compute_resources
    ADD CONSTRAINT cloud_services_compute_resources_pkey PRIMARY KEY (cloud_service_id, compute_resource_id);


--
-- TOC entry 3047 (class 2606 OID 16645)
-- Name: compute_resource compute_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource
    ADD CONSTRAINT compute_resource_pkey PRIMARY KEY (id);


--
-- TOC entry 3049 (class 2606 OID 16647)
-- Name: compute_resource_property compute_resource_property_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT compute_resource_property_pkey PRIMARY KEY (id);


--
-- TOC entry 3051 (class 2606 OID 16649)
-- Name: compute_resource_property_type compute_resource_property_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property_type
    ADD CONSTRAINT compute_resource_property_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3125 (class 2606 OID 17817)
-- Name: concrete_solution_file concrete_solution_file_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.concrete_solution_file
    ADD CONSTRAINT concrete_solution_file_pkey PRIMARY KEY (concrete_solution_id);


--
-- TOC entry 3057 (class 2606 OID 16651)
-- Name: concrete_solution_package_file concrete_solution_package_file_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.concrete_solution_package_file
    ADD CONSTRAINT concrete_solution_package_file_pkey PRIMARY KEY (concrete_solution_package_id);


--
-- TOC entry 3055 (class 2606 OID 16653)
-- Name: concrete_solution_package concrete_solution_package_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.concrete_solution_package
    ADD CONSTRAINT concrete_solution_package_pkey PRIMARY KEY (id);


--
-- TOC entry 3053 (class 2606 OID 16655)
-- Name: concrete_solution concrete_solution_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.concrete_solution
    ADD CONSTRAINT concrete_solution_pkey PRIMARY KEY (id);


--
-- TOC entry 3059 (class 2606 OID 16657)
-- Name: concrete_solution_revisions concrete_solutions_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.concrete_solution_revisions
    ADD CONSTRAINT concrete_solutions_revisions_pkey PRIMARY KEY (id, rev);


--
-- TOC entry 3061 (class 2606 OID 16659)
-- Name: discussion_comment discussion_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_comment
    ADD CONSTRAINT discussion_comment_pkey PRIMARY KEY (id);


--
-- TOC entry 3063 (class 2606 OID 16661)
-- Name: discussion_topic discussion_topic_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_topic
    ADD CONSTRAINT discussion_topic_pkey PRIMARY KEY (id);


--
-- TOC entry 3065 (class 2606 OID 16663)
-- Name: file file_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT file_pkey PRIMARY KEY (id);


--
-- TOC entry 3069 (class 2606 OID 16665)
-- Name: image image_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);


--
-- TOC entry 3077 (class 2606 OID 16667)
-- Name: implementation_package_file implementation_package_file_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_package_file
    ADD CONSTRAINT implementation_package_file_pkey PRIMARY KEY (implementation_package_id);


--
-- TOC entry 3075 (class 2606 OID 16669)
-- Name: implementation_package implementation_package_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_package
    ADD CONSTRAINT implementation_package_pkey PRIMARY KEY (id);


--
-- TOC entry 3073 (class 2606 OID 16671)
-- Name: implementation implementation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation
    ADD CONSTRAINT implementation_pkey PRIMARY KEY (id);


--
-- TOC entry 3079 (class 2606 OID 16673)
-- Name: implementation_publication implementation_publication_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_publication
    ADD CONSTRAINT implementation_publication_pkey PRIMARY KEY (implementation_id, publication_id);


--
-- TOC entry 3081 (class 2606 OID 16675)
-- Name: implementation_revisions implementation_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_revisions
    ADD CONSTRAINT implementation_revisions_pkey PRIMARY KEY (id, rev);


--
-- TOC entry 3083 (class 2606 OID 16677)
-- Name: implementation_software_platforms implementation_software_platforms_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_software_platforms
    ADD CONSTRAINT implementation_software_platforms_pkey PRIMARY KEY (implementation_id, software_platform_id);


--
-- TOC entry 3085 (class 2606 OID 16679)
-- Name: implementation_tag implementation_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_tag
    ADD CONSTRAINT implementation_tag_pkey PRIMARY KEY (implementation_id, tag_value);


--
-- TOC entry 3087 (class 2606 OID 16681)
-- Name: knowledge_artifact knowledge_artifact_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.knowledge_artifact
    ADD CONSTRAINT knowledge_artifact_pkey PRIMARY KEY (id);


--
-- TOC entry 3089 (class 2606 OID 16683)
-- Name: knowledge_artifact_revisions knowledge_artifact_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.knowledge_artifact_revisions
    ADD CONSTRAINT knowledge_artifact_revisions_pkey PRIMARY KEY (id, rev);


--
-- TOC entry 3091 (class 2606 OID 16685)
-- Name: learning_method learning_method_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.learning_method
    ADD CONSTRAINT learning_method_pkey PRIMARY KEY (id);


--
-- TOC entry 3093 (class 2606 OID 16687)
-- Name: pattern_relation pattern_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_relation
    ADD CONSTRAINT pattern_relation_pkey PRIMARY KEY (id);


--
-- TOC entry 3095 (class 2606 OID 16689)
-- Name: pattern_relation_type pattern_relation_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_relation_type
    ADD CONSTRAINT pattern_relation_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3097 (class 2606 OID 16691)
-- Name: problem_type problem_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.problem_type
    ADD CONSTRAINT problem_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3099 (class 2606 OID 16693)
-- Name: publication publication_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT publication_pkey PRIMARY KEY (id);


--
-- TOC entry 3101 (class 2606 OID 16695)
-- Name: quantum_algorithm quantum_algorithm_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_algorithm
    ADD CONSTRAINT quantum_algorithm_pkey PRIMARY KEY (id);


--
-- TOC entry 3103 (class 2606 OID 16697)
-- Name: quantum_algorithm_revisions quantum_algorithm_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_algorithm_revisions
    ADD CONSTRAINT quantum_algorithm_revisions_pkey PRIMARY KEY (id, rev);


--
-- TOC entry 3105 (class 2606 OID 16699)
-- Name: quantum_implementation quantum_implementation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_implementation
    ADD CONSTRAINT quantum_implementation_pkey PRIMARY KEY (id);


--
-- TOC entry 3107 (class 2606 OID 16701)
-- Name: quantum_implementation_revisions quantum_implementation_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_implementation_revisions
    ADD CONSTRAINT quantum_implementation_revisions_pkey PRIMARY KEY (id, rev);


--
-- TOC entry 3109 (class 2606 OID 16703)
-- Name: revinfo revinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.revinfo
    ADD CONSTRAINT revinfo_pkey PRIMARY KEY (rev);


--
-- TOC entry 3111 (class 2606 OID 16705)
-- Name: sketch sketch_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.sketch
    ADD CONSTRAINT sketch_pkey PRIMARY KEY (id);


--
-- TOC entry 3115 (class 2606 OID 16707)
-- Name: software_platform_cloud_services software_platform_cloud_services_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platform_cloud_services
    ADD CONSTRAINT software_platform_cloud_services_pkey PRIMARY KEY (software_platform_id, cloud_service_id);


--
-- TOC entry 3113 (class 2606 OID 16709)
-- Name: software_platform software_platform_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platform
    ADD CONSTRAINT software_platform_pkey PRIMARY KEY (id);


--
-- TOC entry 3117 (class 2606 OID 16711)
-- Name: software_platforms_compute_resources software_platforms_compute_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platforms_compute_resources
    ADD CONSTRAINT software_platforms_compute_resources_pkey PRIMARY KEY (software_platform_id, compute_resource_id);


--
-- TOC entry 3119 (class 2606 OID 16713)
-- Name: tag tag_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (value);


--
-- TOC entry 3121 (class 2606 OID 16715)
-- Name: tosca_application tosca_application_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.tosca_application
    ADD CONSTRAINT tosca_application_pkey PRIMARY KEY (id);


--
-- TOC entry 3123 (class 2606 OID 16717)
-- Name: tosca_application_revisions tosca_application_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.tosca_application_revisions
    ADD CONSTRAINT tosca_application_revisions_pkey PRIMARY KEY (id, rev);


--
-- TOC entry 3071 (class 2606 OID 16719)
-- Name: image uk_jqvkpvfxplx2ikya5bme8jpk2; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT uk_jqvkpvfxplx2ikya5bme8jpk2 UNIQUE (sketch_id);


--
-- TOC entry 3067 (class 2606 OID 16721)
-- Name: file uk_n5wsqy9uctlh9ihpgvm5evrqi; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT uk_n5wsqy9uctlh9ihpgvm5evrqi UNIQUE (fileurl);


--
-- TOC entry 3155 (class 2606 OID 16722)
-- Name: concrete_solution_revisions cs_fkey; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.concrete_solution_revisions
    ADD CONSTRAINT cs_fkey FOREIGN KEY (id, rev) REFERENCES public.knowledge_artifact_revisions(id, rev) NOT VALID;


--
-- TOC entry 3185 (class 2606 OID 16727)
-- Name: sketch fk1127ygjhclmhfr5twkvoymhum; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.sketch
    ADD CONSTRAINT fk1127ygjhclmhfr5twkvoymhum FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3176 (class 2606 OID 16732)
-- Name: pattern_relation fk2hap3a25ae7i3n1ir2srffhq9; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_relation
    ADD CONSTRAINT fk2hap3a25ae7i3n1ir2srffhq9 FOREIGN KEY (pattern_relation_type_id) REFERENCES public.pattern_relation_type(id);


--
-- TOC entry 3139 (class 2606 OID 16737)
-- Name: algorithm_tag fk2k599458h8m62np4m75ukcvm0; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_tag
    ADD CONSTRAINT fk2k599458h8m62np4m75ukcvm0 FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 3178 (class 2606 OID 16742)
-- Name: publication fk2m528opx84shvoyy4fxpok7t5; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT fk2m528opx84shvoyy4fxpok7t5 FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3187 (class 2606 OID 16747)
-- Name: software_platform_cloud_services fk33jvx36u9tc8y97amj90aq4p5; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platform_cloud_services
    ADD CONSTRAINT fk33jvx36u9tc8y97amj90aq4p5 FOREIGN KEY (cloud_service_id) REFERENCES public.cloud_service(id);


--
-- TOC entry 3192 (class 2606 OID 17818)
-- Name: concrete_solution_file fk38fbn708ka68y1ant7h8hf6yh; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.concrete_solution_file
    ADD CONSTRAINT fk38fbn708ka68y1ant7h8hf6yh FOREIGN KEY (file_id) REFERENCES public.file(id);


--
-- TOC entry 3189 (class 2606 OID 16752)
-- Name: software_platforms_compute_resources fk3idoyrtaifamtyfdqr5ewvdtv; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platforms_compute_resources
    ADD CONSTRAINT fk3idoyrtaifamtyfdqr5ewvdtv FOREIGN KEY (compute_resource_id) REFERENCES public.compute_resource(id);


--
-- TOC entry 3148 (class 2606 OID 16757)
-- Name: compute_resource_property fk3ilvgc8wusnfhy0cgl8cvqsrs; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT fk3ilvgc8wusnfhy0cgl8cvqsrs FOREIGN KEY (compute_resource_property_type_id) REFERENCES public.compute_resource_property_type(id);


--
-- TOC entry 3143 (class 2606 OID 16762)
-- Name: classic_implementation fk3je79xy3m07m7de0rxt3pts8d; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_implementation
    ADD CONSTRAINT fk3je79xy3m07m7de0rxt3pts8d FOREIGN KEY (algorithm_id) REFERENCES public.classic_algorithm(id);


--
-- TOC entry 3173 (class 2606 OID 16767)
-- Name: implementation_tag fk3p2fgn1pojdw4kr6l4t6w3l87; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_tag
    ADD CONSTRAINT fk3p2fgn1pojdw4kr6l4t6w3l87 FOREIGN KEY (tag_value) REFERENCES public.tag(value);


--
-- TOC entry 3184 (class 2606 OID 16772)
-- Name: quantum_implementation_revisions fk3so4s4qwyqav6839107xqyips; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_implementation_revisions
    ADD CONSTRAINT fk3so4s4qwyqav6839107xqyips FOREIGN KEY (id, rev) REFERENCES public.implementation_revisions(id, rev);


--
-- TOC entry 3166 (class 2606 OID 16777)
-- Name: implementation_package_file fk3uh0o0od9c1eovvua5trb3pp1; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_package_file
    ADD CONSTRAINT fk3uh0o0od9c1eovvua5trb3pp1 FOREIGN KEY (implementation_package_id) REFERENCES public.implementation_package(id);


--
-- TOC entry 3127 (class 2606 OID 16782)
-- Name: algorithm_application_area fk4kjef0upq0qftpafdd25l7t0c; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_application_area
    ADD CONSTRAINT fk4kjef0upq0qftpafdd25l7t0c FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 3133 (class 2606 OID 16787)
-- Name: algorithm_publication fk4ksdqnqv8lw1685grhv4kjywf; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_publication
    ADD CONSTRAINT fk4ksdqnqv8lw1685grhv4kjywf FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 3167 (class 2606 OID 16792)
-- Name: implementation_package_file fk5atkjjk7le6sb882i7h4tsijv; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_package_file
    ADD CONSTRAINT fk5atkjjk7le6sb882i7h4tsijv FOREIGN KEY (file_id) REFERENCES public.file(id);


--
-- TOC entry 3135 (class 2606 OID 16797)
-- Name: algorithm_relation fk5p53wf3j277a176t73ef3wuv2; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation
    ADD CONSTRAINT fk5p53wf3j277a176t73ef3wuv2 FOREIGN KEY (target_algorithm) REFERENCES public.algorithm(id);


--
-- TOC entry 3140 (class 2606 OID 16802)
-- Name: algorithm_tag fk5skhq8p0k8aso9cl8cds8q3q1; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_tag
    ADD CONSTRAINT fk5skhq8p0k8aso9cl8cds8q3q1 FOREIGN KEY (tag_value) REFERENCES public.tag(value);


--
-- TOC entry 3179 (class 2606 OID 16807)
-- Name: publication_authors fk6iioc1g7j5y16e7vw3x1anodj; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.publication_authors
    ADD CONSTRAINT fk6iioc1g7j5y16e7vw3x1anodj FOREIGN KEY (publication_id) REFERENCES public.publication(id);


--
-- TOC entry 3190 (class 2606 OID 16812)
-- Name: software_platforms_compute_resources fk71k3mlsekeell9ei812sduh8o; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platforms_compute_resources
    ADD CONSTRAINT fk71k3mlsekeell9ei812sduh8o FOREIGN KEY (software_platform_id) REFERENCES public.software_platform(id);


--
-- TOC entry 3182 (class 2606 OID 16817)
-- Name: quantum_implementation fk793p84p7n3qh71le8iqyvchv9; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_implementation
    ADD CONSTRAINT fk793p84p7n3qh71le8iqyvchv9 FOREIGN KEY (algorithm_id) REFERENCES public.quantum_algorithm(id);


--
-- TOC entry 3156 (class 2606 OID 16822)
-- Name: discussion_comment fk7st41tqwtxhelg9euc4y4qqm4; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_comment
    ADD CONSTRAINT fk7st41tqwtxhelg9euc4y4qqm4 FOREIGN KEY (discussion_topic_id) REFERENCES public.discussion_topic(id);


--
-- TOC entry 3142 (class 2606 OID 16827)
-- Name: classic_algorithm_revisions fk8df15f4k8eyh0hvpmtxw6g0fe; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_algorithm_revisions
    ADD CONSTRAINT fk8df15f4k8eyh0hvpmtxw6g0fe FOREIGN KEY (id, rev) REFERENCES public.algorithm_revisions(id, rev);


--
-- TOC entry 3129 (class 2606 OID 16832)
-- Name: algorithm_learning_method fk8jqnda2x7hwqfd0ssnrfphkir; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_learning_method
    ADD CONSTRAINT fk8jqnda2x7hwqfd0ssnrfphkir FOREIGN KEY (learning_method_id) REFERENCES public.learning_method(id);


--
-- TOC entry 3177 (class 2606 OID 16837)
-- Name: pattern_relation fk9by0eabrmyinhakiirdy7finm; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_relation
    ADD CONSTRAINT fk9by0eabrmyinhakiirdy7finm FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 3136 (class 2606 OID 16842)
-- Name: algorithm_relation fk9cbjg9pmuosnnifvfqqnu77aa; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation
    ADD CONSTRAINT fk9cbjg9pmuosnnifvfqqnu77aa FOREIGN KEY (source_algorithm) REFERENCES public.algorithm(id);


--
-- TOC entry 3163 (class 2606 OID 16847)
-- Name: implementation fkahksfpw97e0c9jet3vu489ohb; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation
    ADD CONSTRAINT fkahksfpw97e0c9jet3vu489ohb FOREIGN KEY (implemented_algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 3145 (class 2606 OID 16852)
-- Name: classic_implementation_revisions fkbeqxuyccy9rf3a7ougkr9fqcg; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_implementation_revisions
    ADD CONSTRAINT fkbeqxuyccy9rf3a7ougkr9fqcg FOREIGN KEY (id, rev) REFERENCES public.implementation_revisions(id, rev);


--
-- TOC entry 3131 (class 2606 OID 16857)
-- Name: algorithm_problem_type fkbqoq02m0qsrxllbnb0d7k52vi; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_problem_type
    ADD CONSTRAINT fkbqoq02m0qsrxllbnb0d7k52vi FOREIGN KEY (problem_type_id) REFERENCES public.problem_type(id);


--
-- TOC entry 3130 (class 2606 OID 16862)
-- Name: algorithm_learning_method fkcgobnecnyo8tn6y7yybhkhqm0; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_learning_method
    ADD CONSTRAINT fkcgobnecnyo8tn6y7yybhkhqm0 FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 3168 (class 2606 OID 16867)
-- Name: implementation_publication fkch41y23ssi6oj169speo5dxoy; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_publication
    ADD CONSTRAINT fkch41y23ssi6oj169speo5dxoy FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- TOC entry 3132 (class 2606 OID 16872)
-- Name: algorithm_problem_type fkd383l41lvcuvooum4re1trytr; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_problem_type
    ADD CONSTRAINT fkd383l41lvcuvooum4re1trytr FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 3146 (class 2606 OID 16877)
-- Name: cloud_services_compute_resources fkdyyng98y8qeuks8qjfeg9jime; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.cloud_services_compute_resources
    ADD CONSTRAINT fkdyyng98y8qeuks8qjfeg9jime FOREIGN KEY (cloud_service_id) REFERENCES public.cloud_service(id);


--
-- TOC entry 3175 (class 2606 OID 16882)
-- Name: knowledge_artifact_revisions fkeb7ea1o9q4mtn2l9fdd0ixude; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.knowledge_artifact_revisions
    ADD CONSTRAINT fkeb7ea1o9q4mtn2l9fdd0ixude FOREIGN KEY (rev) REFERENCES public.revinfo(rev);


--
-- TOC entry 3158 (class 2606 OID 16887)
-- Name: discussion_topic fkeet74vudcv9mlofm7f2ttpa4p; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_topic
    ADD CONSTRAINT fkeet74vudcv9mlofm7f2ttpa4p FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3186 (class 2606 OID 16892)
-- Name: sketch fkehjal9c57gebep6lsrrfkbq61; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.sketch
    ADD CONSTRAINT fkehjal9c57gebep6lsrrfkbq61 FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 3134 (class 2606 OID 16897)
-- Name: algorithm_publication fkeks3idqeo7ys2f6duiny918dr; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_publication
    ADD CONSTRAINT fkeks3idqeo7ys2f6duiny918dr FOREIGN KEY (publication_id) REFERENCES public.publication(id);


--
-- TOC entry 3152 (class 2606 OID 16902)
-- Name: concrete_solution_package fkey; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.concrete_solution_package
    ADD CONSTRAINT fkey FOREIGN KEY (concrete_solution_id) REFERENCES public.concrete_solution(id) NOT VALID;


--
-- TOC entry 3153 (class 2606 OID 16907)
-- Name: concrete_solution_package_file fkey; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.concrete_solution_package_file
    ADD CONSTRAINT fkey FOREIGN KEY (concrete_solution_package_id) REFERENCES public.concrete_solution_package(id) NOT VALID;


--
-- TOC entry 3171 (class 2606 OID 16912)
-- Name: implementation_software_platforms fkf2yb5f1c98uplaxylmmgpms91; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_software_platforms
    ADD CONSTRAINT fkf2yb5f1c98uplaxylmmgpms91 FOREIGN KEY (software_platform_id) REFERENCES public.software_platform(id);


--
-- TOC entry 3141 (class 2606 OID 16917)
-- Name: classic_algorithm fkf8hl76cv1lapta56g1vjdyyow; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_algorithm
    ADD CONSTRAINT fkf8hl76cv1lapta56g1vjdyyow FOREIGN KEY (id) REFERENCES public.algorithm(id);


--
-- TOC entry 3144 (class 2606 OID 16922)
-- Name: classic_implementation fkftorvyxvkj4ok7apanwd4n5m6; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_implementation
    ADD CONSTRAINT fkftorvyxvkj4ok7apanwd4n5m6 FOREIGN KEY (id) REFERENCES public.implementation(id);


--
-- TOC entry 3174 (class 2606 OID 16927)
-- Name: implementation_tag fkgllsrswnpwu9bfhvcghyj19oo; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_tag
    ADD CONSTRAINT fkgllsrswnpwu9bfhvcghyj19oo FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- TOC entry 3126 (class 2606 OID 16932)
-- Name: algorithm fkh714p5lo5u77x1bc14s4g8b3t; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm
    ADD CONSTRAINT fkh714p5lo5u77x1bc14s4g8b3t FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3157 (class 2606 OID 16937)
-- Name: discussion_comment fkhvhl406lwx2yrn62u7pdf5se5; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_comment
    ADD CONSTRAINT fkhvhl406lwx2yrn62u7pdf5se5 FOREIGN KEY (reply_to_id) REFERENCES public.discussion_comment(id);


--
-- TOC entry 3149 (class 2606 OID 16942)
-- Name: compute_resource_property fkk7lt36lixpn6vtn3bnwk3i1e3; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT fkk7lt36lixpn6vtn3bnwk3i1e3 FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- TOC entry 3180 (class 2606 OID 16947)
-- Name: quantum_algorithm fkksxr1gyvxadejxfhfrfkh5m1; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_algorithm
    ADD CONSTRAINT fkksxr1gyvxadejxfhfrfkh5m1 FOREIGN KEY (id) REFERENCES public.algorithm(id);


--
-- TOC entry 3188 (class 2606 OID 16952)
-- Name: software_platform_cloud_services fkl8r1e28p0o06sar2ujke0yx4o; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platform_cloud_services
    ADD CONSTRAINT fkl8r1e28p0o06sar2ujke0yx4o FOREIGN KEY (software_platform_id) REFERENCES public.software_platform(id);


--
-- TOC entry 3161 (class 2606 OID 16957)
-- Name: image fkltsrliwwi922e2s4gng5m6wqx; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkltsrliwwi922e2s4gng5m6wqx FOREIGN KEY (sketch_id) REFERENCES public.sketch(id);


--
-- TOC entry 3191 (class 2606 OID 16962)
-- Name: tosca_application_revisions fklu7vxdc1vikl8mjxixrc44hbg; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.tosca_application_revisions
    ADD CONSTRAINT fklu7vxdc1vikl8mjxixrc44hbg FOREIGN KEY (rev) REFERENCES public.revinfo(rev);


--
-- TOC entry 3169 (class 2606 OID 16967)
-- Name: implementation_publication fklv2uiqj4rrymnmqbuudet7fjb; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_publication
    ADD CONSTRAINT fklv2uiqj4rrymnmqbuudet7fjb FOREIGN KEY (publication_id) REFERENCES public.publication(id);


--
-- TOC entry 3183 (class 2606 OID 16972)
-- Name: quantum_implementation fkm4d7ussdf2l8kf5627q84k7ld; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_implementation
    ADD CONSTRAINT fkm4d7ussdf2l8kf5627q84k7ld FOREIGN KEY (id) REFERENCES public.implementation(id);


--
-- TOC entry 3150 (class 2606 OID 16977)
-- Name: compute_resource_property fkmnnvywwb2eqox08q7x6nnyscf; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT fkmnnvywwb2eqox08q7x6nnyscf FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 3164 (class 2606 OID 16982)
-- Name: implementation fknqdt30hn1h4sm25ah5gdi38u0; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation
    ADD CONSTRAINT fknqdt30hn1h4sm25ah5gdi38u0 FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3159 (class 2606 OID 16987)
-- Name: discussion_topic fknx1gpextw0013t1hb0lett1sk; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_topic
    ADD CONSTRAINT fknx1gpextw0013t1hb0lett1sk FOREIGN KEY (knowledge_artifact_id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3138 (class 2606 OID 16992)
-- Name: algorithm_revisions fkot3e5cot23vsjlm3gu3qjxbdp; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_revisions
    ADD CONSTRAINT fkot3e5cot23vsjlm3gu3qjxbdp FOREIGN KEY (id, rev) REFERENCES public.knowledge_artifact_revisions(id, rev);


--
-- TOC entry 3165 (class 2606 OID 16997)
-- Name: implementation_package fkp1jt3ecfmmfooabum8bmbqcdw; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_package
    ADD CONSTRAINT fkp1jt3ecfmmfooabum8bmbqcdw FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- TOC entry 3170 (class 2606 OID 17002)
-- Name: implementation_revisions fkpuly5cychyseh24dwlcc3ortc; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_revisions
    ADD CONSTRAINT fkpuly5cychyseh24dwlcc3ortc FOREIGN KEY (id, rev) REFERENCES public.knowledge_artifact_revisions(id, rev);


--
-- TOC entry 3147 (class 2606 OID 17007)
-- Name: cloud_services_compute_resources fkqklkuiospnsfn6n5k7uh57mwh; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.cloud_services_compute_resources
    ADD CONSTRAINT fkqklkuiospnsfn6n5k7uh57mwh FOREIGN KEY (compute_resource_id) REFERENCES public.compute_resource(id);


--
-- TOC entry 3181 (class 2606 OID 17012)
-- Name: quantum_algorithm_revisions fkqtm60vujwu1ojuryrxavjm97e; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_algorithm_revisions
    ADD CONSTRAINT fkqtm60vujwu1ojuryrxavjm97e FOREIGN KEY (id, rev) REFERENCES public.algorithm_revisions(id, rev);


--
-- TOC entry 3128 (class 2606 OID 17017)
-- Name: algorithm_application_area fkr5g50nihf4cl2e6cwv4hfs1p; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_application_area
    ADD CONSTRAINT fkr5g50nihf4cl2e6cwv4hfs1p FOREIGN KEY (application_area_id) REFERENCES public.application_area(id);


--
-- TOC entry 3193 (class 2606 OID 17823)
-- Name: concrete_solution_file fkrcv0ou6rsustar59soiyaoee2; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.concrete_solution_file
    ADD CONSTRAINT fkrcv0ou6rsustar59soiyaoee2 FOREIGN KEY (concrete_solution_id) REFERENCES public.concrete_solution(id);


--
-- TOC entry 3162 (class 2606 OID 17022)
-- Name: image fkrgn16rchq4y9vhhx26m1pj2kh; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkrgn16rchq4y9vhhx26m1pj2kh FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3160 (class 2606 OID 17027)
-- Name: file fkslri61hv3myrsoy2k83pv29il; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT fkslri61hv3myrsoy2k83pv29il FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3137 (class 2606 OID 17032)
-- Name: algorithm_relation fksoc9d6qhee9xmia2o80adfymt; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation
    ADD CONSTRAINT fksoc9d6qhee9xmia2o80adfymt FOREIGN KEY (algorithm_relation_type_id) REFERENCES public.algorithm_relation_type(id);


--
-- TOC entry 3151 (class 2606 OID 17037)
-- Name: compute_resource_property fktdgysfhlbm4cj20vfw7suap8i; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT fktdgysfhlbm4cj20vfw7suap8i FOREIGN KEY (compute_resource_id) REFERENCES public.compute_resource(id);


--
-- TOC entry 3172 (class 2606 OID 17042)
-- Name: implementation_software_platforms fktmwiwx6s8svey7vl5wd1wbp25; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_software_platforms
    ADD CONSTRAINT fktmwiwx6s8svey7vl5wd1wbp25 FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- TOC entry 3154 (class 2606 OID 17047)
-- Name: concrete_solution_package_file package_fkey; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.concrete_solution_package_file
    ADD CONSTRAINT package_fkey FOREIGN KEY (file_id) REFERENCES public.file(id) NOT VALID;


-- Completed on 2023-11-17 20:34:31 CET

--
-- PostgreSQL database dump complete
--

