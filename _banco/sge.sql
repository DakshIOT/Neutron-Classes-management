-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03-Fev-2017 às 07:46
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sge`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `matricula` varchar(5) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `data_nasc` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `data_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`matricula`, `nome`, `data_nasc`, `email`, `data_mod`) VALUES
('01671', 'Leo', '0000-00-00', 'leonanci99@gmail.com', '2016-10-06 21:43:30'),
('11223', 'Yuri', '1998-08-12', 'yurimedeiros33@gmail.com', '2016-10-06 21:42:00'),
('12345', 'Seiya', '1973-12-01', 'seiya_pegasus@cdzmail.com', '0000-00-00 00:00:00'),
('12346', 'Shiryu', '1970-10-04', 'shiryu_dragao@cdzmail.com', '2016-10-06 22:21:35'),
('12347', 'Shun', '1973-02-23', 'shun_andromeda@cdzmail.com', '2016-10-06 22:21:20'),
('12348', 'Hyoga', '1971-11-12', 'hyoga_cisne@cdzmail.com', '2016-10-06 22:23:07'),
('12349', 'Ikki', '1970-07-06', 'ikki_fenix@cdzmail.com', '2016-10-06 22:24:05'),
('24043', 'Matheus', '1998-11-25', 'matheus.pegasus25@hotmail.com', '2016-10-06 21:42:15'),
('98712', 'Renan', '1657-03-12', 'fatlani@gmail.com', '2016-10-06 21:44:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_nota`
--

CREATE TABLE `aluno_nota` (
  `matricula` varchar(5) NOT NULL,
  `disciplina_id` int(5) NOT NULL,
  `nota` int(11) NOT NULL,
  `ano_letivo` date NOT NULL,
  `data_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='INCOMPLETO';

--
-- Extraindo dados da tabela `aluno_nota`
--

INSERT INTO `aluno_nota` (`matricula`, `disciplina_id`, `nota`, `ano_letivo`, `data_mod`) VALUES
('01671', 4, 6, '2016-12-18', '2016-12-22 00:16:42'),
('11223', 3, 8, '2016-12-18', '2016-12-22 00:16:47'),
('12345', 1, 8, '2016-12-18', '2016-12-19 01:23:57'),
('12346', 1, 10, '2016-12-19', '2016-12-19 02:46:07'),
('98712', 1, 3, '2016-12-18', '2016-12-19 01:25:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_nota_tri`
--

CREATE TABLE `aluno_nota_tri` (
  `matricula` varchar(15) NOT NULL,
  `disciplina_id` varchar(2) NOT NULL,
  `ttri1` float DEFAULT NULL,
  `ptri1` float DEFAULT NULL,
  `ttri2` float DEFAULT NULL,
  `ptri2` float DEFAULT NULL,
  `ttri3` float DEFAULT NULL,
  `ptri3` float DEFAULT NULL,
  `tri4` float DEFAULT NULL,
  `ano` char(5) NOT NULL,
  `data_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno_nota_tri`
--

INSERT INTO `aluno_nota_tri` (`matricula`, `disciplina_id`, `ttri1`, `ptri1`, `ttri2`, `ptri2`, `ttri3`, `ptri3`, `tri4`, `ano`, `data_mod`) VALUES
('11223', '1', 2, 3, 3, 4, 3, 7, 1, '2017', '2017-02-02 15:15:12'),
('11223', '2', 1, 1, 2, 2, 3, 7, 0, '2017', '2017-02-02 16:45:29'),
('12345', '1', 2, 3, 3, 4, 0, 4, 1, '2017', '2017-02-02 15:15:12'),
('12345', '2', 3, 1, 2, 2, 3, 3, 0, '2017', '2017-02-02 16:45:29'),
('12346', '1', 2, 3, 3, 4, 1, 5, 1, '2017', '2017-02-02 15:15:12'),
('12346', '2', 1, 1, 2, 2, 3, 3, 0, '2017', '2017-02-02 16:45:29'),
('12347', '1', 2, 3, 3, 4, 2, 6, 1, '2017', '2017-02-02 15:15:12'),
('12347', '2', 3, 1, 2, 2, 3, 3, 0, '2017', '2017-02-02 16:45:29'),
('12348', '1', 2, 3, 3, 4, 0, 0, 1, '2017', '2017-02-02 15:15:11'),
('12348', '2', 1, 1, 2, 2, 3, 3, 0, '2017', '2017-02-02 16:45:29'),
('12349', '1', 2, 3, 3, 4, 1, 1, 1, '2017', '2017-02-02 15:15:11'),
('12349', '2', 1, 7, 2, 2, 3, 3, 0, '2017', '2017-02-02 16:45:29'),
('24043', '1', 2, 3, 3, 4, 2, 2, 1, '2017', '2017-02-02 15:15:12'),
('24043', '2', 1, 7, 2, 2, 3, 3, 0, '2017', '2017-02-02 16:45:29'),
('98712', '1', 2, 3, 3, 4, 3, 3, 1, '2017', '2017-02-02 15:15:12'),
('98712', '2', 1, 1, 2, 2, 3, 3, 0, '2017', '2017-02-02 16:45:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `calendario`
--

CREATE TABLE `calendario` (
  `cod_evento` int(11) NOT NULL,
  `matricula` int(10) NOT NULL,
  `evento` tinytext NOT NULL,
  `descricao` tinytext NOT NULL,
  `datahora` datetime NOT NULL,
  `datafim` datetime NOT NULL,
  `allday` varchar(6) NOT NULL,
  `cor` varchar(10) NOT NULL,
  `cor2` varchar(10) NOT NULL,
  `turma` varchar(6) NOT NULL,
  `data_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `calendario`
--

INSERT INTO `calendario` (`cod_evento`, `matricula`, `evento`, `descricao`, `datahora`, `datafim`, `allday`, `cor`, `cor2`, `turma`, `data_mod`) VALUES
(1, 10, 'Livros de info', 'foder at? o talo', '2016-10-10 11:00:00', '0000-00-00 00:00:00', '', 'BlueViolet', 'DarkKhaki ', 'IN313', '2016-12-21 22:59:13'),
(2, 10, 'aula cobre placa mae', 'foder at? o talo', '2016-10-11 08:00:00', '0000-00-00 00:00:00', '', 'BurlyWood ', 'DarkKhaki ', 'IN313', '2016-12-21 22:59:24'),
(3, 10, 'aula cobre placa mae', 'foder at? o talo', '2016-10-11 13:00:00', '0000-00-00 00:00:00', '', 'BurlyWood ', 'DarkKhaki ', 'IN313', '2016-12-21 22:59:28'),
(4, 10, 'aula cobre placa mae', 'foder at? o talo', '2016-10-21 16:00:00', '0000-00-00 00:00:00', '', 'BurlyWood ', 'DarkSeaGre', 'IN313', '2016-12-21 22:59:35'),
(5, 10, 'aula cobre placa mae', 'foder at? o talo', '2016-10-21 14:00:00', '0000-00-00 00:00:00', '', 'BurlyWood ', 'DarkSeaGre', 'IN313', '2016-12-21 22:59:41'),
(6, 10, 'aula cobre placa mae', 'foder at? o talo', '2016-10-11 14:00:00', '0000-00-00 00:00:00', '', 'BurlyWood ', 'DarkSeaGre', 'IN313', '2016-12-21 22:59:50'),
(7, 10, 'aula cobre placa mae', 'foder at? o talo', '2016-10-11 14:00:00', '0000-00-00 00:00:00', '', 'BurlyWood ', 'DarkSeaGre', 'IN313', '2016-12-21 22:59:55'),
(8, 10, 'Palestra sobre carreira ', 'foder at? o talo', '2016-10-30 13:30:00', '0000-00-00 00:00:00', '', 'CadetBlue ', 'DarkOrange', 'IN313', '2016-12-21 23:00:02'),
(9, 10, 'Palestra sobre LP3', 'foder at? o talo', '2016-10-23 13:30:00', '0000-00-00 00:00:00', '', 'CadetBlue ', 'DarkOrange', 'IN313', '2016-12-21 23:01:19'),
(10, 10, 'Palestra sobre angular', 'foder at? o talo', '2016-10-27 13:30:00', '0000-00-00 00:00:00', '', 'CadetBlue ', 'DarkOrange', 'IN313', '2016-12-21 23:01:19'),
(11, 10, 'aula sobre c#', 'foder at? o talo', '2016-10-25 13:30:00', '0000-00-00 00:00:00', '', 'BlueViolet', 'DarkOrange', 'IN313', '2016-12-21 23:01:19'),
(16, 10, 'renan lixo', 'foder at? o talo', '2016-11-03 02:00:00', '0000-00-00 00:00:00', '', 'BlueViolet', 'DarkKhaki ', 'IN313', '2016-12-21 23:01:19'),
(17, 10, 'renan lixo', 'foder at? o talo', '2016-09-09 09:00:00', '0000-00-00 00:00:00', '', 'BlueViolet', 'DarkKhaki ', 'IN313', '2016-12-21 23:01:19'),
(18, 10, 'renan lixo', 'foder at? o talo', '2016-09-09 09:00:00', '0000-00-00 00:00:00', '', 'BurlyWood ', 'DarkKhaki ', 'IN313', '2016-12-21 23:01:19'),
(19, 10, 'r6ct7vyubinok', 'foder at? o talo', '2016-06-06 09:09:00', '0000-00-00 00:00:00', '', 'BlueViolet', 'DarkKhaki ', 'IN313', '2016-12-21 23:01:19'),
(20, 10, 'r6ct7vyubinok', 'foder at? o talo', '2016-06-06 09:09:00', '0000-00-00 00:00:00', '', 'BlueViolet', 'DarkKhaki ', 'IN313', '2016-12-21 23:01:19'),
(21, 10, 'c7tuvibojnk', 'foder at? o talo', '2016-06-06 09:09:00', '0000-00-00 00:00:00', '', 'BlueViolet', 'DarkKhaki ', 'IN313', '2016-12-21 23:01:19'),
(22, 10, 'c7tuvibojnk', 'foder at? o talo', '2016-06-06 09:09:00', '0000-00-00 00:00:00', '', 'BlueViolet', 'DarkKhaki ', 'IN313', '2016-12-21 23:01:19'),
(23, 10, 'c7tuvibojnk', 'foder at? o talo', '2016-06-06 09:09:00', '0000-00-00 00:00:00', '', 'BlueViolet', 'DarkKhaki ', 'IN313', '2016-12-21 23:01:19'),
(24, 10, 'c7tuvibojnk', 'foder at? o talo', '2016-06-06 09:09:00', '0000-00-00 00:00:00', '', 'BlueViolet', 'DarkKhaki ', 'IN313', '2016-12-21 23:01:19'),
(25, 10, 'c7tuvibojnk', 'foder at? o talo', '2016-06-06 09:09:00', '0000-00-00 00:00:00', '', 'BlueViolet', 'DarkKhaki ', 'IN313', '2016-12-21 23:01:19'),
(26, 10, 'c7tuvibojnk', 'foder at? o talo', '2016-06-06 09:09:00', '0000-00-00 00:00:00', '', 'BlueViolet', 'DarkKhaki ', 'IN313', '2016-12-21 23:01:19'),
(27, 10, 'Programa com o matheus - 100reais -1h', 'foder at? o talo', '2016-10-20 10:30:00', '0000-00-00 00:00:00', '', 'BlueViolet', 'DarkOrange', 'IN313', '2016-12-21 23:01:19'),
(28, 10, 'Dar pro Gabriel Daumas-Free', 'foder at? o talo', '2016-10-20 11:00:00', '0000-00-00 00:00:00', '', 'BlueViolet', 'DarkKhaki ', 'IN313', '2016-12-21 23:01:19'),
(29, 10, 'oi', 'foder at? o talo', '2016-10-20 05:05:00', '0000-00-00 00:00:00', '', 'CadetBlue ', 'DarkOrange', 'IN313', '2016-12-21 23:01:19'),
(30, 10, 'dsfsdf', 'foder at? o talo', '2016-10-22 23:25:00', '0000-00-00 00:00:00', '', 'CadetBlue ', 'DarkSeaGre', 'IN313', '2016-12-21 23:01:19'),
(33, 10, 'oioioi', 's', '2016-11-27 14:50:00', '0000-00-00 00:00:00', '', '#708090', '#B0C4DE', 'IN313', '2016-12-21 23:01:19'),
(34, 10, 'renan lindo', '', '2016-11-20 10:10:00', '0000-00-00 00:00:00', '', '#FFD700', '#EEE8AA', 'IN313', '2016-12-21 23:01:19'),
(35, 10, '3333333333333333', '', '2016-11-26 14:50:00', '0000-00-00 00:00:00', '', '#008000', '#00FA9A', 'IN313', '2016-12-21 23:01:19'),
(36, 10, '3333333333333333', '', '2016-11-26 14:50:00', '0000-00-00 00:00:00', '', '#008000', '#00FA9A', 'IN313', '2016-12-21 23:01:19'),
(37, 10, '3333333333333333', '', '2016-11-26 14:50:00', '0000-00-00 00:00:00', '', '#008000', '#00FA9A', 'IN313', '2016-12-21 23:01:19'),
(38, 10, '3333333333333333', '', '2016-11-26 14:50:00', '0000-00-00 00:00:00', '', '#008000', '#00FA9A', 'IN313', '2016-12-21 23:01:19'),
(39, 10, 'ug ihj', '', '2016-11-28 13:50:00', '0000-00-00 00:00:00', '', '#DC143C', '#CD5C5C', 'IN313', '2016-12-21 23:01:19'),
(40, 10, 'ug ihj', '', '2016-11-28 13:50:00', '0000-00-00 00:00:00', '', '#DC143C', '#CD5C5C', 'IN313', '2016-12-21 23:01:19'),
(41, 10, 'ug ihj', '', '2016-11-28 13:50:00', '0000-00-00 00:00:00', '', '#DC143C', '#CD5C5C', 'IN313', '2016-12-21 23:01:19'),
(42, 10, 'xcyvubino', '', '2016-11-25 15:59:00', '0000-00-00 00:00:00', '', '#008000', '#00FA9A', 'IN313', '2016-12-21 23:01:19'),
(43, 10, 'xxt', '', '2016-11-13 15:00:00', '0000-00-00 00:00:00', '', '#4169E1', '#1E90FF', 'IN313', '2016-12-21 23:01:19'),
(44, 10, 'ppk bucete ', '', '2016-11-29 13:00:00', '0000-00-00 00:00:00', '', '#FFD700', '#EEE8AA', 'IN313', '2016-12-21 23:01:19'),
(46, 10, 'ppk bucet', 'ssss45467890-\r\n\r\nsfasf8ygpas\r\nasfljahsvaushfv\r\n\r\nasfas?kcjba', '2016-11-30 11:00:00', '0000-00-00 00:00:00', '', '#FFD700', '#EEE8AA', 'IN313', '2016-12-21 23:01:19'),
(47, 10, 'ppk bucet', 'ssss45467890-\r\n\r\nsfasf8ygpas\r\nasfljahsvaushfv\r\n\r\nasfas?kcjba', '2016-11-28 11:00:00', '0000-00-00 00:00:00', '', '#FFD700', '#EEE8AA', 'IN313', '2016-12-21 23:01:19'),
(48, 10, 'cyguvhibjnlk?', 'x7ctuvibojnpk', '2016-11-21 16:55:00', '0000-00-00 00:00:00', '', '#800080', '#DDA0DD', 'IN313', '2016-12-21 23:01:19'),
(49, 10, '!!!!!!!!!!!!!!!!!!!!!!!11', 'fssss', '2016-11-06 15:00:00', '0000-00-00 00:00:00', '', '#f0f0f0', '#f0f0f0', 'undefi', '2016-12-21 23:01:19'),
(50, 10, '!!!!!!!!!!!!!!!!!!!!!!!11', 'fssss', '2016-11-06 13:00:00', '0000-00-00 00:00:00', '', '#008000', '#00FA9A', '? unde', '2016-12-21 23:01:19'),
(51, 10, 'CUVIHOJ', 'undefined', '2016-11-12 19:52:00', '0000-00-00 00:00:00', '', '#f0f0f0', '#f0f0f0', 'undefi', '2016-12-21 23:01:19'),
(52, 10, 'CUVIHOJ', '', '2016-11-12 17:52:00', '0000-00-00 00:00:00', '', '#4169E1', '#1E90FF', '? unde', '2016-12-21 23:01:19'),
(53, 10, 'CUVIHOJ', 'undefined', '2016-11-19 16:00:00', '0000-00-00 00:00:00', '', '#f0f0f0', '#f0f0f0', 'undefi', '2016-12-21 23:01:19'),
(54, 10, 'CUVIHOJ', '', '2016-11-19 14:00:00', '0000-00-00 00:00:00', '', '#FFD700', '#EEE8AA', '? unde', '2016-12-21 23:01:19'),
(55, 10, 'CUVIHOJ', '', '2016-11-19 14:00:00', '0000-00-00 00:00:00', '', '#FFD700', '#EEE8AA', '? unde', '2016-12-21 23:01:19'),
(56, 10, 'renan lindo', 'ssssssssssssssssssssssssssssssssssssss', '2016-11-05 18:45:00', '0000-00-00 00:00:00', '', '#f0f0f0', '#f0f0f0', 'undefi', '2016-12-21 23:01:19'),
(57, 10, 'renan lindo', 'ssssssssssssssssssssssssssssssssssssss', '2016-11-05 16:45:00', '0000-00-00 00:00:00', '', '#008000', '#00FA9A', 'IN313', '2016-12-21 23:01:19'),
(58, 10, 'oi oi', 'ola', '2016-12-19 18:00:00', '0000-00-00 00:00:00', '', '#800080', '#DDA0DD', 'undefi', '2016-12-21 23:01:19'),
(59, 10, 'oi oi', 'ola', '2016-12-03 16:00:00', '0000-00-00 00:00:00', '', '#4169E1', '#1E90FF', 'IN313', '2016-12-21 23:01:19'),
(61, 10, 'novo pc', '16/12/16', '2016-12-16 18:00:00', '2016-12-22 14:00:00', 'false', '#FFD700', '#EEE8AA', 'undefi', '2016-12-21 23:01:19'),
(62, 10, '17/12/16 ', '?  hoje', '2016-12-17 18:00:00', '2016-12-18 18:00:00', 'false', '#800080', '#DDA0DD', 'undefi', '2016-12-21 23:01:19'),
(63, 10, 'natal', 'uhuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu', '2016-12-24 13:00:00', '2016-12-25 08:00:00', 'false', '#DC143C', '#CD5C5C', 'undefi', '2016-12-21 23:01:19'),
(64, 10, 'semana familia', '?......................', '2016-12-27 13:00:00', '2016-12-28 08:00:00', 'false', '#4169E1', '#1E90FF', 'undefi', '2016-12-21 23:01:19'),
(65, 10, 'Virada de ano', 'Fam?lia  ', '2017-01-03 05:00:00', '2017-02-03 22:00:00', 'false', '#008000', '#00FA9A', 'undefi', '2017-01-14 02:20:14'),
(66, 10, 'Moana - Disney', 'Renan é um bostao', '2017-02-07 08:00:00', '2017-02-07 08:00:00', 'false', '#800080', '#DDA0DD', 'undefi', '2017-02-03 05:02:39'),
(67, 10, 'Evento', 'Renan nao faz nada', '2017-01-31 08:00:00', '2017-01-31 09:00:00', 'false', '#708090', '#B0C4DE', 'undefi', '2017-01-14 22:51:42'),
(68, 10, 'Algo bem louco', 'Renan está fora', '2017-01-30 08:00:00', '2017-01-30 09:00:00', 'false', '#4169E1', '#1E90FF', 'undefi', '2017-01-14 18:20:33'),
(69, 10, 'Algo bem louco de novo ', 'Renan é um bostinha', '2017-02-06 08:00:00', '2017-02-06 08:00:00', 'false', '#DC143C', '#CD5C5C', 'undefi', '2017-02-03 05:02:27'),
(70, 10, 'Algo bem louco de novo outra time', 'Renan é inutil', '2017-01-28 08:00:00', '2017-01-29 08:00:00', 'false', '#008000', '#00FA9A', 'undefi', '2017-01-14 18:20:38'),
(72, 10, 'Eventos Repetidos ', 'boom', '2016-12-27 08:00:00', '2016-12-30 22:00:00', 'false', '#800080', '#DDA0DD', 'undefi', '2016-12-21 23:01:19'),
(73, 10, 'SLA, a vida n?o ? feita s? de ilus?o', 'boom', '2016-12-27 07:00:00', '2016-12-31 07:00:00', 'false', '#FFD700', '#EEE8AA', 'undefi', '2016-12-21 23:01:19'),
(74, 10, 'ENTREGA DO TCC', 'Entrega', '2017-02-03 07:00:00', '2017-02-03 12:00:00', 'false', '#FFD700', '#EEE8AA', 'undefi', '2017-02-03 06:12:51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `disciplina_id` int(5) NOT NULL,
  `disciplina_nome` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`disciplina_id`, `disciplina_nome`) VALUES
(1, 'Português'),
(2, 'Literatura'),
(7, 'Matemática I'),
(10, 'Matemática II'),
(13, 'Quí­mica I'),
(16, 'Quí­mica II'),
(19, 'Sociologia'),
(22, 'Geografia'),
(25, 'Biologia'),
(28, 'Físi­ca'),
(31, 'História'),
(34, 'Filosofia'),
(37, 'Inglês'),
(40, 'Espanhol'),
(43, 'Francês'),
(46, 'Ed. Física'),
(49, 'Artes'),
(50, 'Música'),
(51, 'Desenho Avançado'),
(53, 'ICC'),
(54, 'LPI'),
(55, 'LPII'),
(56, 'LPIII'),
(57, 'LPIV'),
(58, 'Eng. Software');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lembretes`
--

CREATE TABLE `lembretes` (
  `ID` int(11) NOT NULL,
  `user` varchar(15) NOT NULL,
  `content` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `lembretes`
--

INSERT INTO `lembretes` (`ID`, `user`, `content`) VALUES
(0, '10', 'teste01'),
(1, '10', 'teste05'),
(2, '10', 'Matheseu');

-- --------------------------------------------------------

--
-- Estrutura da tabela `materia`
--

CREATE TABLE `materia` (
  `materia_id` int(5) NOT NULL,
  `nome` text NOT NULL,
  `descricao` text NOT NULL,
  `disciplina_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `materia`
--

INSERT INTO `materia` (`materia_id`, `nome`, `descricao`, `disciplina_id`) VALUES
(1, 'Modernismo', 'Movimento Literário no Brasil', '2'),
(2, 'Matrizes', 'Cálculos em um conjunto retangular de números, símbolos ou expressões, organizados em linhas e colunas', '3'),
(3, 'Eletromagnetismo', 'Conjunto de fenômenos que dizem respeito à interação entre campos elétricos e magnéticos e sua inter-relação', '12'),
(4, 'Relevo', 'Estudo das diferentes formas que moldam a superfície terrestre', '8'),
(5, 'Relevo', 'Estudo das diferentes formas que moldam a superfície terrestre', '8');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor_disciplinas`
--

CREATE TABLE `professor_disciplinas` (
  `matricula` varchar(10) NOT NULL,
  `disciplina_id` varchar(5) NOT NULL,
  `ano_letivo` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor_disciplinas`
--

INSERT INTO `professor_disciplinas` (`matricula`, `disciplina_id`, `ano_letivo`) VALUES
('10', '1', 2016),
('10', '2', 2016);

-- --------------------------------------------------------

--
-- Estrutura da tabela `profs`
--

CREATE TABLE `profs` (
  `matricula` varchar(10) NOT NULL,
  `nome` char(100) NOT NULL,
  `data_nasc` date NOT NULL,
  `cpf` char(15) NOT NULL,
  `tel_cel` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `data_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `profs`
--

INSERT INTO `profs` (`matricula`, `nome`, `data_nasc`, `cpf`, `tel_cel`, `email`, `data_mod`) VALUES
('', '', '0000-00-00', '', '', '4@4.com', '2016-12-14 21:46:46'),
('1', 'Jacinto', '1946-09-06', '1', '1', 'jacintao@gmail.com', '2016-09-22 04:31:13'),
('10', 'Jesus', '1010-10-10', '101.010.101-01', '(10)10101-0101', 'jc10@hot10mail.com', '2017-01-02 21:43:08'),
('123123', 'JoseTeste', '2312-12-31', '123.412.341-23', '(12)33123-1231', '1231@gmail.com', '2017-02-03 05:55:21'),
('2', 'Nunes', '0000-00-00', '2', '(22)22222-2222', '2@gmail.com', '2016-11-27 04:25:44'),
('2222222222', '2222222222222222', '0000-00-00', '127', '(22)22222-2222', '22222222222@2.com', '2016-10-25 00:41:18'),
('25', 'Kithdris', '0000-00-00', '127', '(12)34567-8900', 'u7@tera.com', '2016-12-13 23:56:05'),
('3', 'Junes', '0000-00-00', '127', '(22)22222-2222', '3@3.com.br', '2016-12-13 23:05:58'),
('4', 'Quatro', '0000-00-00', '127', '(44)44444-4444', '4@4.com', '2016-12-13 23:24:09'),
('4343', 'fsfsdfds', '0000-00-00', '127', '(32)33333-3333', '3333333333333333333333', '2016-12-14 17:12:14'),
('5', 'CINCO', '0000-00-00', '127', '(55)55555-5555', '5@5.com', '2016-12-13 23:30:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prof_diario`
--

CREATE TABLE `prof_diario` (
  `cod_aula` int(12) NOT NULL COMMENT 'codigo associado a questao ( cahave primaria)',
  `matricula` varchar(10) NOT NULL,
  `turma` varchar(7) NOT NULL,
  `data` date NOT NULL,
  `horaStart` char(5) NOT NULL,
  `disciplina_id` varchar(10) NOT NULL,
  `comentario` text NOT NULL,
  `data_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `prof_diario`
--

INSERT INTO `prof_diario` (`cod_aula`, `matricula`, `turma`, `data`, `horaStart`, `disciplina_id`, `comentario`, `data_mod`) VALUES
(34, '10', 'IN313', '2017-01-28', '07:15', '2', '  teste26', '2017-01-28 23:42:55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prof_diario_aluno`
--

CREATE TABLE `prof_diario_aluno` (
  `cod_aula` varchar(10) NOT NULL,
  `matricula` varchar(5) NOT NULL,
  `presente` varchar(5) NOT NULL,
  `data_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `prof_diario_aluno`
--

INSERT INTO `prof_diario_aluno` (`cod_aula`, `matricula`, `presente`, `data_mod`) VALUES
('31', '12348', 'true', '2017-01-28 18:11:22'),
('31', '12349', 'false', '2017-01-28 18:11:22'),
('31', '24043', 'false', '2017-01-28 18:11:22'),
('31', '98712', 'false', '2017-01-28 18:11:22'),
('31', '12345', 'false', '2017-01-28 18:11:22'),
('31', '12346', 'false', '2017-01-28 18:11:23'),
('31', '12347', 'false', '2017-01-28 18:11:23'),
('31', '11223', 'false', '2017-01-28 18:11:23'),
('32', '12348', 'true', '2017-01-28 18:11:35'),
('32', '12349', 'false', '2017-01-28 18:11:35'),
('32', '24043', 'false', '2017-01-28 18:11:35'),
('32', '98712', 'false', '2017-01-28 18:11:35'),
('32', '12345', 'false', '2017-01-28 18:11:35'),
('32', '12346', 'false', '2017-01-28 18:11:36'),
('32', '12347', 'false', '2017-01-28 18:11:36'),
('32', '11223', 'true', '2017-01-28 18:11:36'),
('33', '12348', 'true', '2017-01-28 20:59:48'),
('33', '12349', 'false', '2017-01-28 20:59:49'),
('33', '24043', 'false', '2017-01-28 20:59:49'),
('33', '98712', 'false', '2017-01-28 20:59:49'),
('33', '12345', 'false', '2017-01-28 20:59:49'),
('33', '12346', 'false', '2017-01-28 20:59:49'),
('33', '12347', 'false', '2017-01-28 20:59:49'),
('33', '11223', 'true', '2017-01-28 20:59:49'),
('34', '12348', 'false', '2017-01-28 23:42:55'),
('34', '12349', 'false', '2017-01-28 23:42:55'),
('34', '24043', 'false', '2017-01-28 23:42:55'),
('34', '98712', 'false', '2017-01-28 23:42:55'),
('34', '12345', 'false', '2017-01-28 23:42:55'),
('34', '12346', 'false', '2017-01-28 23:42:55'),
('34', '12347', 'false', '2017-01-28 23:42:56'),
('34', '11223', 'true', '2017-01-28 23:42:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prof_turma`
--

CREATE TABLE `prof_turma` (
  `matricula` varchar(10) NOT NULL,
  `cod_turma` varchar(5) NOT NULL,
  `disciplina` varchar(20) NOT NULL,
  `ano_letivo` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `prof_turma`
--

INSERT INTO `prof_turma` (`matricula`, `cod_turma`, `disciplina`, `ano_letivo`) VALUES
('10', 'IN313', 'Literatura', 2016),
('10', 'IN313', 'Português', 2016),
('10', 'MA215', 'Matematica', 2016);

-- --------------------------------------------------------

--
-- Estrutura da tabela `provas`
--

CREATE TABLE `provas` (
  `cod_prova` int(12) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `matricula` varchar(10) NOT NULL,
  `cod_disciplina` varchar(5) NOT NULL,
  `anoserie` varchar(5) NOT NULL,
  `tipo_avaliacao` varchar(20) NOT NULL,
  `data_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `provas`
--

INSERT INTO `provas` (`cod_prova`, `nome`, `matricula`, `cod_disciplina`, `anoserie`, `tipo_avaliacao`, `data_mod`) VALUES
(1, 'Prova de Modernismo', '10', '2', '3º an', 'Prova', '2016-12-21 23:52:00'),
(2, '', '10', '1', '1º an', 'Prova', '2017-01-05 15:36:08'),
(3, '', '10', '2', '1º an', 'Prova', '2017-01-05 15:36:08'),
(4, '', '10', '3', '1º an', 'Prova', '2017-01-05 15:36:08'),
(5, '10', '10', '2', 'null', 'null', '2017-01-13 18:38:59'),
(6, '10', '10', '2', 'null', 'null', '2017-01-23 23:56:17'),
(7, '10', '10', '2', 'null', 'null', '2017-01-25 00:21:40'),
(8, '10', '10', '2', 'null', 'null', '2017-01-25 19:20:55'),
(9, '10', '10', '2', 'null', 'null', '2017-01-25 19:21:15'),
(10, 'Prova Do tcc', '10', '2', '3º an', 'Prova', '2017-02-03 06:01:32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prova_questoes`
--

CREATE TABLE `prova_questoes` (
  `cod_prova` varchar(10) NOT NULL,
  `cod_quest` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `prova_questoes`
--

INSERT INTO `prova_questoes` (`cod_prova`, `cod_quest`) VALUES
('1', '4'),
('1', '5'),
('1', '17'),
('1', '17'),
('1', '15'),
('1', '8'),
('2', '8'),
('3', '8'),
('4', '8'),
('1', '12'),
('2', '12'),
('3', '12'),
('4', '12'),
('1', '15'),
('2', '15'),
('3', '15'),
('4', '15'),
('1', '4'),
('2', '4'),
('3', '4'),
('4', '4'),
('1', '5'),
('2', '5'),
('3', '5'),
('4', '5'),
('1', '10'),
('2', '10'),
('3', '10'),
('4', '10'),
('1', '15'),
('2', '15'),
('3', '15'),
('4', '15'),
('5', '15'),
('1', '4'),
('2', '4'),
('3', '4'),
('4', '4'),
('5', '4'),
('1', '5'),
('2', '5'),
('3', '5'),
('4', '5'),
('5', '5'),
('1', '21'),
('2', '21'),
('3', '21'),
('4', '21'),
('5', '21'),
('1', '27'),
('2', '27'),
('3', '27'),
('4', '27'),
('5', '27'),
('6', '27'),
('1', '4'),
('2', '4'),
('3', '4'),
('4', '4'),
('5', '4'),
('6', '4'),
('1', '27'),
('2', '27'),
('3', '27'),
('4', '27'),
('5', '27'),
('6', '27'),
('7', '27'),
('1', '29'),
('2', '29'),
('3', '29'),
('4', '29'),
('5', '29'),
('6', '29'),
('7', '29'),
('8', '29'),
('9', '29'),
('10', '29'),
('1', '28'),
('2', '28'),
('3', '28'),
('4', '28'),
('5', '28'),
('6', '28'),
('7', '28'),
('8', '28'),
('9', '28'),
('10', '28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questoes`
--

CREATE TABLE `questoes` (
  `cod_quest` int(12) NOT NULL COMMENT 'codigo associado a questao ( cahave primaria)',
  `autor` varchar(50) NOT NULL COMMENT 'autor da questao; ou cod_prof ou enem,uff etc ',
  `nivel` char(20) NOT NULL COMMENT 'a dificuldade da questao: b>baixo,m>medio,a>alto',
  `tipo` char(20) NOT NULL COMMENT 'd>discursiva e o>objetivas',
  `disciplina_id` varchar(5) NOT NULL,
  `materia_id` varchar(5) NOT NULL,
  `enunciado` text NOT NULL,
  `op1` text,
  `op2` text,
  `op3` text,
  `op4` text,
  `op5` text,
  `gabarito` text NOT NULL,
  `ano_letivo` varchar(4) NOT NULL,
  `anoserie` varchar(20) NOT NULL,
  `visibilidade` varchar(3) NOT NULL COMMENT 'pub:publico ou pri:privado(disponivel somente para o prof criador da questao)',
  `quant_linhas` text NOT NULL,
  `linhas_visiveis` tinyint(1) NOT NULL,
  `data_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questoes`
--

INSERT INTO `questoes` (`cod_quest`, `autor`, `nivel`, `tipo`, `disciplina_id`, `materia_id`, `enunciado`, `op1`, `op2`, `op3`, `op4`, `op5`, `gabarito`, `ano_letivo`, `anoserie`, `visibilidade`, `quant_linhas`, `linhas_visiveis`, `data_mod`) VALUES
(4, 'Jacinto', 'Mediana', 'Discursiva', '2', '1', 'EU NÃO AGUENTO MAIS ERROS4', '', '', '', '', '', 'asdjsauhdsakjdh', '2016', '3º ano', 'Púb', '', 0, '2016-10-13 04:10:49'),
(5, 'Jacinto', 'Mediana', 'Discursiva', '2', '1', 'EU NÃO AGUENTO MAIS ERROS5', '', '', '', '', '', 'asdjsauhdsakjdh', '2016', '3º ano', 'Púb', '', 0, '2016-10-13 04:10:51'),
(7, 'Jacinto', 'Mediana', 'Discursiva', '2', '1', 'Portugues é uma droga?', '', '', '', '', '', 'sim', '2016', '3º ano', 'Pri', '', 0, '2017-01-06 22:59:46'),
(8, 'Jacinto', 'Mediana', 'Discursiva', '2', '1', '1212', '', '', '', '', '', 'asdasd', '2016', '1º ano', 'Pri', '', 0, '2016-10-14 17:15:07'),
(9, 'Jacinto', 'Mediana', 'Discursiva', '2', '1', 'Yuri dá o curdistao', '', '', '', '', '', 'SIM', '2016', '3º ano', 'Púb', '', 0, '2016-12-10 03:19:22'),
(10, 'Jacinto', 'Mediana', 'Discursiva', '2', '1', 'ghgvheh', '', '', '', '', '', '452642', '2016', '3º ano', 'Púb', '', 0, '2016-12-10 03:38:24'),
(11, 'Jacinto', 'Mediana', 'Discursiva', '2', '1', 'vbnvbnvbn', '', '', '', '', '', 'asdasdasd', '2016', '3º ano', 'Púb', '', 0, '2016-12-10 03:44:52'),
(13, 'Jacinto', 'Mediana', 'Discursiva', '2', '1', 'yuiyuiyui', '', '', '', '', '', 'undefined', 'unde', '3º ano', 'Púb', '', 0, '2016-12-10 03:49:14'),
(14, 'Jacinto', 'Mediana', 'Discursiva', '2', '1', 'yuiyuiyui', '', '', '', '', '', 'qweqweqwe', '2016', '3º ano', 'Púb', '', 0, '2016-12-10 03:49:14'),
(15, 'Jacinto', 'Mediana', 'Objetiva', '2', '1', 'asdasdasd', '1', '2', '3', '4', '5', 'C', '2016', '3º ano', 'Púb', '', 0, '2016-12-11 18:20:23'),
(17, 'Jacinto', 'Mediana', 'DiscursivaCALC', '3', '2', 'Quanto  é 1+1?', NULL, NULL, NULL, NULL, NULL, '2', '2016', '3º ano', 'Púb', '', 0, '2016-12-12 22:04:28'),
(18, 'Jesus', 'Média', 'Discursiva', '2', '1', 'dsghuihfduih', NULL, NULL, NULL, NULL, NULL, 'huhsdfaiudshiadshdsaiudsa', '1851', '2º ano', 'Pri', '16', 1, '2017-01-06 22:26:19'),
(19, 'Jesus', 'Média', 'Discursiva', '2', '1', 'lllllllllllllllllll', NULL, NULL, NULL, NULL, NULL, 'lllllllllllllllllllllll', '1837', '2º ano', 'Pri', '-9', 0, '2017-01-06 22:45:20'),
(20, 'undefined', 'Média', 'Discursiva', '2', '1', 'hufsahfsuhdsa', NULL, NULL, NULL, NULL, NULL, 'kkkkkkk', '1930', '2º ano', 'Púb', '11', 1, '2017-01-11 18:53:12'),
(21, 'undefined', 'Média', 'Discursiva', '2', '1', 'ewrewrwe', NULL, NULL, NULL, NULL, NULL, 'rwerewrrrrrrrrrrrrrrrrrr', '1980', '2º ano', 'Pri', '1', 1, '2017-01-11 18:54:49'),
(22, 'undefined', 'Difícil', 'Discursiva', '2', '1', 'tdsdstrrfdsf', NULL, NULL, NULL, NULL, NULL, 'fffffffffffffffffffffffffffffffffff', '1837', '2º ano', 'Pri', '1', 0, '2017-01-11 18:57:59'),
(23, 'undefined', 'Média', 'Discursiva', '2', '1', 'gbffbfv', NULL, NULL, NULL, NULL, NULL, 'oooooooooooooooooooooooooo', '1837', '2º ano', 'Pri', '1', 0, '2017-01-11 19:02:11'),
(24, 'undefined', 'Fácil', 'Discursiva', '2', '1', 'mnfdklmgklmkdlk', NULL, NULL, NULL, NULL, NULL, 'ppppppppppoooooooooooooooooooooooooooooowwwwwwwwww', '1837', '3º ano', 'Púb', '8', 0, '2017-01-11 19:03:19'),
(25, '10', 'Fácil', 'Discursiva', '2', '1', 'ddddddddddd', NULL, NULL, NULL, NULL, NULL, 'ddddddddddddddddddddddddddddd', '1964', '2º ano', 'Pri', '9', 1, '2017-01-11 19:06:14'),
(26, '10', 'Média', 'Discursiva', '2', '1', 'Aheooooooooooo', NULL, NULL, NULL, NULL, NULL, 'Sim, sim', '1860', '2º ano', 'Pri', '12', 1, '2017-01-13 15:48:45'),
(27, '10', 'Média', 'Discursiva', '2', '1', 'aiushdas', NULL, NULL, NULL, NULL, NULL, '6128736', '2017', '3º ano', 'Púb', '2', 0, '2017-01-20 19:09:28'),
(28, '10', 'Dificil', 'Discursiva', '2', '1', 'teste', NULL, NULL, NULL, NULL, NULL, 'oi', '2017', '3º ano', 'Púb', '2', 1, '2017-02-03 05:57:35'),
(29, '10', 'Media', 'Objetiva', '2', '1', 'fsdf', 'asdf', 'asdf', 'asdf', 'asdf', 'afd', 'Opção C', '2017', '3º ano', 'Púb', '', 0, '2017-02-03 06:00:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_prova`
--

CREATE TABLE `tipo_prova` (
  `tipo_avaliacao` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_prova`
--

INSERT INTO `tipo_prova` (`tipo_avaliacao`) VALUES
('1° certificação '),
('1° certificação recuperação '),
('2° certificação '),
('2° certificação recuperação '),
('3° certificação '),
('3° certificação recuperação ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `cod_turma` varchar(5) NOT NULL,
  `anoserie` varchar(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sala` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`cod_turma`, `anoserie`, `email`, `sala`) VALUES
('IN313', '3º', 'turmain1142014@gmail.com', '12-B'),
('MA313', '3º', '', '13-B');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma_aluno`
--

CREATE TABLE `turma_aluno` (
  `cod_turma` varchar(5) NOT NULL,
  `matricula` varchar(5) NOT NULL,
  `ano_letivo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turma_aluno`
--

INSERT INTO `turma_aluno` (`cod_turma`, `matricula`, `ano_letivo`) VALUES
('IN313', '24043', '2016-01-01'),
('IN313', '11223', '2016-01-01'),
('IN313', '01673', '2016-01-01'),
('IN313', '98712', '2016-01-01'),
('IN313', '12345', '0000-00-00'),
('IN313', '12346', '0000-00-00'),
('IN313', '12347', '0000-00-00'),
('IN313', '12348', '0000-00-00'),
('IN313', '12349', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_photo`
--

CREATE TABLE `user_photo` (
  `matricula` varchar(10) NOT NULL,
  `photoID` text NOT NULL,
  `data_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user_photo`
--

INSERT INTO `user_photo` (`matricula`, `photoID`, `data_mod`) VALUES
('', '/uploads/', '2017-02-03 03:37:34'),
('1', './uploads/1-userPhoto-1481671598038.png', '2016-12-13 23:26:38'),
('10', '/uploads/10-userPhoto-1483162242715.jpg', '2016-12-31 05:30:42'),
('123123', '/uploads/123123-userPhoto-1486101338951.jpg', '2017-02-03 05:55:38'),
('2', '/uploads/2-userPhoto-1480221932190.jpg', '2016-11-27 05:29:36'),
('25', './uploads/25-userPhoto-1481673375785.png', '2016-12-13 23:56:15'),
('3', './uploads/3-userPhoto-1481670373902.png', '2016-12-13 23:06:13'),
('4', './uploads/4-userPhoto-1481671459790.jpg', '2016-12-13 23:24:19'),
('5', './uploads/5-userPhoto-1481671845619.png', '2016-12-13 23:30:45'),
('undefined', '/uploads/undefined-userPhoto-1481978806952.jpg', '2016-12-17 12:46:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `matricula` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `salt` char(200) NOT NULL,
  `senha` char(129) NOT NULL,
  `permissao` varchar(15) NOT NULL,
  `data_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`matricula`, `username`, `salt`, `senha`, `permissao`, `data_mod`) VALUES
('10', 'Jesus', 'cb8db5a7dde1e057', '5fd64c12c9b59eed8be670daeec7734b226f5699d459d5c8dd02e0f2e7945f8e35ce6745ff0bdc39ff4b6c4936bb4efa2b2817f79f0ad54354876cb0f649f164', 'Professor', '2016-12-22 18:15:38'),
('123123', 'JoseTeste', 'd749f6fd686ed248', 'fb74401a82ad00ff88559d44f96ffee4e842ae25e2a3252c16577e36d94fe0acfee8d7cee8ec402fa769dd4144d46f635d10fbffbd73ecb7bbc3fb77da9e2605', 'Professor', '2017-02-03 05:55:21'),
('2', 'Matheus viadao', '', '2', 'Professor', '2016-11-27 04:45:26'),
('25', 'ADM', 'cb8db5a7dde1e057', '5fd64c12c9b59eed8be670daeec7734b226f5699d459d5c8dd02e0f2e7945f8e35ce6745ff0bdc39ff4b6c4936bb4efa2b2817f79f0ad54354876cb0f649f164', 'Administrador', '2017-01-30 01:00:50'),
('3', 'Junes', '', '3', 'Professor', '2016-12-13 23:05:58'),
('4', 'Quatro', '', 'undefined', 'Professor', '2016-12-13 23:24:09'),
('4343', 'fsfsdfds', '959b1512369f5e66', '145131d4d73918de4f5bcef09ad589d5055f2ac333267449236655f55c93aa407f985fea217e0f9bd05bbd573ba3ac6d6c69ce1b206cd5c003fac61fbf2da908', 'Professor', '2016-12-14 17:12:14'),
('5', 'CINCO', '', '015d28774aa75420e1af0b54489652f4013ee2f0a640e62000b54a7595b4f726749c7769cfe9314b5457cb857d76f800db186aede22ed12bd12545f81a70fa28', 'Professor', '2016-12-13 23:30:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`matricula`);

--
-- Indexes for table `aluno_nota`
--
ALTER TABLE `aluno_nota`
  ADD PRIMARY KEY (`matricula`,`disciplina_id`);

--
-- Indexes for table `aluno_nota_tri`
--
ALTER TABLE `aluno_nota_tri`
  ADD PRIMARY KEY (`matricula`,`disciplina_id`,`ano`);

--
-- Indexes for table `calendario`
--
ALTER TABLE `calendario`
  ADD PRIMARY KEY (`cod_evento`);

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`disciplina_id`);

--
-- Indexes for table `lembretes`
--
ALTER TABLE `lembretes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`materia_id`);

--
-- Indexes for table `professor_disciplinas`
--
ALTER TABLE `professor_disciplinas`
  ADD PRIMARY KEY (`matricula`,`disciplina_id`,`ano_letivo`);

--
-- Indexes for table `profs`
--
ALTER TABLE `profs`
  ADD PRIMARY KEY (`matricula`);

--
-- Indexes for table `prof_diario`
--
ALTER TABLE `prof_diario`
  ADD PRIMARY KEY (`cod_aula`);

--
-- Indexes for table `prof_turma`
--
ALTER TABLE `prof_turma`
  ADD PRIMARY KEY (`matricula`,`cod_turma`,`disciplina`,`ano_letivo`);

--
-- Indexes for table `provas`
--
ALTER TABLE `provas`
  ADD PRIMARY KEY (`cod_prova`);

--
-- Indexes for table `questoes`
--
ALTER TABLE `questoes`
  ADD PRIMARY KEY (`cod_quest`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`cod_turma`);

--
-- Indexes for table `user_photo`
--
ALTER TABLE `user_photo`
  ADD PRIMARY KEY (`matricula`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`matricula`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendario`
--
ALTER TABLE `calendario`
  MODIFY `cod_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `disciplina_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `prof_diario`
--
ALTER TABLE `prof_diario`
  MODIFY `cod_aula` int(12) NOT NULL AUTO_INCREMENT COMMENT 'codigo associado a questao ( cahave primaria)', AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `provas`
--
ALTER TABLE `provas`
  MODIFY `cod_prova` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `questoes`
--
ALTER TABLE `questoes`
  MODIFY `cod_quest` int(12) NOT NULL AUTO_INCREMENT COMMENT 'codigo associado a questao ( cahave primaria)', AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
