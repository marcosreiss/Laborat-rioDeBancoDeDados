USE mydb;

-- Inserir dados na tabela endereco
INSERT INTO endereco (idEndereco, rua, numero, bairro, cidade, uf) VALUES
(1, 'Rua das Flores', 123, 'Jardim das Rosas', 'São Paulo', 'SP'),
(2, 'Avenida Brasil', 456, 'Centro', 'Rio de Janeiro', 'RJ'),
(3, 'Rua das Palmeiras', 789, 'Boa Vista', 'Belo Horizonte', 'MG'),
(4, 'Travessa da Paz', 101, 'Vila Nova', 'Curitiba', 'PR'),
(5, 'Rua do Sol', 202, 'Bela Vista', 'Fortaleza', 'CE'),
(6, 'Avenida do Mar', 303, 'Praia Grande', 'Florianópolis', 'SC');

-- Inserir dados na tabela plano_saude
INSERT INTO plano_saude (idplano_saude, nome_plano, tipo_plano) VALUES
(1, 'Unimed', 'Familiar'),
(2, 'Amil', 'Individual'),
(3, 'Bradesco Saúde', 'Empresarial');

-- Dados para a tabela paciente
INSERT INTO paciente (idPaciente, nome_crianca, nome_responsavel, data_nascimento, sexo, status, idEndereco, idplano_saude) VALUES
(1, 'João Silva', 'Maria Silva', '2010-05-12', 'M', 'Ativo', 1, 1),
(2, 'Ana Pereira', 'Carlos Pereira', '2012-08-20', 'F', 'Ativo', 2, 2),
(3, 'Pedro Santos', 'Mariana Santos', '2015-01-15', 'M', 'Ativo', 3, NULL),
(4, 'Luiza Oliveira', 'João Oliveira', '2018-11-03', 'F', 'Inativo', 4, NULL),
(5, 'Mateus Costa', 'Fernanda Costa', '2013-09-25', 'M', 'Ativo', 5, 1),
(6, 'Sofia Almeida', 'Rafael Almeida', '2017-07-19', 'F', 'Ativo', 6, 2),
(7, 'Lucas Ribeiro', 'Camila Ribeiro', '2014-03-28', 'M', 'Ativo', 1, NULL),
(8, 'Beatriz Gomes', 'Paulo Gomes', '2016-06-10', 'F', 'Ativo', 2, 1);

-- Inserir dados na tabela medico
INSERT INTO medico (idMedico, nome, CRM) VALUES
(1, 'Dr. Pedro', '12345-SP'),
(2, 'Dra. Carla', '67890-RJ'),
(3, 'Dr. João', '54321-MG');

-- Dados para a tabela telefone
INSERT INTO telefone (idTelefone, numero, tipo, idPaciente) VALUES
(1, '(11) 98765-4321', 'Residencial', 1),
(2, '(21) 91234-5678', 'Celular', 2),
(3, '(31) 99876-5432', 'Celular', 3),
(4, '(41) 92345-6789', 'Comercial', 4),
(5, '(85) 93456-7890', 'Celular', 5),
(6, '(48) 94567-8901', 'Residencial', 6),
(7, '(11) 95678-9012', 'Celular', 7),
(8, '(21) 96789-0123', 'Comercial', 8);

-- Dados para a tabela consulta
INSERT INTO consulta (idConsulta, data_consulta, horario_consulta, idPaciente, idMedico) VALUES
(1, '2024-10-01', '10:30', 1, 1),
(2, '2024-10-02', '14:00', 2, 2),
(3, '2024-10-03', '09:15', 3, 3),
(4, '2024-10-04', '11:45', 4, 1),
(5, '2024-10-05', '16:30', 5, 2),
(6, '2024-10-06', '13:00', 6, 3),
(7, '2024-10-07', '08:45', 7, 1),
(8, '2024-10-08', '15:15', 8, 2),
(9, '2024-10-09', '10:00', 1, 3),
(10, '2024-10-10', '14:30', 2, 1),
(11, '2024-10-11', '09:00', 3, 2),
(12, '2024-10-12', '11:30', 4, 3),
(13, '2024-10-13', '15:45', 5, 1),
(14, '2024-10-14', '10:15', 6, 2),
(15, '2024-10-15', '14:00', 7, 3),
(16, '2024-10-16', '08:30', 8, 1),
(17, '2024-10-17', '16:00', 1, 2),
(18, '2024-10-18', '12:45', 2, 3),
(19, '2024-10-19', '09:30', 3, 1),
(20, '2024-10-20', '13:15', 4, 2),
(21, '2024-10-21', '09:00', 5, 1), 
(22, '2024-10-22', '11:30', 6, 2), 
(23, '2024-10-23', '10:45', 7, 3), 
(24, '2024-10-24', '14:15', 8, 1), 
(25, '2024-10-25', '08:00', 1, 2), 
(26, '2024-10-26', '12:30', 2, 3), 
(27, '2024-10-27', '16:15', 3, 1), 
(28, '2024-10-28', '09:30', 4, 2), 
(29, '2024-10-29', '15:00', 5, 3), 
(30, '2024-10-30', '10:00', 6, 1);

-- Dados para a tabela pontuario
INSERT INTO pontuario (idPontuario, descricao_sintomas, peso, altura, idConsulta) VALUES
(1, 'Febre alta e tosse', 28.5, 1.20, 1),
(2, 'Dor de garganta', 30.0, 1.25, 2),
(3, 'Cólica e diarreia', 32.0, 1.30, 3),
(4, 'Falta de apetite', 25.5, 1.10, 4),
(5, 'Irritação na pele', 35.0, 1.40, 5),
(6, 'Dores de cabeça', 29.0, 1.15, 6),
(7, 'Infecção no ouvido', 34.5, 1.35, 7),
(8, 'Tosse persistente', 33.0, 1.28, 8),
(9, 'Cansaço extremo', 27.0, 1.22, 9),
(10, 'Vômitos frequentes', 26.0, 1.18, 10),
(11, 'Dificuldade para respirar', 31.0, 1.20, 11), 
(12, 'Dor abdominal', 33.5, 1.25, 12), 
(13, 'Alergia alimentar', 34.0, 1.30, 13), 
(14, 'Fadiga constante', 28.0, 1.10, 14), 
(15, 'Tonturas', 36.0, 1.35, 15),
(16, 'Dores musculares', 30.0, 1.28, 16),
(17, 'Palpitações', 29.5, 1.22, 17), 
(18, 'Inchaço nas articulações', 27.5, 1.18, 18), 
(19, 'Perda de peso', 32.5, 1.40, 19), 
(20, 'Dificuldade para dormir', 28.5, 1.23, 20),
(21, 'Dores nas costas', 32.0, 1.34, 21), 
(22, 'Congestão nasal', 29.0, 1.19, 22), 
(23, 'Erupções cutâneas', 30.5, 1.27, 23), 
(24, 'Dor de ouvido', 31.5, 1.21, 24), 
(25, 'Dor no peito', 28.0, 1.15, 25), 
(26, 'Cefaleia', 35.0, 1.38, 26), 
(27, 'Artrite', 27.5, 1.24, 27), 
(28, 'Gripe', 33.0, 1.30, 28), 
(29, 'Fadiga muscular', 31.0, 1.25, 29), 
(30, 'Problema digestivo', 29.5, 1.23, 30);


INSERT INTO medicamento (idmedicamento, nome_medicamento) VALUES
(1, 'Paracetamol'),
(2, 'Ibuprofeno'),
(3, 'Amoxicilina'),
(4, 'Dipirona'),
(5, 'Omeprazol'),
(6, 'Cetirizina'),
(7, 'Salbutamol');

INSERT INTO exame (nome_exame) VALUES
('Teste de Glicemia'),
('Exame de Urina'),
('Ecocardiograma'),
('Endoscopia Digestiva'),
('Ressonância Magnética'),
('Teste Ergométrico'),
('Exame de Fezes'),
('Audiometria'),
('Densitometria Óssea'),
('Exame de Colesterol'),
('Teste de Função Pulmonar'),
('Mapeamento de Retina'),
('Exame de Prolactina'),
('Teste de TSH'),
('Exame de Hormônio Tireoidiano');


INSERT INTO prescricao (idPrescricao, dosagem, administracao, tempo_uso, idPontuario, idmedicamento) VALUES
(1, '1 comprimido', 'Oral', '7 dias', 1, 1),
(2, '5 ml', 'Inalação', '10 dias', 2, 2),
(3, '2 cápsulas', 'Oral', '5 dias', 3, 3),
(4, '10 gotas', 'Sublingual', '15 dias', 4, 4),
(5, '1 colher', 'Oral', '10 dias', 5, 5),
(6, '1 comprimido', 'Oral', '7 dias', 6, 1),
(7, '5 ml', 'Tópico', '5 dias', 7, 2),
(8, '2 cápsulas', 'Oral', '10 dias', 8, 3),
(9, '10 gotas', 'Sublingual', '7 dias', 9, 4),
(10, '1 colher', 'Oral', '15 dias', 10, 5),
(11, '1 comprimido', 'Oral', '7 dias', 11, 6), 
(12, '1 comprimido', 'Oral', '10 dias', 12, 7), 
(13, '2 cápsulas', 'Oral', '5 dias', 13, 1), 
(14, '10 gotas', 'Sublingual', '15 dias', 14, 2), 
(15, '1 colher', 'Oral', '10 dias', 15, 3), 
(16, '1 comprimido', 'Oral', '7 dias', 16, 4), 
(17, '5 ml', 'Tópico', '5 dias', 17, 5), 
(18, '2 cápsulas', 'Oral', '10 dias', 18, 6), 
(19, '10 gotas', 'Sublingual', '7 dias', 19, 7), 
(20, '1 colher', 'Oral', '15 dias', 20, 1),
(21, '2 comprimidos', 'Oral', '10 dias', 21, 6), 
(22, '1 nebulização', 'Inalação', '5 dias', 22, 7), 
(23, '2 cápsulas', 'Oral', '7 dias', 23, 1), 
(24, '10 gotas', 'Sublingual', '10 dias', 24, 2), 
(25, '1 colher', 'Oral', '15 dias', 25, 3), 
(26, '1 comprimido', 'Oral', '7 dias', 26, 4), 
(27, '5 ml', 'Tópico', '5 dias', 27, 5), 
(28, '2 cápsulas', 'Oral', '10 dias', 28, 6), 
(29, '10 gotas', 'Sublingual', '7 dias', 29, 7), 
(30, '1 colher', 'Oral', '15 dias', 30, 1);

-- Dados para a tabela pontuario_exame ajustados
INSERT INTO pontuario_exame (Pontuario_idPontuario, idExame) VALUES
(1, 1), 
(2, 2),
(3, 3), 
(4, 4),
(5, 5), 
(6, 1), 
(7, 2),
(8, 3), 
(9, 4), 
(10, 5),
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
(22, 2), 
(23, 3), 
(24, 4), 
(25, 5), 
(26, 6), 
(27, 7),
(28, 8),
(29, 9), 
(30, 10);

