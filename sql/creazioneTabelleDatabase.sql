#############################################
# Popolazione città
INSERT INTO citta (`idCitta`, `nomeCitta`) VALUES (1, 'Boscoreale');
INSERT INTO citta (`idCitta`, `nomeCitta`) VALUES (2, 'Torre del Greco');
INSERT INTO citta (`idCitta`, `nomeCitta`) VALUES (3, 'Torre Annunziata');

#############################################
# Popolazione utenti
INSERT INTO utenti (`idUtente`, `nomeUtente`, `cognome`, `codiceFiscale`, `dataNascita`, `via`, `idCitta`) VALUES ('01256342', 'Luigi', 'di Massa', 'DMSLGU89P16I862G', '1988-03-06 21:41:30', 'Via Pasquale Ottavio', 1);
INSERT INTO utenti (`idUtente`, `nomeUtente`, `cognome`, `codiceFiscale`, `dataNascita`, `via`, `idCitta`) VALUES ('02256342', 'Marco', 'Greco', 'ORLOTV87P67IG', '1978-03-06 21:41:30', 'Via Orlando Ottavio', 2);
INSERT INTO utenti (`idUtente`, `nomeUtente`, `cognome`, `codiceFiscale`, `dataNascita`, `via`, `idCitta`) VALUES ('03256342', 'Luca', 'Cimaglia', 'LUCIM8589333', '1985-03-03 21:41:30', 'Via Napoli', 3);

#############################################
# Popolazione Biciclette
INSERT INTO biciclette (`idBicicletta`, `modello`, `dataAcquisto`) VALUES (b'010101010', 'BMX', '2018-03-06 21:46:14');
INSERT INTO biciclette (`idBicicletta`, `modello`, `dataAcquisto`) VALUES (b'111101010', 'BIANCHI', '2018-02-06 21:46:14');
INSERT INTO biciclette (`idBicicletta`, `modello`, `dataAcquisto`) VALUES (b'110101010', 'BMX', '2018-01-06 21:46:14');
INSERT INTO biciclette (`idBicicletta`, `modello`, `dataAcquisto`) VALUES (b'110101011', 'ALTAFINI', '2019-01-06 21:46:14');

#############################################
# Popolazione stazione di Noleggio
INSERT INTO stazioniNoleggio (`idStazione`, `nomeStazione`) VALUES (1, 'BOSCOREALE BIKE 1');
INSERT INTO stazioniNoleggio (`idStazione`, `nomeStazione`) VALUES (2, 'BOSCOREALE BIKE 2');
INSERT INTO stazioniNoleggio (`idStazione`, `nomeStazione`) VALUES (3, 'TORREDELGRECO BIKE');
#############################################
# Popolazione slot
# Popolazione slot prima stazione
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (1, 1, 1);
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (2, 2, 1);
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (3, 3, 1);
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (4, 4, 1);
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (5, 5, 1);
# Popolazione slot seconda stazione
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (6, 1, 2);
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (7, 2, 2);
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (8, 3, 2);
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (9, 4, 2);
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (10, 5, 2);
# Popolazione slot terza stazione
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (11, 1, 3);
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (12, 2, 3);
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (13, 3, 3);
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (14, 4, 3);
INSERT INTO slot (`idSlot`, `numero`, `idStazione`) VALUES (15, 5, 3);

#############################################
# Prima associazione biciclette
INSERT INTO assBicicletteSlot (`idBicicletta`, `idSlot`, `dataIngresso`, `dataUscita`) VALUES (b'010101010',1,'2019-03-01 00:00:00',NULL);
INSERT INTO assBicicletteSlot (`idBicicletta`, `idSlot`, `dataIngresso`, `dataUscita`) VALUES (b'111101010',2,'2019-03-01 00:00:00',NULL);
INSERT INTO assBicicletteSlot (`idBicicletta`, `idSlot`, `dataIngresso`, `dataUscita`) VALUES (b'110101010',8,'2019-03-01 00:00:00',NULL);
INSERT INTO assBicicletteSlot (`idBicicletta`, `idSlot`, `dataIngresso`, `dataUscita`) VALUES (b'110101011',11,'2019-03-01 00:00:00',NULL);
