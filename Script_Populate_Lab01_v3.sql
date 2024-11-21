USE mydb;

-- Inserir dados na tabela endereco
INSERT INTO endereco (idEndereco, rua, numero, bairro, cidade, uf) VALUES
(1, 'Rua das Palmeiras', 102, 'Vila Verde', 'São Paulo', 'SP'),
(2, 'Avenida Atlântica', 250, 'Copacabana', 'Rio de Janeiro', 'RJ'),
(3, 'Rua das Acácias', 78, 'Jardim das Flores', 'Belo Horizonte', 'MG'),
(4, 'Rua Rio Branco', 305, 'Centro', 'Curitiba', 'PR'),
(5, 'Avenida dos Lírios', 189, 'Bela Vista', 'Fortaleza', 'CE'),
(6, 'Rua das Magnólias', 59, 'Vila Nova', 'Florianópolis', 'SC'),
(7, 'Avenida Paulista', 2500, 'Jardim Paulista', 'São Paulo', 'SP'),
(8, 'Rua do Sol', 12, 'Vila do Sol', 'Rio de Janeiro', 'RJ'),
(9, 'Rua dos Jacarandás', 88, 'Centro', 'Belo Horizonte', 'MG'),
(10, 'Travessa da Paz', 16, 'Vila Nova', 'Curitiba', 'PR'),
(11, 'Avenida dos Anjos', 1010, 'Meia Praia', 'Fortaleza', 'CE'),
(12, 'Rua das Acácias', 510, 'São João', 'Florianópolis', 'SC'),
(13, 'Rua dos Bambus', 301, 'Centro', 'São Paulo', 'SP'),
(14, 'Avenida das Margaridas', 202, 'Botafogo', 'Rio de Janeiro', 'RJ'),
(15, 'Rua 13 de Maio', 413, 'Centro Histórico', 'Belo Horizonte', 'MG');

-- Inserir dados na tabela plano_saude
INSERT INTO plano_saude (idplano_saude, nome_plano, tipo_plano) VALUES
(1, 'Unimed', 'Familiar'),
(2, 'Amil', 'Individual'),
(3, 'Bradesco Saúde', 'Empresarial');


-- Inserir dados na tabela paciente
INSERT INTO paciente (idPaciente, nome_crianca, nome_responsavel, data_nascimento, sexo, status, idEndereco, idplano_saude) VALUES
(1, 'Lucas Silva', 'Ana Silva', '2020-02-15', 'M', 'Ativo', 1, 1),
(2, 'Beatriz Silva', 'Ana Silva', '2020-05-10', 'F', 'Ativo', 1, 1),
(3, 'Gabriel Souza', 'Ricardo Souza', '2020-08-23', 'M', 'Ativo', 2, 2),
(4, 'Juliana Souza', 'Ricardo Souza', '2020-11-12', 'F', 'Inativo', 2, 2),
(5, 'Marcos Oliveira', 'Paula Oliveira', '2021-01-30', 'M', 'Ativo', 3, 3),
(6, 'Larissa Oliveira', 'Paula Oliveira', '2021-04-18', 'F', 'Ativo', 3, 3),
(7, 'Carlos Pereira', 'Mariana Pereira', '2021-07-05', 'M', 'Ativo', 4, NULL),
(8, 'Fernanda Pereira', 'Mariana Pereira', '2021-10-22', 'F', 'Ativo', 4, NULL),
(9, 'Mateus Costa', 'Jorge Costa', '2022-01-25', 'M', 'Ativo', 5, 1),
(10, 'Sofia Costa', 'Jorge Costa', '2022-04-15', 'F', 'Inativo', 5, 1),
(11, 'Paula Martins', 'Eduardo Martins', '2022-06-10', 'F', 'Ativo', 6, 2),
(12, 'Rafael Martins', 'Eduardo Martins', '2022-09-03', 'M', 'Ativo', 6, 2),
(13, 'Clara Almeida', 'Larissa Almeida', '2023-02-28', 'F', 'Ativo', 7, NULL),
(14, 'Rodrigo Almeida', 'Larissa Almeida', '2023-05-05', 'M', 'Ativo', 7, NULL),
(15, 'Isabela Santos', 'Lucas Santos', '2023-08-20', 'F', 'Ativo', 8, 3),
(16, 'Vitor Santos', 'Lucas Santos', '2023-11-15', 'M', 'Inativo', 8, 3),
(17, 'Eduardo Silva', 'Pedro Silva', '2024-01-12', 'M', 'Ativo', 9, 2),
(18, 'Mariana Silva', 'Pedro Silva', '2024-03-25', 'F', 'Ativo', 9, 2),
(19, 'Leonardo Ferreira', 'Daniela Ferreira', '2024-06-18', 'M', 'Ativo', 10, NULL),
(20, 'Bruna Ferreira', 'Daniela Ferreira', '2024-09-05', 'F', 'Ativo', 10, NULL),
(21, 'Carlos Costa', 'Fernanda Costa', '2024-02-05', 'M', 'Ativo', 11, 1),
(22, 'Lucas Costa', 'Fernanda Costa', '2024-04-22', 'M', 'Inativo', 11, 1),
(23, 'Ana Martins', 'Júlia Martins', '2024-07-10', 'F', 'Ativo', 12, 2),
(24, 'Pedro Martins', 'Júlia Martins', '2024-09-22', 'M', 'Ativo', 12, 2),
(25, 'Fernanda Almeida', 'Roberto Almeida', '2024-02-15', 'F', 'Ativo', 13, NULL),
(26, 'Marcos Almeida', 'Roberto Almeida', '2024-05-02', 'M', 'Ativo', 13, NULL),
(27, 'Ana Costa', 'Ricardo Costa', '2024-08-30', 'F', 'Ativo', 14, NULL),
(28, 'Juliana Costa', 'Ricardo Costa', '2024-10-12', 'F', 'Ativo', 14, NULL),
(29, 'Gabriel Almeida', 'Juliana Almeida', '2024-06-06', 'M', 'Ativo', 15, NULL),
(30, 'Camila Almeida', 'Juliana Almeida', '2024-07-22', 'F', 'Inativo', 15, NULL);



-- Inserir um telefone para cada paciente
INSERT INTO telefone (idTelefone, numero, tipo, idPaciente) VALUES
(1, '(11) 91234-1001', 'Celular', 1),
(2, '(21) 98765-1002', 'Residencial', 2),
(3, '(31) 91234-1003', 'Comercial', 3),
(4, '(41) 98765-1004', 'Celular', 4),
(5, '(51) 91234-1005', 'Residencial', 5),
(6, '(61) 98765-1006', 'Comercial', 6),
(7, '(71) 91234-1007', 'Celular', 7),
(8, '(81) 98765-1008', 'Residencial', 8),
(9, '(91) 91234-1009', 'Comercial', 9),
(10, '(11) 98765-1010', 'Celular', 10),
(11, '(21) 91234-1011', 'Residencial', 11),
(12, '(31) 98765-1012', 'Comercial', 12),
(13, '(41) 91234-1013', 'Celular', 13),
(14, '(51) 98765-1014', 'Residencial', 14),
(15, '(61) 91234-1015', 'Comercial', 15),
(16, '(71) 98765-1016', 'Celular', 16),
(17, '(81) 91234-1017', 'Residencial', 17),
(18, '(91) 98765-1018', 'Comercial', 18),
(19, '(11) 91234-1019', 'Celular', 19),
(20, '(21) 98765-1020', 'Residencial', 20),
(21, '(31) 91234-1021', 'Comercial', 21),
(22, '(41) 98765-1022', 'Celular', 22),
(23, '(51) 91234-1023', 'Residencial', 23),
(24, '(61) 98765-1024', 'Comercial', 24),
(25, '(71) 91234-1025', 'Celular', 25),
(26, '(81) 98765-1026', 'Residencial', 26),
(27, '(91) 91234-1027', 'Comercial', 27),
(28, '(11) 98765-1028', 'Celular', 28),
(29, '(21) 91234-1029', 'Residencial', 29),
(30, '(31) 98765-1030', 'Comercial', 30);



-- Inserir dados na tabela medico
INSERT INTO medico (idMedico, nome, CRM) VALUES
(1, 'Dr. Pedro Almeida', '10000-SP'),
(2, 'Dra. Carla Souza', '10001-RJ'),
(3, 'Dr. João Santos', '10002-MG'),
(4, 'Dra. Maria Oliveira', '10003-PR'),
(5, 'Dr. Lucas Costa', '10004-CE'),
(6, 'Dra. Ana Rodrigues', '10005-SC'),
(7, 'Dr. Rafael Ferreira', '10006-SP'),
(8, 'Dra. Beatriz Gomes', '10007-RJ'),
(9, 'Dr. Ricardo Lima', '10008-MG'),
(10, 'Dra. Fernanda Barbosa', '10009-PR'),
(11, 'Dr. Bruno Rocha', '10010-CE'),
(12, 'Dra. Camila Dias', '10011-SC'),
(13, 'Dr. Guilherme Martins', '10012-SP'),
(14, 'Dra. Luana Fernandes', '10013-RJ'),
(15, 'Dr. Marcelo Ribeiro', '10014-MG');

-- Inserir dados na tabela exame
INSERT INTO exame (idExame, nome_exame) VALUES
(1, 'Hemograma Completo'),
(2, 'Raio-X de Tórax'),
(3, 'Eletrocardiograma'),
(4, 'Ultrassonografia Abdominal'),
(5, 'Tomografia Computadorizada'),
(6, 'Ressonância Magnética'),
(7, 'Teste Ergométrico'),
(8, 'Endoscopia Digestiva'),
(9, 'Colonoscopia'),
(10, 'Ecocardiograma'),
(11, 'Exame de Urina Tipo I'),
(12, 'Exame Parasitológico de Fezes'),
(13, 'Glicemia em Jejum'),
(14, 'Perfil Lipídico'),
(15, 'Audiometria Tonal');

-- Inserir dados na tabela medicamento
INSERT INTO medicamento (idmedicamento, nome_medicamento) VALUES
(1, 'Paracetamol'),
(2, 'Ibuprofeno'),
(3, 'Amoxicilina'),
(4, 'Dipirona'),
(5, 'Omeprazol'),
(6, 'Cetirizina'),
(7, 'Salbutamol'),
(8, 'Metformina'),
(9, 'Lorazepam'),
(10, 'Atenolol'),
(11, 'Losartana'),
(12, 'Simvastatina'),
(13, 'Azitromicina'),
(14, 'Prednisona'),
(15, 'Clonazepam');





-- Inserir dados na tabela consulta
INSERT INTO consulta (idConsulta, data_consulta, horario_consulta, idPaciente, idMedico) VALUES
(1, '2020-01-10', '09:00', 1, 1),
(2, '2020-02-15', '10:30', 2, 2),
(3, '2020-03-20', '11:00', 3, 3),
(4, '2020-04-25', '14:00', 4, 4),
(5, '2020-05-05', '15:30', 5, 5),
(6, '2020-06-10', '16:00', 6, 6),
(7, '2020-07-15', '08:30', 7, 7),
(8, '2020-08-20', '09:45', 8, 8),
(9, '2020-09-25', '10:15', 9, 9),
(10, '2020-10-30', '11:30', 10, 10),
(11, '2021-01-15', '09:00', 1, 11),   -- Paciente 1 com múltiplas consultas
(12, '2021-02-20', '10:30', 2, 12),   -- Paciente 2 com múltiplas consultas
(13, '2021-03-25', '11:00', 11, 13),
(14, '2021-04-30', '14:00', 12, 14),
(15, '2021-05-05', '15:30', 13, 15),
(16, '2021-06-10', '16:00', 14, 1),
(17, '2021-07-15', '08:30', 15, 2),
(18, '2021-08-20', '09:45', 16, 3),
(19, '2021-09-25', '10:15', 17, 4),
(20, '2021-10-30', '11:30', 18, 5),
(21, '2022-01-10', '09:00', 2, 6),    -- Paciente 2 com múltiplas consultas
(22, '2022-02-15', '10:30', 3, 7),    -- Paciente 3 com múltiplas consultas
(23, '2022-03-20', '11:00', 3, 8),
(24, '2022-04-25', '14:00', 4, 9),    -- Paciente 4 com múltiplas consultas
(25, '2022-05-30', '15:30', 5, 10),
(26, '2022-06-05', '16:00', 6, 11),
(27, '2022-07-10', '08:30', 7, 12),
(28, '2022-08-15', '09:45', 8, 13),
(29, '2022-09-20', '10:15', 9, 14),
(30, '2022-10-25', '11:30', 10, 15),
(31, '2023-01-15', '09:00', 1, 1),    -- Paciente 1 com múltiplas consultas
(32, '2023-02-20', '10:30', 2, 2),    -- Paciente 2 com múltiplas consultas
(33, '2023-03-25', '11:00', 3, 3),    -- Paciente 3 com múltiplas consultas
(34, '2023-04-30', '14:00', 4, 4),    -- Paciente 4 com múltiplas consultas
(35, '2023-05-05', '15:30', 5, 5),
(36, '2023-06-10', '16:00', 6, 6),
(37, '2023-07-15', '08:30', 7, 7),
(38, '2023-08-20', '09:45', 8, 8),
(39, '2023-09-25', '10:15', 9, 9),
(40, '2023-10-30', '11:30', 10, 10),
(41, '2024-01-10', '09:00', 19, 11),
(42, '2024-02-15', '10:30', 20, 12),
(43, '2024-03-20', '11:00', 21, 13),
(44, '2024-04-25', '14:00', 22, 14),
(45, '2024-05-30', '15:30', 23, 15),
(46, '2024-06-05', '16:00', 24, 1),
(47, '2024-07-10', '08:30', 25, 2),
(48, '2024-08-15', '09:45', 26, 3),
(49, '2024-09-20', '10:15', 27, 4),
(50, '2024-10-25', '11:30', 28, 5),
(51, '2025-02-15', '10:20', 2, 1),
(52, '2026-02-15', '10:10', 2, 5),
(53, '2027-02-15', '10:23', 2, 6),
(54, '2020-08-15', '10:33', 2, 7),
(55, '2020-09-15', '10:30', 2, 8),
(56, '2020-10-15', '10:10', 2, 9);

INSERT INTO consulta (idConsulta, data_consulta, horario_consulta, idPaciente, idMedico) VALUES
(57, '2020-06-10', '09:30', 11, 6),
(58, '2020-06-10', '10:00', 12, 6),
(59, '2020-06-10', '10:30', 13, 6),
(60, '2020-06-10', '11:00', 14, 6),
(61, '2020-06-10', '11:30', 15, 6);





-- Inserir dados na tabela pontuario
INSERT INTO pontuario (idPontuario, descricao_sintomas, peso, altura, idConsulta) VALUES
(1, 'Febre alta e tosse seca', 15.0, 0.80, 1), -- Prontuários para as consultas de 2020
(2, 'Dor de garganta e congestão nasal', 16.2, 0.85, 2),
(3, 'Diarreia e desidratação leve', 14.8, 0.78, 3),
(4, 'Erupções cutâneas e coceira', 13.5, 0.75, 4),
(5, 'Dores abdominais e náuseas', 17.0, 0.82, 5),
(6, 'Cansaço e falta de apetite', 16.5, 0.80, 6),
(7, 'Otite média e febre moderada', 15.8, 0.79, 7),
(8, 'Tosse produtiva e dificuldade para respirar', 17.2, 0.83, 8),
(9, 'Vômitos e desidratação', 14.0, 0.77, 9),
(10, 'Conjuntivite alérgica', 16.8, 0.81, 10),
(11, 'Cefaleia frequente e tonturas', 18.0, 0.90, 11), -- Prontuários para as consultas de 2021
(12, 'Amigdalite bacteriana', 17.5, 0.88, 12),
(13, 'Asma leve com sibilos', 16.0, 0.85, 13),
(14, 'Gripe com febre alta', 19.2, 0.92, 14),
(15, 'Bronquite aguda', 18.5, 0.91, 15),
(16, 'Infecção urinária', 17.8, 0.89, 16),
(17, 'Dermatite atópica', 16.5, 0.86, 17),
(18, 'Sinusite crônica', 19.0, 0.93, 18),
(19, 'Anemia ferropriva', 18.2, 0.90, 19),
(20, 'Otite externa', 17.0, 0.88, 20),
(21, 'Alergia alimentar', 16.8, 0.85, 21), -- Prontuários para as consultas de 2022
(22, 'Caxumba com inchaço das glândulas salivares', 18.5, 0.89, 22),
(23, 'Catapora com lesões cutâneas', 17.2, 0.87, 23),
(24, 'Dor abdominal intensa', 19.5, 0.94, 24),
(25, 'Faringite viral', 18.0, 0.90, 25),
(26, 'Pneumonia bacteriana', 17.5, 0.88, 26),
(27, 'Gastroenterite aguda', 16.0, 0.84, 27),
(28, 'Rinite alérgica', 19.0, 0.92, 28),
(29, 'Escarlatina com febre', 18.2, 0.89, 29),
(30, 'Enxaqueca severa', 17.0, 0.86, 30),
(31, 'Bronquiolite leve', 18.8, 0.91, 31), -- Prontuários para as consultas de 2023
(32, 'Infecção de garganta', 17.5, 0.89, 32),
(33, 'Conjuntivite viral', 16.2, 0.87, 33),
(34, 'Otite média recorrente', 19.2, 0.93, 34),
(35, 'Erupções cutâneas alérgicas', 18.5, 0.90, 35),
(36, 'Sinusite aguda', 17.8, 0.88, 36),
(37, 'Diarreia crônica', 16.5, 0.86, 37),
(38, 'Amigdalite recorrente', 19.0, 0.92, 38),
(39, 'Cólica abdominal', 18.2, 0.89, 39),
(40, 'Asma moderada', 17.0, 0.87, 40),
(41, 'Infecção respiratória aguda', 19.5, 0.95, 41), -- Prontuários para as consultas de 2024
(42, 'Virose com febre e mal-estar', 18.0, 0.92, 42),
(43, 'Dermatite seborreica', 17.5, 0.90, 43),
(44, 'Anemia leve', 16.8, 0.88, 44),
(45, 'Otite interna', 18.2, 0.91, 45),
(46, 'Gastrite', 17.0, 0.89, 46),
(47, 'Tosse alérgica', 19.0, 0.93, 47),
(48, 'Febre sem foco aparente', 18.5, 0.90, 48),
(49, 'Infecção por rotavírus', 17.2, 0.88, 49),
(50, 'Candidíase oral', 16.5, 0.86, 50),
(51, 'Dor de cabeça e febre baixa', 18.5, 0.88, 51),
(52, 'Tosse seca e dor no peito', 17.8, 0.90, 52),
(53, 'Fadiga extrema e tontura', 18.0, 0.89, 53),
(54, 'Infecção de garganta leve', 19.2, 0.91, 54),
(55, 'Congestão nasal e espirros', 16.5, 0.87, 55),
(56, 'Vômitos e dor abdominal', 18.0, 0.90, 56),
(57, 'Dor abdominal leve e febre baixa', 18.0, 0.90, 57),
(58, 'Congestão nasal e tosse moderada', 16.5, 0.88, 58),
(59, 'Cefaleia frequente e náuseas', 17.8, 0.91, 59),
(60, 'Infecção de ouvido e febre moderada', 19.0, 0.89, 60),
(61, 'Erupções cutâneas e coceira', 18.5, 0.92, 61);


-- Inserir prescrições para 35 prontuários aleatórios
INSERT INTO prescricao (idPrescricao, dosagem, administracao, tempo_uso, idPontuario, idmedicamento) VALUES
(1, '1 comprimido', 'Oral', '7 dias', 45, 5),
(2, '5 ml', 'Inalação', '10 dias', 46, 3),
(3, '2 cápsulas', 'Oral', '5 dias', 4, 7),
(4, '10 gotas', 'Sublingual', '15 dias', 3, 2),
(5, '1 colher', 'Oral', '10 dias', 28, 1),
(6, '1 comprimido', 'Oral', '7 dias', 1, 8),
(7, '5 ml', 'Tópico', '5 dias', 33, 4),
(8, '2 cápsulas', 'Oral', '10 dias', 22, 9),
(9, '10 gotas', 'Sublingual', '7 dias', 30, 6),
(10, '1 colher', 'Oral', '15 dias', 15, 10),
(11, '1 comprimido', 'Oral', '7 dias', 41, 11),
(12, '5 ml', 'Inalação', '10 dias', 49, 12),
(13, '2 cápsulas', 'Oral', '5 dias', 50, 13),
(14, '10 gotas', 'Sublingual', '15 dias', 14, 14),
(15, '1 colher', 'Oral', '10 dias', 12, 15),
(16, '1 comprimido', 'Oral', '7 dias', 25, 5),
(17, '5 ml', 'Tópico', '5 dias', 43, 3),
(18, '2 cápsulas', 'Oral', '10 dias', 40, 7),
(19, '10 gotas', 'Sublingual', '7 dias', 24, 2),
(20, '1 colher', 'Oral', '15 dias', 13, 1),
(21, '1 comprimido', 'Oral', '7 dias', 47, 8),
(22, '5 ml', 'Inalação', '10 dias', 6, 4),
(23, '2 cápsulas', 'Oral', '5 dias', 5, 9),
(24, '10 gotas', 'Sublingual', '15 dias', 29, 6),
(25, '1 colher', 'Oral', '10 dias', 9, 10),
(26, '1 comprimido', 'Oral', '7 dias', 38, 11),
(27, '5 ml', 'Tópico', '5 dias', 39, 12),
(28, '2 cápsulas', 'Oral', '10 dias', 21, 13),
(29, '10 gotas', 'Sublingual', '7 dias', 44, 14),
(30, '1 colher', 'Oral', '15 dias', 36, 15),
(31, '1 comprimido', 'Oral', '7 dias', 23, 5),
(32, '5 ml', 'Inalação', '10 dias', 20, 3),
(33, '2 cápsulas', 'Oral', '5 dias', 11, 7),
(34, '10 gotas', 'Sublingual', '15 dias', 27, 2),
(35, '1 colher', 'Oral', '10 dias', 37, 1);


-- Inserir registros na tabela prontuario_exame
INSERT INTO pontuario_exame (Pontuario_idPontuario, idExame) VALUES
(1, 6),   
(2, 7),   
(3, 8),   
(4, 9),   
(5, 10),  
(6, 11),  
(7, 12),  
(8, 13),  
(9, 14),  
(10, 15), 
(11, 6),  
(12, 7),  
(13, 8),  
(14, 9),  
(15, 10), 
(16, 11), 
(17, 12), 
(18, 13), 
(19, 14), 
(20, 15), 
(21, 6),  
(22, 7),  
(23, 8),  
(24, 9),  
(25, 10);

-- Supondo que o paciente 1 (Lucas Silva) já tenha consultas em 2023,
-- adicionaremos prontuários com pesos diferentes associados às consultas desse paciente.

-- Primeiro, certifique-se de que há consultas para 2023 no banco
INSERT INTO consulta (idConsulta, data_consulta, horario_consulta, idPaciente, idMedico)
VALUES
(62, '2023-01-05', '10:00', 1, 3), -- Consulta em janeiro de 2023
(63, '2023-12-20', '15:00', 1, 4); -- Consulta em dezembro de 2023

-- Adicionar prontuários para essas consultas com pesos diferentes
INSERT INTO pontuario (idPontuario, descricao_sintomas, peso, altura, idConsulta)
VALUES
(62, 'Cefaleia e febre baixa', 15.0, 0.80, 62), -- Peso inicial em janeiro de 2023
(63, 'Dor abdominal e vômitos', 18.0, 0.80, 63); -- Peso final em dezembro de 2023



-- questão 07

INSERT INTO consulta (idConsulta, data_consulta, horario_consulta, idPaciente, idMedico)
VALUES
(100, CURDATE() - INTERVAL 10 DAY, '09:00', 1, 3);

INSERT INTO pontuario (idPontuario, descricao_sintomas, peso, altura, idConsulta)
VALUES
(100, 'Sintomas leves de gripe', 20.0, 1.20, 100);

INSERT INTO prescricao (idPrescricao, dosagem, administracao, tempo_uso, idPontuario, idmedicamento)
VALUES
(100, '2 comprimidos ao dia', 'Oral', '7 dias', 100, 5);
