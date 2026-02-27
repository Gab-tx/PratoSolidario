CREATE TABLE Doacao (
    idDoacao INT AUTO_INCREMENT PRIMARY KEY,
    fk_doador INT NOT NULL,
    fk_ong INT NOT NULL,
    data_doacao DATE NOT NULL,
    FOREIGN KEY (fk_doador)
	REFERENCES Doador(idDoador)
	ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (fk_ong)
	REFERENCES ONG(idONG)
	ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE Lote_Alimentacao (
    idLote_Alimentacao INT AUTO_INCREMENT PRIMARY KEY,
    fk_doacao INT NOT NULL,
    FOREIGN KEY (fk_doacao)
	REFERENCES Doacao(idDoacao)
	ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE Alimento_has_Lote_Alimentacao (
    fk_alimento INT NOT NULL,
    fk_lote_alimentacao INT NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (fk_alimento, fk_lote_alimentacao),
    FOREIGN KEY (fk_alimento)
	REFERENCES Alimento(idAlimento)
	ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (fk_lote_alimentacao)
	REFERENCES Lote_Alimentacao(idLote_Alimentacao)
	ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE Entrega (
    idEntrega INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    status VARCHAR(45) NOT NULL,
    fk_doacao INT NOT NULL,
    fk_voluntario INT,
    FOREIGN KEY (fk_doacao)
	REFERENCES Doacao(idDoacao)
	ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_voluntario)
	REFERENCES Voluntario(idVoluntario)
	ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB;