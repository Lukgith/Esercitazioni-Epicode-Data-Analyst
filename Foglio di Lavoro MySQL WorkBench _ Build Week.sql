CREATE TABLE `transazioni_dataset` (
  `IDTransazione` int DEFAULT NULL,
  `DataTransazione` text,
  `ProdottoID` int DEFAULT NULL,
  `ClienteID` int DEFAULT NULL,
  `QuantitaAcquistata` int DEFAULT NULL,
  `ImportoTotaleTransazione` text,
  `IDSpedizione` int DEFAULT NULL,
  `MetodoSpedizione` text,
  `DataSpedizione` text,
  `StatusConsegna` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `prodotti_dataset` (
  `ProdottoID` int DEFAULT NULL,
  `NomeProdotto` text,
  `Categoria` text,
  `Prezzo` text,
  `QuantitaDisponibile` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `clienti_dataset` (
  `ClienteID` int DEFAULT NULL,
  `NomeCliente` text,
  `Email` text,
  `DataRegistrazione` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `spedizioni_dataset` (
  `IDTransazione` int DEFAULT NULL,
  `MetodoSpedizione` text,
  `DataSpedizione` text,
  `StatusConsegna` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


/*INTERROGAZIONI IN SQL*/
/*1. Analisi delle Vendite Mensili */
/*Query: Trova il totale delle vendite per ogni mese */

/*SELECT MONTH(STR_TO_DATE(DataTransazione, '%d/%m/%Y %H:%i')) as Mese, 
       SUM(QuantitaAcquistata) as TotaleDelleVendite
FROM build_week_1_lucasilvi.transazioni_dataset t
WHERE t.StatusConsegna = 'Consegna Riuscita'
GROUP BY MONTH(STR_TO_DATE(DataTransazione, '%d/%m/%Y %H:%i'))
ORDER BY MONTH(STR_TO_DATE(DataTransazione, '%d/%m/%Y %H:%i')) ASC;*/ /*questo comando ormai non serve più in quanto le colonne di date sono state tutte convertite in formato date*/

/*Converto tutte le colonne delle Date di tipo Txt in formato data*/

SET SQL_SAFE_UPDATES = 0;

-- Aggiorna solo le colonne che contengono stringhe da convertire
UPDATE build_week_1_lucasilvi.transazioni_dataset
SET DataTransazione = STR_TO_DATE(DataTransazione, '%d/%m/%Y %H:%i')
WHERE DataTransazione NOT LIKE '%-%';

UPDATE build_week_1_lucasilvi.transazioni_dataset
SET DataSpedizione = STR_TO_DATE(DataSpedizione, '%d/%m/%Y %H:%i')
WHERE DataSpedizione NOT LIKE '%-%';

UPDATE build_week_1_lucasilvi.clienti_dataset
SET DataRegistrazione = STR_TO_DATE(DataRegistrazione, '%d/%m/%Y %H:%i')
WHERE DataRegistrazione NOT LIKE '%-%';

UPDATE build_week_1_lucasilvi.spedizioni_dataset
SET DataSpedizione = STR_TO_DATE(DataSpedizione, '%d/%m/%Y %H:%i')
WHERE DataSpedizione NOT LIKE '%-%';

SET SQL_SAFE_UPDATES = 1;


-- Verifica il formato della data nella tabella transazioni_dataset
SELECT DISTINCT DataTransazione FROM build_week_1_lucasilvi.transazioni_dataset;

-- Controlla i record con StatusConsegna = 'Consegna Riuscita'
SELECT * FROM build_week_1_lucasilvi.transazioni_dataset WHERE StatusConsegna = 'Consegna Riuscita';


SELECT MONTH(DataTransazione) as Mese, SUM(QuantitaAcquistata) as TotaleDelleVendite
FROM build_week_1_lucasilvi.transazioni_dataset t
WHERE t.StatusConsegna = 'Consegna Riuscita'
GROUP BY MONTH(DataTransazione)
ORDER BY MONTH(DataTransazione);

/*2. Prodotti più Venduti */
/*Domanda: Identifica i tre prodotti più venduti e la loro quantità venduta.*/
SELECT p.NomeProdotto, t.ProdottoID, SUM(t.QuantitaAcquistata) as TotaledelleVendite
FROM build_week_1_lucasilvi.transazioni_dataset t
INNER JOIN build_week_1_lucasilvi.prodotti_dataset as p ON p.ProdottoID=t.ProdottoID
WHERE t.StatusConsegna = 'Consegna Riuscita'
GROUP BY p.NomeProdotto, t.ProdottoID
ORDER BY SUM(t.QuantitaAcquistata) DESC
LIMIT 3;

/*3. Analisi Cliente */
/*Domanda: Trova il cliente che ha effettuato il maggior numero di acquisti.*/

SELECT c.NomeCliente, t.ClienteID, SUM(t.QuantitaAcquistata) as Acquisti
FROM build_week_1_lucasilvi.transazioni_dataset t
INNER JOIN build_week_1_lucasilvi.clienti_dataset as c ON c.ClienteID=t.ClienteID
GROUP BY c.NomeCliente, t.ClienteID
ORDER BY SUM(t.QuantitaAcquistata) DESC
LIMIT 1;

/*Verifica contenuto Colonna NomeCliente*/

SELECT NomeCliente from build_week_1_lucasilvi.clienti_dataset;


/*4. Valore medio della transazione */
/*Domanda: Calcola il valore medio di ogni transazione.*/

SELECT AVG(ImportoTotaleTransazione) as ValorMedioTransazione
FROM build_week_1_lucasilvi.transazioni_dataset;

/*5. Analisi Categoria Prodotto */
/*Domanda: Determina la categoria di prodotto con il maggior numero di vendite.*/
SELECT p.Categoria, SUM(t.QuantitaAcquistata) as N°Vendite
FROM build_week_1_lucasilvi.transazioni_dataset t
INNER JOIN build_week_1_lucasilvi.prodotti_dataset as p ON p.ProdottoID=t.ProdottoID
GROUP BY p.Categoria
ORDER BY SUM(t.QuantitaAcquistata) DESC
LIMIT 1;

/*6. Cliente Fedele */
/*Domanda: Identifica il cliente con il maggior valore totale di acquisti.*/

SELECT c.NomeCliente, SUM(t.ImportoTotaleTransazione) as Acquisti
FROM build_week_1_lucasilvi.transazioni_dataset t
INNER JOIN build_week_1_lucasilvi.clienti_dataset as c ON c.ClienteID=t.ClienteID
GROUP BY c.NomeCliente
ORDER BY SUM(t.ImportoTotaleTransazione) DESC
LIMIT 1;

/*7. Spedizioni Riuscite */
/*Domanda: Calcola la percentuale di spedizioni con "Consegna Riuscita".*/

CREATE VIEW EndConsegne(ConsegneRiuscite) AS 
SELECT COUNT(s.StatusConsegna)
FROM build_week_1_lucasilvi.transazioni_dataset t
INNER JOIN build_week_1_lucasilvi.spedizioni_dataset s
WHERE s.StatusConsegna = 'Consegna Riuscita';

DROP VIEW EndConsegne;

SELECT CONCAT((ConsegneRiuscite / TotaleSpedizioni) * 100, '%') AS PercentEndConsegne
FROM EndConsegne, (SELECT COUNT(s.StatusConsegna) as TotaleSpedizioni
FROM build_week_1_lucasilvi.transazioni_dataset t
INNER JOIN build_week_1_lucasilvi.spedizioni_dataset s) AS Totali;



/*8. Prodotto con la Migliore Recensione */
/*Domanda: Trova il prodotto con la recensione media più alta.*/

SELECT p.NomeProdotto, p.ProdottoID 
FROM build_week_1_lucasilvi.transazioni_dataset t
INNER JOIN build_week_1_lucasilvi.prodotti_dataset p ON p.ProdottoID = t.ProdottoID
INNER JOIN build_week_1_lucasilvi.spedizioni_dataset s ON s.IDTransazione = t.IDTransazione
WHERE s.MetodoSpedizione = 'Corriere Express' AND s.StatusConsegna = 'Consegna Riuscita'
ORDER BY t.QuantitaAcquistata * (1/p.Prezzo) DESC
LIMIT 1;


/*9. Analisi Temporale */
/*Domanda: Calcola la variazione percentuale nelle vendite rispetto al mese precedente.*/

/*Appurare Mesi ed Anni*/
SELECT MONTH(DataTransazione), YEAR(DataTransazione) FROM build_week_1_lucasilvi.transazioni_dataset
ORDER BY MONTH(DataTransazione) ASC;

/*Confronto Mesi con 2 Alias e JOIN*/

/*SELECT MONTH(t1.DataTransazione) AS MesePrecedente, MONTH(t2.DataTransazione) AS MeseCorrente, CONCAT(((SUM(t2.QuantitaAcquistata)/SUM(t1.QuantitaAcquistata))*100),'%') as VariazionePercentTraMesiPeC
FROM build_week_1_lucasilvi.transazioni_dataset t1 
JOIN build_week_1_lucasilvi.transazioni_dataset t2 ON t2.IDTransazione=t1.IDTransazione
WHERE MONTH(t2.DataTransazione) = MONTH(t1.DataTransazione) + 1
GROUP BY MONTH(t1.DataTransazione), (t2.DataTransazione);*/ /*IDEA SCHELETRO*/


-- Creare la CTE che estrae il mese dalla data e le somme delle quantità
WITH MesiDati AS (
    SELECT 
        MONTH(DataTransazione) AS Mese,
        SUM(QuantitaAcquistata) AS QuantitaAcquistata
    FROM 
        build_week_1_lucasilvi.transazioni_dataset
    GROUP BY 
        Mese
)

-- Confrontare le somme delle quantità per ogni mese
SELECT 
    t1.Mese AS MesePrecedente,
    t2.Mese AS MeseCorrente,
    CONCAT(
        ((t2.QuantitaAcquistata / NULLIF(t1.QuantitaAcquistata, 0)) * 100) - 100,
        '%'
    ) AS VariazionePercentTraMesiPeC
FROM 
    MesiDati t1
JOIN 
    MesiDati t2 ON t2.Mese = t1.Mese + 1
ORDER BY 
    t1.Mese;


/*10. Quantità di Prodotti Disponibili */
/* Domanda: Determina la quantità media disponibile per categoria di prodotto. */

SELECT p.Categoria, AVG(p.QuantitaDisponibile) as QMediaDisponibile
FROM build_week_1_lucasilvi.prodotti_dataset p
GROUP BY p.Categoria;

/*SELECT p.Categoria, p.QuantitaDisponibile
FROM build_week_1_lucasilvi.prodotti_dataset p
GROUP BY p.Categoria, p.QuantitaDisponibile;*/

/*11. Analisi Spedizioni */
/*Domanda: Trova il metodo di spedizione più utilizzato.*/

SELECT s.MetodoSpedizione
FROM build_week_1_lucasilvi.spedizioni_dataset s
GROUP BY s.MetodoSpedizione
ORDER BY COUNT(s.MetodoSpedizione) DESC
LIMIT 1;

SELECT MetodoSpedizione, Ordine
FROM (
    SELECT 
        MetodoSpedizione,
        RANK() OVER (PARTITION BY MetodoSpedizione
                     ORDER BY COUNT(MetodoSpedizione) DESC) AS Ordine 
    FROM build_week_1_lucasilvi.spedizioni_dataset
    GROUP BY MetodoSpedizione
) ranked_data
WHERE Ordine = 1;

SELECT MetodoSpedizione, Classifica
FROM (
    SELECT 
        MetodoSpedizione,
        RANK() OVER (ORDER BY COUNT(MetodoSpedizione) DESC) AS Classifica 
    FROM build_week_1_lucasilvi.spedizioni_dataset
    GROUP BY MetodoSpedizione
) ranked_data
WHERE Classifica = 1;


/*12. Analisi dei Clienti */
/*Domanda: Calcola il numero medio di clienti registrati al mese.*/
/*SELECT 
      AVG(Registrazioni) as MediaRegistrazioniMensileClienti
FROM( SELECT DATE_FORMAT(DataRegistrazione, '%Y-%m') AS Mese, COUNT(*) AS Registrazioni
	  FROM  clienti
      WHERE YEAR(DataRegistrazione)= 2022
      GROUP BY Mese
      ORDER BY Mese DESC) AS N°RegistrazioniTotaliPerMese;*/ /*Quella Unita del Gruppo*/


SELECT 
      AVG(N°ClientiRegistrati) as MediaIscrizioniMensileClienti
FROM(
      SELECT MONTH(DataRegistrazione) as Mese, 
      COUNT(ClienteID) as N°ClientiRegistrati
		FROM build_week_1_lucasilvi.clienti_dataset
		GROUP BY Mese
        ORDER BY Mese ASC) AS N°IscrizioniMensili;
        
/*13. Prodotti Rari*/
/*Domanda: Identifica i prodotti con una quantità disponibile inferiore alla media.*/

/*SELECT NomeProdotto as ProdottiRari, QuantitaDisponibile, AVG(QuantitaDisponibile)
FROM (
        SELECT 
               NomeProdotto,
               QuantitaDisponibile
        FROM build_week_1_lucasilvi.prodotti_dataset
	 ) as MediaQProdotto
WHERE QuantitaDisponibile < AVG(QuantitaDisponibile);*/ /*non si possono passare funzioni di aggregazione o nominativi definiti nella select alla where; 
                                                        perchè where accetta solo valori specifici di colonne, 
                                                       perciò è necessario specificarli prima con subquery o tabelle derivate;*/

SELECT NomeProdotto AS ProdottiRari, QuantitaDisponibile, MediaTotale
FROM (
    SELECT 
        NomeProdotto,
        QuantitaDisponibile,
        (SELECT AVG(QuantitaDisponibile) FROM build_week_1_lucasilvi.prodotti_dataset) AS MediaTotale
    FROM build_week_1_lucasilvi.prodotti_dataset
) AS Subquery
WHERE QuantitaDisponibile < MediaTotale;

/*14. Analisi dei Prodotti per Cliente */
/*Domanda: Per ogni cliente, elenca i prodotti acquistati e il totale speso.*/

SELECT CONCAT('Cliente ',ClienteID) as NomeCliente,
       CONCAT('Prodotto ',ProdottoID) as NomeProdotto,
       SUM(ImportoTotaleTransazione) as TotaleSpese
FROM build_week_1_lucasilvi.transazioni_dataset
GROUP BY ClienteID, ProdottoID
ORDER BY TotaleSpese DESC;

SELECT AVG(MediaNumeroProdottiAcquistatiPerCliente) as MediaComplessivaProdottiAcquistatiPerCliente
FROM (
    SELECT CONCAT('Cliente ', ClienteID) as NomeCliente,
           AVG(NumeroProdotti) as MediaNumeroProdottiAcquistatiPerCliente
    FROM (
        SELECT ClienteID, COUNT(ProdottoID) as NumeroProdotti
        FROM build_week_1_lucasilvi.transazioni_dataset
        GROUP BY ClienteID
    ) AS ClienteProdotti
    GROUP BY ClienteID
) AS MediaCliente;



/*15. Miglior Mese per le Vendite*/
/*Domanda: Identifica il mese con il maggior importo totale delle vendite.*/

SELECT DISTINCT
    MONTH(DataTransazione) AS Mese,
    SUM(ImportoTotaleTransazione) OVER (PARTITION BY MONTH(DataTransazione)) AS ImportoCumulativoMensile
FROM build_week_1_lucasilvi.transazioni_dataset
ORDER BY ImportoCumulativoMensile DESC
LIMIT 1; /*Partition by con window functions procede eseguendo prima il comando esterno, quindi la somma nel caso
           e poi creando le partizioni ed associando infine ad ogni elemento della partizione la funzione, invece 
           group by aggrega prendendo in considerazione tutti gli elementi di un gruppo contemporaneamente*/

SELECT
    MONTH(DataTransazione) AS Mese,
    SUM(ImportoTotaleTransazione) AS ImportoTotaleMensile
FROM build_week_1_lucasilvi.transazioni_dataset
GROUP BY Mese
ORDER BY ImportoTotaleMensile DESC
LIMIT 1;

/*16. Analisi dei Prodotti in Magazzino */
/*Domanda: Trova la quantità totale di prodotti disponibili in magazzino.*/

SELECT SUM(QuantitaDisponibile) as QuantitaTotaleInMagazzino
FROM build_week_1_lucasilvi.prodotti_dataset;
    
/*17. Clienti Senza Acquisti */
/*Domanda: Identifica i clienti che non hanno effettuato alcun acquisto.*/

SELECT Cliente, TotaleAcquisti
FROM (
    SELECT c.ClienteID as Cliente, SUM(t.QuantitaAcquistata) OVER(PARTITION BY c.ClienteID ORDER BY SUM(t.QuantitaAcquistata) DESC) AS TotaleAcquisti
    FROM build_week_1_lucasilvi.clienti_dataset c, build_week_1_lucasilvi.transazioni_dataset t 
    GROUP BY Cliente, TotaleAcquisti
) as AcquistiClientela
WHERE TotaleAcquisti IS NULL OR TotaleAcquisti = 0;


/* SELECT ClienteID as Cliente
    FROM build_week_1_lucasilvi.clienti_dataset
    WHERE QuantitaAcquistata IS NULL OR QuantitaAcquistata = 0;*/ /*Verifica dell'effettiva inesistenza di Clienti con 0 Acquisti*/

/*18. Analisi Annuale delle Vendite */
/*Domanda: Calcola il totale delle vendite per ogni anno.*/

SELECT SUM(QuantitaAcquistata) as TotaleVenditeAnnuale, YEAR(DataTransazione) as Anno
FROM build_week_1_lucasilvi.transazioni_dataset
GROUP BY Anno;

/*SELECT QuantitaAcquistata as TotaleVenditeAnnuale
FROM build_week_1_lucasilvi.transazioni_dataset;*/ /*Verifca valori delle singole quantità*/

/*19.Spedizioni in Ritardo */
/*Domanda: Trova la percentuale di spedizioni con "In Consegna" rispetto al totale.*/

CREATE VIEW InConsegna(ConsegneRunning) AS 
SELECT COUNT(s.StatusConsegna)
FROM build_week_1_lucasilvi.transazioni_dataset t
INNER JOIN build_week_1_lucasilvi.spedizioni_dataset s
WHERE s.StatusConsegna = 'In Consegna';


SELECT CONCAT((ConsegneRunning / TotaleSpedizioni) * 100, '%') AS PercentInConsegna
FROM InConsegna, (SELECT COUNT(s.StatusConsegna) as TotaleSpedizioni
FROM build_week_1_lucasilvi.transazioni_dataset t
INNER JOIN build_week_1_lucasilvi.spedizioni_dataset s) AS Totali;

SELECT COUNT(ClienteID)
FROM build_week_1_lucasilvi.transazioni_dataset t;
SELECT COUNT(ClienteID)
FROM build_week_1_lucasilvi.clienti_dataset t;





/*Query a nostro piacere da proporre come sfide alla competizione agli altri gruppi*/

/*Query complessa 1: Trova tutti i clienti che hanno effettuato transazioni 
con importo totale superiore a una certa soglia e 
che hanno speso in almeno due categorie di prodotti diverse.*/

/*SELECT DISTINCT c.*
FROM clienti_dataset c
JOIN transazioni_dataset t ON c.ClienteID = t.ClienteID
JOIN prodotti_dataset p ON t.ProdottoID = p.ProdottoID
WHERE t.ImportoTotaleTransazione > 30
GROUP BY c.ClienteID
HAVING COUNT(DISTINCT p.Categoria) >= 2;*/

/*Query complessa 2: Aggiorna la quantità disponibile di un prodotto dopo una transazione 
e aggiorna lo stato della consegna nella tabella delle spedizioni.*/

/*START TRANSACTION;

UPDATE prodotti_dataset p
JOIN transazioni_dataset t ON p.ProdottoID = t.ProdottoID
SET p.QuantitaDisponibile = p.QuantitaDisponibile - t.QuantitaAcquistata
WHERE t.IDTransazione = [IDTransazione];

UPDATE spedizioni_dataset s
SET s.StatusConsegna = 'Consegnato'
WHERE s.IDTransazione = [IDTransazione];

COMMIT;*/

/*Query complessa 3: Trova i prodotti con la quantità disponibile inferiore a una soglia 
e calcola la media degli importi totali delle transazioni in cui sono stati acquistati.*/

/*SELECT p.*, AVG(CAST(t.ImportoTotaleTransazione AS DECIMAL(10,2))) AS MediaImportoTransazioni
FROM prodotti_dataset p
JOIN transazioni_dataset t ON p.ProdottoID = t.ProdottoID
WHERE p.QuantitaDisponibile < 20
GROUP BY p.ProdottoID;*/

/*Query complessa 4: Trova i clienti che hanno effettuato almeno una transazione
 in ogni categoria di prodotti disponibile.*/
 
/* SELECT c.*
FROM clienti_dataset c
WHERE NOT EXISTS (
    SELECT DISTINCT p.Categoria
    FROM prodotti_dataset p
    WHERE NOT EXISTS (
        SELECT t.*
        FROM transazioni_dataset t
        WHERE t.ClienteID = c.ClienteID AND p.Categoria = t.Categoria
    )
);*/

/*Query complessa 7: Trova i prodotti che non sono mai stati acquistati.*/

/*SELECT p.*
FROM prodotti_dataset p
WHERE NOT EXISTS (
    SELECT 1
    FROM transazioni_dataset t
    WHERE t.ProdottoID = p.ProdottoID
);*/

/*Query complessa 8: Trova i clienti che hanno effettuato almeno una transazione in ogni mese dell'anno corrente.*/

/*SELECT c.*
FROM clienti_dataset c
WHERE NOT EXISTS (
    SELECT DISTINCT MONTH(DataTransazione)
    FROM transazioni_dataset t
    WHERE t.ClienteID = c.ClienteID
    AND YEAR(DataTransazione) = YEAR(CURDATE())
    HAVING COUNT(DISTINCT MONTH(DataTransazione)) = 12
);
*/

/*Query complessa 9: Trova i prodotti con la quantità disponibile più bassa e 
il relativo cliente che li ha acquistati.*/

/*SELECT p.*, c.NomeCliente
FROM prodotti_dataset p
JOIN transazioni_dataset t ON p.ProdottoID = t.ProdottoID
JOIN clienti_dataset c ON t.ClienteID = c.ClienteID
WHERE p.QuantitaDisponibile = (
    SELECT MIN(QuantitaDisponibile)
    FROM prodotti_dataset
);*/

/*Query complessa 10: Trova la data con il maggior numero di transazioni effettuate.*/

/*SELECT DataTransazione, COUNT(*) AS NumeroTransazioni
FROM transazioni_dataset
GROUP BY DataTransazione
ORDER BY NumeroTransazioni DESC
LIMIT 1;*/



