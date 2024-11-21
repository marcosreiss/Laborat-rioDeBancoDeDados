-- 1. Mostra as últimas cinco consultas (com data e observação clínica) de um paciente. (OBS: escolha um paciente previamente cadastrado no BD).

SELECT 
    c.data_consulta AS DataConsulta,
    p.descricao_sintomas AS ObservacaoClinica
FROM 
    consulta c
LEFT JOIN 
    pontuario p ON c.idConsulta = p.idConsulta
WHERE 
    c.idPaciente = 2
ORDER BY 
    c.data_consulta DESC
LIMIT 5;


-- 2. Mostra a quantidade de pacientes atendidos por cada tipo de plano (particular ou por plano de saúde).

SELECT 
    CASE 
        WHEN p.idplano_saude IS NULL THEN 'Particular'
        ELSE ps.nome_plano
    END AS TipoPlano,
    COUNT(p.idPaciente) AS QuantidadePacientes
FROM 
    paciente p
LEFT JOIN 
    plano_saude ps ON p.idplano_saude = ps.idplano_saude
GROUP BY 
    TipoPlano;

-- 3. Listar exames prescritos para consultas em uma data específica (use uma data de sua preferência, em que já tenha cadastrado no BD).

SELECT 
    e.nome_exame AS ExamePrescrito,
    c.data_consulta AS DataConsulta,
    po.descricao_sintomas AS ObservacaoClinica,
    pa.nome_crianca AS Paciente
FROM 
    consulta c
JOIN 
    pontuario po ON c.idConsulta = po.idConsulta
JOIN 
    pontuario_exame pe ON po.idPontuario = pe.Pontuario_idPontuario
JOIN 
    exame e ON pe.idExame = e.idExame
JOIN 
    paciente pa ON c.idPaciente = pa.idPaciente
WHERE 
    c.data_consulta = '2020-06-10';

-- 4. Calcula a média de peso e altura de pacientes dentro de um ano de nascimento específico.

SELECT 
    AVG(po.peso) AS MediaPeso,
    AVG(po.altura) AS MediaAltura
FROM 
    paciente pa
JOIN 
    consulta c ON pa.idPaciente = c.idPaciente
JOIN 
    pontuario po ON c.idConsulta = po.idConsulta
WHERE 
    YEAR(pa.data_nascimento) = 2020;

-- 5. Lista todos os pacientes que são atendidos como particulares, sem plano de saúde associado.

SELECT nome_crianca, nome_responsavel, data_nascimento, sexo, status
FROM mydb.paciente
WHERE idplano_saude IS NULL;

-- 6. Exibe as consultas realizadas nas quais o prontuário não contém prescrições de medicamentos ou exames, indicando um tratamento apenas de observação.

SELECT 
    consulta.idConsulta,
    consulta.data_consulta,
    consulta.horario_consulta,
    paciente.nome_crianca,
    paciente.nome_responsavel,
    pontuario.descricao_sintomas
FROM 
    mydb.consulta
JOIN 
    mydb.pontuario ON consulta.idConsulta = pontuario.idConsulta
JOIN 
    mydb.paciente ON consulta.idPaciente = paciente.idPaciente
LEFT JOIN 
    mydb.prescricao ON pontuario.idPontuario = prescricao.idPontuario
LEFT JOIN 
    mydb.pontuario_exame ON pontuario.idPontuario = pontuario_exame.Pontuario_idPontuario
WHERE 
    prescricao.idPrescricao IS NULL
    OR pontuario_exame.idExame IS NULL;

-- 7. Exibe os 3 (três) medicamentos mais prescritos em consultas realizadas no último mês.

SELECT 
    medicamento.nome_medicamento,
    COUNT(prescricao.idPrescricao) AS quantidade_prescricoes
FROM 
    mydb.prescricao
JOIN 
    mydb.medicamento ON prescricao.idmedicamento = medicamento.idmedicamento
JOIN 
    mydb.pontuario ON prescricao.idPontuario = pontuario.idPontuario
JOIN 
    mydb.consulta ON pontuario.idConsulta = consulta.idConsulta
WHERE 
    consulta.data_consulta >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY 
    medicamento.nome_medicamento
ORDER BY 
    quantidade_prescricoes DESC
LIMIT 3;

-- 8. Exibe os pacientes que tiveram a maior variação de peso (em kg) entre a primeira e a última consulta no ano de 2023.

SELECT 
    paciente.nome_crianca,
    paciente.nome_responsavel,
    MIN(pontuario.peso) AS peso_inicial,
    MAX(pontuario.peso) AS peso_final,
    (MAX(pontuario.peso) - MIN(pontuario.peso)) AS variacao_peso
FROM 
    mydb.pontuario
JOIN 
    mydb.consulta ON pontuario.idConsulta = consulta.idConsulta
JOIN 
    mydb.paciente ON consulta.idPaciente = paciente.idPaciente
WHERE 
    YEAR(consulta.data_consulta) = 2023
GROUP BY 
    paciente.idPaciente
ORDER BY 
    variacao_peso DESC
LIMIT 1;

-- 9. Mostra os 3 pacientes que tiveram mais consultas no ano de 2023, indicando aqueles com maior necessidade de acompanhamento.

SELECT 
    paciente.nome_crianca,
    paciente.nome_responsavel,
    COUNT(consulta.idConsulta) AS total_consultas
FROM 
    mydb.consulta
JOIN 
    mydb.paciente ON consulta.idPaciente = paciente.idPaciente
WHERE 
    YEAR(consulta.data_consulta) = 2023
GROUP BY 
    paciente.idPaciente
ORDER BY 
    total_consultas DESC
LIMIT 3;

-- 10. Listar pacientes com pelo menos duas consultas no mesmo mês, em anos diferentes.

SELECT 
    paciente.nome_crianca,
    paciente.nome_responsavel,
    MONTH(consulta1.data_consulta) AS mes_consulta,
    COUNT(DISTINCT YEAR(consulta1.data_consulta)) AS anos_distintos
FROM 
    mydb.consulta AS consulta1
JOIN 
    mydb.paciente ON consulta1.idPaciente = paciente.idPaciente
WHERE 
    EXISTS (
        SELECT 1
        FROM mydb.consulta AS consulta2
        WHERE consulta1.idPaciente = consulta2.idPaciente
          AND MONTH(consulta1.data_consulta) = MONTH(consulta2.data_consulta)
          AND YEAR(consulta1.data_consulta) <> YEAR(consulta2.data_consulta)
    )
GROUP BY 
    paciente.idPaciente, MONTH(consulta1.data_consulta)
HAVING 
    anos_distintos >= 2;








