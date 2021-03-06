-- Adminer 4.8.1 MySQL 5.5.5-10.6.3-MariaDB-1:10.6.3+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2,	'2021_08_08_153637_create_usuarios_table',	1);

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userName` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipCode` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usuario_email` (`email`),
  UNIQUE KEY `idx_usuario_user_name` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `usuarios` (`id`, `email`, `userName`, `name`, `zipCode`, `password`) VALUES
(1,	'kcolaco@example.com',	'Sr. Mário Gean Leal',	'Sr. Mário Gean Leal',	'66495-505',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(2,	'montenegro.tais@example.com',	'Augusto Faro Ferreira Sobrinho',	'Augusto Faro Ferreira Sobrinho',	'69195-674',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(3,	'pereira.nicole@example.net',	'Sérgio Souza Sobrinho',	'Sérgio Souza Sobrinho',	'37279-706',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(4,	'lutero.joyce@example.net',	'Gabrielly Rocha Filho',	'Gabrielly Rocha Filho',	'15961-205',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(5,	'santana.suzana@example.org',	'Dr. Jerônimo Marcos Ferraz',	'Dr. Jerônimo Marcos Ferraz',	'64634-605',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(6,	'diego.mares@example.com',	'Sr. Sebastião Azevedo Espinoza Filho',	'Sr. Sebastião Azevedo Espinoza Filho',	'66853-159',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(7,	'sanches.deivid@example.com',	'Sr. Eduardo Sepúlveda',	'Sr. Eduardo Sepúlveda',	'51908-622',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(8,	'padilha.cesar@example.org',	'Guilherme Vieira Barros',	'Guilherme Vieira Barros',	'17527-512',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(9,	'walter93@example.org',	'Isabelly Cristiana Verdugo',	'Isabelly Cristiana Verdugo',	'80771-311',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(10,	'marco90@example.org',	'Srta. Lilian Lilian Benites',	'Srta. Lilian Lilian Benites',	'25240-907',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(11,	'thales39@example.net',	'Srta. Tainara Velasques Saraiva',	'Srta. Tainara Velasques Saraiva',	'00070-439',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(12,	'andreia.salas@example.net',	'Franco Salas',	'Franco Salas',	'90845-022',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(13,	'gmendes@example.net',	'Sheila Lourenço Neto',	'Sheila Lourenço Neto',	'13863-864',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(14,	'surias@example.net',	'Gustavo Soares D\'ávila Neto',	'Gustavo Soares D\'ávila Neto',	'11497-577',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(15,	'alves.james@example.org',	'Sr. Juliano Serra Neto',	'Sr. Juliano Serra Neto',	'94930-991',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(16,	'saito.kevin@example.org',	'Dr. Jefferson Estrada Leon',	'Dr. Jefferson Estrada Leon',	'49347-937',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(17,	'pduarte@example.org',	'Sra. Márcia Arruda Alves Filho',	'Sra. Márcia Arruda Alves Filho',	'36549-269',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(18,	'tainara10@example.org',	'Srta. Joana Sanches Barros Filho',	'Srta. Joana Sanches Barros Filho',	'93427-367',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(19,	'melina.vila@example.net',	'Sophia Sarah Serra',	'Sophia Sarah Serra',	'77980-975',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(20,	'leia30@example.com',	'Sra. Elaine Bezerra',	'Sra. Elaine Bezerra',	'25476-202',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(21,	'ivana.lourenco@example.com',	'Srta. Pietra Violeta Soares Neto',	'Srta. Pietra Violeta Soares Neto',	'87988-682',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(22,	'carol58@example.com',	'Carolina Vitória Lourenço Jr.',	'Carolina Vitória Lourenço Jr.',	'23600-738',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(23,	'gmarques@example.net',	'Jefferson Galhardo Jr.',	'Jefferson Galhardo Jr.',	'59948-521',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(24,	'yoliveira@example.com',	'Benedito Valentin Caldeira',	'Benedito Valentin Caldeira',	'36598-357',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(25,	'alexandre69@example.com',	'Dr. Rayane Aragão Salazar',	'Dr. Rayane Aragão Salazar',	'12563-925',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(26,	'aaron.godoi@example.com',	'Dr. Richard Filipe Barreto Neto',	'Dr. Richard Filipe Barreto Neto',	'87998-483',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(27,	'nathalia.dasdores@example.com',	'Dr. Santiago Branco Amaral',	'Dr. Santiago Branco Amaral',	'73539-664',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(28,	'amaral.benjamin@example.com',	'Isabella Maraisa Pereira',	'Isabella Maraisa Pereira',	'46320-921',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(29,	'queiros.flor@example.net',	'Christian Maldonado Franco Filho',	'Christian Maldonado Franco Filho',	'21079-051',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(30,	'luara.batista@example.com',	'Sra. Emília Bezerra Fidalgo',	'Sra. Emília Bezerra Fidalgo',	'36967-429',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(31,	'caio70@example.net',	'Sr. Everton Danilo Mendonça Filho',	'Sr. Everton Danilo Mendonça Filho',	'37151-635',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(32,	'eric.ferminiano@example.net',	'Fabrício Aranda Leal Neto',	'Fabrício Aranda Leal Neto',	'83996-499',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(33,	'ypacheco@example.com',	'Gean Pedrosa',	'Gean Pedrosa',	'60649-898',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(34,	'lucas.balestero@example.net',	'Dr. Ana Vitória Espinoza Filho',	'Dr. Ana Vitória Espinoza Filho',	'15030-501',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(35,	'emily.mendonca@example.org',	'Gean Gusmão',	'Gean Gusmão',	'33517-354',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(36,	'sergio09@example.net',	'Dr. Louise Paes',	'Dr. Louise Paes',	'99237-661',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(37,	'perez.lorenzo@example.net',	'Dr. Saulo Souza Marés Jr.',	'Dr. Saulo Souza Marés Jr.',	'05759-721',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(38,	'usantos@example.net',	'Simone Ramos Filho',	'Simone Ramos Filho',	'43134-855',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(39,	'smolina@example.com',	'Srta. Ariana Mônica Ramires Sobrinho',	'Srta. Ariana Mônica Ramires Sobrinho',	'00943-444',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(40,	'sophia.padilha@example.org',	'Srta. Cristina Iasmin Dias',	'Srta. Cristina Iasmin Dias',	'16926-223',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(41,	'paes.emilio@example.org',	'Sr. Maicon Emiliano Camacho',	'Sr. Maicon Emiliano Camacho',	'03735-596',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(42,	'leal.thales@example.org',	'Agustina Galindo',	'Agustina Galindo',	'47312-756',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(43,	'stefany.soares@example.net',	'Sr. Mateus Marin',	'Sr. Mateus Marin',	'08077-532',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(44,	'naomi40@example.com',	'Gisela Feliciano Filho',	'Gisela Feliciano Filho',	'05354-942',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(45,	'milena84@example.net',	'Sra. Flor Estrada Jr.',	'Sra. Flor Estrada Jr.',	'27408-755',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(46,	'zdomingues@example.net',	'Afonso Camilo Espinoza Filho',	'Afonso Camilo Espinoza Filho',	'75621-279',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(47,	'malves@example.com',	'Sr. Maximiano Aaron Padilha Neto',	'Sr. Maximiano Aaron Padilha Neto',	'32009-043',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(48,	'delgado.flavia@example.net',	'Thomas Rocha Ferreira Filho',	'Thomas Rocha Ferreira Filho',	'51324-311',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(49,	'marisa88@example.net',	'Sr. Mário Faro Neto',	'Sr. Mário Faro Neto',	'80167-993',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(50,	'fferminiano@example.net',	'Deivid Gabriel Paes',	'Deivid Gabriel Paes',	'18415-564',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(51,	'bbalestero@example.net',	'Srta. Heloise Benites Reis Jr.',	'Srta. Heloise Benites Reis Jr.',	'67044-365',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(52,	'juliana.darosa@example.com',	'Victor Estêvão Azevedo',	'Victor Estêvão Azevedo',	'41825-053',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(53,	'ricardo95@example.org',	'Tainara Branco Roque',	'Tainara Branco Roque',	'27005-970',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(54,	'toledo.aparecida@example.org',	'Guilherme Santiago',	'Guilherme Santiago',	'51897-419',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(55,	'suellen.valente@example.net',	'Srta. Priscila Suellen Ávila',	'Srta. Priscila Suellen Ávila',	'58564-714',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(56,	'simon42@example.net',	'Andréia Barreto Ortiz Jr.',	'Andréia Barreto Ortiz Jr.',	'75490-690',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(57,	'renato31@example.net',	'Srta. Elizabeth Abreu',	'Srta. Elizabeth Abreu',	'19251-457',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(58,	'montenegro.danielle@example.com',	'Dr. Malena Paola Saraiva',	'Dr. Malena Paola Saraiva',	'25891-904',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(59,	'hrezende@example.net',	'Sebastião Verdugo Valentin',	'Sebastião Verdugo Valentin',	'23664-170',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(60,	'xcarmona@example.net',	'Christopher Ferraz Jr.',	'Christopher Ferraz Jr.',	'61898-781',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(61,	'isabel96@example.com',	'Noel Adriel Paz',	'Noel Adriel Paz',	'56402-473',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(62,	'pdelatorre@example.net',	'Nathalia Gisele Cordeiro Sobrinho',	'Nathalia Gisele Cordeiro Sobrinho',	'54905-362',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(63,	'bserrano@example.net',	'Késia Valentin Filho',	'Késia Valentin Filho',	'84002-636',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(64,	'darosa.anderson@example.com',	'Sr. Fábio Carvalho Maia',	'Sr. Fábio Carvalho Maia',	'87869-054',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(65,	'wbarros@example.com',	'Janaina Sandoval',	'Janaina Sandoval',	'69268-499',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(66,	'zmarques@example.net',	'Srta. Rebeca Beltrão Neto',	'Srta. Rebeca Beltrão Neto',	'81631-504',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(67,	'william40@example.net',	'Dr. Santiago Barreto Rivera Jr.',	'Dr. Santiago Barreto Rivera Jr.',	'13654-307',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(68,	'tamoio.poliana@example.org',	'Isadora Camila de Oliveira Filho',	'Isadora Camila de Oliveira Filho',	'03258-230',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(69,	'matias.marinho@example.org',	'Sra. Norma Silvana Queirós',	'Sra. Norma Silvana Queirós',	'86977-088',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(70,	'qcasanova@example.net',	'Sr. Jefferson Mendonça Sobrinho',	'Sr. Jefferson Mendonça Sobrinho',	'35799-431',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(71,	'daiana64@example.net',	'Dayana Emilly Batista',	'Dayana Emilly Batista',	'40879-907',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(72,	'viviane.valente@example.com',	'Aaron Luciano de Arruda',	'Aaron Luciano de Arruda',	'88113-059',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(73,	'assuncao.roberto@example.com',	'Dr. Caroline Maísa Leon Sobrinho',	'Dr. Caroline Maísa Leon Sobrinho',	'84781-459',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(74,	'salas.angelica@example.org',	'Sra. Lara Emanuelly Caldeira Jr.',	'Sra. Lara Emanuelly Caldeira Jr.',	'88639-646',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(75,	'velasques.caroline@example.net',	'Sr. Cléber Delvalle Benites Filho',	'Sr. Cléber Delvalle Benites Filho',	'10905-115',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(76,	'kleber49@example.com',	'Débora Verdara Rios',	'Débora Verdara Rios',	'43801-813',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(77,	'filipe63@example.com',	'Dr. Thales Aguiar Deverso',	'Dr. Thales Aguiar Deverso',	'57031-554',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(78,	'wortega@example.com',	'Dr. Willian Jácomo Salazar Sobrinho',	'Dr. Willian Jácomo Salazar Sobrinho',	'69929-796',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(79,	'garcia.raquel@example.com',	'Dr. Matias Delvalle Santacruz Neto',	'Dr. Matias Delvalle Santacruz Neto',	'37216-419',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(80,	'paz.olivia@example.net',	'Sr. Arthur Aaron Garcia Sobrinho',	'Sr. Arthur Aaron Garcia Sobrinho',	'40369-853',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(81,	'thiago60@example.com',	'Isaac Rosa',	'Isaac Rosa',	'76043-610',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(82,	'gael85@example.com',	'Gabriela Sales',	'Gabriela Sales',	'38261-404',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(83,	'kauan.matos@example.org',	'Tábata Neves Filho',	'Tábata Neves Filho',	'03696-677',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(84,	'fidalgo.leo@example.net',	'Sra. Mariana Colaço Romero Neto',	'Sra. Mariana Colaço Romero Neto',	'14705-804',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(85,	'dgodoi@example.org',	'Srta. Thaís Delgado Ferreira Filho',	'Srta. Thaís Delgado Ferreira Filho',	'68013-173',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(86,	'cleber.santana@example.net',	'Ariana Abreu',	'Ariana Abreu',	'47808-454',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(87,	'julio.escobar@example.com',	'Daniel Medina Zamana Jr.',	'Daniel Medina Zamana Jr.',	'84948-383',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(88,	'marcos.mares@example.com',	'Adriana Lira',	'Adriana Lira',	'77593-038',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(89,	'cezar.galhardo@example.net',	'Dr. Benício Anderson Mendonça Sobrinho',	'Dr. Benício Anderson Mendonça Sobrinho',	'39445-572',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(90,	'thalita79@example.com',	'Adriel Valdez Barros Neto',	'Adriel Valdez Barros Neto',	'06224-628',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(91,	'teles.heloisa@example.org',	'Sr. Franco Gomes Ávila',	'Sr. Franco Gomes Ávila',	'20793-787',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(92,	'ziraldo.pedrosa@example.com',	'Marília Zamana Furtado',	'Marília Zamana Furtado',	'03869-734',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(93,	'janaina52@example.org',	'Srta. Danielle Grego Sobrinho',	'Srta. Danielle Grego Sobrinho',	'16362-627',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(94,	'zguerra@example.net',	'Dr. Olga Salazar',	'Dr. Olga Salazar',	'02603-951',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(95,	'maria66@example.net',	'Karina Ruth Verdugo',	'Karina Ruth Verdugo',	'35940-343',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(96,	'fbezerra@example.org',	'Srta. Stefany Nádia Lourenço Sobrinho',	'Srta. Stefany Nádia Lourenço Sobrinho',	'63719-078',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(97,	'tamara.fonseca@example.com',	'Dr. Elis Michelle Paz',	'Dr. Elis Michelle Paz',	'47531-195',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(98,	'leal.hugo@example.org',	'Ítalo Garcia',	'Ítalo Garcia',	'71214-294',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(99,	'spontes@example.net',	'Cristiano Maia Serra Jr.',	'Cristiano Maia Serra Jr.',	'12025-787',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(100,	'marin.francisco@example.net',	'Sr. Giovane Deverso Serrano',	'Sr. Giovane Deverso Serrano',	'45741-451',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(101,	'souza.lucia@example.com',	'Benjamin Duarte Ortiz',	'Benjamin Duarte Ortiz',	'81969-435',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(102,	'thalia65@example.com',	'Sra. Luísa Padrão Sobrinho',	'Sra. Luísa Padrão Sobrinho',	'85129-637',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(103,	'helena.sanches@example.net',	'Sr. Caio Emerson Rivera Sobrinho',	'Sr. Caio Emerson Rivera Sobrinho',	'33037-577',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(104,	'delvalle.jacomo@example.net',	'Sra. Ivana Leon Sobrinho',	'Sra. Ivana Leon Sobrinho',	'75860-756',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(105,	'chaves.fernanda@example.org',	'Norma Delvalle Santana Sobrinho',	'Norma Delvalle Santana Sobrinho',	'11268-746',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(106,	'allison31@example.com',	'Sarah Eliane Branco',	'Sarah Eliane Branco',	'22971-704',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(107,	'evandro44@example.org',	'Sr. Edson Duarte',	'Sr. Edson Duarte',	'57565-424',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(108,	'martines.barbara@example.com',	'Cristiano Leonardo Mendonça Jr.',	'Cristiano Leonardo Mendonça Jr.',	'33447-387',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(109,	'uchoa.bruno@example.com',	'Pietra Júlia de Arruda',	'Pietra Júlia de Arruda',	'36437-221',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(110,	'gean66@example.net',	'Dr. Gisela Carmona',	'Dr. Gisela Carmona',	'46380-067',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi');

-- 2021-08-08 17:27:17