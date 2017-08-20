--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.0
-- Dumped by pg_dump version 9.5.0

-- Started on 2017-08-20 17:08:22

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2283 (class 0 OID 32958)
-- Dependencies: 202
-- Data for Name: abastecimento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO abastecimento VALUES (2, '2017-06-25', 300, 1, 1, NULL, 2);


--
-- TOC entry 2309 (class 0 OID 0)
-- Dependencies: 209
-- Name: abastecimento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('abastecimento_id_seq', 2, true);


--
-- TOC entry 2264 (class 0 OID 24749)
-- Dependencies: 183
-- Data for Name: aeronave; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO aeronave VALUES (1, NULL, 'Legacy 500', 'Embraer', 'Pequena', 2);


--
-- TOC entry 2310 (class 0 OID 0)
-- Dependencies: 182
-- Name: aeronave_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('aeronave_id_seq', 1, true);


--
-- TOC entry 2269 (class 0 OID 24791)
-- Dependencies: 188
-- Data for Name: aluguel; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO aluguel VALUES ('2017-05-27', NULL, NULL, 1, 2);


--
-- TOC entry 2262 (class 0 OID 24735)
-- Dependencies: 181
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cliente VALUES (2, 'Pedro', 'pedro@email.com', '(11)1111-1111', '12345');
INSERT INTO cliente VALUES (4, 'Edmundo', 'edmundo@email.com', '(11)1111-1112', '54321');
INSERT INTO cliente VALUES (5, 'Testerson', 'testerson@email.com', '1111111111', '9999');
INSERT INTO cliente VALUES (6, 'Testinho', 'testinho@email.com', '2222222222', '9998');
INSERT INTO cliente VALUES (8, 'asdasdads', 'asdadasda', '11111111112', '1235');


--
-- TOC entry 2311 (class 0 OID 0)
-- Dependencies: 180
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cliente_id_seq', 8, true);


--
-- TOC entry 2278 (class 0 OID 32926)
-- Dependencies: 197
-- Data for Name: combustivel; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO combustivel VALUES (1, 'Teste');


--
-- TOC entry 2312 (class 0 OID 0)
-- Dependencies: 196
-- Name: combustivel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('combustivel_id_seq', 1, true);


--
-- TOC entry 2274 (class 0 OID 24832)
-- Dependencies: 193
-- Data for Name: estacionamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO estacionamento VALUES ('2017-06-13 00:00:00', '2017-06-15 00:00:00', 3360, 4, 1, 6, 3);
INSERT INTO estacionamento VALUES ('2017-06-13 00:00:00', '2017-06-20 00:00:00', 11760, 3, 1, 7, 2);
INSERT INTO estacionamento VALUES ('2017-06-12 00:00:00', '2017-06-27 00:00:00', 25200, 2, 1, 8, 1);
INSERT INTO estacionamento VALUES ('2017-06-27 00:00:00', '2017-06-27 00:00:00', 0, 3, 1, 9, 4);
INSERT INTO estacionamento VALUES ('2017-06-27 00:00:00', '2017-06-27 00:00:00', 0, 4, 1, 10, 5);


--
-- TOC entry 2313 (class 0 OID 0)
-- Dependencies: 207
-- Name: estacionamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('estacionamento_id_seq', 5, true);


--
-- TOC entry 2282 (class 0 OID 32947)
-- Dependencies: 201
-- Data for Name: pagamento_abastecimento; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2314 (class 0 OID 0)
-- Dependencies: 200
-- Name: pagamento_abastecimento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pagamento_abastecimento_id_seq', 1, false);


--
-- TOC entry 2285 (class 0 OID 32980)
-- Dependencies: 204
-- Data for Name: pagamento_aluguel; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2315 (class 0 OID 0)
-- Dependencies: 203
-- Name: pagamento_aluguel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pagamento_aluguel_id_seq', 1, false);


--
-- TOC entry 2276 (class 0 OID 24849)
-- Dependencies: 195
-- Data for Name: pagamento_estacionamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pagamento_estacionamento VALUES (6, '2017-06-15 00:00:00', 3);
INSERT INTO pagamento_estacionamento VALUES (7, '2017-06-20 00:00:00', 2);
INSERT INTO pagamento_estacionamento VALUES (8, '2017-06-27 00:00:00', 1);
INSERT INTO pagamento_estacionamento VALUES (9, '2017-06-27 00:00:00', 4);
INSERT INTO pagamento_estacionamento VALUES (10, '2017-06-27 00:00:00', 5);


--
-- TOC entry 2316 (class 0 OID 0)
-- Dependencies: 194
-- Name: pagamento_estacionamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pagamento_estacionamento_id_seq', 10, true);


--
-- TOC entry 2266 (class 0 OID 24764)
-- Dependencies: 185
-- Data for Name: tamanho_vaga; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tamanho_vaga VALUES (1, 'Pequena');


--
-- TOC entry 2317 (class 0 OID 0)
-- Dependencies: 184
-- Name: tamanho_vaga_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tamanho_vaga_id_seq', 1, true);


--
-- TOC entry 2268 (class 0 OID 24780)
-- Dependencies: 187
-- Data for Name: vaga; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vaga VALUES (1, 1, false);
INSERT INTO vaga VALUES (2, 1, true);
INSERT INTO vaga VALUES (3, 1, true);
INSERT INTO vaga VALUES (4, 1, true);


--
-- TOC entry 2318 (class 0 OID 0)
-- Dependencies: 186
-- Name: vaga_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('vaga_id_seq', 4, true);


--
-- TOC entry 2273 (class 0 OID 24821)
-- Dependencies: 192
-- Data for Name: vigencia_aluguel; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2319 (class 0 OID 0)
-- Dependencies: 191
-- Name: vigencia_aluguel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('vigencia_aluguel_id_seq', 1, false);


--
-- TOC entry 2280 (class 0 OID 32934)
-- Dependencies: 199
-- Data for Name: vigencia_combustivel; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vigencia_combustivel VALUES (1, '2017-06-01', '2017-10-01', 150, 1);


--
-- TOC entry 2320 (class 0 OID 0)
-- Dependencies: 198
-- Name: vigencia_combustivel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('vigencia_combustivel_id_seq', 1, true);


--
-- TOC entry 2271 (class 0 OID 24808)
-- Dependencies: 190
-- Data for Name: vigencia_vaga; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vigencia_vaga VALUES (1, '2017-06-01 00:00:00', '2017-07-01 00:00:00', 70, 1);


--
-- TOC entry 2321 (class 0 OID 0)
-- Dependencies: 189
-- Name: vigencia_vaga_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('vigencia_vaga_id_seq', 1, true);


SET default_tablespace = '';

--
-- TOC entry 2121 (class 2606 OID 33378)
-- Name: abastecimento_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY abastecimento
    ADD CONSTRAINT abastecimento_pk PRIMARY KEY (id);


--
-- TOC entry 2095 (class 2606 OID 24754)
-- Name: aeronave_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aeronave
    ADD CONSTRAINT aeronave_pk PRIMARY KEY (id);


--
-- TOC entry 2103 (class 2606 OID 24795)
-- Name: aluguel_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aluguel
    ADD CONSTRAINT aluguel_pk PRIMARY KEY (vaga_id, cliente_id);


--
-- TOC entry 2087 (class 2606 OID 24742)
-- Name: cliente_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT cliente_email_key UNIQUE (email);


--
-- TOC entry 2089 (class 2606 OID 24746)
-- Name: cliente_license_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT cliente_license_key UNIQUE (license);


--
-- TOC entry 2091 (class 2606 OID 24744)
-- Name: cliente_phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT cliente_phone_key UNIQUE (phone);


--
-- TOC entry 2093 (class 2606 OID 24740)
-- Name: cliente_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT cliente_pk PRIMARY KEY (id);


--
-- TOC entry 2097 (class 2606 OID 24761)
-- Name: code_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aeronave
    ADD CONSTRAINT code_unique UNIQUE (code);


--
-- TOC entry 2115 (class 2606 OID 32931)
-- Name: combustivel_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY combustivel
    ADD CONSTRAINT combustivel_pk PRIMARY KEY (id);


--
-- TOC entry 2109 (class 2606 OID 33057)
-- Name: estacionamento_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estacionamento
    ADD CONSTRAINT estacionamento_pk PRIMARY KEY (id);


--
-- TOC entry 2119 (class 2606 OID 32952)
-- Name: pagamento_abastecimento_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pagamento_abastecimento
    ADD CONSTRAINT pagamento_abastecimento_pk PRIMARY KEY (id);


--
-- TOC entry 2123 (class 2606 OID 32985)
-- Name: pagamento_aluguel_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pagamento_aluguel
    ADD CONSTRAINT pagamento_aluguel_pk PRIMARY KEY (id);


--
-- TOC entry 2111 (class 2606 OID 33059)
-- Name: pagamento_estacionamento_estacionamento_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pagamento_estacionamento
    ADD CONSTRAINT pagamento_estacionamento_estacionamento_id_key UNIQUE (estacionamento_id);


--
-- TOC entry 2113 (class 2606 OID 24854)
-- Name: pagamento_estacionamento_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pagamento_estacionamento
    ADD CONSTRAINT pagamento_estacionamento_pk PRIMARY KEY (id);


--
-- TOC entry 2099 (class 2606 OID 24769)
-- Name: tamanho_vaga_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tamanho_vaga
    ADD CONSTRAINT tamanho_vaga_pk PRIMARY KEY (id);


--
-- TOC entry 2101 (class 2606 OID 24785)
-- Name: vaga_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vaga
    ADD CONSTRAINT vaga_pk PRIMARY KEY (id);


--
-- TOC entry 2107 (class 2606 OID 24826)
-- Name: vigencia_aluguel_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vigencia_aluguel
    ADD CONSTRAINT vigencia_aluguel_pk PRIMARY KEY (id);


--
-- TOC entry 2117 (class 2606 OID 32939)
-- Name: vigencia_combustivel_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vigencia_combustivel
    ADD CONSTRAINT vigencia_combustivel_pk PRIMARY KEY (id);


--
-- TOC entry 2105 (class 2606 OID 24813)
-- Name: vigencia_vaga_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vigencia_vaga
    ADD CONSTRAINT vigencia_vaga_pk PRIMARY KEY (id);


--
-- TOC entry 2143 (class 2620 OID 33382)
-- Name: preco_abastecimento; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER preco_abastecimento AFTER INSERT ON abastecimento FOR EACH ROW EXECUTE PROCEDURE custo_abastecimento();


--
-- TOC entry 2142 (class 2620 OID 33036)
-- Name: vaga_livre_estacionamento; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER vaga_livre_estacionamento BEFORE INSERT OR UPDATE ON estacionamento FOR EACH ROW EXECUTE PROCEDURE atualiza_vaga_livre();


--
-- TOC entry 2140 (class 2620 OID 33006)
-- Name: vaga_ocupada; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER vaga_ocupada AFTER INSERT ON aluguel FOR EACH ROW EXECUTE PROCEDURE atualiza_vaga_ocupada();


--
-- TOC entry 2141 (class 2620 OID 33026)
-- Name: vaga_ocupada_estacionamento; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER vaga_ocupada_estacionamento AFTER INSERT ON estacionamento FOR EACH ROW EXECUTE PROCEDURE atualiza_vaga_ocupada();


--
-- TOC entry 2137 (class 2606 OID 32968)
-- Name: abastecimento_aeronave_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY abastecimento
    ADD CONSTRAINT abastecimento_aeronave_fk FOREIGN KEY (aeronave_id) REFERENCES aeronave(id);


--
-- TOC entry 2136 (class 2606 OID 32963)
-- Name: abastecimento_combustivel_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY abastecimento
    ADD CONSTRAINT abastecimento_combustivel_fk FOREIGN KEY (combustivel_id) REFERENCES combustivel(id);


--
-- TOC entry 2138 (class 2606 OID 32973)
-- Name: abastecimento_pagamento_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY abastecimento
    ADD CONSTRAINT abastecimento_pagamento_fk FOREIGN KEY (pagamento_id) REFERENCES pagamento_abastecimento(id);


--
-- TOC entry 2124 (class 2606 OID 24755)
-- Name: aeronave_cliente_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aeronave
    ADD CONSTRAINT aeronave_cliente_fk FOREIGN KEY (cliente_id) REFERENCES cliente(id);


--
-- TOC entry 2127 (class 2606 OID 24801)
-- Name: aluguel_cliente_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aluguel
    ADD CONSTRAINT aluguel_cliente_fk FOREIGN KEY (cliente_id) REFERENCES cliente(id);


--
-- TOC entry 2126 (class 2606 OID 24796)
-- Name: aluguel_vaga_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aluguel
    ADD CONSTRAINT aluguel_vaga_fk FOREIGN KEY (vaga_id) REFERENCES vaga(id);


--
-- TOC entry 2131 (class 2606 OID 24842)
-- Name: estacionamento_aeronave_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estacionamento
    ADD CONSTRAINT estacionamento_aeronave_fk FOREIGN KEY (aeronave_id) REFERENCES aeronave(id);


--
-- TOC entry 2132 (class 2606 OID 24860)
-- Name: estacionamento_pagamento_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estacionamento
    ADD CONSTRAINT estacionamento_pagamento_fk FOREIGN KEY (pagamento_id) REFERENCES pagamento_estacionamento(id);


--
-- TOC entry 2130 (class 2606 OID 24837)
-- Name: estacionamento_vaga_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estacionamento
    ADD CONSTRAINT estacionamento_vaga_fk FOREIGN KEY (vaga_id) REFERENCES vaga(id);


--
-- TOC entry 2135 (class 2606 OID 33383)
-- Name: pagamento_abastecimento_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pagamento_abastecimento
    ADD CONSTRAINT pagamento_abastecimento_fk FOREIGN KEY (abastecimento_id) REFERENCES abastecimento(id);


--
-- TOC entry 2133 (class 2606 OID 33060)
-- Name: pagamento_estacionamento_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pagamento_estacionamento
    ADD CONSTRAINT pagamento_estacionamento_fk FOREIGN KEY (estacionamento_id) REFERENCES estacionamento(id);


--
-- TOC entry 2139 (class 2606 OID 32996)
-- Name: pagamentoaluguel_aluguel_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pagamento_aluguel
    ADD CONSTRAINT pagamentoaluguel_aluguel_fk FOREIGN KEY (vaga_id, cliente_id) REFERENCES aluguel(vaga_id, cliente_id);


--
-- TOC entry 2125 (class 2606 OID 24786)
-- Name: vaga_tamanho_vaga_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vaga
    ADD CONSTRAINT vaga_tamanho_vaga_fk FOREIGN KEY (tamanho_vaga_id) REFERENCES tamanho_vaga(id);


--
-- TOC entry 2129 (class 2606 OID 24827)
-- Name: vigencia_aluguel_vaga_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vigencia_aluguel
    ADD CONSTRAINT vigencia_aluguel_vaga_fk FOREIGN KEY (vaga_id) REFERENCES vaga(id);


--
-- TOC entry 2134 (class 2606 OID 32940)
-- Name: vigencia_combustivel_combustivel_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vigencia_combustivel
    ADD CONSTRAINT vigencia_combustivel_combustivel_fk FOREIGN KEY (combustivel_id) REFERENCES combustivel(id);


--
-- TOC entry 2128 (class 2606 OID 33037)
-- Name: vigencia_tamanho_vaga_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vigencia_vaga
    ADD CONSTRAINT vigencia_tamanho_vaga_fk FOREIGN KEY (tamanho_vaga_id) REFERENCES tamanho_vaga(id);


-- Completed on 2017-08-20 17:08:25

--
-- PostgreSQL database dump complete
--

