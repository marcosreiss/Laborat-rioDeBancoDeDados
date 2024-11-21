
DROP DATABASE mydb;






SELECT idPontuario FROM pontuario WHERE idPontuario IN (45, 46, 4, 3, 28, 1, 33, 22, 30, 15, 41, 49, 50, 14, 12, 25, 43, 40, 24, 13, 47, 6, 5, 29, 9, 38, 39, 21, 44, 36, 23, 20, 11, 27, 37);
SELECT idmedicamento FROM medicamento WHERE idmedicamento IN (5, 3, 7, 2, 1, 8, 4, 9, 6, 10, 11, 12, 13, 14, 15);

DESCRIBE consulta; -- Confirme o tipo do campo `data_consulta`.

SELECT * 
FROM consulta 
WHERE STR_TO_DATE(data_consulta, '%Y-%m-%d') >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

