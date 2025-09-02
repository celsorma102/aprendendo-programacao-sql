-- Insira 3 classes salariais na tabela salario_classe
INSERT INTO salario_classe (id, nivel, salario)
VALUES
(1, 'Estagiario', 2000),
(2, 'Junior', 6000),
(3, 'Pleno', 10000);

-- Insira 1 nova classe salarial, sem declarar o atributo id_salario
INSERT INTO salario_classe (nivel, salario)
VALUES
 ('Senior', 12000);