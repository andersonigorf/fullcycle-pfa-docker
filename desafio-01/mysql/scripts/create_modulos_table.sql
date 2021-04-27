USE nodedb;

DROP TABLE IF EXISTS modulos;

CREATE TABLE modulos (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(255) NOT NULL,  
  PRIMARY KEY (id)
);

SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;

INSERT INTO modulos (id, nome) VALUES (1, 'Docker');
INSERT INTO modulos (id, nome) VALUES (2, 'Padrões e técnicas avançadas com Git e Github');
INSERT INTO modulos (id, nome) VALUES (3, 'Integração contínua');
INSERT INTO modulos (id, nome) VALUES (4, 'Kubernetes');
INSERT INTO modulos (id, nome) VALUES (5, 'Service Mesh com Istio');
INSERT INTO modulos (id, nome) VALUES (6, 'Observabilidade');
INSERT INTO modulos (id, nome) VALUES (7, 'Deploy nos Cloud Providers');
INSERT INTO modulos (id, nome) VALUES (8, 'Fundamentos de Arquitetura de Software');
INSERT INTO modulos (id, nome) VALUES (9, 'Comunicação');
INSERT INTO modulos (id, nome) VALUES (10, 'RabbitMQ');
INSERT INTO modulos (id, nome) VALUES (11, 'Autenticação e Keycloak');
INSERT INTO modulos (id, nome) VALUES (12, 'Domain Driven Design e Arquitetura hexagonal');
INSERT INTO modulos (id, nome) VALUES (13, 'Arquitetura do projeto pratico - Codeflix');
INSERT INTO modulos (id, nome) VALUES (14, 'Microsserviço: Catalogo de vídeos com Laravel(Back-end)');
INSERT INTO modulos (id, nome) VALUES (15, 'Microsserviço: Catalogo de vídeos com React(Front-end)');
INSERT INTO modulos (id, nome) VALUES (16, 'Microsserviço de Encoder de Vídeo com Go Lang');
INSERT INTO modulos (id, nome) VALUES (17, 'Microsserviço - API do Catalogo com Node.JS(Back-end)');
INSERT INTO modulos (id, nome) VALUES (18, 'Microsserviço - Aplicação do Assinante com React.js(Front-end)');
INSERT INTO modulos (id, nome) VALUES (19, 'Autenticação entre os Microsserviços');
INSERT INTO modulos (id, nome) VALUES (20, 'Microsserviço - Assinaturas com Django(Back-end)');
INSERT INTO modulos (id, nome) VALUES (21, 'Apache Kafta');
INSERT INTO modulos (id, nome) VALUES (22, 'Service Discovery');