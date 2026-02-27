DELIMITER $$

CREATE PROCEDURE popular_prato()
BEGIN
    DECLARE i INT DEFAULT 1;

    -- Doadores
    WHILE i <= 300 DO
        INSERT INTO Doador (cnpj, telefone, endereco, nome)
        VALUES (
            FLOOR(10000000000000 + RAND()*89999999999999),
            CONCAT('8599', FLOOR(RAND()*1000000)),
            CONCAT('Endereco_', i),
            CONCAT('Doador_', i)
        );
        SET i = i + 1;
    END WHILE;

    SET i = 1;

    -- ONG
    WHILE i <= 50 DO
        INSERT INTO ONG (cnpj, endereco, telefone, nome)
        VALUES (
            FLOOR(10000000000000 + RAND()*89999999999999),
            CONCAT('Endereco_ONG_', i),
            CONCAT('8598', FLOOR(RAND()*1000000)),
            CONCAT('ONG_', i)
        );
        SET i = i + 1;
    END WHILE;

    SET i = 1;

    -- Voluntarios
    WHILE i <= 200 DO
        INSERT INTO Voluntario (nome, telefone, email)
        VALUES (
            CONCAT('Voluntario_', i),
            CONCAT('8597', FLOOR(RAND()*1000000)),
            CONCAT('vol', i, '@email.com')
        );
        SET i = i + 1;
    END WHILE;

    SET i = 1;

    -- Entregas
    WHILE i <= 500 DO
        INSERT INTO Entrega (data, status, fk_voluntario)
        VALUES (
            CURDATE() - INTERVAL FLOOR(RAND()*30) DAY,
            IF(RAND()>0.5,'Entregue','Pendente'),
            FLOOR(1 + RAND()*200)
        );
        SET i = i + 1;
    END WHILE;

    SET i = 1;

    -- Lotes
    WHILE i <= 200 DO
        INSERT INTO Lote_Alimentacao ()
        VALUES ();
        SET i = i + 1;
    END WHILE;

    SET i = 1;

    -- Alimentos
    WHILE i <= 300 DO
        INSERT INTO Alimento (nome, unidade_medida, valor, data_validade, tipo)
        VALUES (
            CONCAT('Alimento_', i),
            'kg',
            ROUND(RAND()*20,2),
            CURDATE() + INTERVAL FLOOR(RAND()*365) DAY,
            'Nao perecivel'
        );
        SET i = i + 1;
    END WHILE;

    SET i = 1;

    -- Relação alimento_lote
    WHILE i <= 500 DO
        INSERT INTO Alimento_has_Lote_Alimentacao (fk_alimento, fk_lote_alimentacao)
        VALUES (
            FLOOR(1 + RAND()*300),
            FLOOR(1 + RAND()*200)
        );
        SET i = i + 1;
    END WHILE;

    SET i = 1;

    -- Doacoes
    WHILE i <= 1000 DO
        INSERT INTO Doacao (fk_doador, fk_lote_alimentacao, fk_ong, fk_entrega)
        VALUES (
            FLOOR(1 + RAND()*300),
            FLOOR(1 + RAND()*200),
            FLOOR(1 + RAND()*50),
            FLOOR(1 + RAND()*500)
        );
        SET i = i + 1;
    END WHILE;

END$$

DELIMITER ;

CALL popular_prato();
