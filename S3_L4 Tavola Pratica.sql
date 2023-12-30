CREATE TABLE DIPENDENTE (
    ID INTEGER NOT NULL,
    NOME TEXT NOT NULL,
    COGNOME TEXT NOT NULL,
    EMAIL TEXT NOT NULL,
    NUMEROTELEFONO DOUBLE NOT NULL,
    DATA_ASSUNZIONE Date,
    ID_LAVORO TEXT NOT NULL,
    SALARIO DOUBLE NOT NULL,
    ID_MANAGER TEXT NOT NULL,
    ID_DIPARTIMENTO TEXT NOT NULL
);

CREATE TABLE DIPARTIMENTO (
    ID_DIPARTIMENTO TEXT NOT NULL,
    NOME_DIPARTIMENTO TEXT NOT NULL,
    IDManager TEXT NOT NULL,
    ID_LUOGO TEXT NOT NULL
);



INSERT INTO DIPENDENTE (ID, NOME, COGNOME, EMAIL, NUMEROTELEFONO, DATA_ASSUNZIONE, ID_LAVORO, SALARIO, ID_MANAGER, ID_DIPARTIMENTO)
VALUES
  (1, 'John', 'Doe', 'john.doe@example.com', 1234567890, '1990-01-01', 'Prof1', 2000.00, 'Manager1', 'Dept1'),
  (2, 'Jane', 'Smith', 'jane.smith@example.com', 9876543210, '1991-02-15', 'Rese2', 2500.00, 'Manager2', 'Dept2'),
  (3, 'Alice', 'Johnson', 'alice.johnson@example.com', 5551234567, '1992-03-20', 'Admi3', 3000.00, 'Manager3', 'Dept3'),
  (4, 'Bob', 'Williams', 'bob.williams@example.com', 4449876543, '1993-04-25', 'Libr4', 3500.00, 'Manager4', 'Dept4'),
  (5, 'Eva', 'Anderson', 'eva.anderson@example.com', 5558889999, '1994-05-30', 'Prof5', 4000.00, 'Manager5', 'Dept5'),
  (6, 'Michael', 'Miller', 'michael.miller@example.com', 1234567893, '1995-06-05', 'Rese6', 4500.00, 'Manager6', 'Dept6'),
  (7, 'Olivia', 'Brown', 'olivia.brown@example.com', 7773334444, '1996-07-10', 'Prof7', 5000.00, 'Manager7', 'Dept7'),
  (8, 'Daniel', 'Taylor', 'daniel.taylor@example.com', 5554443333, '1997-08-15', 'Rese8', 5500.00, 'Manager8', 'Dept8'),
  (9, 'Sophia', 'Wilson', 'sophia.wilson@example.com', 9998887777, '1998-09-20', 'Admi9', 6000.00, 'Manager9', 'Dept9'),
  (10, 'David', 'Moore', 'david.moore@example.com', 1112223333, '1999-10-25', 'Libr10', 6500.00, 'Manager10', 'Dept10'),
  (11, 'Isabella', 'Lee', 'isabella.lee@example.com', 1234567892, '2000-11-30', 'Prof11', 7000.00, 'Manager11', 'Dept11'),
  (12, 'Aiden', 'Davis', 'aiden.davis@example.com', 9876543214, '2000-12-05', 'Rese12', 7500.00, 'Manager12', 'Dept12'),
  (13, 'Mia', 'Clark', 'mia.clark@example.com', 5551234564, '2000-01-10', 'Admi13', 8000.00, 'Manager13', 'Dept13'),
  (14, 'Ethan', 'Lewis', 'ethan.lewis@example.com', 4449876544, '2000-02-15', 'Libr14', 8500.00, 'Manager14', 'Dept14'),
  (15, 'Ava', 'Harris', 'ava.harris@example.com', 5558889949, '2000-03-20', 'Prof15', 9000.00, 'Manager15', 'Dept15'),
  (16, 'Logan', 'Martin', 'logan.martin@example.com', 1234567891, '2000-04-25', 'Rese16', 9500.00, 'Manager16', 'Dept16'),
  (17, 'Emily', 'White', 'emily.white@example.com', 9876543211, '2000-05-30', 'Admi17', 1000.00, 'Manager17', 'Dept17'),
  (18, 'Jackson', 'Scott', 'jackson.scott@example.com', 5551234561, '2000-06-05', 'Libr18', 1500.00, 'Manager18', 'Dept18'),
  (19, 'Grace', 'King', 'grace.king@example.com', 4449876541, '2000-07-10', 'Prof19', 1100.00, 'Manager19', 'Dept19'),
  (20, 'Carter', 'Adams', 'carter.adams@example.com', 5558889991, '2000-08-15', 'Rese20', 1150.00, 'Manager20', 'Dept20'),
  (21, 'Liam', 'Baker', 'liam.baker@example.com', 1234567896, '2000-09-20', 'Prof21', 1200.00, 'Manager21', 'Dept21'),
  (22, 'Lily', 'Evans', 'lily.evans@example.com', 9876543212, '2011-10-25', 'Rese22', 1250.00, 'Manager22', 'Dept22'),
  (23, 'Noah', 'Green', 'noah.green@example.com', 5551234566, '2012-11-30', 'Admi23', 1300.00, 'Manager23', 'Dept23'),
  (24, 'Mila', 'Wright', 'mila.wright@example.com', 4449876547, '2013-12-05', 'Libr24', 1350.00, 'Manager24', 'Dept24'),
  (25, 'James', 'Turner', 'james.turner@example.com', 5558889991, '2014-01-10', 'Prof25', 1400.00, 'Manager25', 'Dept25'),
  (26, 'Avery', 'Fisher', 'avery.fisher@example.com', 1234567895, '2015-02-15', 'Rese26', 1450.00, 'Manager26', 'Dept26'),
  (27, 'Evelyn', 'Hill', 'evelyn.hill@example.com', 9876543215, '2016-03-20', 'Admi27', 1500.00, 'Manager27', 'Dept27'),
  (28, 'Benjamin', 'Lopez', 'benjamin.lopez@example.com', 5551234565, '2017-04-25', 'Libr28', 1550.00, 'Manager28', 'Dept28'),
  (29, 'Aria', 'Morgan', 'aria.morgan@example.com', 4449876545, '2018-05-30', 'Prof29', 1600.00, 'Manager29', 'Dept29'),
  (30, 'Henry', 'Cruz', 'henry.cruz@example.com', 5558889998, '2019-06-05', 'Rese30', 1650.00, 'Manager30', 'Dept30'),
  (31, 'Scarlett', 'Reyes', 'scarlett.reyes@example.com', 1234567898, '2020-07-10', 'Admi31', 1700.00, 'Manager31', 'Dept31'),
  (32, 'Leo', 'Garcia', 'leo.garcia@example.com', 9876543218, '2021-08-15', 'Libr32', 1750.00, 'Manager32', 'Dept32'),
  (33, 'Zoe', 'Perez', 'zoe.perez@example.com', 5551234568, '2022-09-20', 'Prof33', 1800.00, 'Manager33', 'Dept33'),
  (34, 'Elijah', 'Rodriguez', 'elijah.rodriguez@example.com', 4449876548, '2023-10-25', 'Rese34', 1850.00, 'Manager34', 'Dept34'),
  (35, 'Nora', 'Martinez', 'nora.martinez@example.com', 5558889998, '2024-11-30', 'Admi35', 1900.00, 'Manager35', 'Dept35'),
  (36, 'William', 'Hernandez', 'william.hernandez@example.com', 1234567898, '2025-12-05', 'Libr36', 1950.00, 'Manager36', 'Dept36'),
  (37, 'Aurora', 'Diaz', 'aurora.diaz@example.com', 9876543219, '2026-01-10', 'Prof37', 2000.00, 'Manager37', 'Dept37'),
  (38, 'Caleb', 'Nguyen', 'caleb.nguyen@example.com', 5551234569, '2027-02-15', 'Rese38', 2050.00, 'Manager38', 'Dept38'),
  (39, 'Hannah', 'Kim', 'hannah.kim@example.com', 4449876549, '2028-03-20', 'Admi39', 2100.00, 'Manager39', 'Dept39'),
  (40, 'Jackson', 'Tran', 'jackson.tran@example.com', 5558889993, '2029-04-25', 'Libr40', 2150.00, 'Manager40', 'Dept40');
    
INSERT INTO DIPARTIMENTO (ID_DIPARTIMENTO, NOME_DIPARTIMENTO, IDManager, ID_LUOGO)
VALUES
  ('Dept1', 'Fisica', 'Manager1', 'Luogo1'),
  ('Dept2', 'Chimica', 'Manager2', 'Luogo2'),
  ('Dept3', 'Biologia', 'Manager3', 'Luogo3'),
  ('Dept4', 'Matematica', 'Manager4', 'Luogo4'),
  ('Dept5', 'Informatica', 'Manager5', 'Luogo5'),
  ('Dept6', 'Scienze Ambientali', 'Manager6', 'Luogo6'),
  ('Dept7', 'Neuroscienze', 'Manager7', 'Luogo7'),
  ('Dept8', 'Scienze dei Materiali', 'Manager8', 'Luogo8'),
  ('Dept9', 'Astronomia', 'Manager9', 'Luogo9'),
  ('Dept10', 'Geologia', 'Manager10', 'Luogo10'),
  ('Dept11', 'Psicologia', 'Manager11', 'Luogo11'),
  ('Dept12', 'Scienze Biomediche', 'Manager12', 'Luogo12'),
  ('Dept13', 'Robotica', 'Manager13', 'Luogo13'),
  ('Dept14', 'Statistica', 'Manager14', 'Luogo14'),
  ('Dept15', 'Biochimica', 'Manager15', 'Luogo15'),
  ('Dept16', 'Nanotecnologia', 'Manager16', 'Luogo16'),
  ('Dept17', 'Genetica', 'Manager17', 'Luogo17'),
  ('Dept18', 'Astrofisica', 'Manager18', 'Luogo18'),
  ('Dept19', 'Intelligenza Artificiale', 'Manager19', 'Luogo19'),
  ('Dept20', 'Ecologia', 'Manager20', 'Luogo20'),
  ('Dept21', 'Microbiologia', 'Manager21', 'Luogo21'),
  ('Dept22', 'Fisica', 'Manager22', 'Luogo22'),
  ('Dept23', 'Chimica', 'Manager23', 'Luogo23'),
  ('Dept24', 'Biologia', 'Manager24', 'Luogo24'),
  ('Dept25', 'Matematica', 'Manager25', 'Luogo25'),
  ('Dept26', 'Informatica', 'Manager26', 'Luogo26'),
  ('Dept27', 'Scienze Ambientali', 'Manager27', 'Luogo27'),
  ('Dept28', 'Neuroscienze', 'Manager28', 'Luogo28'),
  ('Dept29', 'Scienze dei Materiali', 'Manager29', 'Luogo29'),
  ('Dept30', 'Astronomia', 'Manager30', 'Luogo30'),
  ('Dept31', 'Geologia', 'Manager31', 'Luogo31'),
  ('Dept32', 'Psicologia', 'Manager32', 'Luogo32'),
  ('Dept33', 'Scienze Biomediche', 'Manager33', 'Luogo33'),
  ('Dept34', 'Robotica', 'Manager34', 'Luogo34'),
  ('Dept35', 'Statistica', 'Manager35', 'Luogo35'),
  ('Dept36', 'Biochimica', 'Manager36', 'Luogo36'),
  ('Dept37', 'Nanotecnologia', 'Manager37', 'Luogo37'),
  ('Dept38', 'Genetica', 'Manager38', 'Luogo38'),
  ('Dept39', 'Astrofisica', 'Manager39', 'Luogo39'),
  ('Dept40', 'Intelligenza Artificiale', 'Manager40', 'Luogo40');

-- 1a Richiesta:

-- SELECT DATA_ASSUNZIONE AS DataAssunzione, ID_MANAGER AS IdManager, ID_DIPARTIMENTO AS IdDipartmnt
--FROM DIPENDENTE 
--WHERE ID_LAVORO LIKE "%Admi%";

-- 2a Richiesta:

-- SELECT NOME, COGNOME
-- FROM DIPENDENTE D
-- WHERE strftime('%m', D.DATA_ASSUNZIONE) = '06';

-- 3a Richiesta:

--SELECT strftime('%Y', DATA_ASSUNZIONE) AS ANNI 
    --FROM DIPENDENTE 
    --GROUP BY (strftime('%Y', DATA_ASSUNZIONE))
    --HAVING COUNT(strftime('%Y', DATA_ASSUNZIONE))>10;

-- 4a Richiesta:

-- SELECT NOME_DIPARTIMENTO AS DIPARTIMENTO, ID_MANAGER AS MANAGER, SALARIO
 --FROM DIPENDENTE D
-- INNER JOIN DIPARTIMENTO d ON d.IDManager = D.ID_MANAGER
  --WHERE  strftime('%Y', 'now') - strftime('%Y', D.DATA_ASSUNZIONE) > 5;

    

