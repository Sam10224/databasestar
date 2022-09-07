


DROP TABLE IF EXISTS games_city;

CREATE TABLE games_city (
  games_id NUMBER(11) DEFAULT NULL,
  city_id NUMBER(11) DEFAULT NULL,
  CONSTRAINT fk_gci_city FOREIGN KEY (city_id) REFERENCES city (id),
  CONSTRAINT fk_gci_gam FOREIGN KEY (games_id) REFERENCES games (id)
);



INSERT INTO games_city VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,4),
(16,15),
(17,2),
(18,16),
(19,17),
(20,18),
(21,19),
(22,20),
(23,21),
(24,22),
(25,23),
(26,8),
(27,24),
(28,25),
(29,26),
(30,27),
(31,28),
(32,29),
(33,30),
(34,31),
(35,32),
(36,33),
(37,34),
(38,35),
(39,36),
(40,37),
(41,38),
(42,22),
(43,39),
(44,40),
(45,20),
(46,41),
(47,2),
(48,41),
(49,11),
(50,42),
(33,14),
(51,20);
