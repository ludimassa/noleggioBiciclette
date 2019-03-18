# Popolazione database 2
########################################
# L'utente 01256342 ha noleggiato una bici pertanto sono necessarie le segueti operazioni
INSERT INTO noleggia (`idUtente`,`idBicicletta`, `dataOraPrelievo`, `dataOraRiconsegna`) VALUES ('01256342',b'010101010', '2018-03-07 10:46:14', NULL);
UPDATE assBicicletteSlot SET `dataUscita`='2018-03-07 10:46:14'  WHERE `idBicicletta`=b'010101010' AND `dataUscita` IS  NULL ;
# Riconsegna
INSERT INTO assBicicletteSlot (`idBicicletta`, `idSlot`, `dataIngresso`, `dataUscita`) VALUES (b'010101010',14,'2018-03-07 21:46:14',NULL);
UPDATE noleggia SET `dataOraRiconsegna`='2018-03-07 21:46:14' WHERE idUtente='01256342' AND dataOraRiconsegna IS NULL;
########################################
# L'utente 01256342 ha noleggiato una bici pertanto sono necessarie le segueti operazioni
INSERT INTO noleggia (`idUtente`,`idBicicletta`, `dataOraPrelievo`, `dataOraRiconsegna`) VALUES ('01256342',b'110101010', '2018-03-08 10:46:14', NULL);
UPDATE assBicicletteSlot SET `dataUscita`='2018-03-08 10:46:14'  WHERE `idBicicletta`=b'010101010' AND `dataUscita` IS  NULL ;
# Riconsegna
INSERT INTO assBicicletteSlot (`idBicicletta`, `idSlot`, `dataIngresso`, `dataUscita`) VALUES (b'110101010',14,'2018-03-08 21:46:14',NULL);
UPDATE noleggia SET `dataOraRiconsegna`='2018-03-08 21:46:14' WHERE idUtente='01256342' AND dataOraRiconsegna IS NULL;
########################################
# L'utente 02256342 ha noleggiato una bici pertanto sono necessarie le segueti operazioni
INSERT INTO noleggia (`idUtente`,`idBicicletta`, `dataOraPrelievo`, `dataOraRiconsegna`) VALUES ('02256342',b'110101010', '2018-03-10 10:46:14', NULL);
UPDATE assBicicletteSlot SET `dataUscita`='2018-03-10 10:46:14'  WHERE `idBicicletta`=b'010101010' AND `dataUscita` IS  NULL ;
# Riconsegna
INSERT INTO assBicicletteSlot (`idBicicletta`, `idSlot`, `dataIngresso`, `dataUscita`) VALUES (b'110101010',13,'2018-03-10 21:46:14',NULL);
UPDATE noleggia SET `dataOraRiconsegna`='2018-03-10 21:46:14' WHERE idUtente='02256342' AND dataOraRiconsegna IS NULL;
