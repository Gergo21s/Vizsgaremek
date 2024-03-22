CREATE TABLE `programs` (
  `img` VARCHAR(250),
  `date` VARCHAR(250),
  `time` VARCHAR(250),
  `price` INT(10),
  `description` VARCHAR(250)
);

INSERT INTO `programs` (`img`,`date`,`time`,`price`,`description`)
VALUES
('kep1_meret.png','03.01 Péntek','22:00-05:00',3000,'Normál jegy(soron kívüli bejutással)'),
('kep2_meret.png','05.12 Vasárnap','20:00-04:00',5000,'Normál jegy(soron kívüli bejutással)'),
('kep3_meret.png','05.22 Szerda','22:00-06:00',3500,'Normál jegy(soron kívüli bejutással)'),
('kep4_meret.png','05.30 Csütörtök','22:00-05:00',3200,'Normál jegy(soron kívüli bejutással)'),
('kep5_meret.png','06.02 Vasárnap','23:00-04:00',4000,'Normál jegy(soron kívüli bejutással)'),
('kep6_meret.png','06.12 Szerda','22:00-03:00',42000,'Normál jegy(soron kívüli bejutással)'),
('kep7_meret.png','06.20 Csütörtök','22:00-05:00',4500,'Normál jegy(soron kívüli bejutással)'),
('kep8_meret.png','07.01 Hétfő','20:00-03:00',3000,'Normál jegy(soron kívüli bejutással)'),
('kep9_meret.png','07.13 Szombat','20:00-04:30 ',4500,'Normál jegy(soron kívüli bejutással)');
