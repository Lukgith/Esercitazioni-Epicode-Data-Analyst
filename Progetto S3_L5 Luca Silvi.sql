CREATE TABLE vendite (
    id_transazione INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    categoria_prodotto VARCHAR(50) NOT NULL,
    costo_vendita DECIMAL(10, 2) NOT NULL,
    sconto_applicato DECIMAL(5, 2) NOT NULL
);

DROP TABLE vendite;

CREATE TABLE dettagli_vendite (
    id_cliente INT NOT NULL,
	id_transazione INT NOT NULL,
    data_transazione DATE NOT NULL,
    quantita INT NOT NULL,
    FOREIGN KEY(id_transazione) REFERENCES vendite(id_transazione)
);


SET SQL_SAFE_UPDATES = 1;
ALTER TABLE clienti DROP FOREIGN KEY clienti_ibfk_1;
SET SQL_SAFE_UPDATES = 0;

DROP TABLE Dettagli_vendite;

CREATE TABLE clienti(
id_cliente INT NOT NULL,
id_vendita INT NOT NULL
);

DROP TABLE clienti;

INSERT INTO vendite (id_transazione, categoria_prodotto, costo_vendita, sconto_applicato) VALUES
(1, 'Smartphone', 177, 44),
(2, 'Smartphone', 216, 59),
(3, 'Smartphone', 183, 48),
(4, 'Smartphone', 176.00, 10.00),
(5, 'Smartphone', 184.00, 46.00),
(6, 'Smartphone', 162.00, 12.00),
(7, 'Smartphone', 250.00, 3.00),
(8, 'Smartphone', 233.00, 48.00),
(9, 'Smartphone', 150.00, 11.00),
(10, 'Smartphone', 164.00, 29.00),
(11, 'Smartphone', 189.00, 12.00),
(12, 'Smartphone', 232.00, 32.00),
(13, 'Smartphone', 198.00, 1.00),
(14, 'Smartphone', 275.00, 29.00),
(15, 'Smartphone', 152.00, 43.00),
(16, 'Smartphone', 227.00, 45.00),
(17, 'Smartphone', 143.00, 6.00),
(18, 'Smartphone', 227.00, 36.00),
(19, 'Smartphone', 239.00, 18.00),
(20, 'Smartphone', 145.00, 45.00),
(21, 'Smartphone', 161.00, 38.00),
(22, 'Smartphone', 232.00, 51.00),
(23, 'Smartphone', 156.00, 2.00),
(24, 'Smartphone', 211.00, 12.00),
(25, 'Smartphone', 251.00, 28.00),
(26, 'Smartphone', 225.00, 29.00),
(27, 'Smartphone', 172.00, 24.00),
(28, 'Smartphone', 162.00, 31.00),
(29, 'Smartphone', 234.00, 44.00),
(30, 'Smartphone', 183.00, 36.00),
(31, 'Smartphone', 266.00, 38.00),
(32, 'Smartphone', 257.00, 61.00),
(33, 'Smartphone', 223.00, 22.00),
(34, 'Smartphone', 234.00, 4.00),
(35, 'Smartphone', 227.00, 22.00),
(36, 'Smartphone', 149.00, 44.00),
(37, 'Smartphone', 137.00, 62.00),
(38, 'Smartphone', 181.00, 16.00),
(39, 'Smartphone', 215.00, 56.00),
(40, 'Smartphone', 269.00, 45.00),
(41, 'Smartphone', 227.00, 15.00),
(42, 'Smartphone', 139.00, 61.00),
(43, 'Smartphone', 137.00, 38.00),
(44, 'Smartphone', 174.00, 44.00),
(45, 'Smartphone', 151.00, 29.00),
(46, 'Smartphone', 210.00, 9.00),
(47, 'Smartphone', 169.00, 32.00),
(48, 'Smartphone', 160.00, 32.00),
(49, 'Smartphone', 190.00, 9.00),
(50, 'Smartphone', 216.00, 40.00),
(51, 'Televisori', 183.00, 37.00),
(52, 'Televisori', 141.00, 22.00),
(53, 'Televisori', 165.00, 44.00),
(54, 'Televisori', 170.00, 41.00),
(55, 'Televisori', 203.00, 12.00),
(56, 'Televisori', 246.00, 46.00),
(57, 'Televisori', 238.00, 61.00),
(58, 'Televisori', 193.00, 29.00),
(59, 'Televisori', 141.00, 41.00),
(60, 'Televisori', 150.00, 17.00),
(61, 'Televisori', 221.00, 64.00),
(62, 'Televisori', 179.00, 52.00),
(63, 'Televisori', 105.00, 62.00),
(64, 'Televisori', 177.00, 61.00),
(65, 'Televisori', 261.00, 49.00),
(66, 'Televisori', 202.00, 49.00),
(67, 'Televisori', 109.00, 15.00),
(68, 'Televisori', 158.00, 6.00),
(69, 'Televisori', 231.00, 6.00),
(70, 'Televisori', 206.00, 39.00),
(71, 'Televisori', 187.00, 14.00),
(72, 'Televisori', 230.00, 2.00),
(73, 'Televisori', 232.00, 33.00),
(74, 'Televisori', 215.00, 21.00),
(75, 'Televisori', 238.00, 13.00),
(76, 'Televisori', 266.00, 23.00),
(77, 'Televisori', 158.00, 36.00),
(78, 'Televisori', 113.00, 43.00),
(79, 'Televisori', 223.00, 18.00),
(80, 'Televisori', 257.00, 56.00),
(81, 'Televisori', 180.00, 49.00),
(82, 'Televisori', 132.00, 18.00),
(83, 'Televisori', 217.00, 26.00),
(84, 'Televisori', 162.00, 31.00),
(85, 'Televisori', 197.00, 40.00),
(86, 'Televisori', 197.00, 13.00),
(87, 'Televisori', 185.00, 44.00),
(88, 'Televisori', 278.00, 3.00),
(89, 'Televisori', 229.00, 49.00),
(90, 'Televisori', 186.00, 57.00),
(91, 'Televisori', 174.00, 41.00),
(92, 'Televisori', 286.00, 18.00),
(93, 'Televisori', 175.00, 7.00),
(94, 'Televisori', 219.00, 17.00),
(95, 'Televisori', 213.00, 35.00),
(96, 'Televisori', 235.00, 57.00),
(97, 'Televisori', 149.00, 18.00),
(98, 'Televisori', 271.00, 8.00),
(99, 'Televisori', 144.00, 5.00),
(100, 'Televisori', 145.00, 21.00),
(101, 'Tablet', 143.00, 59.00),
(102, 'Tablet', 227.00, 53.00),
(103, 'Tablet', 213.00, 29.00),
(104, 'Tablet', 144.00, 37.00),
(105, 'Tablet', 218.00, 3.00),
(106, 'Tablet', 144.00, 59.00),
(107, 'Tablet', 238.00, 17.00),
(108, 'Tablet', 216.00, 26.00),
(109, 'Tablet', 238.00, 55.00),
(110, 'Tablet', 141.00, 47.00),
(111, 'Tablet', 158.00, 2.00),
(112, 'Tablet', 239.00, 65.00),
(113, 'Tablet', 175.00, 25.00),
(114, 'Tablet', 263.00, 41.00),
(115, 'Tablet', 168.00, 50.00),
(116, 'Tablet', 176.00, 36.00),
(117, 'Tablet', 150.00, 60.00),
(118, 'Tablet', 265.00, 31.00),
(119, 'Tablet', 263.00, 5.00),
(120, 'Tablet', 145.00, 20.00),
(121, 'Tablet', 183.00, 33.00),
(122, 'Tablet', 205.00, 19.00),
(123, 'Tablet', 160.00, 64.00),
(124, 'Tablet', 252.00, 48.00),
(125, 'Tablet', 222.00, 10.00),
(126, 'Tablet', 203.00, 25.00),
(127, 'Tablet', 220.00, 40.00),
(128, 'Tablet', 147.00, 60.00),
(129, 'Tablet', 200.00, 16.00),
(130, 'Tablet', 224.00, 21.00),
(131, 'Tablet', 179.00, 17.00),
(132, 'Tablet', 144.00, 50.00),
(133, 'Tablet', 247.00, 17.00),
(134, 'Tablet', 280.00, 51.00),
(135, 'Tablet', 168.00, 1.00),
(136, 'Tablet', 157.00, 4.00),
(137, 'Tablet', 189.00, 51.00),
(138, 'Tablet', 162.00, 7.00),
(139, 'Tablet', 207.00, 48.00),
(140, 'Tablet', 237.00, 10.00),
(141, 'Tablet', 264.00, 59.00),
(142, 'Tablet', 149.00, 51.00),
(143, 'Tablet', 162.00, 41.00),
(144, 'Tablet', 205.00, 63.00),
(145, 'Tablet', 158.00, 51.00),
(146, 'Tablet', 248.00, 46.00),
(147, 'Tablet', 191.00, 23.00),
(148, 'Tablet', 146.00, 24.00),
(149, 'Tablet', 135.00, 56.00),
(150, 'Tablet', 149.00, 40.00),
(151, 'Notebook', 220.00, 7.00),
(152, 'Notebook', 98.00, 44.00),
(153, 'Notebook', 97.00, 32.00),
(154, 'Notebook', 183.00, 53.00),
(155, 'Notebook', 162.00, 8.00),
(156, 'Notebook', 114.00, 47.00),
(157, 'Notebook', 275.00, 41.00),
(158, 'Notebook', 203.00, 39.00),
(159, 'Notebook', 205.00, 65.00),
(160, 'Notebook', 149.00, 63.00),
(161, 'Notebook', 112.00, 56.00),
(162, 'Notebook', 207.00, 56.00),
(163, 'Notebook', 261.00, 58.00),
(164, 'Notebook', 274.00, 6.00),
(165, 'Notebook', 141.00, 52.00),
(166, 'Notebook', 166.00, 17.00),
(167, 'Notebook', 141.00, 34.00),
(168, 'Notebook', 152.00, 43.00),
(169, 'Notebook', 250.00, 53.00),
(170, 'Notebook', 161.00, 28.00),
(171, 'Notebook', 185.00, 10.00),
(172, 'Notebook', 176.00, 52.00),
(173, 'Notebook', 148.00, 56.00),
(174, 'Notebook', 270.00, 63.00),
(175, 'Notebook', 242.00, 51.00),
(176, 'Notebook', 150.00, 3.00),
(177, 'Notebook', 192.00, 20.00),
(178, 'Notebook', 116.00, 54.00),
(179, 'Notebook', 192.00, 2.00),
(180, 'Notebook', 255.00, 3.00),
(181, 'Notebook', 161.00, 18.00),
(182, 'Notebook', 157.00, 20.00),
(183, 'Notebook', 164.00, 28.00),
(184, 'Notebook', 162.00, 16.00),
(185, 'Notebook', 146.00, 50.00),
(186, 'Notebook', 209.00, 54.00),
(187, 'Notebook', 134.00, 55.00),
(188, 'Notebook', 222.00, 5.00),
(189, 'Notebook', 139.00, 27.00),
(190, 'Notebook', 134.00, 42.00),
(191, 'Notebook', 130.00, 16.00),
(192, 'Notebook', 133.00, 62.00),
(193, 'Notebook', 140.00, 7.00),
(194, 'Notebook', 158.00, 28.00),
(195, 'Notebook', 270.00, 46.00),
(196, 'Notebook', 140.00, 30.00),
(197, 'Notebook', 135.00, 15.00),
(198, 'Notebook', 136.00, 19.00),
(199, 'Notebook', 142.00, 38.00),
(200, 'Notebook', 154.00, 38.00),
(201, 'Console di gioco', 139.00, 9.00),
(202, 'Console di gioco', 160.00, 43.00),
(203, 'Console di gioco', 134.00, 58.00),
(204, 'Console di gioco', 161.00, 48.00),
(205, 'Console di gioco', 155.00, 23.00),
(206, 'Console di gioco', 145.00, 24.00),
(207, 'Console di gioco', 157.00, 1.00),
(208, 'Console di gioco', 160.00, 48.00),
(209, 'Console di gioco', 152.00, 55.00),
(210, 'Console di gioco', 148.00, 11.00),
(211, 'Console di gioco', 127.00, 15.00),
(212, 'Console di gioco', 154.00, 21.00),
(213, 'Console di gioco', 127.00, 44.00),
(214, 'Console di gioco', 160.00, 31.00),
(215, 'Console di gioco', 129.00, 48.00),
(216, 'Console di gioco', 158.00, 40.00),
(217, 'Console di gioco', 185.00, 3.00),
(218, 'Console di gioco', 176.00, 63.00),
(219, 'Console di gioco', 148.00, 37.00),
(220, 'Console di gioco', 270.00, 60.00),
(221, 'Auricolari', 242.00, 29.00),
(222, 'Auricolari', 150.00, 31.00),
(223, 'Auricolari', 192.00, 4.00),
(224, 'Auricolari', 116.00, 9.00),
(225, 'Auricolari', 192.00, 31.00),
(226, 'Auricolari', 255.00, 38.00),
(227, 'Auricolari', 161.00, 63.00),
(228, 'Auricolari', 157.00, 48.00),
(229, 'Auricolari', 164.00, 14.00),
(230, 'Auricolari', 162.00, 42.00),
(231, 'Auricolari', 146.00, 54.00),
(232, 'Auricolari', 209.00, 60.00),
(233, 'Auricolari', 134.00, 53.00),
(234, 'Auricolari', 222.00, 58.00),
(235, 'Auricolari', 139.00, 39.00),
(236, 'Auricolari', 134.00, 38.00),
(237, 'Auricolari', 130.00, 48.00),
(238, 'Auricolari', 133.00, 5.00),
(239, 'Auricolari', 140.00, 23.00),
(240, 'Auricolari', 158.00, 10.00),
(241, 'Auricolari', 270.00, 65.00),
(242, 'Auricolari', 140.00, 33.00),
(243, 'Auricolari', 135.00, 58.00),
(244, 'Auricolari', 136.00, 43.00),
(245, 'Auricolari', 142.00, 8.00),
(246, 'Auricolari', 154.00, 48.00),
(247, 'Auricolari', 139.00, 3.00),
(248, 'Auricolari', 160.00, 50.00),
(249, 'Auricolari', 134.00, 38.00),
(250, 'Auricolari', 161.00, 54.00),
(251, 'Auricolari', 155.00, 45.00),
(252, 'Auricolari', 145.00, 5.00),
(253, 'Auricolari', 157.00, 58.00),
(254, 'Auricolari', 160.00, 19.00),
(255, 'Auricolari', 152.00, 61.00),
(256, 'Auricolari', 148.00, 35.00),
(257, 'Auricolari', 127.00, 13.00),
(258, 'Auricolari', 129.00, 22.00),
(259, 'Auricolari', 158.00, 13.00),
(260, 'Auricolari', 147.00, 5.00),
(261, 'Auricolari', 159.00, 49.00),
(262, 'Auricolari', 151.00, 23.00),
(263, 'Auricolari', 294.00, 52.00),
(264, 'Auricolari', 226.00, 45.00),
(265, 'Auricolari', 271.00, 9.00),
(266, 'Auricolari', 203.00, 61.00),
(267, 'Auricolari', 264.00, 10.00),
(268, 'Auricolari', 258.00, 36.00),
(269, 'Auricolari', 241.00, 21.00),
(270, 'Auricolari', 208.00, 23.00),
(271, 'Auricolari', 209.00, 12.00),
(272, 'Auricolari', 182.00, 23.00),
(273, 'Auricolari', 148.00, 43.00),
(274, 'Auricolari', 183.00, 52.00),
(275, 'Auricolari', 229.00, 22.00),
(276, 'Auricolari', 115.00, 26.00),
(277, 'Auricolari', 136.00, 65.00),
(278, 'Auricolari', 212.00, 21.00),
(279, 'Auricolari', 171.00, 24.00),
(280, 'Auricolari', 151.00, 60.00),
(281, 'Auricolari', 205.00, 39.00),
(282, 'Auricolari', 147.00, 23.00),
(283, 'Auricolari', 155.00, 29.00),
(284, 'Auricolari', 165.00, 20.00),
(285, 'Auricolari', 230.00, 32.00),
(286, 'Auricolari', 181.00, 13.00),
(287, 'Auricolari', 234.00, 55.00),
(288, 'Auricolari', 149.00, 34.00),
(289, 'Auricolari', 156.00, 44.00),
(290, 'Auricolari', 172.00, 59.00),
(291, 'Auricolari', 270.00, 12.00),
(292, 'Auricolari', 206.00, 23.00),
(293, 'Auricolari', 211.00, 40.00),
(294, 'Auricolari', 136.00, 62.00),
(295, 'Auricolari', 186.00, 52.00),
(296, 'Auricolari', 202.00, 62.00),
(297, 'Auricolari', 183.00, 12.00),
(298, 'Auricolari', 232.00, 36.00),
(299, 'Auricolari', 147.00, 52.00),
(300, 'Auricolari', 136.00, 20.00),
(301, 'Droni', 127.00, 43.00),
(302, 'Droni', 202.00, 35.00),
(303, 'Droni', 241.00, 57.00),
(304, 'Droni', 222.00, 55.00),
(305, 'Droni', 183.00, 12.00),
(306, 'Droni', 249.00, 36.00),
(307, 'Droni', 243.00, 59.00),
(308, 'Droni', 163.00, 9.00),
(309, 'Droni', 165.00, 11.00),
(310, 'Droni', 266.00, 53.00),
(311, 'Droni', 193.00, 48.00),
(312, 'Droni', 154.00, 56.00),
(313, 'Droni', 140.00, 51.00),
(314, 'Droni', 272.00, 38.00),
(315, 'Droni', 143.00, 20.00),
(316, 'Droni', 138.00, 30.00),
(317, 'Droni', 238.00, 17.00),
(318, 'Droni', 273.00, 31.00),
(319, 'Droni', 200.00, 27.00),
(320, 'Droni', 213.00, 39.00),
(321, 'Droni', 224.00, 15.00),
(322, 'Droni', 141.00, 12.00),
(323, 'Droni', 150.00, 46.00),
(324, 'Droni', 192.00, 33.00),
(325, 'Droni', 279.00, 24.00),
(326, 'Droni', 246.00, 30.00),
(327, 'Droni', 173.00, 52.00),
(328, 'Droni', 233.00, 59.00),
(329, 'Droni', 274.00, 24.00),
(330, 'Droni', 243.00, 41.00),
(331, 'Smartwatch', 197.00, 56.00),
(332, 'Smartwatch', 140.00, 46.00),
(333, 'Smartwatch', 215.00, 22.00),
(334, 'Smartwatch', 211.00, 8.00),
(335, 'Smartwatch', 220.00, 33.00),
(336, 'Smartwatch', 194.00, 64.00),
(337, 'Smartwatch', 262.00, 58.00),
(338, 'Smartwatch', 201.00, 1.00),
(339, 'Smartwatch', 261.00, 15.00),
(340, 'Smartwatch', 191.00, 60.00),
(341, 'Smartwatch', 255.00, 53.00),
(342, 'Smartwatch', 169.00, 30.00),
(343, 'Smartwatch', 162.00, 64.00),
(344, 'Smartwatch', 248.00, 62.00),
(345, 'Smartwatch', 197.00, 2.00),
(346, 'Smartwatch', 264.00, 6.00),
(347, 'Smartwatch', 260.00, 55.00),
(348, 'Smartwatch', 186.00, 58.00),
(349, 'Smartwatch', 233.00, 44.00),
(350, 'Smartwatch', 161.00, 47.00),
(351, 'Smartwatch', 188.00, 13.00),
(352, 'Smartwatch', 171.00, 22.00),
(353, 'Smartwatch', 267.00, 15.00),
(354, 'Smartwatch', 255.00, 47.00),
(355, 'Smartwatch', 132.00, 56.00),
(356, 'Smartwatch', 266.00, 31.00),
(357, 'Smartwatch', 198.00, 25.00),
(358, 'Smartwatch', 247.00, 62.00),
(359, 'Smartwatch', 140.00, 65.00),
(360, 'Smartwatch', 131.00, 6.00),
(361, 'Smartwatch', 246.00, 49.00),
(362, 'Smartwatch', 159.00, 4.00),
(363, 'Smartwatch', 203.00, 61.00),
(364, 'Smartwatch', 187.00, 29.00),
(365, 'Smartwatch', 146.00, 62.00),
(366, 'Smartwatch', 234.00, 39.00),
(367, 'Smartwatch', 122.00, 15.00),
(368, 'Smartwatch', 135.00, 8.00),
(369, 'Smartwatch', 103.00, 3.00),
(370, 'Smartwatch', 257.00, 19.00);

DROP TABLE Numbers;



-- Creazione di una tabella di numeri crescenti da 1 a 500
CREATE TEMPORARY TABLE Numbers (n INT);

-- Popolamento della tabella con numeri da 1 a 500
INSERT INTO Numbers (n)
SELECT (a.N + b.N * 10 + c.N * 100 + d.N * 1000) + 1 AS num
FROM (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) a
JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) b
JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) c
JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) d
WHERE (a.N + b.N * 10 + c.N * 100 + d.N * 1000) < 500;

-- Generazione di 500 righe casuali con date distribuite su tutti i mesi del 2023
INSERT INTO dettagli_vendite (id_cliente, id_transazione, data_transazione, quantita)
SELECT
    FLOOR(1 + RAND() * (370 - 1)) as id_cliente,
    FLOOR(1 + RAND() * (370 - 1)) as id_transazione,
    DATE_ADD('2022-01-01', INTERVAL FLOOR(RAND() * 730) DAY) as data_transazione,
    CASE
        WHEN RAND() < 0.65 THEN 1
        WHEN RAND() < 0.90 THEN 2
        ELSE 3
    END as quantita
FROM Numbers;

-- Limitazione dell'anno massimo al 2023
UPDATE dettagli_vendite
SET data_transazione = LEAST('2023-12-31', data_transazione);

-- Ordinamento per data crescente
ALTER TABLE dettagli_vendite
ORDER BY data_transazione ASC;

/*Check contenuto Tabella*/
select *
from dettagli_vendite;

/*3*/
/*QUERY SEMPLICI*/
/*1a) Seleziona tutte le vendite avvenute in una specifica data*/
WITH CTE AS (select quantita, data_transazione
             from dettagli_vendite
             where data_transazione = '2023-11-09')
SELECT SUM(quantita) as AmmontareDelleVendite, data_transazione as InDataSpecifica
FROM CTE;

/*2a) Selezionare l'elenco delle vendite con sconti maggiori del 50%*/
SELECT *
FROM vendite
WHERE (sconto_applicato/costo_vendita) > (1/2);



/*4*/
/*AGGREGAZIONE DEI DATI*/
/*1a) Seleziona il totale delle vendite, ovvero il costo, per categoria*/
SELECT categoria_prodotto as Categoria, SUM(costo_vendita) AS TotaleDelleVendite
FROM vendite
GROUP BY categoria_prodotto
ORDER BY SUM(costo_vendita) DESC; -- ho aggiunto anche un ordinamento decrescente sul totale ricavato dalle vendite senza considera gli sconti;

/*2a) Seleziona il numero Totale di prodotti venduti per ciascuna categoria*/
SELECT v.categoria_prodotto as Categoria, SUM(d.quantita) as NTotaleArticoliVenduti
FROM vendite v
INNER JOIN dettagli_vendite d ON d.id_transazione=v.id_transazione
GROUP BY categoria_prodotto
ORDER BY SUM(d.quantita) DESC;  -- ho aggiunto anche un ordinamento decrescente sul totale prodotti venduti per categoria;


/*5*/
/*FUNZIONI DI DATA*/
/*1a) Seleziona le vendite dell'ultimo trimestre*/
SELECT *
FROM dettagli_vendite
WHERE data_transazione < (SELECT MAX(data_transazione) FROM dettagli_vendite)
  AND data_transazione > ADDDATE((SELECT MAX(data_transazione) FROM dettagli_vendite), INTERVAL -3 MONTH); -- con 2 subquery, ovvero query innestate, potevo risolvere anche con 1 CTE come nella prima query
  

/*2a) Raggruppa le vendite per mese e seleziona il totale delle vendite per ogni mese*/  
SELECT MONTH(data_transazione) as Mese, YEAR(data_transazione) as Anno, SUM(quantita) AS TotaleDelleVendite
FROM dettagli_vendite
GROUP BY MONTH(data_transazione), YEAR(data_transazione)
ORDER BY YEAR(data_transazione) ASC; 


/*6*/
/*ANALISI DEGLI SCONTI*/
/*Seleziona la categoria con lo sconto medio più alto*/
WITH CTE AS (
SELECT categoria_prodotto as Categoria, AVG(sconto_applicato) as ScontoMedio
FROM vendite
GROUP BY categoria_prodotto
)
SELECT MAX(ScontoMedio)
FROM CTE; -- lo potevo risolvere anche con la funzione RANK() OVER (PARTITION BY..) inserita nella select;

/*7*/
/*VARIAZIONE DELLE VENDITE*/
/*Confronta le vendite mese per mese per vedere l'incremento o il decremento delle stesse.
Seleziona l'incremento o il decremento che si ha mese per mese*/

/*Poichè stiamo parlando di prodotti accessori di tipo elettronico possiamo anche prendere in considerazione il ToTVendite complessivo mese per mese
altrimenti si può anche fare il totale mensile per categoria, o addittura per articolo, il quale nel mio caso è possibile ma non significativo neanche idealmente
Procediamo con la prima indagine*/
SET @prevAnno = NULL;
SET @prevMese = NULL;

SELECT 
    d1.Anno,
    d1.Mese AS MeseInizio,
    d2.Mese AS MeseFine,
    (CASE WHEN d2.TotaleDelleVendite >= d1.TotaleDelleVendite THEN '+' ELSE '-' END) AS Segno,
    (d2.TotaleDelleVendite / d1.TotaleDelleVendite) AS IncrDecrVendite
FROM (
    SELECT 
        YEAR(data_transazione) AS Anno,
        MONTH(data_transazione) AS Mese,
        SUM(quantita) AS TotaleDelleVendite
    FROM dettagli_vendite
    GROUP BY Anno, Mese
    ORDER BY Anno, Mese
) AS d1
JOIN (
    SELECT 
        YEAR(data_transazione) AS Anno,
        MONTH(data_transazione) AS Mese,
        SUM(quantita) AS TotaleDelleVendite
    FROM dettagli_vendite
    GROUP BY Anno, Mese
    ORDER BY Anno, Mese
) AS d2 ON d1.Anno = d2.Anno AND d2.Mese = (d1.Mese % 12) + 1
WHERE d1.Mese <> 12
ORDER BY d1.Anno, d1.Mese;




/*9*/
/*ANALISI STAGIONALE*/
/*Confronta le vendite totali in diverse stagioni*/


WITH CTE AS (
    SELECT
        YEAR(data_transazione) AS Anno,
        CASE
            WHEN MONTH(data_transazione) BETWEEN 3 AND 5 THEN 'Primavera'
            WHEN MONTH(data_transazione) BETWEEN 6 AND 8 THEN 'Estate'
            WHEN MONTH(data_transazione) BETWEEN 9 AND 11 THEN 'Autunno'
            ELSE 'Inverno'
        END AS Stagione,
        SUM(quantita) AS VenditeTotali
    FROM dettagli_vendite
    GROUP BY Anno, Stagione
)

SELECT
    Anno,
    Stagione AS StagioneCorrente,
    LEAD(Stagione) OVER (PARTITION BY Anno ORDER BY FIELD(Stagione, 'Primavera', 'Estate', 'Autunno', 'Inverno')) AS StagioneSuccessiva,
    CASE
        WHEN LEAD(Stagione) OVER (PARTITION BY Anno ORDER BY FIELD(Stagione, 'Primavera', 'Estate', 'Autunno', 'Inverno')) IS NOT NULL THEN '+'
        ELSE NULL
    END AS Segno,
    LEAD(VenditeTotali) OVER (PARTITION BY Anno ORDER BY FIELD(Stagione, 'Primavera', 'Estate', 'Autunno', 'Inverno')) / VenditeTotali AS IncrDecrVendite
FROM CTE
ORDER BY Anno, FIELD(Stagione, 'Primavera', 'Estate', 'Autunno', 'Inverno');





/*10*/
/*CLIENTI FEDELI*/
/*•Supponendo di avere una tabella clienti con i campi IDCliente e IDVendita,
scrivi una query per trovare i top 5 clienti con il maggior numero di acquisti. */

INSERT INTO clienti(id_cliente, id_vendita)
SELECT v.id_transazione, d.id_cliente
FROM vendite v
INNER JOIN dettagli_vendite d ON d.id_transazione=v.id_transazione;

select *
FROM clienti;


SELECT *
FROM (
    SELECT 
        c.id_cliente as Cliente, 
        RANK() OVER (PARTITION BY c.id_cliente ORDER BY d.quantita DESC) as Ordine
    FROM 
        clienti c
        INNER JOIN dettagli_vendite d ON d.id_transazione=c.id_vendita
        INNER JOIN vendite v ON d.id_transazione=v.id_transazione
) AS Subquery
WHERE Ordine < 6;

