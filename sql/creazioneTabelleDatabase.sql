# Creare un database chiamato noleggiobici
# Settare in my.ini lower_case_table_names = 2
CREATE TABLE citta(
  idCitta int PRIMARY KEY ,
  nomeCitta varchar(20)
);
CREATE TABLE utenti(
  idUtente char(8) PRIMARY KEY,
  nomeUtente varchar(20),
  cognome varchar(30),
  codiceFiscale varchar(16),
  dataNascita datetime,
  via varchar(50),
  idCitta int,
  CONSTRAINT utente_citta_idCitta_fk FOREIGN KEY (idCitta) REFERENCES citta (idCitta) ON UPDATE CASCADE
);
CREATE TABLE telefoni(
  idTelefono int PRIMARY KEY AUTO_INCREMENT,
  numero varchar(12),
  idUtente char(8),
  CONSTRAINT telef_utente_idUtente_fk FOREIGN KEY (idUtente) REFERENCES utenti (idUtente) ON UPDATE CASCADE
);
CREATE TABLE biciclette(
  idBicicletta bit(64) PRIMARY KEY,
  modello varchar(30),
  dataAcquisto datetime DEFAULT current_timestamp
);
CREATE TABLE noleggi(
  idUtente char(8),
  idBicicletta bit(64),
  dataOraPrelievo datetime,
  dataOraRiconsegna datetime,
  PRIMARY KEY (idUtente, idBicicletta, dataOraPrelievo),
  CONSTRAINT noleggia_biciclette_idBicicletta_fk FOREIGN KEY (idBicicletta) REFERENCES biciclette (idBicicletta) ON UPDATE CASCADE,
  CONSTRAINT noleggia_utenti_idUtente_fk FOREIGN KEY (idUtente) REFERENCES utenti (idUtente) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE stazioniNoleggio(
  idStazione int PRIMARY KEY AUTO_INCREMENT,
  nomeStazione varchar(20)
);
CREATE TABLE slot(
  idSlot int PRIMARY KEY AUTO_INCREMENT,
  numero int,
  idStazione int,
  CONSTRAINT slot_stazioniNoleggio_idStazione_fk FOREIGN KEY (idStazione) REFERENCES stazioniNoleggio (idStazione) ON UPDATE CASCADE
);

CREATE TABLE assBicicletteSlot(
  idBicicletta bit(64),
  idSlot int,
  dataIngresso datetime,
  dataUscita datetime,
  PRIMARY KEY (idBicicletta, idSlot, dataIngresso),
  CONSTRAINT assBicicletteSlot_biciclette_idBicicletta_fk FOREIGN KEY (idBicicletta) REFERENCES biciclette (idBicicletta) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT assBicicletteSlot_slot_idSlot_fk FOREIGN KEY (idSlot) REFERENCES slot (idSlot)
);
