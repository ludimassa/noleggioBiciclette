# Numero di biciclette disponibili per una data stazione
SELECT
  COUNT(*) AS "Biciclette disponibili per stazione"
FROM
  stazioniNoleggio AS SN
LEFT JOIN slot AS SLO ON SN.idStazione = SLO.idStazione
LEFT JOIN assBicicletteSlot AS ABS ON SLO.idSlot = ABS.idSlot
WHERE ABS.dataUscita IS NULL
AND SN.idStazione=:idSta
AND idBicicletta IS NOT NULL;

# Numero di biciclette disponibili per ogni stazione
SELECT
  SN.nomeStazione,
  COUNT(*) AS "Biciclette disponibili per stazione"
FROM
  stazioniNoleggio AS SN
LEFT JOIN slot AS SLO ON SN.idStazione = SLO.idStazione
LEFT JOIN assBicicletteSlot AS ABS ON SLO.idSlot = ABS.idSlot
WHERE ABS.dataUscita IS NULL
AND idBicicletta IS NOT NULL
GROUP BY SN.idStazione;

# Biciclette disponibili per una data stazione
SELECT
  BI.idBicicletta,
  BI.modello,
  BI.dataAcquisto
FROM
  biciclette AS BI
LEFT JOIN assBicicletteSlot AS ABS ON BI.idBicicletta = ABS.idBicicletta
LEFT JOIN slot AS SLO ON ABS.idSlot = SLO.idSlot
LEFT JOIN stazioniNoleggio AS STN ON SLO.idStazione = STN.idStazione
WHERE ABS.dataUscita IS NULL
AND STN.idStazione=:idSta

# Recuperare ogni utente quanti noleggi ha effettuato
SELECT
  UT.idUtente,
  UT.nomeUtente,
  COUNT(*)
FROM utenti AS UT
LEFT JOIN noleggi AS NO ON NO.idUtente = UT.idUtente
GROUP BY NO.idUtente;
