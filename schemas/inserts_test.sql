INSERT INTO Doador (nome, cnpj, telefone, endereco)
VALUES ('Mercado Solidário', '11111111111111', '85999999999', 'Rua A');

INSERT INTO ONG (nome, cnpj, telefone, endereco)
VALUES ('ONG Esperança', '22222222222222', '85888888888', 'Rua B');

INSERT INTO Voluntario (nome, telefone, email)
VALUES ('João Silva', '85777777777', 'joao@email.com');

INSERT INTO Doacao (fk_doador, fk_ong, data_doacao)
VALUES (1, 1, CURDATE());

INSERT INTO Lote_Alimentacao (fk_doacao)
VALUES (1);

INSERT INTO Alimento (nome, unidade_medida, valor, data_validade, tipo)
VALUES ('Arroz', 'kg', 5.50, '2026-12-31', 'Grão');

INSERT INTO Alimento_has_Lote_Alimentacao
VALUES (1, 1, 20);

INSERT INTO Entrega (data, status, fk_doacao, fk_voluntario)
VALUES (CURDATE(), 'Realizada', 1, 1);