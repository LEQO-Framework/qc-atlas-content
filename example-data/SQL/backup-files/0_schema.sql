--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Debian 12.2-2.pgdg100+1)
-- Dumped by pg_dump version 12.4 (Ubuntu 12.4-1.pgdg18.04+1)

-- Started on 2020-10-02 12:52:42 CEST

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
-- TOC entry 202 (class 1259 OID 16390)
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
-- TOC entry 203 (class 1259 OID 16398)
-- Name: algorithm_application_area; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_application_area (
    algorithm_id uuid NOT NULL,
    application_area_id uuid NOT NULL
);


ALTER TABLE public.algorithm_application_area OWNER TO planqk;

--
-- TOC entry 204 (class 1259 OID 16403)
-- Name: algorithm_problem_type; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_problem_type (
    algorithm_id uuid NOT NULL,
    problem_type_id uuid NOT NULL
);


ALTER TABLE public.algorithm_problem_type OWNER TO planqk;

--
-- TOC entry 205 (class 1259 OID 16408)
-- Name: algorithm_publication; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_publication (
    algorithm_id uuid NOT NULL,
    publication_id uuid NOT NULL
);


ALTER TABLE public.algorithm_publication OWNER TO planqk;

--
-- TOC entry 207 (class 1259 OID 16418)
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
-- TOC entry 208 (class 1259 OID 16423)
-- Name: algorithm_relation_type; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_relation_type (
    id uuid NOT NULL,
    name character varying(255)
);


ALTER TABLE public.algorithm_relation_type OWNER TO planqk;

--
-- TOC entry 206 (class 1259 OID 16413)
-- Name: algorithm_tag; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_tag (
    algorithm_id uuid NOT NULL,
    tag_value character varying(255) NOT NULL
);


ALTER TABLE public.algorithm_tag OWNER TO planqk;

--
-- TOC entry 209 (class 1259 OID 16428)
-- Name: application_area; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.application_area (
    id uuid NOT NULL,
    name character varying(255)
);


ALTER TABLE public.application_area OWNER TO planqk;

--
-- TOC entry 210 (class 1259 OID 16433)
-- Name: classic_algorithm; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.classic_algorithm (
    id uuid NOT NULL
);


ALTER TABLE public.classic_algorithm OWNER TO planqk;

--
-- TOC entry 211 (class 1259 OID 16438)
-- Name: classic_implementation; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.classic_implementation (
    id uuid NOT NULL,
    algorithm_id uuid
);


ALTER TABLE public.classic_implementation OWNER TO planqk;

--
-- TOC entry 213 (class 1259 OID 16448)
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
-- TOC entry 212 (class 1259 OID 16443)
-- Name: cloud_services_compute_resources; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.cloud_services_compute_resources (
    cloud_service_id uuid NOT NULL,
    compute_resource_id uuid NOT NULL
);


ALTER TABLE public.cloud_services_compute_resources OWNER TO planqk;

--
-- TOC entry 214 (class 1259 OID 16456)
-- Name: compute_resource; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.compute_resource (
    dtype character varying(31) NOT NULL,
    id uuid NOT NULL,
    name character varying(255),
    quantum_computation_model integer,
    technology character varying(255),
    vendor character varying(255)
);


ALTER TABLE public.compute_resource OWNER TO planqk;

--
-- TOC entry 215 (class 1259 OID 16464)
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
-- TOC entry 216 (class 1259 OID 16469)
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
-- TOC entry 217 (class 1259 OID 16477)
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
-- TOC entry 218 (class 1259 OID 16482)
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
-- TOC entry 219 (class 1259 OID 16490)
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
-- TOC entry 220 (class 1259 OID 16498)
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
-- TOC entry 221 (class 1259 OID 16506)
-- Name: implementation_publication; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_publication (
    implementation_id uuid NOT NULL,
    publication_id uuid NOT NULL
);


ALTER TABLE public.implementation_publication OWNER TO planqk;

--
-- TOC entry 222 (class 1259 OID 16511)
-- Name: implementation_software_platforms; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_software_platforms (
    implementation_id uuid NOT NULL,
    software_platform_id uuid NOT NULL
);


ALTER TABLE public.implementation_software_platforms OWNER TO planqk;

--
-- TOC entry 223 (class 1259 OID 16516)
-- Name: implementation_tag; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_tag (
    implementation_id uuid NOT NULL,
    tag_value character varying(255) NOT NULL
);


ALTER TABLE public.implementation_tag OWNER TO planqk;

--
-- TOC entry 224 (class 1259 OID 16521)
-- Name: knowledge_artifact; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.knowledge_artifact (
    id uuid NOT NULL,
    creation_date timestamp without time zone,
    last_modified_at timestamp without time zone
);


ALTER TABLE public.knowledge_artifact OWNER TO planqk;

--
-- TOC entry 225 (class 1259 OID 16526)
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
-- TOC entry 226 (class 1259 OID 16534)
-- Name: pattern_relation_type; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.pattern_relation_type (
    id uuid NOT NULL,
    name character varying(255)
);


ALTER TABLE public.pattern_relation_type OWNER TO planqk;

--
-- TOC entry 227 (class 1259 OID 16539)
-- Name: problem_type; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.problem_type (
    id uuid NOT NULL,
    name character varying(255),
    parent_problem_type uuid
);


ALTER TABLE public.problem_type OWNER TO planqk;

--
-- TOC entry 228 (class 1259 OID 16544)
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
-- TOC entry 229 (class 1259 OID 16552)
-- Name: publication_authors; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.publication_authors (
    publication_id uuid NOT NULL,
    authors character varying(255)
);


ALTER TABLE public.publication_authors OWNER TO planqk;

--
-- TOC entry 230 (class 1259 OID 16555)
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
-- TOC entry 231 (class 1259 OID 16560)
-- Name: quantum_implementation; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.quantum_implementation (
    id uuid NOT NULL,
    algorithm_id uuid
);


ALTER TABLE public.quantum_implementation OWNER TO planqk;

--
-- TOC entry 232 (class 1259 OID 16565)
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
-- TOC entry 235 (class 1259 OID 16583)
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
-- TOC entry 233 (class 1259 OID 16573)
-- Name: software_platform_cloud_services; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.software_platform_cloud_services (
    software_platform_id uuid NOT NULL,
    cloud_service_id uuid NOT NULL
);


ALTER TABLE public.software_platform_cloud_services OWNER TO planqk;

--
-- TOC entry 234 (class 1259 OID 16578)
-- Name: software_platforms_compute_resources; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.software_platforms_compute_resources (
    software_platform_id uuid NOT NULL,
    compute_resource_id uuid NOT NULL
);


ALTER TABLE public.software_platforms_compute_resources OWNER TO planqk;

--
-- TOC entry 236 (class 1259 OID 16591)
-- Name: tag; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.tag (
    value character varying(255) NOT NULL,
    category character varying(255)
);


ALTER TABLE public.tag OWNER TO planqk;

--
-- TOC entry 2926 (class 2606 OID 16402)
-- Name: algorithm_application_area algorithm_application_area_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_application_area
    ADD CONSTRAINT algorithm_application_area_pkey PRIMARY KEY (algorithm_id, application_area_id);


--
-- TOC entry 2924 (class 2606 OID 16397)
-- Name: algorithm algorithm_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm
    ADD CONSTRAINT algorithm_pkey PRIMARY KEY (id);


--
-- TOC entry 2928 (class 2606 OID 16407)
-- Name: algorithm_problem_type algorithm_problem_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_problem_type
    ADD CONSTRAINT algorithm_problem_type_pkey PRIMARY KEY (algorithm_id, problem_type_id);


--
-- TOC entry 2930 (class 2606 OID 16412)
-- Name: algorithm_publication algorithm_publication_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_publication
    ADD CONSTRAINT algorithm_publication_pkey PRIMARY KEY (algorithm_id, publication_id);


--
-- TOC entry 2934 (class 2606 OID 16422)
-- Name: algorithm_relation algorithm_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation
    ADD CONSTRAINT algorithm_relation_pkey PRIMARY KEY (id);


--
-- TOC entry 2936 (class 2606 OID 16427)
-- Name: algorithm_relation_type algorithm_relation_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation_type
    ADD CONSTRAINT algorithm_relation_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2932 (class 2606 OID 16417)
-- Name: algorithm_tag algorithm_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_tag
    ADD CONSTRAINT algorithm_tag_pkey PRIMARY KEY (algorithm_id, tag_value);


--
-- TOC entry 2938 (class 2606 OID 16432)
-- Name: application_area application_area_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.application_area
    ADD CONSTRAINT application_area_pkey PRIMARY KEY (id);


--
-- TOC entry 2940 (class 2606 OID 16437)
-- Name: classic_algorithm classic_algorithm_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_algorithm
    ADD CONSTRAINT classic_algorithm_pkey PRIMARY KEY (id);


--
-- TOC entry 2942 (class 2606 OID 16442)
-- Name: classic_implementation classic_implementation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_implementation
    ADD CONSTRAINT classic_implementation_pkey PRIMARY KEY (id);


--
-- TOC entry 2946 (class 2606 OID 16455)
-- Name: cloud_service cloud_service_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.cloud_service
    ADD CONSTRAINT cloud_service_pkey PRIMARY KEY (id);


--
-- TOC entry 2944 (class 2606 OID 16447)
-- Name: cloud_services_compute_resources cloud_services_compute_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.cloud_services_compute_resources
    ADD CONSTRAINT cloud_services_compute_resources_pkey PRIMARY KEY (cloud_service_id, compute_resource_id);


--
-- TOC entry 2948 (class 2606 OID 16463)
-- Name: compute_resource compute_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource
    ADD CONSTRAINT compute_resource_pkey PRIMARY KEY (id);


--
-- TOC entry 2950 (class 2606 OID 16468)
-- Name: compute_resource_property compute_resource_property_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT compute_resource_property_pkey PRIMARY KEY (id);


--
-- TOC entry 2952 (class 2606 OID 16476)
-- Name: compute_resource_property_type compute_resource_property_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property_type
    ADD CONSTRAINT compute_resource_property_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2954 (class 2606 OID 16481)
-- Name: discussion_comment discussion_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_comment
    ADD CONSTRAINT discussion_comment_pkey PRIMARY KEY (id);


--
-- TOC entry 2956 (class 2606 OID 16489)
-- Name: discussion_topic discussion_topic_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_topic
    ADD CONSTRAINT discussion_topic_pkey PRIMARY KEY (id);


--
-- TOC entry 2958 (class 2606 OID 16497)
-- Name: image image_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);


--
-- TOC entry 2960 (class 2606 OID 16505)
-- Name: implementation implementation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation
    ADD CONSTRAINT implementation_pkey PRIMARY KEY (id);


--
-- TOC entry 2962 (class 2606 OID 16510)
-- Name: implementation_publication implementation_publication_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_publication
    ADD CONSTRAINT implementation_publication_pkey PRIMARY KEY (implementation_id, publication_id);


--
-- TOC entry 2964 (class 2606 OID 16515)
-- Name: implementation_software_platforms implementation_software_platforms_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_software_platforms
    ADD CONSTRAINT implementation_software_platforms_pkey PRIMARY KEY (implementation_id, software_platform_id);


--
-- TOC entry 2966 (class 2606 OID 16520)
-- Name: implementation_tag implementation_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_tag
    ADD CONSTRAINT implementation_tag_pkey PRIMARY KEY (implementation_id, tag_value);


--
-- TOC entry 2968 (class 2606 OID 16525)
-- Name: knowledge_artifact knowledge_artifact_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.knowledge_artifact
    ADD CONSTRAINT knowledge_artifact_pkey PRIMARY KEY (id);


--
-- TOC entry 2970 (class 2606 OID 16533)
-- Name: pattern_relation pattern_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_relation
    ADD CONSTRAINT pattern_relation_pkey PRIMARY KEY (id);


--
-- TOC entry 2972 (class 2606 OID 16538)
-- Name: pattern_relation_type pattern_relation_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_relation_type
    ADD CONSTRAINT pattern_relation_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2974 (class 2606 OID 16543)
-- Name: problem_type problem_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.problem_type
    ADD CONSTRAINT problem_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2976 (class 2606 OID 16551)
-- Name: publication publication_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT publication_pkey PRIMARY KEY (id);


--
-- TOC entry 2978 (class 2606 OID 16559)
-- Name: quantum_algorithm quantum_algorithm_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_algorithm
    ADD CONSTRAINT quantum_algorithm_pkey PRIMARY KEY (id);


--
-- TOC entry 2980 (class 2606 OID 16564)
-- Name: quantum_implementation quantum_implementation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_implementation
    ADD CONSTRAINT quantum_implementation_pkey PRIMARY KEY (id);


--
-- TOC entry 2982 (class 2606 OID 16572)
-- Name: sketch sketch_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.sketch
    ADD CONSTRAINT sketch_pkey PRIMARY KEY (id);


--
-- TOC entry 2984 (class 2606 OID 16577)
-- Name: software_platform_cloud_services software_platform_cloud_services_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platform_cloud_services
    ADD CONSTRAINT software_platform_cloud_services_pkey PRIMARY KEY (software_platform_id, cloud_service_id);


--
-- TOC entry 2988 (class 2606 OID 16590)
-- Name: software_platform software_platform_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platform
    ADD CONSTRAINT software_platform_pkey PRIMARY KEY (id);


--
-- TOC entry 2986 (class 2606 OID 16582)
-- Name: software_platforms_compute_resources software_platforms_compute_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platforms_compute_resources
    ADD CONSTRAINT software_platforms_compute_resources_pkey PRIMARY KEY (software_platform_id, compute_resource_id);


--
-- TOC entry 2990 (class 2606 OID 16598)
-- Name: tag tag_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (value);


--
-- TOC entry 3034 (class 2606 OID 16814)
-- Name: sketch fk1127ygjhclmhfr5twkvoymhum; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.sketch
    ADD CONSTRAINT fk1127ygjhclmhfr5twkvoymhum FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3027 (class 2606 OID 16779)
-- Name: pattern_relation fk2hap3a25ae7i3n1ir2srffhq9; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_relation
    ADD CONSTRAINT fk2hap3a25ae7i3n1ir2srffhq9 FOREIGN KEY (pattern_relation_type_id) REFERENCES public.pattern_relation_type(id);


--
-- TOC entry 2999 (class 2606 OID 16639)
-- Name: algorithm_tag fk2k599458h8m62np4m75ukcvm0; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_tag
    ADD CONSTRAINT fk2k599458h8m62np4m75ukcvm0 FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 3028 (class 2606 OID 16784)
-- Name: publication fk2m528opx84shvoyy4fxpok7t5; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT fk2m528opx84shvoyy4fxpok7t5 FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3035 (class 2606 OID 16819)
-- Name: software_platform_cloud_services fk33jvx36u9tc8y97amj90aq4p5; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platform_cloud_services
    ADD CONSTRAINT fk33jvx36u9tc8y97amj90aq4p5 FOREIGN KEY (cloud_service_id) REFERENCES public.cloud_service(id);


--
-- TOC entry 3037 (class 2606 OID 16829)
-- Name: software_platforms_compute_resources fk3idoyrtaifamtyfdqr5ewvdtv; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platforms_compute_resources
    ADD CONSTRAINT fk3idoyrtaifamtyfdqr5ewvdtv FOREIGN KEY (compute_resource_id) REFERENCES public.compute_resource(id);


--
-- TOC entry 3010 (class 2606 OID 16694)
-- Name: compute_resource_property fk3ilvgc8wusnfhy0cgl8cvqsrs; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT fk3ilvgc8wusnfhy0cgl8cvqsrs FOREIGN KEY (compute_resource_property_type_id) REFERENCES public.compute_resource_property_type(id);


--
-- TOC entry 3004 (class 2606 OID 16664)
-- Name: classic_implementation fk3je79xy3m07m7de0rxt3pts8d; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_implementation
    ADD CONSTRAINT fk3je79xy3m07m7de0rxt3pts8d FOREIGN KEY (algorithm_id) REFERENCES public.classic_algorithm(id);


--
-- TOC entry 3024 (class 2606 OID 16764)
-- Name: implementation_tag fk3p2fgn1pojdw4kr6l4t6w3l87; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_tag
    ADD CONSTRAINT fk3p2fgn1pojdw4kr6l4t6w3l87 FOREIGN KEY (tag_value) REFERENCES public.tag(value);


--
-- TOC entry 2993 (class 2606 OID 16609)
-- Name: algorithm_application_area fk4kjef0upq0qftpafdd25l7t0c; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_application_area
    ADD CONSTRAINT fk4kjef0upq0qftpafdd25l7t0c FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 2997 (class 2606 OID 16629)
-- Name: algorithm_publication fk4ksdqnqv8lw1685grhv4kjywf; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_publication
    ADD CONSTRAINT fk4ksdqnqv8lw1685grhv4kjywf FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 3002 (class 2606 OID 16654)
-- Name: algorithm_relation fk5p53wf3j277a176t73ef3wuv2; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation
    ADD CONSTRAINT fk5p53wf3j277a176t73ef3wuv2 FOREIGN KEY (target_algorithm) REFERENCES public.algorithm(id);


--
-- TOC entry 2998 (class 2606 OID 16634)
-- Name: algorithm_tag fk5skhq8p0k8aso9cl8cds8q3q1; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_tag
    ADD CONSTRAINT fk5skhq8p0k8aso9cl8cds8q3q1 FOREIGN KEY (tag_value) REFERENCES public.tag(value);


--
-- TOC entry 3029 (class 2606 OID 16789)
-- Name: publication_authors fk6iioc1g7j5y16e7vw3x1anodj; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.publication_authors
    ADD CONSTRAINT fk6iioc1g7j5y16e7vw3x1anodj FOREIGN KEY (publication_id) REFERENCES public.publication(id);


--
-- TOC entry 3038 (class 2606 OID 16834)
-- Name: software_platforms_compute_resources fk71k3mlsekeell9ei812sduh8o; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platforms_compute_resources
    ADD CONSTRAINT fk71k3mlsekeell9ei812sduh8o FOREIGN KEY (software_platform_id) REFERENCES public.software_platform(id);


--
-- TOC entry 3031 (class 2606 OID 16799)
-- Name: quantum_implementation fk793p84p7n3qh71le8iqyvchv9; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_implementation
    ADD CONSTRAINT fk793p84p7n3qh71le8iqyvchv9 FOREIGN KEY (algorithm_id) REFERENCES public.quantum_algorithm(id);


--
-- TOC entry 3012 (class 2606 OID 16704)
-- Name: discussion_comment fk7st41tqwtxhelg9euc4y4qqm4; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_comment
    ADD CONSTRAINT fk7st41tqwtxhelg9euc4y4qqm4 FOREIGN KEY (discussion_topic_id) REFERENCES public.discussion_topic(id);


--
-- TOC entry 3026 (class 2606 OID 16774)
-- Name: pattern_relation fk9by0eabrmyinhakiirdy7finm; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_relation
    ADD CONSTRAINT fk9by0eabrmyinhakiirdy7finm FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 3001 (class 2606 OID 16649)
-- Name: algorithm_relation fk9cbjg9pmuosnnifvfqqnu77aa; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation
    ADD CONSTRAINT fk9cbjg9pmuosnnifvfqqnu77aa FOREIGN KEY (source_algorithm) REFERENCES public.algorithm(id);


--
-- TOC entry 3018 (class 2606 OID 16734)
-- Name: implementation fkahksfpw97e0c9jet3vu489ohb; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation
    ADD CONSTRAINT fkahksfpw97e0c9jet3vu489ohb FOREIGN KEY (implemented_algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 2994 (class 2606 OID 16614)
-- Name: algorithm_problem_type fkbqoq02m0qsrxllbnb0d7k52vi; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_problem_type
    ADD CONSTRAINT fkbqoq02m0qsrxllbnb0d7k52vi FOREIGN KEY (problem_type_id) REFERENCES public.problem_type(id);


--
-- TOC entry 3021 (class 2606 OID 16749)
-- Name: implementation_publication fkch41y23ssi6oj169speo5dxoy; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_publication
    ADD CONSTRAINT fkch41y23ssi6oj169speo5dxoy FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- TOC entry 2995 (class 2606 OID 16619)
-- Name: algorithm_problem_type fkd383l41lvcuvooum4re1trytr; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_problem_type
    ADD CONSTRAINT fkd383l41lvcuvooum4re1trytr FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 3007 (class 2606 OID 16679)
-- Name: cloud_services_compute_resources fkdyyng98y8qeuks8qjfeg9jime; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.cloud_services_compute_resources
    ADD CONSTRAINT fkdyyng98y8qeuks8qjfeg9jime FOREIGN KEY (cloud_service_id) REFERENCES public.cloud_service(id);


--
-- TOC entry 3015 (class 2606 OID 16719)
-- Name: discussion_topic fkeet74vudcv9mlofm7f2ttpa4p; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_topic
    ADD CONSTRAINT fkeet74vudcv9mlofm7f2ttpa4p FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3033 (class 2606 OID 16809)
-- Name: sketch fkehjal9c57gebep6lsrrfkbq61; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.sketch
    ADD CONSTRAINT fkehjal9c57gebep6lsrrfkbq61 FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 2996 (class 2606 OID 16624)
-- Name: algorithm_publication fkeks3idqeo7ys2f6duiny918dr; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_publication
    ADD CONSTRAINT fkeks3idqeo7ys2f6duiny918dr FOREIGN KEY (publication_id) REFERENCES public.publication(id);


--
-- TOC entry 3022 (class 2606 OID 16754)
-- Name: implementation_software_platforms fkf2yb5f1c98uplaxylmmgpms91; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_software_platforms
    ADD CONSTRAINT fkf2yb5f1c98uplaxylmmgpms91 FOREIGN KEY (software_platform_id) REFERENCES public.software_platform(id);


--
-- TOC entry 3003 (class 2606 OID 16659)
-- Name: classic_algorithm fkf8hl76cv1lapta56g1vjdyyow; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_algorithm
    ADD CONSTRAINT fkf8hl76cv1lapta56g1vjdyyow FOREIGN KEY (id) REFERENCES public.algorithm(id);


--
-- TOC entry 3005 (class 2606 OID 16669)
-- Name: classic_implementation fkftorvyxvkj4ok7apanwd4n5m6; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_implementation
    ADD CONSTRAINT fkftorvyxvkj4ok7apanwd4n5m6 FOREIGN KEY (id) REFERENCES public.implementation(id);


--
-- TOC entry 3025 (class 2606 OID 16769)
-- Name: implementation_tag fkgllsrswnpwu9bfhvcghyj19oo; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_tag
    ADD CONSTRAINT fkgllsrswnpwu9bfhvcghyj19oo FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- TOC entry 2991 (class 2606 OID 16599)
-- Name: algorithm fkh714p5lo5u77x1bc14s4g8b3t; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm
    ADD CONSTRAINT fkh714p5lo5u77x1bc14s4g8b3t FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3013 (class 2606 OID 16709)
-- Name: discussion_comment fkhvhl406lwx2yrn62u7pdf5se5; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_comment
    ADD CONSTRAINT fkhvhl406lwx2yrn62u7pdf5se5 FOREIGN KEY (reply_to_id) REFERENCES public.discussion_comment(id);


--
-- TOC entry 3011 (class 2606 OID 16699)
-- Name: compute_resource_property fkk7lt36lixpn6vtn3bnwk3i1e3; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT fkk7lt36lixpn6vtn3bnwk3i1e3 FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- TOC entry 3030 (class 2606 OID 16794)
-- Name: quantum_algorithm fkksxr1gyvxadejxfhfrfkh5m1; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_algorithm
    ADD CONSTRAINT fkksxr1gyvxadejxfhfrfkh5m1 FOREIGN KEY (id) REFERENCES public.algorithm(id);


--
-- TOC entry 3036 (class 2606 OID 16824)
-- Name: software_platform_cloud_services fkl8r1e28p0o06sar2ujke0yx4o; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platform_cloud_services
    ADD CONSTRAINT fkl8r1e28p0o06sar2ujke0yx4o FOREIGN KEY (software_platform_id) REFERENCES public.software_platform(id);


--
-- TOC entry 3016 (class 2606 OID 16724)
-- Name: image fkltsrliwwi922e2s4gng5m6wqx; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkltsrliwwi922e2s4gng5m6wqx FOREIGN KEY (sketch_id) REFERENCES public.sketch(id);


--
-- TOC entry 3020 (class 2606 OID 16744)
-- Name: implementation_publication fklv2uiqj4rrymnmqbuudet7fjb; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_publication
    ADD CONSTRAINT fklv2uiqj4rrymnmqbuudet7fjb FOREIGN KEY (publication_id) REFERENCES public.publication(id);


--
-- TOC entry 3032 (class 2606 OID 16804)
-- Name: quantum_implementation fkm4d7ussdf2l8kf5627q84k7ld; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_implementation
    ADD CONSTRAINT fkm4d7ussdf2l8kf5627q84k7ld FOREIGN KEY (id) REFERENCES public.implementation(id);


--
-- TOC entry 3008 (class 2606 OID 16684)
-- Name: compute_resource_property fkmnnvywwb2eqox08q7x6nnyscf; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT fkmnnvywwb2eqox08q7x6nnyscf FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- TOC entry 3019 (class 2606 OID 16739)
-- Name: implementation fknqdt30hn1h4sm25ah5gdi38u0; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation
    ADD CONSTRAINT fknqdt30hn1h4sm25ah5gdi38u0 FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3014 (class 2606 OID 16714)
-- Name: discussion_topic fknx1gpextw0013t1hb0lett1sk; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_topic
    ADD CONSTRAINT fknx1gpextw0013t1hb0lett1sk FOREIGN KEY (knowledge_artifact_id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3006 (class 2606 OID 16674)
-- Name: cloud_services_compute_resources fkqklkuiospnsfn6n5k7uh57mwh; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.cloud_services_compute_resources
    ADD CONSTRAINT fkqklkuiospnsfn6n5k7uh57mwh FOREIGN KEY (compute_resource_id) REFERENCES public.compute_resource(id);


--
-- TOC entry 2992 (class 2606 OID 16604)
-- Name: algorithm_application_area fkr5g50nihf4cl2e6cwv4hfs1p; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_application_area
    ADD CONSTRAINT fkr5g50nihf4cl2e6cwv4hfs1p FOREIGN KEY (application_area_id) REFERENCES public.application_area(id);


--
-- TOC entry 3017 (class 2606 OID 16729)
-- Name: image fkrgn16rchq4y9vhhx26m1pj2kh; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkrgn16rchq4y9vhhx26m1pj2kh FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- TOC entry 3000 (class 2606 OID 16644)
-- Name: algorithm_relation fksoc9d6qhee9xmia2o80adfymt; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation
    ADD CONSTRAINT fksoc9d6qhee9xmia2o80adfymt FOREIGN KEY (algorithm_relation_type_id) REFERENCES public.algorithm_relation_type(id);


--
-- TOC entry 3009 (class 2606 OID 16689)
-- Name: compute_resource_property fktdgysfhlbm4cj20vfw7suap8i; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT fktdgysfhlbm4cj20vfw7suap8i FOREIGN KEY (compute_resource_id) REFERENCES public.compute_resource(id);


--
-- TOC entry 3023 (class 2606 OID 16759)
-- Name: implementation_software_platforms fktmwiwx6s8svey7vl5wd1wbp25; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_software_platforms
    ADD CONSTRAINT fktmwiwx6s8svey7vl5wd1wbp25 FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


-- Completed on 2020-10-02 12:52:43 CEST

--
-- PostgreSQL database dump complete
--

