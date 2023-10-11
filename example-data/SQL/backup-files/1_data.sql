--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Debian 12.4-1.pgdg100+1)
-- Dumped by pg_dump version 13.0

-- Started on 2020-11-02 09:40:39

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
-- TOC entry 3198 (class 0 OID 16477)
-- Dependencies: 225
-- Data for Name: knowledge_artifact; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('379ec44e-1ce5-11eb-adf2-0242ac160002', '2020-11-02 08:27:17.116336', '2020-11-02 08:27:17.116336');
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('b61578ed-df66-44ec-954c-9bcf9906f490', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('4ab28e22-cdf9-45f8-b872-f4d9d2757b6d', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('16aa96c5-b668-4df9-a03f-96d323708676', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('9aa16271-6ea1-4e15-ad9d-6e6e264a0ad0', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('b3b616b6-6e4a-49b1-baf7-f08fa962a441', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('170eff66-733f-4043-a56b-3189bf474d62', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('1066e01c-e3ac-4830-b610-eb613187850c', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('f05c9136-2f9f-433f-9c35-85009111ee3c', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('3c7722e2-09c3-4667-9a0d-a45d3ddc42ae', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('8179d686-afa1-4f03-8ec9-95899002488a', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('7de45de7-aca2-4966-a5f9-8ef018688722', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('0e5af2cf-f3c8-48dd-9743-cfdea65f320f', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('10bc87a9-9317-41c8-8d19-fc6594d23383', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('e7a33256-0ab4-4baa-a805-0296b97960d6', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('c293bbf4-b8cf-4393-a403-a359a77b868c', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('816a96fc-696d-419f-8bd4-98752cc72aac', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('871f7eea-4722-4728-8cd9-1e61fe2dd285', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('649859eb-7709-4beb-9738-d57f11d80455', NULL, NULL);


--
-- TOC entry 3176 (class 0 OID 16390)
-- Dependencies: 203
-- Data for Name: algorithm; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES ('VQE', '* Anz. Qubits/Breite ($w$) des Schaltkreises: $w=n$
 * Tiefe ($d$) des Schaltkreises: abhängig von der gewählten Verschränkungsmethode, exemplarisch für die besprochene:

\$\$
d_{ent} = (2n+1)m~,~d_{rot} = m+1
\Rightarrow d = d_{ent} + d_{rot} = 2m(n+1)
\$\$', NULL, 1, '* quadratische $n\times n$ Matrix A (als Ausgangspunkt)
* Gewünschte Anzahl von Verschränkungen $m$
* $n(m+1)$ Drehwinkel
* Anzahl klassischer Optimierungsschritte $k$', '>Der VQE Algorithmus [[1]](https://arxiv.org/abs/1304.3061)[[2]](https://arxiv.org/abs/1304.3061) ist ein heuristischer hybrider Quanten-Algorithmus, mit welchem der kleinste (oder größte) Eigenwert inklusive Eigenvektor einer (meist) großen Matrix sehr gut angenähert werden kann. Hierbei wird ein quantenmechanischer Zustand auf einem NISQ-Rechner auf Basis von vorgegebenen Parametern präpariert und in der computational basis ($|0\rangle$ und  $|1\rangle$) gemessen. Das Ergebnis kann durch eine Kosten-Funktion ein Wert zugeordnet werden, welchen es zu minimieren  (oder maximieren) gilt. Ein klassischer Optimierungsalgorithmus verändert auf Grundlage des Wertes der Kosten-Funktion die gegebenen Parameter, durch welche wiederum ein Zustand auf dem Quantencomputer vorbereitet wird. Durch geeignetes Vorgehen bei der Zustandspräparierung und der klassischen Optimierung können Speedups erreicht werden.', 'Variational Quantum Eigensolver', '* n-dimensionaler Vektor $|\psi_F\rangle$ (von zuletzt erhaltenen Optimierungsparametern abhängige Wellenfunktion)
* Skalarer Eigenwert durch Berechnung des Erwartungswertes $\langle\psi_F|A|\psi_F\rangle$', 'Viele wirtschaftlich relevante Fragestellungen der Neuzeit lassen sich als Optimierungsprobleme auffassen. So behandelt man beim Traveling-Salesman-Problem (TSP) die Aufgabe, eine Person zwischen verschiedenen Standorten mit gegebenen Distanzen möglichst effizient (z.B. möglichst schnell) reisen zu lassen. Solche und ähnliche Fragestellungen können als sogenanntes *Eigenwert-Problem* kodiert werden, in welchem bei gegebener Matrix $A$ Zahlen $\lambda_i$ und Vektoren $v_i$ gefunden werden sollen, sodass Folgendes gilt:
\$\$
Av_i = \lambda_iv_i
\$\$
Bei Optimierungsproblemen kann dies oft auf das Finden des größten bzw. kleinsten Eigenwertes und des dazugehörigen Eigenvektors beschränkt werden. Der Einsatz von variationellen Methoden wie dem VQE kann vor Allem bei quantenmechanischen Problemen, beispielsweise bei der Simulation von Molekülen in der Medikamentenforschung eingesetzt werden. [[3]](https://www.nature.com/articles/s41467-019-10988-2)
Quantenmechanisch übersetzt, wird der VQE dafür genutzt, den Energie-Grundzustand (niedrigster Eigenwert) eines Hamiltonoperators (Matrix) zu berechnen, welcher das System beschreibt. In der folgenden Beschreibung des Algorithmus'' wird auch auf die Mathematik und auf ein spezielles Vorgehen beim Präparierungsprozess eingegangen.', '## *Beschreibung des Algorithmus*
Der Algorithmus besteht aus der häufigen Wiederholung der folgenden Schritte, wobei QC quantenmechanische und PC klassische Anteile des Algorithmus beschreibt:
1. Präparierung eines Zustandes auf Grundlage von (Anfangs-)Parametern (QC)
2. Messung des Zustandes in der computational basis (QC)
3. Berechnung des Energie-Erwartungswertes mit diesem Zustand (PC)
4. Klassische Optimierung der Parameter basierend auf den Ergebnissen aus Schritt 3. (PC)

Auf Schritt 4 folgt wiederum Schritt 1 mit den neu erhaltenen Parametern.
### 1. Präparierung
Schon der erste Schritt beinhaltet seine Tücken. Die Zustandspräparierung ist nämlich der wichtigste Teil, durch welchen Speedups des Algorithmus'' gegenüber klassischer Alternativen erreicht werden könnten. In diesem Abschnitt wird eine sehr generische Zustandspräparierung behandelt, anhand derer das Konzept verdeutlicht werden soll. Die hier vorgestellte Zustandspräparierung von $n$ Qubits sieht wie folgt aus:

\$\$
|\psi\rangle = \big(U_\text{ent}U_\text{rot}(\vec{\theta})\big)^m|0\rangle^n
\$\$

Hierbei ist $U_\text{ent}$ ein Verschränkungsoperator, $U_\text{rot}$ ein Rotationsoperator und $m$ die (variable) Anzahl von (erneuten) Verschränkungen/Rotationen. Wie bei universellen Quantencomputern üblich, wird davon ausgegangen, dass die Qubits alle im Zustand $|0\rangle$ initialisiert werden können. Auf die einzelnen Bestandteile des Algorithmus wird im Folgenden eingegangen.<br><br>
#### Verschränkung $U_{ent}$
Quantencomputer haben unter anderem den Vorteil, dass durch Verschränkung ein hohe Anzahl parallel ausführbarer Operationen ermöglicht wird. Das wird auch hier bei der Zustandspräparierung ausgenutzt, bei welcher alle beteiligten Qubits miteinander verschränkt werden sollen. Formal ist die leichteste Form der Verschränkung zweier Qubits im $|0\rangle$-Zustand durch die Hintereinanderausführung eines Hadamard-Gatters auf das Control-Qubit und eines CNOT-Gatters zu realisieren:

\$\$
C_N(H\otimes\mathbb{I})|00\rangle=\frac{1}{\sqrt{2}}\big(|00\rangle+|11\rangle\big)\Rightarrow~\text{test}
\$\$

Bei mehreren Qubits gibt es verschiedenste Arten, diese miteinander zu verschränken. Hier soll eine ''lineare Verschränkung'' zwischen den Qubits gezeigt werden, bei welcher q0 mit q1, q1 mit q2 usw. verschränkt wird. In einem Quantenschaltkreis mit 4 Qubits könnte das wie folgt aussehen (die Hadamard-Gatter am Ende des Schaltkreises dienen lediglich dazu, den Basiswechsel vollständig auszuführen):

\begin{quantikz}
\lstick{$q_0:~\ket{0}$}\slice[style = black]{} & \gate{H} & \ctrl{1} &\qw &\qw &\qw &\qw & \gate{H}\slice[style = black]{} & \qw\\
\lstick{$q_1:~\ket{0}$} & \qw  & \targ{} & \gate{H} & \ctrl{1} &\qw &\qw & \gate{H} & \qw\\
\lstick{$q_2:~\ket{0}$} &\qw &\qw &\qw & \targ{} & \gate{H} & \ctrl{1} & \gate{H} & \qw \\
\lstick{$q_3:~\ket{0}$} &\qw &\qw &\qw &\qw &\qw & \targ{} & \qw & \qw
\end{quantikz}

Abhängig von der gewählten Tiefe $m$ wird die gewählte Verschränkung dementsprechend wiederholt.
#### Rotation $U_{rot}$
Die Matrizen, die Drehungen (auf der Blochsphäre) der einzelnen Qubits beschreiben, stellen den eigentlich zu optimierenden Teil dar. Diese Drehungen hängen von Winkeln ab, welche die zu optimierenden Parameter sind. In diesem Beispiel werden 1-Qubit $R_Y$-Dreh-Matrizen verwendet, welche wie folgt aussehen:

\$\$
R_Y(\theta)=\exp\big(-i\theta\sigma_y/2\big)=\cos(\theta/2)\mathbb{1}-i\sin(\theta/2)\sigma_y=\begin{pmatrix}
\cos(\theta/2) & -\sin(\theta/2) \\ \sin(\theta/2) & \cos(\theta/2)
\end{pmatrix}
\$\$

$\sigma_y$ bezeichnet die Pauli-y-Matrix und kann für analoge Drehungen um x- und z-Achse durch eben jene ersetzt werden. In diesem Beispiel wurde eine Drehung um die y-Achse der Bloch-Sphäre gewählt, da die dabei entstehenden Drehmatrizen keine komplexen Einträge enthalten, die bei der Berechnung eines reellen Erwartungswertes hinderlich sein könnten.
Um die Verschränkung vollständig nutzen zu können, werden sowohl vor, als auch nach dieser Drehungen stattfinden, weswegen bei der Tiefe $m$ des Schaltkreises $n(m+1)$ Winkel bzw. Parameter gebraucht werden. Für $m=1$ und $n=4$ werden somit 8 Winkel benötigt und die Implementierung in den Schaltkreis kann in folgender Grafik gesehen werden:

\begin{quantikz}
\lstick{$q_0:~\ket{0}$} & \gate{R_Y(\theta_1)}\slice[style = black]{} & \gate{H} & \ctrl{1} &\qw &\qw &\qw &\qw & \gate{H}\slice[style = black]{} & \gate{R_Y(\theta_5)} &\qw\\
\lstick{$q_1:~\ket{0}$} & \gate{R_Y(\theta_2)} & \qw  & \targ{} & \gate{H} & \ctrl{1} &\qw &\qw & \gate{H} & \gate{R_Y(\theta_6)} & \qw\\
\lstick{$q_2:~\ket{0}$} & \gate{R_Y(\theta_3)} &\qw &\qw &\qw & \targ{} & \gate{H} & \ctrl{1} & \gate{H} & \gate{R_Y(\theta_7)} & \qw \\
\lstick{$q_3:~\ket{0}$} & \gate{R_Y(\theta_4)} &\qw &\qw &\qw &\qw &\qw & \targ{} & \qw & \gate{R_Y(\theta_8)} &\qw
\end{quantikz}

### 2. - 4. Messung, Erwartungswertberechnung und Optimierung
Die Messung des Zustandes erfolgt in der computational basis und hängt von der ausgewählten Optimierungsstrategie ab. Im Fall des Einsatzes von *simultaneous perturbation stochastic approximation* (SPSA) [[4]](https://arxiv.org/abs/1704.05018) werden für einen Optimierungsschritt der Parameter zwei Zustände und die dazugehörigen Erwartungswerte benötigt, weshalb für einen Durchlauf des Algorithmus'' Schritt 1,2 und 3 zweimal ausgeführt werden müssen, bevor die eigentliche Optimierung stattfinden kann.
Nach der gewünschten Anzahl der Iterationsschritte (für die klassische Optimierung) erhält man ein finales Set von Parametern $\theta_F$, welche für die Berechnung der finalen Wellenfunktion $|\psi_F\rangle$ genutzt wird. Diese ist dann (bei genügend Iterationsschritten und bei vernünftiger Berechnung) ein Eigenzustand/-vektor der Matrix $A$. Der dazugehörige (minimalste) Eigenwert berechnet sich durch den Erwartungswert $\lambda_{min}=\langle\psi_F|A|\psi_F\rangle$.

### Referenzen
* [1] Peruzzo, A. et. al., https://arxiv.org/abs/1304.3061 (2013)
* [2] McClear, J.R. et. al., https://arxiv.org/abs/1509.04279 (2015)
* [3] Grimsle, H.R. et. al., https://www.nature.com/articles/s41467-019-10988-2 (2019)
* [4] Kandala, A. et. al., https://www.nature.com/articles/s41467-019-10988-2 (2017)', '379ec44e-1ce5-11eb-adf2-0242ac160002');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, 'N: N > 0, N odd', NULL, 1, 'N: Integer', 'Integer factorization', 'Shor', 'Factors: Integer Array', 'The algorithm of Shor is a ploynomial-time quantum computer algorithm for factorizing integers. It solves the following problem: GIven an integer N, find its prime factors. The American mathematician Peter Shor invented the algorithm in 1994.', NULL, 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES ('QPE', 'U: Unitary Matrix; Eigenvector: Eigenvector of U', NULL, 1, 'U: Float Array; Eigenvector: Integer Array', 'Estimates eigenvalues, or phase, of an eigenvector of a unitary matrix', 'Quantum Phase Estimation', 'Eigenvalue: Float', 'The quantum phase estimation algorithm estimates the eigenvalues, or phase, of an eigenvector of a unitary matrix. It is frequently used as a subroutine in other quantum algorithms, such as the algorithm of Shor.', NULL, 'b61578ed-df66-44ec-954c-9bcf9906f490');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES ('QRL1', NULL, NULL, 1, NULL, 'Reinforcement learning', 'Quantum Reinforcement Learning 1', NULL, 'With this algorithm, Dong et al. introduce an approach to quantum reinforcement learning (QRL) that takes advantage of effects from quantum physics and works fundamentally different than any classical RL method, however, some similarities still remain. For example, QRL, like classical RL methods, also contain a policy, reward function and an environment. However, Dong et al. note that their QRL algorithm differs to classical RL algorithms in intrinsic parts like representation, policy, parallelism and update operation. States and actions are also different in both approaches. In this QRL method, states are referred to as eigen states and actions as eigen actions and are able to be in a superposition state. Superposition allows the algorithm, among other things, to better balance exploration and exploitation. Recall that in quantum physics, whenever a qubit in superposition is measured, it collapses and takes on one state according to some probability. The algorithm takes advantage of this behaviour in the action selection policy. More specifically, an action is measured in relation to some state and hence collapses to one of its eigen actions according to some probability this action is then selected. This means that the probability of actions that are considered good should be amplified. The probability amplitudes must be updated throughout the algorithm. The method to update the probability amplitude is based on the Grover iteration from Grover’s algorithm, a famous quantum algorithm for database search. The method contains a oracle or black box that is used to tell whether an action is good or bad. Loosely formulated, the complete algorithm works as follows. The first step is to initialize the state and action. After this an action is observed and executed to receive the next state and reward. Then the state value and probability amplitudes are updated accordingly. The probability amplitudes are updated in such a way that the probability for good actions is amplified and shrunk for bad ones. This process is done repeatedly. And so, after a number of episodes, the algorithm is able to learn a policy.', NULL, '4ab28e22-cdf9-45f8-b872-f4d9d2757b6d');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES ('QSVM1', NULL, NULL, 1, NULL, 'Classification', 'Quantum Support Vector Machine 1', NULL, 'Havlicek et al. show that a quantum version of the SVM can be implemented in the following way. Two distinct approaches are available for this problem. The first method uses a variational circuit to compute the separating hyperplane while the second method estimates the kernel function in order to optimize the classifier directly. The latter method is then used used as part of a conventional SVM. In both methods the data is provided classically while the quantum state space is used as the feature space. It is furthermore noted that in order to obtain a quantum advantage, the kernel cannot be estimated classically, i.e., if the kernel is too simple, the quantum SVM does not show a quantum advantage over a normal SVM. [Supervised learning with quantum enhanced feature spaces, Havlicek et al.]', NULL, '16aa96c5-b668-4df9-a03f-96d323708676');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES ('QSVM2', NULL, NULL, 1, NULL, 'Classification', 'Quantum Support Vector Machine 2', NULL, 'The training of quantum support vector machines (QSVM) can also be run on a quantum annealer, as demonstrated by Willsch et al. in a recent paper. To achieve this, the problem, like any problem solved via quantum annealing (QA), must first be formulated as a QUBO. However, the training of SVMs entails solving equations that contain real numbers whereas a QUBO consists of binary values. Willsch et al. use a special encoding to overcome this and thus are able to formulate the problem as a QUBO. Willsch et al. investigate the performance of their QSVM on a DW2000Q quantum annealer. They note that the quantum annealer returns in addition to the global optimum, a range of solutions that are close to the optimal. They furthermore note that this is advantageous as the generalization ability may potentially be improved by using a combination of the produced solutions. In summary, a QVSM can be trained using via QA by formulating the problem as a QUBO. A QA device, such as the DW2000Q, produces optimal and near-optimal solutions and a combination of these solutions can potentially improve the generalization behaviour.', NULL, '9aa16271-6ea1-4e15-ad9d-6e6e264a0ad0');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Grover-SAT', NULL, NULL, NULL, '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Grover-Truthtable', NULL, NULL, NULL, '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Simon', NULL, NULL, NULL, '871f7eea-4722-4728-8cd9-1e61fe2dd285');


--
-- TOC entry 3183 (class 0 OID 16414)
-- Dependencies: 210
-- Data for Name: application_area; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.application_area (id, name) VALUES ('ce597b06-c55e-46ce-976c-8de398e049b9', 'Cryptography');
INSERT INTO public.application_area (id, name) VALUES ('12b0d326-8b6a-4f7c-8717-d9cc5eb4a567', 'Classification');
INSERT INTO public.application_area (id, name) VALUES ('da982d08-30a8-48f7-8db1-204c0b4f1865', 'Machine Learning');


--
-- TOC entry 3177 (class 0 OID 16396)
-- Dependencies: 204
-- Data for Name: algorithm_application_area; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', 'ce597b06-c55e-46ce-976c-8de398e049b9');
INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('b61578ed-df66-44ec-954c-9bcf9906f490', 'ce597b06-c55e-46ce-976c-8de398e049b9');
INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('4ab28e22-cdf9-45f8-b872-f4d9d2757b6d', 'da982d08-30a8-48f7-8db1-204c0b4f1865');
INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('16aa96c5-b668-4df9-a03f-96d323708676', 'da982d08-30a8-48f7-8db1-204c0b4f1865');
INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('16aa96c5-b668-4df9-a03f-96d323708676', '12b0d326-8b6a-4f7c-8717-d9cc5eb4a567');
INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('9aa16271-6ea1-4e15-ad9d-6e6e264a0ad0', 'da982d08-30a8-48f7-8db1-204c0b4f1865');
INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('9aa16271-6ea1-4e15-ad9d-6e6e264a0ad0', '12b0d326-8b6a-4f7c-8717-d9cc5eb4a567');


--
-- TOC entry 3201 (class 0 OID 16489)
-- Dependencies: 228
-- Data for Name: problem_type; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.problem_type (id, name, parent_problem_type) VALUES ('76d773b5-4635-4d67-877c-e565b9f08496', 'Integer Factorization', NULL);


--
-- TOC entry 3178 (class 0 OID 16399)
-- Dependencies: 205
-- Data for Name: algorithm_problem_type; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_problem_type (algorithm_id, problem_type_id) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', '76d773b5-4635-4d67-877c-e565b9f08496');


--
-- TOC entry 3202 (class 0 OID 16492)
-- Dependencies: 229
-- Data for Name: publication; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1137/S0097539795293172', 'Polynomial-Time Algorithms for Prime Factorization and Discrete Logarithms on a Quantum Computer', 'https://arxiv.org/abs/quant-ph/9508027', 'f05c9136-2f9f-433f-9c35-85009111ee3c');
INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1109/TSMCB.2008.925743', 'Quantum reinforcement learning', 'https://arxiv.org/abs/0810.3828', '87d697a4-6256-4f84-b545-c2024ab380c2');
INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1038/s41586-019-0980-2', 'Supervised learning with quantum enhanced feature spaces', 'https://arxiv.org/abs/1804.11326', '3aac6a37-10de-4a95-a2bd-381d357df2a4');
INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1016/j.cpc.2019.107006', 'Support vector machines on the D-Wave quantum annealer', 'https://arxiv.org/abs/1906.06283', 'ae6bdf6f-2656-45bd-9b96-0820eea3cdab');


--
-- TOC entry 3179 (class 0 OID 16402)
-- Dependencies: 206
-- Data for Name: algorithm_publication; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_publication (algorithm_id, publication_id) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', 'f05c9136-2f9f-433f-9c35-85009111ee3c');
INSERT INTO public.algorithm_publication (algorithm_id, publication_id) VALUES ('b61578ed-df66-44ec-954c-9bcf9906f490', 'f05c9136-2f9f-433f-9c35-85009111ee3c');
INSERT INTO public.algorithm_publication (algorithm_id, publication_id) VALUES ('4ab28e22-cdf9-45f8-b872-f4d9d2757b6d', '87d697a4-6256-4f84-b545-c2024ab380c2');
INSERT INTO public.algorithm_publication (algorithm_id, publication_id) VALUES ('16aa96c5-b668-4df9-a03f-96d323708676', '3aac6a37-10de-4a95-a2bd-381d357df2a4');
INSERT INTO public.algorithm_publication (algorithm_id, publication_id) VALUES ('9aa16271-6ea1-4e15-ad9d-6e6e264a0ad0', 'ae6bdf6f-2656-45bd-9b96-0820eea3cdab');


--
-- TOC entry 3181 (class 0 OID 16408)
-- Dependencies: 208
-- Data for Name: algorithm_relation_type; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3180 (class 0 OID 16405)
-- Dependencies: 207
-- Data for Name: algorithm_relation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3210 (class 0 OID 16525)
-- Dependencies: 237
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.tag (value, category) VALUES ('Phase Estimation', 'Subroutine');
INSERT INTO public.tag (value, category) VALUES ('Reinforcement learning', 'Algorithm class');
INSERT INTO public.tag (value, category) VALUES ('Classification', 'Algorithm class');
INSERT INTO public.tag (value, category) VALUES ('Factorization', 'Algorithm class');


--
-- TOC entry 3182 (class 0 OID 16411)
-- Dependencies: 209
-- Data for Name: algorithm_tag; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_tag (algorithm_id, tag_value) VALUES ('b61578ed-df66-44ec-954c-9bcf9906f490', 'Phase Estimation');
INSERT INTO public.algorithm_tag (algorithm_id, tag_value) VALUES ('4ab28e22-cdf9-45f8-b872-f4d9d2757b6d', 'Reinforcement learning');
INSERT INTO public.algorithm_tag (algorithm_id, tag_value) VALUES ('16aa96c5-b668-4df9-a03f-96d323708676', 'Classification');
INSERT INTO public.algorithm_tag (algorithm_id, tag_value) VALUES ('9aa16271-6ea1-4e15-ad9d-6e6e264a0ad0', 'Classification');
INSERT INTO public.algorithm_tag (algorithm_id, tag_value) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', 'Factorization');


--
-- TOC entry 3184 (class 0 OID 16417)
-- Dependencies: 211
-- Data for Name: classic_algorithm; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3194 (class 0 OID 16462)
-- Dependencies: 221
-- Data for Name: implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, 'Python3', NULL, 'U: Float Array; Precision: Integer', NULL, NULL, 'forest-qpe', NULL, 'Eigenvalue: Integer Array', 'U: unitary matrix; precision: precision > 0', NULL, NULL, 'b3b616b6-6e4a-49b1-baf7-f08fa962a441', 'b61578ed-df66-44ec-954c-9bcf9906f490');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, 'Python3', NULL, 'N: Integer', NULL, NULL, 'forest-shor', NULL, 'Factors: Integer Array', 'N: N > 2', NULL, NULL, 'e07898e3-280f-4701-9d54-7d051af8d448', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, 'Python3', NULL, 'N: Integer', NULL, NULL, 'qiskit-aqua-shor', NULL, 'Factors: Integer Array', 'N: N > 2', NULL, NULL, '170eff66-733f-4043-a56b-3189bf474d62', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, 'Python3', NULL, NULL, NULL, NULL, 'qiskit-qpe', NULL, NULL, NULL, NULL, NULL, '1066e01c-e3ac-4830-b610-eb613187850c', 'b61578ed-df66-44ec-954c-9bcf9906f490');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-sat-qiskit', NULL, NULL, NULL, NULL, NULL, '8179d686-afa1-4f03-8ec9-95899002488a', '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-general-sat-qiskit', NULL, NULL, NULL, NULL, NULL, '7de45de7-aca2-4966-a5f9-8ef018688722', '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-truthtable-qiskit', NULL, NULL, NULL, NULL, NULL, '10bc87a9-9317-41c8-8d19-fc6594d23383', '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-general-truthtable-qiskit', NULL, NULL, NULL, NULL, NULL, 'e7a33256-0ab4-4baa-a805-0296b97960d6', '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shor-fix-15-qiskit', NULL, NULL, NULL, NULL, NULL, 'c293bbf4-b8cf-4393-a403-a359a77b868c', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shor-general-qiskit', NULL, NULL, NULL, NULL, NULL, '816a96fc-696d-419f-8bd4-98752cc72aac', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'simon-general-qiskit', NULL, NULL, NULL, NULL, NULL, '649859eb-7709-4beb-9738-d57f11d80455', '871f7eea-4722-4728-8cd9-1e61fe2dd285');


--
-- TOC entry 3185 (class 0 OID 16420)
-- Dependencies: 212
-- Data for Name: classic_implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3186 (class 0 OID 16423)
-- Dependencies: 213
-- Data for Name: cloud_service; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.cloud_service (id, cost_model, description, name, provider, url) VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', NULL, NULL, 'IBMQ', 'IBM', 'https://quantum-computing.ibm.com/');
INSERT INTO public.cloud_service (id, cost_model, description, name, provider, url) VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', NULL, NULL, 'Rigetti', 'Rigetti', 'https://www.rigetti.com/');


--
-- TOC entry 3188 (class 0 OID 16432)
-- Dependencies: 215
-- Data for Name: compute_resource; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor) VALUES ('ComputeResource', 'faea0025-9096-4582-b2f9-93096358dbc2', 'ibmq_16_melbourne', 0, '', 'IBMQ');
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor) VALUES ('ComputeResource', 'c0fc8141-4d19-4654-910b-109882b4b99b', 'ibmqx2', 0, NULL, 'IBMQ');
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor) VALUES ('ComputeResource', '2e683cee-8363-4327-8765-3b5f957acc90', 'Rigetti 19Q', 0, 'Superconducting', 'Rigetti');
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor) VALUES ('ComputeResource', '82df8861-b7de-464d-9dab-4adabbe78cd2', 'Rigetti 8Q', 0, 'Superconducting', 'Rigetti');


--
-- TOC entry 3187 (class 0 OID 16429)
-- Dependencies: 214
-- Data for Name: cloud_services_compute_resources; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', 'faea0025-9096-4582-b2f9-93096358dbc2');
INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', '2e683cee-8363-4327-8765-3b5f957acc90');
INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', 'c0fc8141-4d19-4654-910b-109882b4b99b');
INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', '82df8861-b7de-464d-9dab-4adabbe78cd2');


--
-- TOC entry 3190 (class 0 OID 16441)
-- Dependencies: 217
-- Data for Name: compute_resource_property_type; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.compute_resource_property_type (id, datatype, description, name) VALUES ('e658e9bb-ca15-4b3a-9dd2-833ccd144e50', 0, '', 'Number of Qubits');
INSERT INTO public.compute_resource_property_type (id, datatype, description, name) VALUES ('6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', 2, '', 't1');
INSERT INTO public.compute_resource_property_type (id, datatype, description, name) VALUES ('ff58dc2e-b805-4d32-b2ac-a059464e5102', 0, '', 'Max gate time');


--
-- TOC entry 3189 (class 0 OID 16438)
-- Dependencies: 216
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
-- TOC entry 3192 (class 0 OID 16450)
-- Dependencies: 219
-- Data for Name: discussion_topic; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3191 (class 0 OID 16447)
-- Dependencies: 218
-- Data for Name: discussion_comment; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3206 (class 0 OID 16507)
-- Dependencies: 233
-- Data for Name: sketch; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3193 (class 0 OID 16456)
-- Dependencies: 220
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3195 (class 0 OID 16468)
-- Dependencies: 222
-- Data for Name: implementation_publication; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_publication (implementation_id, publication_id) VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', 'f05c9136-2f9f-433f-9c35-85009111ee3c');
INSERT INTO public.implementation_publication (implementation_id, publication_id) VALUES ('170eff66-733f-4043-a56b-3189bf474d62', 'f05c9136-2f9f-433f-9c35-85009111ee3c');


--
-- TOC entry 3207 (class 0 OID 16513)
-- Dependencies: 234
-- Data for Name: software_platform; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.software_platform (id, licence, link, name, version) VALUES ('7c2c4b2e-5b4e-421c-a487-54fd897bfe41', 'Apache-2.0 License', 'https://pyquil-docs.rigetti.com/en/stable/', 'Forest', NULL);
INSERT INTO public.software_platform (id, licence, link, name, version) VALUES ('41299c3c-297a-4d61-be24-cc957186306e', 'Apache-2.0 License', 'https://github.com/Qiskit/qiskit', 'Qiskit', '0.21.0');


--
-- TOC entry 3196 (class 0 OID 16471)
-- Dependencies: 223
-- Data for Name: implementation_software_platforms; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('b3b616b6-6e4a-49b1-baf7-f08fa962a441', '7c2c4b2e-5b4e-421c-a487-54fd897bfe41');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', '7c2c4b2e-5b4e-421c-a487-54fd897bfe41');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('170eff66-733f-4043-a56b-3189bf474d62', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('1066e01c-e3ac-4830-b610-eb613187850c', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('8179d686-afa1-4f03-8ec9-95899002488a', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('7de45de7-aca2-4966-a5f9-8ef018688722', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('10bc87a9-9317-41c8-8d19-fc6594d23383', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('e7a33256-0ab4-4baa-a805-0296b97960d6', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('c293bbf4-b8cf-4393-a403-a359a77b868c', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('816a96fc-696d-419f-8bd4-98752cc72aac', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('649859eb-7709-4beb-9738-d57f11d80455', '41299c3c-297a-4d61-be24-cc957186306e');


--
-- TOC entry 3197 (class 0 OID 16474)
-- Dependencies: 224
-- Data for Name: implementation_tag; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_tag (implementation_id, tag_value) VALUES ('b3b616b6-6e4a-49b1-baf7-f08fa962a441', 'Phase Estimation');
INSERT INTO public.implementation_tag (implementation_id, tag_value) VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', 'Factorization');
INSERT INTO public.implementation_tag (implementation_id, tag_value) VALUES ('170eff66-733f-4043-a56b-3189bf474d62', 'Factorization');
INSERT INTO public.implementation_tag (implementation_id, tag_value) VALUES ('1066e01c-e3ac-4830-b610-eb613187850c', 'Phase Estimation');


--
-- TOC entry 3200 (class 0 OID 16486)
-- Dependencies: 227
-- Data for Name: pattern_relation_type; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3199 (class 0 OID 16480)
-- Dependencies: 226
-- Data for Name: pattern_relation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3203 (class 0 OID 16498)
-- Dependencies: 230
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
-- TOC entry 3204 (class 0 OID 16501)
-- Dependencies: 231
-- Data for Name: quantum_algorithm; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (true, NULL, NULL, '379ec44e-1ce5-11eb-adf2-0242ac160002');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, 'b61578ed-df66-44ec-954c-9bcf9906f490');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '4ab28e22-cdf9-45f8-b872-f4d9d2757b6d');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '16aa96c5-b668-4df9-a03f-96d323708676');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 2, NULL, '9aa16271-6ea1-4e15-ad9d-6e6e264a0ad0');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, 'exponential', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '871f7eea-4722-4728-8cd9-1e61fe2dd285');


--
-- TOC entry 3205 (class 0 OID 16504)
-- Dependencies: 232
-- Data for Name: quantum_implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3208 (class 0 OID 16519)
-- Dependencies: 235
-- Data for Name: software_platform_cloud_services; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- TOC entry 3209 (class 0 OID 16522)
-- Dependencies: 236
-- Data for Name: software_platforms_compute_resources; Type: TABLE DATA; Schema: public; Owner: planqk
--



-- Completed on 2020-11-02 09:40:39

--
-- PostgreSQL database dump complete
--
