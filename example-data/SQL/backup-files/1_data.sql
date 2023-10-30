--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Debian 12.5-1.pgdg100+1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

-- Started on 2023-10-30 10:06:05 CET

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
-- TOC entry 3328 (class 0 OID 16526)
-- Dependencies: 234
-- Data for Name: knowledge_artifact; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('f05c9136-2f9f-433f-9c35-85009111ee3c', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('9829e814-a707-479f-80c7-8b49ffa543bc', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('52ae7837-58e1-47b2-bda3-4134597ef138', NULL, NULL);


--
-- TOC entry 3296 (class 0 OID 16392)
-- Dependencies: 202
-- Data for Name: algorithm; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Initialization', NULL, NULL, NULL, '9829e814-a707-479f-80c7-8b49ffa543bc');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Uniform Superposition', NULL, NULL, NULL, '52ae7837-58e1-47b2-bda3-4134597ef138');


--
-- TOC entry 3305 (class 0 OID 16428)
-- Dependencies: 211
-- Data for Name: application_area; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.application_area (id, name) VALUES ('ce597b06-c55e-46ce-976c-8de398e049b9', 'Cryptography');
INSERT INTO public.application_area (id, name) VALUES ('12b0d326-8b6a-4f7c-8717-d9cc5eb4a567', 'Classification');
INSERT INTO public.application_area (id, name) VALUES ('da982d08-30a8-48f7-8db1-204c0b4f1865', 'Machine Learning');


--
-- TOC entry 3297 (class 0 OID 16398)
-- Dependencies: 203
-- Data for Name: algorithm_application_area; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3330 (class 0 OID 16532)
-- Dependencies: 236
-- Data for Name: learning_method; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3298 (class 0 OID 16401)
-- Dependencies: 204
-- Data for Name: algorithm_learning_method; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3333 (class 0 OID 16544)
-- Dependencies: 239
-- Data for Name: problem_type; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.problem_type (id, name, parent_problem_type) VALUES ('76d773b5-4635-4d67-877c-e565b9f08496', 'Integer Factorization', NULL);


--
-- TOC entry 3299 (class 0 OID 16404)
-- Dependencies: 205
-- Data for Name: algorithm_problem_type; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3334 (class 0 OID 16547)
-- Dependencies: 240
-- Data for Name: publication; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1137/S0097539795293172', 'Polynomial-Time Algorithms for Prime Factorization and Discrete Logarithms on a Quantum Computer', 'https://arxiv.org/abs/quant-ph/9508027', 'f05c9136-2f9f-433f-9c35-85009111ee3c');
INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1109/TSMCB.2008.925743', 'Quantum reinforcement learning', 'https://arxiv.org/abs/0810.3828', '87d697a4-6256-4f84-b545-c2024ab380c2');
INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1038/s41586-019-0980-2', 'Supervised learning with quantum enhanced feature spaces', 'https://arxiv.org/abs/1804.11326', '3aac6a37-10de-4a95-a2bd-381d357df2a4');
INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1016/j.cpc.2019.107006', 'Support vector machines on the D-Wave quantum annealer', 'https://arxiv.org/abs/1906.06283', 'ae6bdf6f-2656-45bd-9b96-0820eea3cdab');


--
-- TOC entry 3300 (class 0 OID 16407)
-- Dependencies: 206
-- Data for Name: algorithm_publication; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3302 (class 0 OID 16413)
-- Dependencies: 208
-- Data for Name: algorithm_relation_type; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3301 (class 0 OID 16410)
-- Dependencies: 207
-- Data for Name: algorithm_relation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3340 (class 0 OID 16568)
-- Dependencies: 246
-- Data for Name: revinfo; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.revinfo (rev, revtstmp) VALUES (1, 1698650562455);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (2, 1698650562578);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (3, 1698650570493);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (4, 1698650570501);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (5, 1698650570540);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (6, 1698656605831);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (7, 1698656617204);


--
-- TOC entry 3329 (class 0 OID 16529)
-- Dependencies: 235
-- Data for Name: knowledge_artifact_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('b3b616b6-6e4a-49b1-baf7-f08fa962a441', 1, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('1066e01c-e3ac-4830-b610-eb613187850c', 1, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', 2, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('816a96fc-696d-419f-8bd4-98752cc72aac', 2, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('c293bbf4-b8cf-4393-a403-a359a77b868c', 2, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('170eff66-733f-4043-a56b-3189bf474d62', 2, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('649859eb-7709-4beb-9738-d57f11d80455', 3, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('10bc87a9-9317-41c8-8d19-fc6594d23383', 4, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('e7a33256-0ab4-4baa-a805-0296b97960d6', 4, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('7de45de7-aca2-4966-a5f9-8ef018688722', 5, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('8179d686-afa1-4f03-8ec9-95899002488a', 5, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('9829e814-a707-479f-80c7-8b49ffa543bc', 6, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('52ae7837-58e1-47b2-bda3-4134597ef138', 7, 0, NULL, NULL);


--
-- TOC entry 3303 (class 0 OID 16419)
-- Dependencies: 209
-- Data for Name: algorithm_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('9829e814-a707-479f-80c7-8b49ffa543bc', 6, NULL, NULL, NULL, 1, NULL, NULL, 'Initialization', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('52ae7837-58e1-47b2-bda3-4134597ef138', 7, NULL, NULL, NULL, 1, NULL, NULL, 'Uniform Superposition', NULL, NULL, NULL);


--
-- TOC entry 3345 (class 0 OID 16589)
-- Dependencies: 251
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.tag (value, category) VALUES ('Phase Estimation', 'Subroutine');
INSERT INTO public.tag (value, category) VALUES ('Reinforcement learning', 'Algorithm class');
INSERT INTO public.tag (value, category) VALUES ('Classification', 'Algorithm class');
INSERT INTO public.tag (value, category) VALUES ('Factorization', 'Algorithm class');


--
-- TOC entry 3304 (class 0 OID 16425)
-- Dependencies: 210
-- Data for Name: algorithm_tag; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3306 (class 0 OID 16431)
-- Dependencies: 212
-- Data for Name: classic_algorithm; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3307 (class 0 OID 16434)
-- Dependencies: 213
-- Data for Name: classic_algorithm_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3321 (class 0 OID 16496)
-- Dependencies: 227
-- Data for Name: implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3308 (class 0 OID 16437)
-- Dependencies: 214
-- Data for Name: classic_implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3325 (class 0 OID 16514)
-- Dependencies: 231
-- Data for Name: implementation_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('b3b616b6-6e4a-49b1-baf7-f08fa962a441', 1, NULL, NULL, 'Python3', NULL, 'U: Float Array; Precision: Integer', NULL, 'forest-qpe', 'Eigenvalue: Integer Array', 'U: unitary matrix; precision: precision > 0', NULL, NULL, NULL, NULL);
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('1066e01c-e3ac-4830-b610-eb613187850c', 1, NULL, NULL, 'Python3', NULL, NULL, NULL, 'qiskit-qpe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', 2, NULL, NULL, 'Python3', NULL, 'N: Integer', NULL, 'forest-shor', 'Factors: Integer Array', 'N: N > 2', NULL, NULL, NULL, NULL);
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('816a96fc-696d-419f-8bd4-98752cc72aac', 2, NULL, NULL, NULL, NULL, NULL, NULL, 'shor-general-qiskit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('c293bbf4-b8cf-4393-a403-a359a77b868c', 2, NULL, NULL, NULL, NULL, NULL, NULL, 'shor-fix-15-qiskit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('170eff66-733f-4043-a56b-3189bf474d62', 2, NULL, NULL, 'Python3', NULL, 'N: Integer', NULL, 'qiskit-aqua-shor', 'Factors: Integer Array', 'N: N > 2', NULL, NULL, NULL, NULL);
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('649859eb-7709-4beb-9738-d57f11d80455', 3, NULL, NULL, NULL, NULL, NULL, NULL, 'simon-general-qiskit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('10bc87a9-9317-41c8-8d19-fc6594d23383', 4, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-truthtable-qiskit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('e7a33256-0ab4-4baa-a805-0296b97960d6', 4, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-general-truthtable-qiskit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('7de45de7-aca2-4966-a5f9-8ef018688722', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-general-sat-qiskit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('8179d686-afa1-4f03-8ec9-95899002488a', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-sat-qiskit', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- TOC entry 3309 (class 0 OID 16440)
-- Dependencies: 215
-- Data for Name: classic_implementation_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3310 (class 0 OID 16443)
-- Dependencies: 216
-- Data for Name: cloud_service; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.cloud_service (id, cost_model, description, name, provider, url) VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', NULL, NULL, 'IBMQ', 'IBM', 'https://quantum-computing.ibm.com/');
INSERT INTO public.cloud_service (id, cost_model, description, name, provider, url) VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', NULL, NULL, 'Rigetti', 'Rigetti', 'https://www.rigetti.com/');


--
-- TOC entry 3312 (class 0 OID 16452)
-- Dependencies: 218
-- Data for Name: compute_resource; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'faea0025-9096-4582-b2f9-93096358dbc2', 'ibmq_16_melbourne', 0, '', 'IBMQ', NULL);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c0fc8141-4d19-4654-910b-109882b4b99b', 'ibmqx2', 0, NULL, 'IBMQ', NULL);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2e683cee-8363-4327-8765-3b5f957acc90', 'Rigetti 19Q', 0, 'Superconducting', 'Rigetti', NULL);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '82df8861-b7de-464d-9dab-4adabbe78cd2', 'Rigetti 8Q', 0, 'Superconducting', 'Rigetti', NULL);


--
-- TOC entry 3311 (class 0 OID 16449)
-- Dependencies: 217
-- Data for Name: cloud_services_compute_resources; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', 'faea0025-9096-4582-b2f9-93096358dbc2');
INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', '2e683cee-8363-4327-8765-3b5f957acc90');
INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', 'c0fc8141-4d19-4654-910b-109882b4b99b');
INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', '82df8861-b7de-464d-9dab-4adabbe78cd2');


--
-- TOC entry 3314 (class 0 OID 16461)
-- Dependencies: 220
-- Data for Name: compute_resource_property_type; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.compute_resource_property_type (id, datatype, description, name) VALUES ('e658e9bb-ca15-4b3a-9dd2-833ccd144e50', 0, '', 'Number of Qubits');
INSERT INTO public.compute_resource_property_type (id, datatype, description, name) VALUES ('6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', 2, '', 't1');
INSERT INTO public.compute_resource_property_type (id, datatype, description, name) VALUES ('ff58dc2e-b805-4d32-b2ac-a059464e5102', 0, '', 'Max gate time');


--
-- TOC entry 3313 (class 0 OID 16458)
-- Dependencies: 219
-- Data for Name: compute_resource_property; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('92376664-12fc-4143-9ce3-0ce2a7372e05', '15', NULL, 'faea0025-9096-4582-b2f9-93096358dbc2', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('f052fab4-8fa7-4b20-a053-a655f362e5b7', '50063.8361', NULL, 'faea0025-9096-4582-b2f9-93096358dbc2', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('5d57ecb5-f071-472f-a0c3-213d99569f8e', '1043', NULL, 'faea0025-9096-4582-b2f9-93096358dbc2', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('29d3b8b6-9523-4610-9587-98a1019035e0', '5', NULL, 'c0fc8141-4d19-4654-910b-109882b4b99b', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('039b068c-cadd-4a95-a408-e3f058a540e2', '62104.6608', NULL, 'c0fc8141-4d19-4654-910b-109882b4b99b', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('428ac66a-c08d-441c-96a7-3c5976daa08d', '391', NULL, 'c0fc8141-4d19-4654-910b-109882b4b99b', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('79834b76-82d5-4962-b78a-012f374fe4b1', '20', NULL, '2e683cee-8363-4327-8765-3b5f957acc90', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('064f93f4-d50a-49ae-a7e4-ea36fc67a662', '20330', NULL, '2e683cee-8363-4327-8765-3b5f957acc90', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('51d3b698-0698-4058-bb9b-2de809a3a704', '214', NULL, '2e683cee-8363-4327-8765-3b5f957acc90', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('486fbc6f-20b2-4247-8742-b36cfd5b3c44', '8', NULL, '82df8861-b7de-464d-9dab-4adabbe78cd2', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('d772d10b-0614-480a-b2ec-b33a32d74e42', '13406.25', NULL, '82df8861-b7de-464d-9dab-4adabbe78cd2', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('dde0fa28-a69d-4e51-83c7-5e23d06aeb2a', '198', NULL, '82df8861-b7de-464d-9dab-4adabbe78cd2', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);


--
-- TOC entry 3315 (class 0 OID 16467)
-- Dependencies: 221
-- Data for Name: concrete_solutions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3348 (class 0 OID 17719)
-- Dependencies: 254
-- Data for Name: concrete_solutions_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3317 (class 0 OID 16476)
-- Dependencies: 223
-- Data for Name: discussion_topic; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3316 (class 0 OID 16473)
-- Dependencies: 222
-- Data for Name: discussion_comment; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3318 (class 0 OID 16482)
-- Dependencies: 224
-- Data for Name: file; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3341 (class 0 OID 16571)
-- Dependencies: 247
-- Data for Name: sketch; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3320 (class 0 OID 16490)
-- Dependencies: 226
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3322 (class 0 OID 16502)
-- Dependencies: 228
-- Data for Name: implementation_package; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3323 (class 0 OID 16508)
-- Dependencies: 229
-- Data for Name: implementation_package_file; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3324 (class 0 OID 16511)
-- Dependencies: 230
-- Data for Name: implementation_publication; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3342 (class 0 OID 16577)
-- Dependencies: 248
-- Data for Name: software_platform; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.software_platform (id, licence, link, name, version) VALUES ('7c2c4b2e-5b4e-421c-a487-54fd897bfe41', 'Apache-2.0 License', 'https://pyquil-docs.rigetti.com/en/stable/', 'Forest', NULL);
INSERT INTO public.software_platform (id, licence, link, name, version) VALUES ('41299c3c-297a-4d61-be24-cc957186306e', 'Apache-2.0 License', 'https://github.com/Qiskit/qiskit', 'Qiskit', '0.21.0');


--
-- TOC entry 3326 (class 0 OID 16520)
-- Dependencies: 232
-- Data for Name: implementation_software_platforms; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3327 (class 0 OID 16523)
-- Dependencies: 233
-- Data for Name: implementation_tag; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3332 (class 0 OID 16541)
-- Dependencies: 238
-- Data for Name: pattern_relation_type; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3331 (class 0 OID 16535)
-- Dependencies: 237
-- Data for Name: pattern_relation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3335 (class 0 OID 16553)
-- Dependencies: 241
-- Data for Name: publication_authors; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.publication_authors (publication_id, authors) VALUES ('f05c9136-2f9f-433f-9c35-85009111ee3c', 'Peter W. Shor');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Daoyl Dong');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Chunlin Chen');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Hanxiong Li');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Tzyh-Jong Tarn');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Vojtech Havlicek');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Antionio D. Córcoles');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Kristian Temme');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Aram W. Harrow');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Abhinav Kandala');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Jerry M. Chow');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Jay M. Gambetta');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Dennis Willsch');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Madita Willsch');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Hans De Raedt');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Kristel Michielsen');


--
-- TOC entry 3336 (class 0 OID 16556)
-- Dependencies: 242
-- Data for Name: quantum_algorithm; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '9829e814-a707-479f-80c7-8b49ffa543bc');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '52ae7837-58e1-47b2-bda3-4134597ef138');


--
-- TOC entry 3337 (class 0 OID 16559)
-- Dependencies: 243
-- Data for Name: quantum_algorithm_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('9829e814-a707-479f-80c7-8b49ffa543bc', 6, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('52ae7837-58e1-47b2-bda3-4134597ef138', 7, false, 0, NULL);


--
-- TOC entry 3338 (class 0 OID 16562)
-- Dependencies: 244
-- Data for Name: quantum_implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3339 (class 0 OID 16565)
-- Dependencies: 245
-- Data for Name: quantum_implementation_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3343 (class 0 OID 16583)
-- Dependencies: 249
-- Data for Name: software_platform_cloud_services; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3344 (class 0 OID 16586)
-- Dependencies: 250
-- Data for Name: software_platforms_compute_resources; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3346 (class 0 OID 16595)
-- Dependencies: 252
-- Data for Name: tosca_application; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3347 (class 0 OID 16601)
-- Dependencies: 253
-- Data for Name: tosca_application_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3354 (class 0 OID 0)
-- Dependencies: 225
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: planqk
--

SELECT pg_catalog.setval('public.hibernate_sequence', 7, true);


-- Completed on 2023-10-30 10:06:06 CET

--
-- PostgreSQL database dump complete
--

